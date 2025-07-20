const express = require('express');
const router = express.Router();
const controller = require('../controllers/index.controller')
//requiero
const CatalogoController = require("../controllers/CatalogoController");


router.get('/', controller.index);

router.get('/catalogo', CatalogoController.listadoCatalogo);

router.get('/genero/:genero', CatalogoController.buscoPorTag);

router.get('/categoria/:categoria', CatalogoController.buscoPorCategoria);





module.exports = router;