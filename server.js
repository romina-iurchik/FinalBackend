const express = require("express");
const app = express();
require("dotenv").config();
const PORT = 3010 || process.env.PORT;
const cors = require("cors");
const { authenticate } = require("./src/config/sequelize");

app.use(express.json());

//Importar body parser
const bodyParser = require("body-parser");
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: "true" }));

// autenticar la conexion a la bd. previo a realizar operaciones CRUD
(async () => {
  await authenticate();
})();

app.listen(PORT, () => {
  console.log(`Servidor corriendo en el puerto ${PORT}`);
});
