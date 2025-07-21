const busco = require('../../models/Asociaciones');

module.exports = async (req, res) => {
    try {
        const listado = await busco.Catalogo.findOne(req.params.titulo);
        if (!listado){
            res.status(404).json({ error: 'No se encontró el título' });
        }
        res.json(listado);
    } catch (error) {
        res.status(500).json({ error: 'Error al querer realizar la busqueda.' });
    }
};