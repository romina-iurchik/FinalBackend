const { Datatypes } = require("sequelize");
const { sequelize } = require("../config/sequelize");

const Actor = sequelize.define(
  "Actor",
  {},
  { tableName: "Actor", timestamps: false }
);
module.exports = Actor;
