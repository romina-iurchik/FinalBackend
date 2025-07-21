const { Catalogo, Tag } = require('../../models/Asociaciones');

module.exports = async (req, res) => {
    const idTag = req.params.id;
    try {
        const tag = await Tag.findByPk(idTag);
        if (!tag) return res.status(404).json({ error: 'Tag no encontrado' });
        const contenidos = await tag.getCatalogos({ attributes: ['idCatalogo', 'titulo', 'resumen'] });
        res.json({ tag: tag.tagName, contenidos });
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
}; 