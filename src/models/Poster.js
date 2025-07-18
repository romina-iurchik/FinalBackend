const { Datatypes } = require("sequelize");
const { sequelize } = require("../config/sequelize");

const Poster = sequelize.define(
  "Poster",
  {},
  { tableName: "Poster", timestamps: false }
);
module.exports = Poster;
