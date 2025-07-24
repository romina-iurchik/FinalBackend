const { DataTypes } = require("sequelize");
const { sequelize } = require("../config/sequelize");


const Catalogo = sequelize.define(
  "Catalogo",
  {
    idCatalogo: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
      allowNull: false,
      unique: true,
    },
    resumen: { type: DataTypes.TEXT, allowNull: false },
    duracion: {
      type: DataTypes.INTEGER,
      allowNull: true,
      defaultValue: null,
    },
    busqueda: {
      type: DataTypes.STRING(255),
      allowNull: true,
      defaultValue: null,
    },
    temporadas: {
      type: DataTypes.INTEGER,
      allowNull: true,
      defaultValue: null,
    },

    idPosterCatalogo: { type: DataTypes.INTEGER, allowNull: false },
    idTrailerCatalogo: { type: DataTypes.INTEGER, allowNull: false },
    idCategoriaCatalogo: { type: DataTypes.INTEGER, allowNull: false },
    idGeneroCatalogo: { type: DataTypes.INTEGER, allowNull: false },
    titulo: { type: DataTypes.STRING(255), allowNull: false },
  },
  { tableName: "Catalogo", timestamps: false }
);






module.exports = Catalogo;

// `idCatalogo` int AUTO_INCREMENT NOT NULL UNIQUE,
// `resumen` TEXT NOT NULL,
// `duracion` varchar(50) NULL DEFAULT NULL,
// `busqueda` varchar(255) NULL DEFAULT NULL,
// `temporadas` int NULL DEFAULT NULL,
// `idPosterCatalogo` int NOT NULL,
// `idTrailerCatalogo` int NOT NULL,
// `idCategoriaCatalogo` int NOT NULL,
// `idGeneroCatalogo` int NOT NULL,
// `titulo` varchar(255) NOT NULL,
// PRIMARY KEY (`idCatalogo`)
