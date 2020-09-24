const { join } = require('../data/db-config.js');
const db = require('../data/db-config.js');

function find() {
    return db('schemes')
}

function findById(id) {
    return db('schemes')
    .where({id}).first()
}

function add(schemeData) {
    return db('schemes').insert(schemeData, 'id')
}

function findSteps(id) {
    return db('steps')
    .join('schemes', 'schemes.id', 'steps.scheme_id')
    .select('schemes.scheme_name', 'steps.step_number', 'steps.instructions')
    .where({scheme_id:id});
}

function update(changes, id) {
    return db('schemes')
    .where({id})
    .update(changes);
}

function remove(id) {
    return db('schemes')
    .where({id})
    .del();
}

module.exports = {
    find,
    findById,
    add,
    findSteps,
    update,
    remove
}