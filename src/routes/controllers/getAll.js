const { Catalogo, Tag, Actor, Categoria, Genero, Trailer, Poster } = require('../../models/Asociaciones');

module.exports = async (req, res) => {
    try {
        const listado = await Catalogo.findAll({
        attributes:['idCatalogo', 'titulo', 'resumen', 'duracion', 'temporadas', 'busqueda'],
        include: [
        {
            model: Categoria, attributes: ['categoriaName'],
        },
        {
            model: Genero, attributes: ['generoName'],
        },
        {
            model: Tag, attributes: ['tagName'],through: { attributes: [] }, // Ocultamos la tabla intermedia CatalogoTag
        },
        {
            model: Actor, attributes: ['actorName'], through: { attributes: [] }, // Ocultamos la tabla intermedia Reparto
        },
        {
            model: Poster, attributes: ['posterName'],
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
};


