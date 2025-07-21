
const { Op } = require('sequelize');
const { Catalogo, Tag, Actor, Categoria, Genero, Trailer, Poster } = require('../../models/Asociaciones');

module.exports = async (req, res) => {

    const busqueda = req.params.name;
    try {
        const pelicula = await Catalogo.findAll(
            
            { attributes: [ 'titulo', 'resumen'],
                include: [
                    { model: Actor, where: { actorName: { [Op.like]: `%${busqueda}%`} }, attributes: ['actorName'], through: { attributes: [] } /* Ocultamos la tabla intermedia Reparto */},
                    { model: Categoria, attributes: ['categoriaName'] },
                    { model: Genero, attributes: ['generoName']}
                ] 
        });
        if (!pelicula || pelicula.length === 0){
            res.status(404).json({ error: 'No se encontró el actriz/actor' });
        }
        res.json(pelicula);
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Error al querer realizar la busqueda.' });
    }
};