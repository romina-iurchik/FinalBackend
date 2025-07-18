const { Datatypes } = require("sequelize");
const { sequelize } = require("../config/sequelize");

const Catalogo = sequelize.define(
  "Catalogo",
  {},
  { tableName: "Catalogo", timestamps: false }
);
module.exports = Catalogo;
