const { Catalogo, Categoria } = require('../../models/Asociaciones');

module.exports = async (req, res) => {
    try {
        const series = await Catalogo.findAll({
            attributes: ['idCatalogo', 'titulo', 'resumen', 'duracion', 'temporadas', 'busqueda'],
            include: [{
                model: Categoria,
                attributes: ['categoriaName'],
                where: { categoriaName: 'Serie' }
            }]
        });
        res.json(series.map(item => item.toJSON()));
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
}; 