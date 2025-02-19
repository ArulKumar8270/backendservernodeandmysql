﻿const config = require('config.json');
const jwt = require('jsonwebtoken');
const bcrypt = require('bcryptjs');
const db = require('_helpers/db');

module.exports = {
    authenticate,
    getAll,
    getById,
    create,
    update,
    delete: _delete
};

async function authenticate({ mobileNo, password }) {
    const user = await db.Retired_User.scope('withHash').findOne({ where: { mobileNo } });

    if (!user || !(await bcrypt.compare(password, user.hash)))
        throw 'mobileNo or password is incorrect';

    // authentication successful
    const token = jwt.sign({ sub: user.id }, config.secret, { expiresIn: '7d' });
    return { ...omitHash(user.get()), token };
}

async function getAll() {
    return await db.Retired_User.findAll();
}

async function getById(id) {
    return await getUser(id);
}

async function create(params) {
    // validate
    if (await db.Retired_User.findOne({ where: { mobileNo: params.mobileNo } })) {
        throw 'mobileNo "' + params.mobileNo + '" is already taken';
    }

    // hash password
    if (params.password) {
        params.hash = await bcrypt.hash(params.password, 10);
    }

    // save user
    await db.Retired_User.create(params);
}

async function update(id, params) {
    const user = await getUser(id);
    // validate
    const usernameChanged = params.mobileNo && user.mobileNo !== params.mobileNo;
    if (usernameChanged && await db.Retired_User.findOne({ where: { mobileNo: params.mobileNo } })) {
        throw 'Username "' + params.mobileNo + '" is already taken';
    }

    // hash password if it was entered
    if (params.password) {
        params.hash = await bcrypt.hash(params.password, 10);
    }

    // copy params to user and save
    Object.assign(user, params);
    await user.save();

    return omitHash(user.get());
}

async function _delete(id) {
    const user = await getUser(id);
    await user.destroy();
}

// helper functions

async function getUser(id) {
    const user = await db.Retired_User.findByPk(id);
    if (!user) throw 'User not found';
    return user;
}

function omitHash(user) {
    const { hash, ...userWithoutHash } = user;
    return userWithoutHash;
}