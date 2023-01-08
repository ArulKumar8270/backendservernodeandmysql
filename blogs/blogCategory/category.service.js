const db = require('_helpers/db');

module.exports = {
    getAll,
    getById,
    create,
    update,
    delete: _delete
};


async function getAll() {
    return await db.BlogCategory.findAll();
}

async function getById(id) {
    return await getblog(id);
}

async function create(params) {
    console.log(params, "params")
    // save user
    await db.BlogCategory.create(params);
}



async function update(id, params) {
    const cate = await getblog(id);
    // validate
    const blogameChanged = params.id && cate.id !== params.id;
    if (blogameChanged && await db.BlogCategory.findOne({ where: { id: params.id } })) {
        throw 'Username "' + params.id + '" is already taken';
    }

    // copy params to user and save
    Object.assign(cate, params);
    await cate.save();

    return cate.get();
}



async function _delete(id) {
    const cate = await getblog(id);
    await cate.destroy();
}

// helper functions

async function getblog(id) {
    const cate = await db.BlogCategory.findByPk(id);
    if (!cate) throw 'User not found';
    return cate;
}