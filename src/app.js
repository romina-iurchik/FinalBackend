const express = require('express');
const app = express();

require("dotenv").config();

const PORT = process.env.PORT || 3000;

const cors = require("cors"); // conectar back y front con react

const { authenticate, sequelize } = require('./config/sequelize'); 

app.use(express.json());
//ROUTES
const indexRutas = require('./routes/index.routes');
app.use('/',indexRutas);

//middleware
app.use((req, res) =>{res.status(404).send('↗️ Ruta no encontrada ↙️')});

//conectamos a la bbdd antes de levantar el servidor

authenticate()
  .then(() => {
    return sequelize.sync({ alter: true }) // sincronisa modelos con la base
  })
  .then(() => {
    app.listen(PORT, () => console.log(`Servidor funcionando en http://localhost:${PORT}`));
  })
  .catch(err => {
    console.error('Error al conectar a la bbdd:', err);
  });



