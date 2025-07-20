const Catalogo = require('./Catalogo');
const Tag = require('./Tag');
const CatalogoTag = require('./CatalogoTag');
const Reparto = require('./Reparto');
const Actor = require('./Actor');
const Categoria = require('./Categoria');
const Genero = require('./Genero');
const Trailer = require('./Trailer');
const Poster = require('./Poster');

// Relacion de Catalog con Tag
//relacion de catalogo --> Tag pasando por catalogoTag
Catalogo.belongsToMany(Tag,{
    //through = a través de: 
    through: CatalogoTag,
    foreignKey: 'idCatalogo',
    otherKey: 'idTag',
});
//tag pertenece a muchos Catalogo a traves de catalogoTag
Tag.belongsToMany(Catalogo, {
    through: CatalogoTag,
    foreignKey: 'idTag',
    otherKey: 'idCatalogo'
});

//Relacion de Catalogo con Actor
//relacion de catalogo --> actor pasando por reparto
Catalogo.belongsToMany(Actor,{
    //through = a través de: 
    through: Reparto,
    foreignKey: 'idCatalogo',
    otherKey: 'idActor',
});
//actor pertenece a muchos Catalogo a traves de reparto
Actor.belongsToMany(Catalogo, {
    through: Reparto,
    foreignKey: 'idActor',
    otherKey: 'idCatalogo'
});

//Relaciones 1:1
//Catalogo --> Categoria
Catalogo.belongsTo(Categoria, { foreignKey: 'idCategoriaCatalogo' });


//Catalogo --> Genero
Catalogo.belongsTo(Genero, { foreignKey: 'idGeneroCatalogo' });


//Catalogo --> Trailer
Catalogo.belongsTo(Trailer, { foreignKey: 'idTrailerCatalogo' });


//Catalogo --> Poster
Catalogo.belongsTo(Poster, { foreignKey: 'idPosterCatalogo' });







module.exports = { Catalogo, Tag, CatalogoTag, Reparto, Actor, Categoria, Genero, Trailer, Poster };