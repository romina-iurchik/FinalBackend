const { DataTypes } = require("sequelize");
const { sequelize } = require("../config/sequelize");

const Trailer = sequelize.define(
  "Trailer",
  {
    idTrailer: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
      allowNull: false,
      unique: true,
    },
    trailerName: { type: DataTypes.STRING(255), allowNull: false },
  },
  { tableName: "Trailer", timestamps: false }
);
module.exports = Trailer;

//`idTrailer` int AUTO_INCREMENT NOT NULL UNIQUE,
//`trailerName` varchar(255) NOT NULL,
//PRIMARY KEY (`idTrailer`)
