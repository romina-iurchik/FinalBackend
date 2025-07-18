//SE USO IA

function escapeString(str) {
  if (!str) return "";
  return str.replace(/'/g, "''");
}

function generateInsertSQL(contenido) {
  const {
    id,
    poster,
    titulo,
    categoria,
    tags,
    genero,
    resumen,
    temporadas,
    reparto,
    trailer,
    duracion,
    busqueda,
  } = contenido;

  // Convertir temporadas a número o NULL si no es válido

  const temporadasNum = parseInt(temporadas);
  const temporadasSQL = Number.isNaN(temporadasNum) ? "NULL" : temporadasNum;

  const duracionSQL = duracion ? `'${escapeString(duracion)}'` : "NULL";
  const busquedaSQL = busqueda ? `'${escapeString(busqueda)}'` : "NULL";

  const tagsArray = tags.split(",").map((tag) => tag.trim());
  const actoresArray = reparto.split(",").map((actor) => actor.trim());

  let sql = "";

  // Insertar Categoria
  sql += `
-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT '${escapeString(categoria)}') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = '${escapeString(categoria)}'
) LIMIT 1;\n`;

  // Insertar Genero
  sql += `
-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT '${escapeString(genero)}') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = '${escapeString(genero)}'
) LIMIT 1;\n`;

  // Insertar Poster
  sql += `
-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT '${escapeString(poster)}') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = '${escapeString(poster)}'
) LIMIT 1;\n`;

  // Insertar Trailer
  sql += `
-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT '${escapeString(trailer)}') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = '${escapeString(trailer)}'
) LIMIT 1;\n`;

  // Obtener IDs FK
  sql += `
-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = '${escapeString(
    categoria
  )}');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = '${escapeString(
    genero
  )}');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = '${escapeString(
    poster
  )}');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = '${escapeString(
    trailer
  )}');
SET @idCatalogo = ${id};\n`;

  // Insertar en Catalogo
  sql += `
-- Insertar en Catálogo
INSERT INTO Catalogo (idCatalogo, resumen, temporadas, idPosterCatalogo, idTrailerCatalogo, idCategoriaCatalogo, idGeneroCatalogo, titulo, duracion, busqueda)
VALUES (
  ${id},
  '${escapeString(resumen)}',
  ${temporadasSQL},
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  '${escapeString(titulo)}',
  ${duracionSQL},
  ${busquedaSQL}
);\n`;

  // Insertar Tags y asociarlos
  sql += `-- Insertar Tags y asociarlos\n`;
  tagsArray.forEach((tag) => {
    sql += `
INSERT INTO Tag (tagName)
SELECT * FROM (SELECT '${escapeString(tag)}') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = '${escapeString(
      tag
    )}') LIMIT 1;

INSERT INTO CatalogoTag (idCatalogo, idTag)
SELECT @idCatalogo, idTag FROM Tag WHERE tagName = '${escapeString(tag)}';\n`;
  });

  // Insertar Actores y asociarlos
  sql += `-- Insertar Actores y asociarlos\n`;
  actoresArray.forEach((actor) => {
    sql += `
INSERT INTO Actor (actorName)
SELECT * FROM (SELECT '${escapeString(actor)}') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = '${escapeString(
      actor
    )}') LIMIT 1;

INSERT INTO RepartoCatalogo (idCatalogo, idActor)
SELECT @idCatalogo, idActor FROM Actor WHERE actorName = '${escapeString(
      actor
    )}';\n`;
  });

  return sql;
}

module.exports = generateInsertSQL;
