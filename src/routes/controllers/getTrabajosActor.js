const { Catalogo, Actor } = require('../../models/Asociaciones');

module.exports = async (req, res) => {
    const idActor = req.params.id;
    try {
        const actor = await Actor.findByPk(idActor);
        if (!actor) return res.status(404).json({ error: 'Actor no encontrado' });
        const trabajos = await actor.getCatalogos({ attributes: ['idCatalogo', 'titulo', 'resumen'] });
        res.json({ actor: actor.actorName, trabajos });
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
}; 