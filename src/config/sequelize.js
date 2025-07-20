const { Sequelize } = require("sequelize");
require("dotenv").config();

const sequelize = new Sequelize(
  process.env.DB_NAME,
  process.env.DB_USER,
  process.env.DB_PASSWORD,
  {
    host: process.env.DB_HOST,
    dialect: process.env.DB_DIALECT,
  }
);

const authenticate = async () => {
  try {
    await sequelize.authenticate();
    console.log("💪🏼 Conexión a la base de datos exitosa");
  } catch (error) {
    console.error("😵‍💫 Error al conectar a la base de datos", error);
  }
};

const closeConnection = async () => {
  try {
    await sequelize.close();
    console.log("🔌 Desconexión a la base de datos exitosa");
  } catch (error) {
    console.error("😱 Error al desconectar la base de datos", error);
  }
};
module.exports = { sequelize, authenticate, closeConnection };
