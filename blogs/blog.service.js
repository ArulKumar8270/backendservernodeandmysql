const db = require('_helpers/db');

module.exports = {
    getAll,
    getById,
    create,
    update,
    delete: _delete
};


async function getAll() {
    return await db.Blog.findAll();
}

async function getById(id) {
    return await getblog(id);
}

async function create(params) {
    console.log(params, "params")
    // save user
    await db.Blog.create(params);
}



async function update(id, params) {
    const blog = await getblog(id);
    // validate
    const blogameChanged = params.id && blog.id !== params.id;
    if (blogameChanged && await db.Blog.findOne({ where: { id: params.id } })) {
        throw 'Username "' + params.id + '" is already taken';
    }

    // copy params to user and save
    Object.assign(blog, params);
    await blog.save();

    return blog.get();
}



async function _delete(id) {
    const blog = await getblog(id);
    await blog.destroy();
}

// helper functions

async function getblog(id) {
    const blog = await db.Blog.findByPk(id);
    if (!blog) throw 'User not found';
    return blog;
}