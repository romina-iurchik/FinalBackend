const { Datatypes } = require("sequelize");
const { sequelize } = require("../config/sequelize");

const CatalogoTag = sequelize.define(
  "CatalogoTag",
  {},
  { tableName: "CatalogoTag", timestamps: false }
);
module.exports = CatalogoTag;
