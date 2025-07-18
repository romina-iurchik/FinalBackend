const { Datatypes } = require("sequelize");
const { sequelize } = require("../config/sequelize");

const Tag = sequelize.define(
  "Tag",
  {},
  { tableName: "Tag", timestamps: false }
);
module.exports = Tag;
