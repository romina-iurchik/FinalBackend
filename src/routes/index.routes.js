const express = require('express');
const router = express.Router();


const principal = require('./controllers/principal');
const getByCategoria = require('./controllers/getByCategoria');
const getByTitulo = require('./controllers/getByTitulo');
const getAll = require('./controllers/getAll');
const getBytTag = require('./controllers/getByTag');
const getByActor = require('./controllers/getByActor');

router.get('/', principal);
router.get('/catalogo', getAll);
router.get('/categoria/:categoria', getByCategoria);
router.get('/genero/:tag', getBytTag);
router.get('/titulo/:titulo', getByTitulo);
router.get('/actor/:name', getByActor);


module.exports = router;