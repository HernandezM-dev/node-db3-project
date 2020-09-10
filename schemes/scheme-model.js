const db = require("../data/db-config.js");

module.exports = {
    find,
    findById,
    findSteps,
    add,
    update,
    remove,
};

function find() {
    return db("schemes");
}

function findById(id) {
    return db("schemes").where({ id });
}
function findSteps(scheme_id){
    return db("steps").where({scheme_id})
}
function add(scheme) {
    return db("schemes").insert(scheme, "id");
}

function update(id, changes) {
    return db("schemes").where({id}).update(changes)
}

function remove(id) {
    return db("schemes").where({ id }).del();
}
