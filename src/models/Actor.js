const { DataTypes } = require("sequelize");
const { sequelize } = require("../config/sequelize");

const Actor = sequelize.define(
  "Actor",
  {
    idActor: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
      allowNull: false,
      unique: true,
    },
    actorName: { type: DataTypes.STRING(50), allowNull: false, unique: true },
  },
  { tableName: "Actor", timestamps: false }
);
module.exports = Actor;

//`idActor` int AUTO_INCREMENT NOT NULL UNIQUE,
//`actorName` varchar(50) NOT NULL UNIQUE,
// PRIMARY KEY (`idActor`)
