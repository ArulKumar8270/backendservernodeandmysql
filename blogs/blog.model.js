const { DataTypes } = require('sequelize');

module.exports = model;

function model(sequelize) {
    const attributes = {
        blogtitle: { type: DataTypes.STRING, allowNull: false },
        category: { type: DataTypes.STRING, allowNull: false },
        discription: { type: DataTypes.STRING, allowNull: false }
    };
    return sequelize.define('blog', attributes);
}