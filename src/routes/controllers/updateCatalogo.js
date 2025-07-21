const { Catalogo } = require('../../models/Asociaciones');

module.exports = async (req, res) => {
    const id = req.params.id;
    try {
        const catalogo = await Catalogo.findByPk(id);
        if (!catalogo) return res.status(404).json({ error: 'Contenido no encontrado' });
        await catalogo.update(req.body);
        res.json({ message: 'Contenido actualizado correctamente' });
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
}; 