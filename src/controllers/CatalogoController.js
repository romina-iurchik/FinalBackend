
/*
const Catalogo = require("../models/Catalogo");
const Tag = require('../models/Tag');*/

const { Catalogo, Tag, Actor, Categoria, Genero, Trailer, Poster} = require('../models/Asociaciones');

//router.get("/listadoCatalogo", CatalogoController);

const CatalogoController = {}

//traigo el catalogo completo
  CatalogoController.listadoCatalogo = async (req, res) => {
    try {
      const listado = await Catalogo.findAll({
      attributes: {
        exclude: ['idGeneroCatalogo', 'idCategoriaCatalogo', 'idPosterCatalogo', 'idTrailerCatalogo']
      },
      include: [
        {
          model: Categoria, attributes: ['categoriaName']
        },
        {
          model: Genero, attributes: ['generoName']
        },
        {
          model: Tag, attributes: ['tagName'] // Ocultamos la tabla intermedia CatalogoTag
        },
        {
          model: Actor, attributes: ['actorName'] // Ocultamos la tabla intermedia Reparto
        },
        {
          model: Poster, attributes: ['posterName']
        },
        {
          model: Trailer, attributes: ['trailerName']
        }
      ]
    });
    //formato mas lindo
    const formato = listado.map(item => item.toJSON());
    res.json(formato);

    } catch (error) {
      console.error("Error al consultar el catalogo de Trailerflix", error);
      res.status(500).json({ error: error.message });
    }
  } ;

//busco por genero
  CatalogoController.buscoPorTag = async (req,res) => {
    console.log("Hola desde busco por tag");
    const nombreTag = req.params.genero;
    console.log("Nombre genero del body: ",nombreTag);
    try{
     //busco todas las peliculas de ese tag
      const peliculas = await Catalogo.findAll({
        attributes: ['titulo'], include: [{ model: Tag, attributes: ['tagName'], where: { tagName: nombreTag}, through: {attributes: []} }]
    });
    res.json(peliculas);;
    } catch (error) {
      console.log('Mensaje error: ', error);
    } 
  }

//busco por categoria

CatalogoController.buscoPorCategoria = async (req, res) => {
  const categoria = req.params.categoria;
  try{
    const listadoCategoria = await Catalogo.findAll({
      attributes: ['titulo'], include: [{model: Categoria, attributes: ['categoriaName'], where: { categoriaName: categoria}}]
    });
        const formato = listadoCategoria.map(item => item.toJSON());
    res.json(formato);
  } catch (error) {
      console.log('Mensaje error: ', error);
    } 
}







module.exports = CatalogoController;
