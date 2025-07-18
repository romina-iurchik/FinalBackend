const { DataTypes } = require("sequelize");
const { sequelize } = require("../config/sequelize");

const Poster = sequelize.define(
  "Poster",
  {
    idPoster: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
      allowNull: false,
      unique: true,
    },
    posterName: { type: DataTypes.STRING(50), allowNull: false, unique: true },
  },
  { tableName: "Poster", timestamps: false }
);
module.exports = Poster;

//    `idPoster` int AUTO_INCREMENT NOT NULL UNIQUE,
//    `postername` varchar(255) NOT NULL UNIQUE,
//    PRIMARY KEY (`idPoster`)
