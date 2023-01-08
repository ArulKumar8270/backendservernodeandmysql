const express = require('express');
const router = express.Router();
const Joi = require('joi');
const validateRequest = require('_middleware/validate-request');
const catergoryService = require('./category.service');

// routes
router.post('/createCategory', createBLog);
router.get('/getCategorys', getAll);
router.get('/:id', getById);
router.put('/:id', updateSchema, update);
router.delete('/:id', _delete);

module.exports = router;

function createBLog(req, res, next) {
    catergoryService.create(req.body)
        .then(() => res.json({ message: 'Category added successful' }))
        .catch(next);
}

function getAll(req, res, next) {
    catergoryService.getAll()
        .then(cat => res.json(cat))
        .catch(next);
}

function getById(req, res, next) {
    catergoryService.getById(req.params.id)
        .then(cat => res.json(cat))
        .catch(next);
}

function updateSchema(req, res, next) {
    const schema = Joi.object({
        categoryTitle: Joi.string().empty(''),
    });
    validateRequest(req, next, schema);
}

function update(req, res, next) {
    console.log(req.params.id, req.body, "req.params.id")
    catergoryService.update(req.params.id, req.body)
        .then(cat => res.json(cat))
        .catch(next);
}

function _delete(req, res, next) {
    catergoryService.delete(req.params.id)
        .then(() => res.json({ message: 'Category deleted successfully' }))
        .catch(next);
}