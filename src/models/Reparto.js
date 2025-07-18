const { DataTypes } = require("sequelize");
const { sequelize } = require("../config/sequelize");

const Reparto = sequelize.define(
  "Reparto",
  {
    idActor: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      allowNull: false,
    },
    idCatalogo: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      allowNull: false,
    },
  },
  { tableName: "Reparto", timestamps: false }
);
module.exports = Reparto;

//`idActor` int NOT NULL,
//`idCatalogo` int NOT NULL,
//PRIMARY KEY (`idActor`, `idCatalogo`)
