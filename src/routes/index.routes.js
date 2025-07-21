const express = require('express');
const router = express.Router();


const principal = require('./controllers/principal');
const getByCategoria = require('./controllers/getByCategoria');
const getByTitulo = require('./controllers/getByTitulo');
const getAll = require('./controllers/getAll');

router.get('/', principal);
router.get('/catalogo', getAll);
router.get('/categoria/:categoria', getByCategoria);
router.get('/titulo/:titulo', getByTitulo);

/*
const controller = require('../controllers/index.controller')
//requiero
const CatalogoController = require("../controllers/CatalogoController");
router.get('/catalogo', CatalogoController.listadoCatalogo);
router.get('/genero/:genero', CatalogoController.buscoPorTag);
*/
module.exports = router;