const { Datatypes } = require("sequelize");
const { sequelize } = require("../config/sequelize");

const Trailer = sequelize.define(
  "Trailer",
  {},
  { tableName: "Trailer", timestamps: false }
);
module.exports = Trailer;
