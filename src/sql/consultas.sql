-- Consultas SQL para el proyecto FinalBackend

-- 1. Obtener una lista de películas por género (por ejemplo: "Acción", "Terror", "Suspenso").

SELECT c.titulo
FROM catalogo c
JOIN genero g ON c.idGeneroCatalogo = g.idGenero
WHERE g.generoName = 'Suspenso';

-- 2. Obtener películas con los tags "Aventura" y "Ciencia Ficción", o "Aventura" y "Fantasía".
SELECT c.titulo
FROM Catalogo c
JOIN CatalogoTag ct ON c.idCatalogo = ct.idCatalogo
JOIN Tag t ON ct.idTag = t.idTag
WHERE t.tagName IN ('Aventura', 'Ciencia Ficción')
GROUP BY c.idCatalogo
HAVING COUNT(DISTINCT t.tagName) = 2;


-- peliculas "Aventura" y "Fantasía" con al menos 2 tags
JOIN Tag t ON ct.idTag = t.idTag
WHERE t.tagName IN ('Aventura', 'Fantasía')
GROUP BY c.idCatalogo
HAVING COUNT(DISTINCT t.tagName) = 2;



-- 3. Visualizar títulos y categorías cuyo resumen contenga la palabra "misión".

SELECT c.titulo, cat.categoriaName
FROM Catalogo c
JOIN Categoria cat ON c.idCategoriaCatalogo = cat.idCategoria
WHERE c.resumen LIKE '%misión%';



-- con este se ve resumen para corroborar que la consulta funciona correctamente
SELECT c.titulo, cat.categoriaName, c.resumen
FROM Catalogo c
JOIN Categoria cat ON c.idCategoriaCatalogo = cat.idCategoria
WHERE c.resumen LIKE '%misión%';



-- 4. Listar las series con al menos 3 temporadas.

SELECT c.titulo
FROM Catalogo c
JOIN Categoria cat ON c.idCategoriaCatalogo = cat.idCategoria
WHERE cat.categoriaName = 'Serie' AND c.temporadas >= 3;



-- 5.Contar cuántas películas/series trabajó el actor Chris Pratt.

SELECT COUNT(*) AS cantidad
FROM Reparto r
JOIN Actor a ON r.idActor = a.idActor
WHERE a.actorName = 'Chris Pratt';



-- 6. Mostrar nombre completo de actrices/actores junto a: título de los trabajos, categoría y género.

SELECT a.actorName, c.titulo, cat.categoriaName, g.generoName
FROM Actor a
JOIN Reparto r ON a.idActor = r.idActor
JOIN Catalogo c ON r.idCatalogo = c.idCatalogo
JOIN Categoria cat ON c.idCategoriaCatalogo = cat.idCategoria
JOIN Genero g ON c.idGeneroCatalogo = g.idGenero;



-- 7. Ver solo la categoría "Películas": mostrar título en mayúsculas, género en mayúsculas, tags separados por coma, duración y enlace al tráiler.

SELECT 
    UPPER(c.titulo) AS titulo,
    UPPER(g.generoName) AS genero,
    GROUP_CONCAT(t.tagName SEPARATOR ', ') AS tags,
    CONCAT(c.duracion, ' minutos') AS duracion,
    tr.trailerName AS trailer
FROM Catalogo c
JOIN Genero g ON c.idGeneroCatalogo = g.idGenero
JOIN Categoria cat ON c.idCategoriaCatalogo = cat.idCategoria
LEFT JOIN CatalogoTag ct ON c.idCatalogo = ct.idCatalogo
LEFT JOIN Tag t ON ct.idTag = t.idTag
JOIN Trailer tr ON c.idTrailerCatalogo = tr.idTrailer
WHERE cat.categoriaName = 'Película'
GROUP BY c.idCatalogo, c.titulo, g.generoName, c.duracion, tr.trailerName;


-- 8. Ver solo la categoría "Series": mostrar título en mayúsculas, género en mayúsculas, tags separados por coma, cantidad de temporadas, tráiler y resumen.

SELECT UPPER(c.titulo) AS titulo,
       UPPER(g.generoName) AS genero,
       GROUP_CONCAT(t.tagName SEPARATOR ', ') AS tags,
       c.temporadas AS temporadas,
       tr.trailerName AS trailer,
       c.resumen AS resumen
FROM Catalogo c
JOIN Genero g ON c.idGeneroCatalogo = g.idGenero
JOIN Categoria cat ON c.idCategoriaCatalogo = cat.idCategoria
LEFT JOIN CatalogoTag ct ON c.idCatalogo = ct.idCatalogo
LEFT JOIN Tag t ON ct.idTag = t.idTag
JOIN Trailer tr ON c.idTrailerCatalogo = tr.idTrailer
WHERE cat.categoriaName = 'Serie'
GROUP BY c.idCatalogo;



-- 9. Identificar la película/serie con más actores y la que tiene menos actores, indicando la cantidad en cada caso.

WITH CatalogoActorCounts AS (
    -- Calcular cantidad de actores para cada catálogo
    SELECT
        c.idCatalogo,
        c.titulo,
        COUNT(r.idActor) AS cantidad_actores -- COUNT(r.idActor) es 0 si no hay coincidencias con LEFT JOIN
    FROM
        Catalogo c
    LEFT JOIN
        Reparto r ON c.idCatalogo = r.idCatalogo
    GROUP BY
        c.idCatalogo, c.titulo
)
-- Seleccionar pelí/serie con más actores
SELECT
    'Película/Serie con Más Actores' AS Tipo,
    cac.titulo,
    cac.cantidad_actores
FROM
    CatalogoActorCounts cac
WHERE
    cac.cantidad_actores = (SELECT MAX(cantidad_actores) FROM CatalogoActorCounts)

UNION ALL

-- Seleccionar pelí/serie con menos actores
SELECT
    'Película/Serie con Menos Actores' AS Tipo,
    cac.titulo,
    cac.cantidad_actores
FROM
    CatalogoActorCounts cac
WHERE
    cac.cantidad_actores = (SELECT MIN(cantidad_actores) FROM CatalogoActorCounts)
ORDER BY
    cantidad_actores DESC;



-- 10. Contar la cantidad total de películas registradas.

SELECT COUNT(*) AS total_peliculas
FROM Catalogo c
JOIN Categoria cat ON c.idCategoriaCatalogo = cat.idCategoria
WHERE cat.categoriaName = 'Película';



-- 11. Contar la cantidad total de series registradas.

SELECT COUNT(*) AS total_series
FROM Catalogo c
JOIN Categoria cat ON c.idCategoriaCatalogo = cat.idCategoria
WHERE cat.categoriaName = 'Serie';


-- 12. Listar las series en orden descendente por cantidad de temporadas.

SELECT c.titulo, c.temporadas
FROM Catalogo c
JOIN Categoria cat ON c.idCategoriaCatalogo = cat.idCategoria
WHERE cat.categoriaName = 'Serie'
ORDER BY c.temporadas DESC;


-- 13. Agregar el campo fecha_lanzamiento (tipo DATE) a la tabla de trabajos fílmicos y actualizar las fechas de los títulos del género "Aventura".

ALTER TABLE Catalogo
ADD COLUMN fecha_lanzamiento DATE;
-- Actualizar las fechas para género "Aventura"
UPDATE Catalogo
SET fecha_lanzamiento = '2023-01-01'
WHERE idGeneroCatalogo = (
  SELECT idGenero FROM Genero WHERE generoName = 'Aventura'
);

-- Confirmación
SELECT 'Campo fecha_lanzamiento agregado y actualizado para Aventura' AS mensaje;
-- Verificación
SELECT c.titulo, g.generoName, c.fecha_lanzamiento
FROM Catalogo c
JOIN Genero g ON c.idGeneroCatalogo = g.idGenero
WHERE g.generoName = 'Aventura';


-- 14. Buscar películas por palabra clave en título o descripción (por ejemplo: "Aventura", "madre", "Ambientada").

SELECT c.titulo, c.resumen
FROM Catalogo c
WHERE CONCAT(c.titulo, ' ', c.resumen) LIKE '%madre%';



-- 15. Agregar una tabla "Ranking" con: ID de película/serie, calificación y comentarios.

CREATE TABLE IF NOT EXISTS `Ranking` (
    `idRanking` int AUTO_INCREMENT NOT NULL UNIQUE,
    `idCatalogo` int NOT NULL,
    `calificacion` DECIMAL(2,1) CHECK (calificacion >= 0 AND calificacion <= 10),
    `comentarios` text,
    `fechaRanking` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`idRanking`),
    FOREIGN KEY (`idCatalogo`) REFERENCES `Catalogo`(`idCatalogo`)
);

-- Verificar 
SELECT 'Tabla Ranking creada correctamente' AS mensaje;
DESCRIBE Ranking;