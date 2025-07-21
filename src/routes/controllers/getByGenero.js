const { Catalogo, Genero }  = require('../../models/Asociaciones');

//busco por Genero
module.exports = async (req,res) => {
    console.log("Hola desde busco por tag");
    const nombreTag = req.params.tag;
    console.log("Nombre genero del body: ",nombreTag);
    try{
     //busco todas las peliculas de ese tag
        const peliculas = await Catalogo.findAll({
        attributes: ['titulo'], 
        include: 
        [
            { model: Genero,
                attributes: [],
                where: { generoName: nombreTag }} //si no quiero ver el genero por cada pelicula
                //attributes: ['generoName'], where: { generoName: nombreTag}}
                ]
    });
    res.json(peliculas);
    } catch (error) {
        console.log('Mensaje error: ', error);
    } 
}

/** -- 1. Obtener una lista de películas por género (por ejemplo: "Acción", "Terror", "Suspenso").
SELECT c.titulo
FROM catalogo c
JOIN genero g ON c.idGeneroCatalogo = g.idGenero
WHERE g.generoName = 'Drama';
*/