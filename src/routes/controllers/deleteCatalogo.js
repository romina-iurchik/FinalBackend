const busco = require('../../models/Asociaciones');

module.exports = async(req, res) => {
    try {
        const catalogo = await busco.Catalogo.findOne(req.params.name);
        if(!catalogo) {
            return res.status(404).json({ error: 'Catalogo no encontrado'});
        }
        await catalogo.destroy();
        res.json({message: 'Catalogo eliminado correctamente'});
    } catch (error) {
        res.status(500).json({ error: 'Error al eliminar el Catalogo'});
    }
};