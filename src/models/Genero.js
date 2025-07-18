const { DataTypes } = require("sequelize");
const { sequelize } = require("../config/sequelize");

const Genero = sequelize.define(
  "Genero",
  {
    idGenero: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
      allowNull: false,
      unique: true,
    },
    generoName: { type: DataTypes.STRING(50), allowNull: false, unique: true },
  },
  { tableName: "Genero", timestamps: false }
);
module.exports = Genero;

//`idGenero` int AUTO_INCREMENT NOT NULL UNIQUE,
//`generoName` varchar(50) NOT NULL UNIQUE,
//PRIMARY KEY (`idGenero`)
