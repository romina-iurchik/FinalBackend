const { Catalogo, Tag }  = require('../../models/Asociaciones');

//busco por Genero
module.exports = async (req,res) => {
    console.log("Hola desde busco por tag");
    const nombreTag = req.params.tag;
    console.log("Nombre genero del body: ",nombreTag);
    try{
     //busco todas las peliculas de ese tag
        const peliculas = await Catalogo.findAll({
        attributes: ['titulo'], 
        include: [
            { model: Tag, 
                attributes: ['tagName'],
                where: { tagName: nombreTag}, 
                through: {attributes: []} }]
    });
    res.json(peliculas);;
    } catch (error) {
        console.log('Mensaje error: ', error);
    } 
}