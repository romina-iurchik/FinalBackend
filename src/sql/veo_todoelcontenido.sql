SELECT
  c.idContenido,
  c.titulo,
  c.resumen,
  c.temporadas,
  cat.categoriaName AS categoria,
  gen.generoName AS genero,
  p.postername AS poster,
  t.trailername AS trailer,
  -- Tags concatenados separados por coma
  GROUP_CONCAT(DISTINCT tg.tagName ORDER BY tg.tagName SEPARATOR ', ') AS tags,
  -- Actores concatenados separados por coma
  GROUP_CONCAT(DISTINCT a.actorName ORDER BY a.actorName SEPARATOR ', ') AS actores
FROM Contenido c
-- Join con Categoria
JOIN Categoria cat ON c.idCategoriaContenido = cat.idCategoria
-- Join con Genero
JOIN Genero gen ON c.idGeneroContenido = gen.idGenero
-- Join con Poster
JOIN Poster p ON c.idPosterContenido = p.idPoster
-- Join con Trailer
JOIN Trailer t ON c.idTrailerContenido = t.idTrailer
-- Join con tabla intermedia ContenidoTag + Tag para obtener tags
LEFT JOIN ContenidoTag ct ON c.idContenido = ct.idContenido
LEFT JOIN Tag tg ON ct.idTag = tg.idTag
-- Join con tabla intermedia Reparto + Actor para obtener actores
LEFT JOIN Reparto r ON c.idContenido = r.idContenido
LEFT JOIN Actor a ON r.idActor = a.idActor
GROUP BY c.idContenido, c.titulo, c.resumen, c.temporadas, cat.categoriaName, gen.generoName, p.postername, t.trailername
ORDER BY c.idContenido;