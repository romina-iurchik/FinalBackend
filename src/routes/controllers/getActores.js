const { Actor } = require('../../models/Asociaciones');

module.exports = async (req, res) => {
    try {
        const actores = await Actor.findAll({ attributes: ['idActor', 'actorName'] });
        res.json(actores);
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
}; 