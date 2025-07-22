const { Catalogo, Categoria } = require('../../models/Asociaciones');

module.exports = async (req, res) => {
    try {
        const peliculas = await Catalogo.findAll({
            attributes: ['idCatalogo', 'titulo', 'resumen', 'duracion', 'temporadas', 'busqueda'],
            include: [{
                model: Categoria,
                attributes: ['categoriaName'],
                where: { categoriaName: 'Película' }
            }]
        });
        res.json(peliculas.map(item => item.toJSON()));
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
}; 