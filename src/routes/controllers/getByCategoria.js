//busco por categoria

const { Catalogo, Categoria} = require('../../models/Asociaciones');

module.exports = async (req, res) => {
    const categoria = req.params.categoria;
    try{
    const listadoCategoria = await Catalogo.findAll({
        attributes: ['titulo'], include: [{model: Categoria, attributes: ['categoriaName'], where: { categoriaName: categoria}}]
    });
        const formato = listadoCategoria.map(item => item.toJSON());
    res.json(formato);
    } catch (error) {
        console.log('Mensaje error: ', error);
    } 
}