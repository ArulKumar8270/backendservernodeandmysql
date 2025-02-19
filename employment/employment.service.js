const db = require('_helpers/db');

module.exports = {
    getAll,
    getById,
    getByUserName,
    create,
    update,
    delete: _delete
};


async function getAll() {
    return await db.job_fair.findAll();
}

async function getById(id) {
    return await getjobFair(id);
}

async function create(params) {
    // save user
    await db.job_fair.create(params);
}



async function update(id, params) {

    console.log(id, "job_fairjob_fair", params)

    const job_fair = await getjobFair(id);
    // validate
    const jobFairameChanged = params.id && job_fair.id !== params.id;
    if (jobFairameChanged && await db.job_fair.findOne({ where: { id: params.id } })) {
        throw 'Username "' + params.id + '" is already taken';
    }

    // copy params to user and save
    Object.assign(job_fair, params);
    await job_fair.save();
    return job_fair.get();
}



async function _delete(id) {
    const job_fair = await getjobFair(id);
    await job_fair.destroy();
}

// helper functions

async function getjobFair(id) {
    const job_fair = await db.job_fair.findByPk(id);
    if (!job_fair) throw 'Job Fair not found';
    return job_fair;
}

async function getByUserName(name) {
    const user = await db.job_fair.findAll({ where: { userName: name } });
    if (!user) throw "User not found";
    return user;
  }