const { Sequelize } = require("sequelize");
require("dotenv").config();

const sequelize = new Sequelize(
//config local
  /*process.env.DB_NAME,
  process.env.DB_USER,
  process.env.DB_PASSWORD,
  {
    host: process.env.DB_HOST,
    dialect: 'mysql',
  }*/
  //config Railway o local
  process.env.MYSQLDATABASE || process.env.DB_NAME,
  process.env.MYSQLUSER || process.env.DB_USER,
  process.env.MYSQLPASSWORD || process.env.DB_PASSWORD,
  {
    host: process.env.MYSQLHOST || process.env.DB_HOST,
    port: process.env.MYSQLPORT || 3306,
    dialect: process.env.DB_DIALECT || 'mysql'
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