const { Datatypes } = require("sequelize");
const { sequelize } = require("../config/sequelize");

const Categoria = sequelize.define(
  "Categoria",
  {},
  { tableName: "Categoria", timestamps: false }
);
module.exports = Categoria;
