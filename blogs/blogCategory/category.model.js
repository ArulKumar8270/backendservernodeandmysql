const { DataTypes } = require('sequelize');

module.exports = model;

function model(sequelize) {
    const attributes = {
        categoryTitle: { type: DataTypes.STRING, allowNull: false },
    };
    return sequelize.define('BlogCategory', attributes);
}