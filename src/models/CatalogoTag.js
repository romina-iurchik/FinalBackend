const { DataTypes } = require("sequelize");
const { sequelize } = require("../config/sequelize");

const CatalogoTag = sequelize.define(
  "CatalogoTag",
  {
    idCatalogo: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      allowNull: false,
    },
    idTag: { type: DataTypes.INTEGER, primaryKey: true, allowNull: false },
  },
  { tableName: "CatalogoTag", timestamps: false }
);
module.exports = CatalogoTag;

//`idCatalogo` int NOT NULL,
//`idTag` int NOT NULL,
//PRIMARY KEY (`idCatalogo`, `idTag`)

