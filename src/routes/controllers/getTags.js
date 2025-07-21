const { Tag } = require('../../models/Asociaciones');

module.exports = async (req, res) => {
    try {
        const tags = await Tag.findAll({ attributes: ['idTag', 'tagName'] });
        res.json(tags);
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
}; 