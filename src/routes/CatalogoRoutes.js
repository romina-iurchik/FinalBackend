const express = require("express");
const router = express.Router();
const CatalogoController = require("../controllers/CatalogoController");

router.get("/listadoCatalogo", CatalogoController.listadoCatalogo);
//router.get("/obtenerPeliculas/:genero", CatalogoController);

module.exports = router;
