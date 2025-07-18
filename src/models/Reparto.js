const { Datatypes } = require("sequelize");
const { sequelize } = require("../config/sequelize");

const Reparto = sequelize.define(
  "Reparto",
  {},
  { tableName: "Reparto", timestamps: false }
);
module.exports = Reparto;
