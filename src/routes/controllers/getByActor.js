
const { Op } = require('sequelize');
const { Catalogo, Tag, Actor, Categoria, Genero, Trailer, Poster } = require('../../models/Asociaciones');

module.exports = async (req, res) => {

    const busqueda = req.params.name;
    //valido que no sea vacío
    if(!busqueda || busqueda.trim().length === 0){
        res.status(400).send('Ingrese un actor válido');
        return;
    }
    try {
        const pelicula = await Catalogo.findAll({
                attributes: ['titulo'],
                include: [{
                    model: Actor,
                    attributes: ['actorName'], through: { attributes: [] },
                    where: { actorName: {[Op.like]: `%${busqueda}%`}}
                    },
                    {
                        model: Genero,
                        attributes: ['generoName']
                    }
                ]
            }
        );
        
        if (!pelicula || pelicula.length === 0){
            res.status(404).json({ error: '🕵🏻🔎 No se encontró el actriz/actor' });
        }
        res.json(pelicula);
    } catch (error) {
        res.status(500).json({ error: 'Error al querer realizar la busqueda.' });
    }
};

