const nuevo = require('../../models/Asociaciones');

module.exports = async (req, res) => {
    try{
        const nuevoCatalogo = await nuevo.Catalogo.create(req.body);
        res.status(201).json(nuevoCatalogo);
    } catch (error){
        res.status(500).json({error: 'Error al intentar crear el catalogo'});
    }
};