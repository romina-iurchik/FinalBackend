const express = require('express');
const router = express.Router();


const principal = require('./controllers/principal');
const getByCategoria = require('./controllers/getByCategoria');
const getByTitulo = require('./controllers/getByTitulo');
const getAll = require('./controllers/getAll');
const getBytTag = require('./controllers/getByTag');
const getByActor = require('./controllers/getByActor');
const getPeliculas = require('./controllers/getPeliculas');
const getSeries = require('./controllers/getSeries');
const getActores = require('./controllers/getActores');
const getTrabajosActor = require('./controllers/getTrabajosActor');
const getTags = require('./controllers/getTags');
const getContenidoPorTag = require('./controllers/getContenidoPorTag');
const createCatalogo = require('./controllers/createCatalogo');
const updateCatalogo = require('./controllers/updateCatalogo');
const deleteCatalogo = require('./controllers/deleteCatalogo');

router.get('/', principal);
router.get('/catalogo', getAll);
router.post('/catalogo', createCatalogo);
router.put('/catalogo/:id', updateCatalogo);
router.delete('/catalogo/:id', deleteCatalogo);
router.get('/categoria/:categoria', getByCategoria);
router.get('/genero/:tag', getBytTag);
router.get('/titulo/:titulo', getByTitulo);
router.get('/actor/:name', getByActor);
router.get('/peliculas', getPeliculas);
router.get('/series', getSeries);
router.get('/actores', getActores);
router.get('/actores/:id/contenido', getTrabajosActor);
router.get('/tags', getTags);
router.get('/tags/:id/contenido', getContenidoPorTag);


module.exports = router;