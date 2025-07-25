const { Op } = require('sequelize');
const { Catalogo }  = require('../../models/Asociaciones');

module.exports = async (req, res) => {

    const busqueda = req.params.titulo;
    try {
        const pelicula = await Catalogo.findAll(
            {   where :{titulo: {[Op.like]: `%${busqueda}%`}} ,
                attributes: [ 'titulo', 'resumen'] 
        });
        if (!pelicula){
            res.status(404).json({ error: 'No se encontró el título' });
        }
        res.json(pelicula);
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Error al querer realizar la busqueda.' });
    }
};

/**
 * SELECT c.titulo, c.resumen
FROM Catalogo c
WHERE c.titulo LIKE '%s%'; 
*/