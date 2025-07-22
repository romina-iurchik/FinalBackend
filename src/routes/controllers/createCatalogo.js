const { Catalogo } = require('../../models/Asociaciones');

module.exports = async (req, res) => {
    try {
        const nuevoCatalogo = await Catalogo.create(req.body);
        res.status(201).json(nuevoCatalogo);
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};