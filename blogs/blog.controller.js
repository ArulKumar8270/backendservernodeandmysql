const express = require('express');
const router = express.Router();
const Joi = require('joi');
const validateRequest = require('_middleware/validate-request');
const blogService = require('./blog.service');

// routes
router.post('/createblog', createBLog);
router.get('/getBlogs', getAll);
router.get('/:id', getById);
router.put('/:id', updateSchema, update);
router.delete('/deleteBlog', _delete);

module.exports = router;

function createBLog(req, res, next) {
    blogService.create(req.body)
        .then(() => res.json({ message: 'blog added successful' }))
        .catch(next);
}

function getAll(req, res, next) {
    blogService.getAll()
        .then(users => res.json(users))
        .catch(next);
}

function getById(req, res, next) {
    blogService.getById(req.params.id)
        .then(blog => res.json(blog))
        .catch(next);
}

function updateSchema(req, res, next) {
    const schema = Joi.object({
        blogtitle: Joi.string().empty(''),
        category: Joi.string().empty(''),
        discription: Joi.string().empty('')
    });
    validateRequest(req, next, schema);
}

function update(req, res, next) {
    console.log(req.params.id, req.body, "req.params.id")
    blogService.update(req.params.id, req.body)
        .then(blog => res.json(blog))
        .catch(next);
}

function _delete(req, res, next) {
    blogService.delete(req.body.id)
        .then(() => res.json({ message: 'Blog deleted successfully' }))
        .catch(next);
}