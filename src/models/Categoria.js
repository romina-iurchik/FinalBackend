const { DataTypes } = require("sequelize");
const { sequelize } = require("../config/sequelize");

const Categoria = sequelize.define(
  "Categoria",
  {
    idCategoria: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
      allowNull: false,
      unique: true,
    },
    categoriaName: {
      type: DataTypes.STRING(255),
      allowNull: false,
      unique: true,
    },
  },
  { tableName: "Categoria", timestamps: false }
);
module.exports = Categoria;

//`idCategoria` int AUTO_INCREMENT NOT NULL UNIQUE,
//`categoriaName` varchar(255) NOT NULL UNIQUE,
//PRIMARY KEY (`idCategoria`)
