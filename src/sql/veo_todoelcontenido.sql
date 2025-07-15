SELECT
  c.idCatalogo,
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
FROM Catalogo c
-- Join con Categoria
JOIN Categoria cat ON c.idCategoriaCatalogo = cat.idCategoria
-- Join con Genero
JOIN Genero gen ON c.idGeneroCatalogo = gen.idGenero
-- Join con Poster
JOIN Poster p ON c.idPosterCatalogo = p.idPoster
-- Join con Trailer
JOIN Trailer t ON c.idTrailerCatalogo = t.idTrailer
-- Join con tabla intermedia CatalogoTag + Tag para obtener tags
LEFT JOIN CatalogoTag ct ON c.idCatalogo = ct.idCatalogo
LEFT JOIN Tag tg ON ct.idTag = tg.idTag
-- Join con tabla intermedia Reparto + Actor para obtener actores
LEFT JOIN Reparto r ON c.idCatalogo = r.idCatalogo
LEFT JOIN Actor a ON r.idActor = a.idActor
GROUP BY c.idCatalogo, c.titulo, c.resumen, c.temporadas, cat.categoriaName, gen.generoName, p.postername, t.trailername
ORDER BY c.idCatalogo;