const { DataTypes } = require("sequelize");
const { sequelize } = require("../config/sequelize");

const Tag = sequelize.define(
  "Tag",
  {
    idTag: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
      allowNull: false,
      unique: true,
    },
    tagName: { type: DataTypes.STRING(50), allowNull: false, unique: true },
  },
  { tableName: "Tag", timestamps: false }
);
module.exports = Tag;

//  `idTag` int AUTO_INCREMENT NOT NULL UNIQUE,
//  `tagName` varchar(50) NOT NULL UNIQUE,
//  PRIMARY KEY (`idTag`)
