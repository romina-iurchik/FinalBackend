const { Datatypes } = require("sequelize");
const { sequelize } = require("../config/sequelize");

const Genero = sequelize.define(
  "Genero",
  {},
  { tableName: "Genero", timestamps: false }
);
module.exports = Genero;
