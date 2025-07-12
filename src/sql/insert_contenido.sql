
-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Serie') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Serie'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Ciencia Ficción') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Ciencia Ficción'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/3.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/3.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/aOC8E8z_ifw') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/aOC8E8z_ifw'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Serie');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Ciencia Ficción');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/3.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/aOC8E8z_ifw');
SET @idContenido = 3;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  3,
  'Ambientada tras la caída del Imperio y antes de la aparición de la Primera Orden, la Serie sigue los pasos de un pistolero solitario en las aventuras que protagoniza en los confines de la galaxia, donde no alcanza la autoridad de la Nueva República.',
  2,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'The Mandalorian'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Sci-Fi') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Sci-Fi') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Sci-Fi';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Fantasía') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Fantasía') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Fantasía';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Acción') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Acción') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Acción';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Pedro Pascal') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Pedro Pascal') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Pedro Pascal';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Carl Weathers') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Carl Weathers') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Carl Weathers';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Misty Rosas') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Misty Rosas') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Misty Rosas';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Chris Bartlett') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Chris Bartlett') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Chris Bartlett';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Rio Hackford') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Rio Hackford') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Rio Hackford';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Giancarlo Esposito') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Giancarlo Esposito') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Giancarlo Esposito';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Serie') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Serie'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Ciencia Ficción') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Ciencia Ficción'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/4.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/4.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/KHucKOK-Vik') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/KHucKOK-Vik'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Serie');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Ciencia Ficción');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/4.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/KHucKOK-Vik');
SET @idContenido = 4;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  4,
  'La muerte de su padre reúne a unos hermanos distanciados y con extraordinarios poderes que descubren impactantes secretos y una amenaza que se cierne sobre la humanidad.',
  1,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'The Umbrella Academy'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Sci-Fi') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Sci-Fi') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Sci-Fi';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Fantasía') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Fantasía') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Fantasía';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Tom Hopper') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Tom Hopper') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Tom Hopper';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'David Castañeda') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'David Castañeda') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'David Castañeda';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Emmy Raver-Lampman') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Emmy Raver-Lampman') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Emmy Raver-Lampman';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Robert Sheehan') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Robert Sheehan') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Robert Sheehan';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Aidan Gallagher') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Aidan Gallagher') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Aidan Gallagher';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Elliot Page') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Elliot Page') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Elliot Page';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Serie') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Serie'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Drama'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/5.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/5.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/lbleRbyGKL4') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/lbleRbyGKL4'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Serie');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Drama');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/5.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/lbleRbyGKL4');
SET @idContenido = 5;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  5,
  'En los cincuenta, una joven de un orfanato descubre que tiene un increíble don para el ajedrez y recorre el arduo camino a la fama mientras lucha contra las adicciones.',
  1,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Gambito de Dama'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Ficción') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Ficción') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Ficción';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Sucesos') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Sucesos') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Sucesos';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Anya Taylor-Joy') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Anya Taylor-Joy') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Anya Taylor-Joy';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Thomas Brodie-Sangster') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Thomas Brodie-Sangster') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Thomas Brodie-Sangster';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Harry Melling') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Harry Melling') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Harry Melling';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Moses Ingram') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Moses Ingram') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Moses Ingram';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Chloe Pirrie') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Chloe Pirrie') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Chloe Pirrie';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Janina Elkin') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Janina Elkin') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Janina Elkin';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Serie') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Serie'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Drama'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/2.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/2.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/HxtLlByaYTc') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/HxtLlByaYTc'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Serie');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Drama');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/2.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/HxtLlByaYTc');
SET @idContenido = 2;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  2,
  'El paso a la edad adulta incluye sexo, romance, escuela y familia. Para Archie y sus amigos, también hay misterios oscuros.',
  5,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Riverdale'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Misterio') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Misterio') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Misterio';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Ficción') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Ficción') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Ficción';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Lili Reinhart') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Lili Reinhart') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Lili Reinhart';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Casey Cott') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Casey Cott') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Casey Cott';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Camila Mendes') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Camila Mendes') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Camila Mendes';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Marisol Nichols') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Marisol Nichols') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Marisol Nichols';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Madelaine Petsch') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Madelaine Petsch') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Madelaine Petsch';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Mädchen Amick') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Mädchen Amick') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Mädchen Amick';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Serie') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Serie'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Suceso Real') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Suceso Real'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/1.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/1.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/JWtnJjn6ng0') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/JWtnJjn6ng0'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Serie');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Suceso Real');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/1.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/JWtnJjn6ng0');
SET @idContenido = 1;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  1,
  'Este drama narra las rivalidades políticas y el romance de la reina Isabel II, así como los sucesos que moldearon la segunda mitad del siglo XX.',
  4,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'The Crown'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suceso Real') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suceso Real') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suceso Real';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Claire Fox') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Claire Fox') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Claire Fox';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Olivia Colman') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Olivia Colman') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Olivia Colman';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Matt Smith') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Matt Smith') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Matt Smith';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Tobias Menzies') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Tobias Menzies') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Tobias Menzies';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Vanesa Kirby') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Vanesa Kirby') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Vanesa Kirby';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Helena Bonham Carter') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Helena Bonham Carter') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Helena Bonham Carter';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Drama'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/6.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/6.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/3t1g2pa355k') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/3t1g2pa355k'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Drama');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/6.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/3t1g2pa355k');
SET @idContenido = 6;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  6,
  'La hermana menor de Sherlock, descubre que su madre ha desaparecido y se dispone a encontrarla. En su búsqueda, saca a relucir el sabueso que corre por sus venas y se encuentra con una conspiración que gira en torno a un misterioso lord, demostrando que su ilustre hermano no es el único talento en la familia.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Enola Holmes'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Ficción') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Ficción') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Ficción';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Misterio') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Misterio') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Misterio';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Millie Bobby Brown') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Millie Bobby Brown') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Millie Bobby Brown';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Henry Cavill') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Henry Cavill') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Henry Cavill';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Sam Claflin') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Sam Claflin') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Sam Claflin';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Helena Bonham Carter') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Helena Bonham Carter') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Helena Bonham Carter';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Louis Partridge') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Louis Partridge') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Louis Partridge';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Adeel Akhtar') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Adeel Akhtar') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Adeel Akhtar';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Suspenso') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Suspenso'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/7.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/7.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/zAGVQLHvwOY') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/zAGVQLHvwOY'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Suspenso');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/7.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/zAGVQLHvwOY');
SET @idContenido = 7;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  7,
  'Arthur Fleck (Phoenix) es un hombre ignorado por la sociedad, cuya motivación en la vida es hacer reír. Pero una Serie de trágicos acontecimientos le llevarán a ver el mundo de otra forma. Película basada en el popular personaje de DC Comics Joker, conocido como archivillano de Batman, pero que en este film tomará un cariz más realista y oscuro.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Guasón'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Crimen') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Crimen') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Crimen';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suspenso') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suspenso') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suspenso';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Joaquin Phoenix') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Joaquin Phoenix') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Joaquin Phoenix';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Robert De Niro') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Robert De Niro') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Robert De Niro';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Zazie Beetz') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Zazie Beetz') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Zazie Beetz';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Frances Conroy') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Frances Conroy') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Frances Conroy';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Brett Cullen') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Brett Cullen') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Brett Cullen';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Shea Whigham') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Shea Whigham') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Shea Whigham';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Ciencia Ficción') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Ciencia Ficción'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/8.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/8.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/TcMBFSGVi1c') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/TcMBFSGVi1c'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Ciencia Ficción');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/8.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/TcMBFSGVi1c');
SET @idContenido = 8;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  8,
  'Después de los devastadores eventos de los Vengadores: Infinity War (2018), el universo está en ruinas. Con la ayuda de los aliados restantes, los Vengadores se reúnen una vez más para revertir las acciones de Thanos y restaurar el equilibrio del universo.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Avengers: End Game'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Aventura') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Aventura') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Aventura';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Sci-Fi') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Sci-Fi') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Sci-Fi';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Acción') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Acción') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Acción';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Robert Downey Jr.') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Robert Downey Jr.') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Robert Downey Jr.';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Chris Evans') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Chris Evans') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Chris Evans';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Mark Ruffalo') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Mark Ruffalo') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Mark Ruffalo';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Chris Hemsworth') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Chris Hemsworth') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Chris Hemsworth';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Scarlett Johansson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Scarlett Johansson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Scarlett Johansson';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jeremy Renner') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jeremy Renner') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jeremy Renner';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Serie') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Serie'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Fantasía') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Fantasía'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/9.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/9.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/KPLWWIOCOOQ') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/KPLWWIOCOOQ'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Serie');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Fantasía');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/9.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/KPLWWIOCOOQ');
SET @idContenido = 9;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  9,
  'En un mundo fantástico y en un contexto medieval varias familias, relativas a la nobleza, se disputan el poder para dominar el territorio ficticio de Poniente (Westeros) y tomar el control de los Siete Reinos desde el Trono de Hierro, lugar donde el rey ejerce el poder.',
  8,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Juego de tronos'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Aventura') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Aventura') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Aventura';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Fantasía') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Fantasía') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Fantasía';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Emilia Clarke') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Emilia Clarke') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Emilia Clarke';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Lena Headey') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Lena Headey') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Lena Headey';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Sophie Turner') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Sophie Turner') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Sophie Turner';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Kit Harington') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Kit Harington') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Kit Harington';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Peter Dinklage') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Peter Dinklage') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Peter Dinklage';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Nikolaj Coster-Waldau') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Nikolaj Coster-Waldau') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Nikolaj Coster-Waldau';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Serie') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Serie'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Ciencia Ficción') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Ciencia Ficción'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/10.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/10.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/Yj0l7iGKh8g') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/Yj0l7iGKh8g'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Serie');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Ciencia Ficción');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/10.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/Yj0l7iGKh8g');
SET @idContenido = 10;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  10,
  'Sigue las veloces aventuras de Barry Allen, un joven común y corriente con el deseo latente de ayudar a los demás. Cuando una inesperada partícula aceleradora golpea por accidente a Barry, de pronto se encuentra cargado de un increíble poder para moverse a increíbles velocidades. Mientras Barry siempre ha tenido el alma de un héroe, sus nuevos poderes le han dado la capacidad de actuar como tal.',
  6,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'The Flash'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Sci-Fi') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Sci-Fi') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Sci-Fi';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Fantasía') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Fantasía') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Fantasía';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Acción') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Acción') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Acción';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Grant Gustin') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Grant Gustin') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Grant Gustin';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Carlos Valdes') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Carlos Valdes') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Carlos Valdes';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Danielle Panabaker') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Danielle Panabaker') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Danielle Panabaker';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Candice Patton') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Candice Patton') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Candice Patton';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jesse L. Martin') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jesse L. Martin') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jesse L. Martin';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Tom Cavanagh') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Tom Cavanagh') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Tom Cavanagh';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Serie') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Serie'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Comedia') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Comedia'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/11.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/11.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/WBb3fojgW0Q') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/WBb3fojgW0Q'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Serie');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Comedia');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/11.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/WBb3fojgW0Q');
SET @idContenido = 11;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  11,
  'Leonard y Sheldon son dos físicos que comparten trabajo y apartamento. La Serie comienza con la mudanza de Penny, su nueva y atractiva vecina, y hace hincapié en la dificultad de los físicos para relacionarse con personas fuera de su entorno para dar lugar a situaciones cómicas.',
  12,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'The Big Bang Theory'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Comedia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Comedia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Comedia';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Fantasía') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Fantasía') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Fantasía';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Ficción') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Ficción') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Ficción';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jim Parsons') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jim Parsons') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jim Parsons';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Johnny Galecki') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Johnny Galecki') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Johnny Galecki';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Kaley Cuoco') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Kaley Cuoco') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Kaley Cuoco';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Simon Helberg') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Simon Helberg') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Simon Helberg';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Kunal Nayyar') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Kunal Nayyar') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Kunal Nayyar';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Melissa Rauch') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Melissa Rauch') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Melissa Rauch';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Mayim Bialik') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Mayim Bialik') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Mayim Bialik';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Serie') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Serie'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Comedia') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Comedia'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/12.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/12.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/ekYGfU0XIx0') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/ekYGfU0XIx0'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Serie');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Comedia');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/12.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/ekYGfU0XIx0');
SET @idContenido = 12;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  12,
  '''Friends'' narra las aventuras y desventuras de seis jóvenes de Nueva York: Rachel, Monica, Phoebe, Ross, Chandler y Joey. Ellos forman una unida pandilla de amigos que viven en Manhattan y que suelen reunirse en sus apartamentos o en su bar habitual cafetería, el Central Perk. A pesar de los numerosos cambios que se producen en sus vidas, su amistad es inquebrantable en la dura batalla por salir adelante en sus periplos profesionales y personales.',
  10,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Friends'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Comedia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Comedia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Comedia';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Familia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Familia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Familia';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jennifer Aniston') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jennifer Aniston') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jennifer Aniston';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Courteney Cox') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Courteney Cox') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Courteney Cox';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Lisa Kudrow') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Lisa Kudrow') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Lisa Kudrow';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'David Schwimmer') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'David Schwimmer') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'David Schwimmer';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Matthew Perry') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Matthew Perry') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Matthew Perry';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Matt LeBlanc') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Matt LeBlanc') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Matt LeBlanc';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Serie') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Serie'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Familia') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Familia'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/13.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/13.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/M4T-_aB8smU') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/M4T-_aB8smU'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Serie');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Familia');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/13.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/M4T-_aB8smU');
SET @idContenido = 13;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  13,
  'Anne Shirley es una niña huérfana que vive en un pequeño pueblo llamado Avonlea que pertenece a la Isla del Príncipe Eduardo, en el año 1890. Después de una infancia difícil, donde fue pasando de orfanato a hogares de acogida, es enviada por error a vivir con una solterona y su hermano. Cuando cumple 13 años, Anne va a conseguir transformar su vida y el pequeño pueblo donde vive gracias a su fuerte personalidad, intelecto e imaginación. Basada en la inolvidable novela.',
  2,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Anne with an ''E'''
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Familia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Familia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Familia';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Western') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Western') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Western';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Amybeth McNulty') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Amybeth McNulty') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Amybeth McNulty';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Geraldine James') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Geraldine James') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Geraldine James';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'R. H. Thomson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'R. H. Thomson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'R. H. Thomson';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Corrine Koslo') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Corrine Koslo') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Corrine Koslo';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Dalila Bela') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Dalila Bela') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Dalila Bela';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Lucas Jade Zumann') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Lucas Jade Zumann') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Lucas Jade Zumann';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Serie') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Serie'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Ciencia Ficción') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Ciencia Ficción'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/14.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/14.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/KKziOmsJxzE') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/KKziOmsJxzE'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Serie');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Ciencia Ficción');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/14.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/KKziOmsJxzE');
SET @idContenido = 14;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  14,
  'Fox Mulder y Dana Scully son dos investigadores del FBI que investigan casos sin resolución ni explicación, ya sea por razones paranormales (espíritus, criaturas extrañas, aliens...) ya porque el gobierno se ha encargado de ocultar todo tipo de pruebas. Cuando Mulder tenía doce años, su hermana pequeña fue secuestrada por unos desconocidos, aunque él cree que, en realidad, fue abducida por extraterrestres. Tras acabar sus estudios en la universidad de Oxford, ingresó en la Academia de Quantico, donde se ganó el apodo de ''siniestro''',
  11,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Expedientes Secretos ''X'''
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Sci-Fi') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Sci-Fi') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Sci-Fi';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suspenso') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suspenso') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suspenso';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Gillian Anderson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Gillian Anderson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Gillian Anderson';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'David Duchovny') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'David Duchovny') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'David Duchovny';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Mitch Pileggi') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Mitch Pileggi') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Mitch Pileggi';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Robert Patrick') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Robert Patrick') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Robert Patrick';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Tom Braidwood') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Tom Braidwood') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Tom Braidwood';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Bruce Harwood') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Bruce Harwood') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Bruce Harwood';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Serie') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Serie'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Suceso Real') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Suceso Real'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/15.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/15.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/s9APLXM9Ei8') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/s9APLXM9Ei8'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Serie');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Suceso Real');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/15.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/s9APLXM9Ei8');
SET @idContenido = 15;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  15,
  'Sigue «la verdadera historia de una de las peores catástrofes provocadas por el hombre y habla de los valientes hombres y mujeres que se sacrificaron para salvar a Europa de un desastre inimaginable. La miniSerie se centra en el desgarrador alcance del desastre de la planta nuclear que ocurrió en Ucrania en abril de 1986, revelando cómo y por qué ocurrió, además contando las sorprendentes y notables historias de los héroes que lucharon y cayeron.',
  1,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Chernobyl'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suceso Real') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suceso Real') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suceso Real';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jared Harris') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jared Harris') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jared Harris';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Stellan Skarsgård') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Stellan Skarsgård') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Stellan Skarsgård';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Emily Watson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Emily Watson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Emily Watson';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Paul Ritter') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Paul Ritter') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Paul Ritter';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jessie Buckley') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jessie Buckley') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jessie Buckley';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Adam Nagaitis') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Adam Nagaitis') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Adam Nagaitis';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Serie') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Serie'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Ciencia Ficción') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Ciencia Ficción'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/16.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/16.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/qLFBcdd6Qw0') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/qLFBcdd6Qw0'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Serie');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Ciencia Ficción');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/16.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/qLFBcdd6Qw0');
SET @idContenido = 16;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  16,
  '''Westworld'' es una oscura odisea acerca del amanecer de la conciencia artificial y la evolución del pecado. Situada en la intersección del futuro cercano y el pasado reimaginado, explora un mundo donde cada apetito humano, sin importar cuán noble o depravado, puede ser saciado. Está ambientada en un parque temático futurista dirigido por el Dr. Robert Ford (Anthony Hopkins). Las instalaciones cuentan con androides caracterizados del western americano, y gracias a ellos los visitantes pueden introducirse en cualquier tipo de fantasía por muy oscura que sea.',
  3,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Westworld'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Western') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Western') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Western';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Sci-Fi') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Sci-Fi') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Sci-Fi';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Evan Rachel Wood') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Evan Rachel Wood') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Evan Rachel Wood';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Thandiwe Newton') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Thandiwe Newton') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Thandiwe Newton';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jeffrey Wright') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jeffrey Wright') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jeffrey Wright';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Tessa Thompson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Tessa Thompson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Tessa Thompson';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ed Harris') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ed Harris') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ed Harris';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Luke Hemsworth') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Luke Hemsworth') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Luke Hemsworth';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Rodrigo Santoro') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Rodrigo Santoro') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Rodrigo Santoro';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Simon Quarterman') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Simon Quarterman') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Simon Quarterman';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Clifton Collins Jr.') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Clifton Collins Jr.') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Clifton Collins Jr.';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Anthony Hopkins') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Anthony Hopkins') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Anthony Hopkins';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ingrid Bolsø Berdal') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ingrid Bolsø Berdal') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ingrid Bolsø Berdal';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Angela Sarafyan') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Angela Sarafyan') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Angela Sarafyan';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Shannon Woodward') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Shannon Woodward') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Shannon Woodward';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Talulah Riley') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Talulah Riley') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Talulah Riley';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Louis Herthum') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Louis Herthum') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Louis Herthum';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ben Barnes') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ben Barnes') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ben Barnes';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jimmi Simpson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jimmi Simpson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jimmi Simpson';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Leonardo Nam') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Leonardo Nam') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Leonardo Nam';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Aaron Paul') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Aaron Paul') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Aaron Paul';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Vincent Cassel') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Vincent Cassel') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Vincent Cassel';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Izabella Alvarez') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Izabella Alvarez') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Izabella Alvarez';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jeff Daniel Phillips') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jeff Daniel Phillips') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jeff Daniel Phillips';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Serie') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Serie'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Drama'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/17.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/17.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/pWrioRji60A') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/pWrioRji60A'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Serie');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Drama');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/17.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/pWrioRji60A');
SET @idContenido = 17;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  17,
  '',
  4,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Halt and Catch Fire'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Ficción') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Ficción') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Ficción';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Tecnología') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Tecnología') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Tecnología';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Lee Pace') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Lee Pace') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Lee Pace';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Scoot McNairy') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Scoot McNairy') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Scoot McNairy';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Mackenzie Davis') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Mackenzie Davis') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Mackenzie Davis';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Kerry Bishé') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Kerry Bishé') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Kerry Bishé';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Toby Huss') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Toby Huss') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Toby Huss';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Alana Cavanaugh') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Alana Cavanaugh') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Alana Cavanaugh';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Acción') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Acción'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/18.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/18.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/eLEwNo78f0k') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/eLEwNo78f0k'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Acción');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/18.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/eLEwNo78f0k');
SET @idContenido = 18;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  18,
  'Ava es una mortífera asesina a sueldo que trabaja para una organización de operaciones encubiertas, que viaja por todo el mundo acabando con aquellos objetivos que nadie más puede derribar. Cuando uno de sus encargos sale mal, Ava tendrá que luchar por una vida.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Ava'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Acción') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Acción') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Acción';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suspenso') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suspenso') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suspenso';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jessica Chastain') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jessica Chastain') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jessica Chastain';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'John Malkovich') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'John Malkovich') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'John Malkovich';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Colin Farrell') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Colin Farrell') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Colin Farrell';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Common') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Common') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Common';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Geena Davis') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Geena Davis') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Geena Davis';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ioan Gruffudd') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ioan Gruffudd') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ioan Gruffudd';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Ciencia Ficción') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Ciencia Ficción'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/19.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/19.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/saUmnenKbBM') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/saUmnenKbBM'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Ciencia Ficción');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/19.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/saUmnenKbBM');
SET @idContenido = 19;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  19,
  'Después de separarse de Joker, Harley Quinn y otras tres heroínas (Canario Negro, Cazadora y Renée Montoya) unen sus fuerzas para salvar a una niña (Cassandra Cain) del malvado rey del crimen Máscara Negra.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Aves de presa y la fantabulosa emancipación de una Harley Quinn'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Acción') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Acción') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Acción';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Ficción') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Ficción') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Ficción';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Comedia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Comedia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Comedia';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Margot Robbie') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Margot Robbie') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Margot Robbie';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ewan McGregor') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ewan McGregor') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ewan McGregor';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Mary Elizabeth Winstead') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Mary Elizabeth Winstead') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Mary Elizabeth Winstead';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jurnee Smollett') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jurnee Smollett') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jurnee Smollett';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Rosie Perez') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Rosie Perez') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Rosie Perez';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Chris Messina') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Chris Messina') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Chris Messina';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Ciencia Ficción') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Ciencia Ficción'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/20.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/20.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/VHSoCnDioAo') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/VHSoCnDioAo'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Ciencia Ficción');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/20.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/VHSoCnDioAo');
SET @idContenido = 20;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  20,
  '2038: George Almore está trabajando en una verdadera IA equivalente a la humana. Su último prototipo está casi listo. Esta fase sensible también es la más arriesgada. Especialmente porque tiene un objetivo que debe ocultarse a toda costa: reunirse con su esposa muerta.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Archivo'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Acción') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Acción') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Acción';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Sci-Fi') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Sci-Fi') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Sci-Fi';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suspenso') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suspenso') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suspenso';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Stacy Martin') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Stacy Martin') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Stacy Martin';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Rhona Mitra') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Rhona Mitra') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Rhona Mitra';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Theo James') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Theo James') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Theo James';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Peter Ferdinando') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Peter Ferdinando') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Peter Ferdinando';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Lia Williams') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Lia Williams') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Lia Williams';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Toby Jones') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Toby Jones') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Toby Jones';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Suspenso') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Suspenso'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/22.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/22.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/AGQ7OkmIx4Q') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/AGQ7OkmIx4Q'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Suspenso');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/22.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/AGQ7OkmIx4Q');
SET @idContenido = 22;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  22,
  'La película está ambientada en una estación espacial en el futuro. La tripulación sufre un estrés traumático y considera abandonar su misión después de observar lo que creen que es la destrucción de la Tierra. La película se muestra como una Serie de flashbacks y flash-forward.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  '3022'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Sci-Fi') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Sci-Fi') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Sci-Fi';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suspenso') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suspenso') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suspenso';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Futurista') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Futurista') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Futurista';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Miranda Cosgrove') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Miranda Cosgrove') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Miranda Cosgrove';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Kate Walsh') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Kate Walsh') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Kate Walsh';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Omar Epps') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Omar Epps') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Omar Epps';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Angus Macfadyen') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Angus Macfadyen') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Angus Macfadyen';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jorja Fox') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jorja Fox') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jorja Fox';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Enver Gjokaj') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Enver Gjokaj') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Enver Gjokaj';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Terror') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Terror'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/23.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/23.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/hZeFeYSmBcg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/hZeFeYSmBcg'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Terror');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/23.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/hZeFeYSmBcg');
SET @idContenido = 23;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  23,
  'En este segundo capitulo Han pasado 27 años desde que el ''Club de los Perdedores'', formado por Bill, Berverly, Richie, Ben, Eddie, Mike y Stanley, se enfrentaran al macabro y despiadado Pennywise (Bill Skarsgård). En cuanto tuvieron oportunidad, abandonaron el pueblo de Derry, en el estado de Maine, que tantos problemas les había ocasionado. Sin embargo, ahora, siendo adultos, parece que no pueden escapar de su pasado. Todos deberán enfrentarse de nuevo al temible payaso para descubrir si de verdad están preparados para superar sus traumas de la infancia.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'IT - Capítulo 2'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Terror') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Terror') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Terror';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suspenso') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suspenso') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suspenso';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Fantasía') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Fantasía') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Fantasía';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Bill Skarsgård') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Bill Skarsgård') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Bill Skarsgård';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jessica Chastain') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jessica Chastain') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jessica Chastain';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Bill Hader') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Bill Hader') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Bill Hader';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'James McAvoy') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'James McAvoy') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'James McAvoy';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Isaiah Mustafa') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Isaiah Mustafa') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Isaiah Mustafa';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jay Ryan') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jay Ryan') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jay Ryan';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Ciencia Ficción') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Ciencia Ficción'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/24.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/24.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/BE6inv8Xh4A') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/BE6inv8Xh4A'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Ciencia Ficción');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/24.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/BE6inv8Xh4A');
SET @idContenido = 24;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  24,
  'T’Challa (Chadwick Boseman) regresa a su hogar en la apartada nación africana de Wakanda para servir como líder de su país. Tras suceder a su padre en el trono, pasa a convertirse en Pantera Negra, una sigilosa criatura de la noche, con agudos sentidos felinos y otras habilidades como súper fuerza e inteligencia, agilidad, estrategia o maestro del combate sin armas. Es bajo el liderazgo de T’Challa como Wakanda consigue convertirse en una de las naciones más ricas y tecnológicamente avanzadas del planeta.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Pantera Negra'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Acción') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Acción') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Acción';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Aventura') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Aventura') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Aventura';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Fantasía') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Fantasía') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Fantasía';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Chadwick Boseman') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Chadwick Boseman') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Chadwick Boseman';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Michael B. Jordan') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Michael B. Jordan') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Michael B. Jordan';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Lupita Nyong''o') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Lupita Nyong''o') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Lupita Nyong''o';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Danai Gurira') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Danai Gurira') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Danai Gurira';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Martin Freeman') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Martin Freeman') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Martin Freeman';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Daniel Kaluuya') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Daniel Kaluuya') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Daniel Kaluuya';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Suceso Real') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Suceso Real'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/25.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/25.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/SOVb0-2g1Q0') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/SOVb0-2g1Q0'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Suceso Real');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/25.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/SOVb0-2g1Q0');
SET @idContenido = 25;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  25,
  'Los ganadores del Premio de la Academia® Matt Damon y Christian Bale protagonizan CONTRA LO IMPOSIBLE, basada en la historia real del visionario diseñador americano de automóviles Carroll Shelby (Damon) y el intrépido piloto británico Ken Miles (Bale). Juntos construyen un nuevo coche de carreras para Ford Motor Company y así enfrentar a Enzo Ferrari en las 24 Horas de Le Mans en Francia en 1966.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Contra lo imposible (Ford versus Ferrari)'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Historia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Historia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Historia';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Aventura') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Aventura') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Aventura';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Christian Bale') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Christian Bale') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Christian Bale';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Matt Damon') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Matt Damon') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Matt Damon';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Caitriona Balfe') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Caitriona Balfe') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Caitriona Balfe';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Josh Lucas') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Josh Lucas') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Josh Lucas';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Noah Jupe') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Noah Jupe') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Noah Jupe';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jon Bernthal') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jon Bernthal') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jon Bernthal';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Suspenso') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Suspenso'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/26.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/26.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/0RvV7TNUlkQ') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/0RvV7TNUlkQ'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Suspenso');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/26.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/0RvV7TNUlkQ');
SET @idContenido = 26;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  26,
  'Una joven pareja estadounidense viaja a las montañas árticas de Noruega. Después de detenerse durante una tormenta de nieve, se despiertan atrapados en su SUV, enterrados bajo capas de nieve y hielo.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Centígrados'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suspenso') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suspenso') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suspenso';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Intriga') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Intriga') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Intriga';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Génesis Rodríguez') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Génesis Rodríguez') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Génesis Rodríguez';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Vincent Piazza') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Vincent Piazza') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Vincent Piazza';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Benjamin Sokolow') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Benjamin Sokolow') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Benjamin Sokolow';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Emily Bayiokos') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Emily Bayiokos') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Emily Bayiokos';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Terror') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Terror'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/27.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/27.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/nat3u3gAVLE') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/nat3u3gAVLE'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Terror');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/27.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/nat3u3gAVLE');
SET @idContenido = 27;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  27,
  'Doom: Aniquilación sigue a un grupo de marines espaciales que han respondido a una llamada de alerta de una base en la luna marciana, solo para descubrir que ha sido tomada por criaturas demoníacas que amenazan con desatar el infierno en la tierra.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'DOOM: Aniquilación'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Terror') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Terror') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Terror';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Acción') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Acción') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Acción';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Sci-Fi') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Sci-Fi') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Sci-Fi';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Futurista') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Futurista') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Futurista';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Amy Manson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Amy Manson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Amy Manson';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Luke Allen-Gale') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Luke Allen-Gale') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Luke Allen-Gale';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Nina Bergman') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Nina Bergman') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Nina Bergman';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Dominic Mafham') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Dominic Mafham') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Dominic Mafham';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'James Weber Brown') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'James Weber Brown') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'James Weber Brown';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Lorina Kamburova') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Lorina Kamburova') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Lorina Kamburova';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Drama'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/28.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/28.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/4sYSyuuLk5g') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/4sYSyuuLk5g'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Drama');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/28.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/4sYSyuuLk5g');
SET @idContenido = 28;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  28,
  'De repente, sin saber cuál es su origen, aunque todo hace sospechar que comienza con el viaje de una norteamericana a un casino de Hong Kong, un virus mortal comienza a propagarse por todo el mundo. En pocos días, la enfermedad empieza a diezmar a la población. El contagio se produce por mero contacto entre los seres humanos. Un thriller realista y sin efectos especiales sobre los efectos de una epidemia.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Contagio'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suspenso') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suspenso') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suspenso';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT '¿Ficción?') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = '¿Ficción?') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = '¿Ficción?';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Marion Cotillard') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Marion Cotillard') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Marion Cotillard';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Matt Damon') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Matt Damon') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Matt Damon';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Laurence Fishburne') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Laurence Fishburne') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Laurence Fishburne';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jude Law') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jude Law') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jude Law';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Kate Winslet') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Kate Winslet') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Kate Winslet';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jennifer Ehle') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jennifer Ehle') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jennifer Ehle';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Gwyneth Paltrow') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Gwyneth Paltrow') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Gwyneth Paltrow';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Acción') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Acción'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/29.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/29.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/BIn8iANwEog') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/BIn8iANwEog'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Acción');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/29.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/BIn8iANwEog');
SET @idContenido = 29;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  29,
  'Primera pelicula individual de la Viuda Negra en el universo cinematografico de Marvel, contando su historia desde que se inició como doble agente rusa, su niñez, sus misiones, y su actualidad, después de Avengers.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Viuda Negra'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Acción') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Acción') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Acción';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Aventura') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Aventura') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Aventura';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Scarlett Johansson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Scarlett Johansson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Scarlett Johansson';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Florence Pugh') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Florence Pugh') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Florence Pugh';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'David Harbour') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'David Harbour') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'David Harbour';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'O.T. Fagbenle') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'O.T. Fagbenle') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'O.T. Fagbenle';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Rachel Weisz') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Rachel Weisz') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Rachel Weisz';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'William Hurt') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'William Hurt') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'William Hurt';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ray Winstone') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ray Winstone') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ray Winstone';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Ciencia Ficción') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Ciencia Ficción'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/30.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/30.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/XvB58bCVfng') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/XvB58bCVfng'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Ciencia Ficción');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/30.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/XvB58bCVfng');
SET @idContenido = 30;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  30,
  'Durante una misión a Marte de la nave tripulada Ares III, una fuerte tormenta se desata dando por desaparecido y muerto al astronauta Mark Watney (Matt Damon), sus compañeros toman la decisión de irse pero él ha sobrevivido. Está solo y sin apenas recursos en el planeta. Con muy pocos medios deberá recurrir a sus conocimientos, su sentido del humor y un gran instinto de supervivencia para lograr sobrevivir y comunicar a la Tierra que todavía está vivo esperando que acudan en su rescate.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'The Martian'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Sci-Fi') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Sci-Fi') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Sci-Fi';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Aventura') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Aventura') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Aventura';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Matt Damon') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Matt Damon') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Matt Damon';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jessica Chastain') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jessica Chastain') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jessica Chastain';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Kristen Wiig') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Kristen Wiig') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Kristen Wiig';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jeff Daniels') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jeff Daniels') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jeff Daniels';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Michael Peña') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Michael Peña') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Michael Peña';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Sean Bean') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Sean Bean') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Sean Bean';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Kate Mara') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Kate Mara') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Kate Mara';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Ciencia Ficción') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Ciencia Ficción'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/31.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/31.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/XRYL5spvEcI') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/XRYL5spvEcI'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Ciencia Ficción');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/31.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/XRYL5spvEcI');
SET @idContenido = 31;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  31,
  'Un programador multimillonario selecciona a Caleb, un joven empleado de su empresa, para que pase una semana en un lugar remoto con el objetivo de que participe en un test en el que estará involucrada su última creación: un robot-mujer en el que inteligencia artificial lo es todo.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Ex-Machina'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Sci-Fi') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Sci-Fi') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Sci-Fi';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suspenso') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suspenso') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suspenso';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Alicia Vikander') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Alicia Vikander') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Alicia Vikander';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Domhnall Gleeson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Domhnall Gleeson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Domhnall Gleeson';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Oscar Isaac') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Oscar Isaac') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Oscar Isaac';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Sonoya Mizuno') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Sonoya Mizuno') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Sonoya Mizuno';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Corey Johnson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Corey Johnson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Corey Johnson';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Claire Selby') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Claire Selby') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Claire Selby';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Gana Bayarsaikhan') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Gana Bayarsaikhan') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Gana Bayarsaikhan';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Aventura') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Aventura'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/32.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/32.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/RFinNxS5KN4') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/RFinNxS5KN4'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Aventura');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/32.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/RFinNxS5KN4');
SET @idContenido = 32;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  32,
  'Veintidós años después de lo ocurrido en Jurassic Park, la isla Nublar ha sido transformada en un enorme parque temático, Jurassic Wold, con versiones «domesticadas» de algunos de los dinosaurios más conocidos. Cuando todo parece ir sobre ruedas y ser el negocio del siglo, un nuevo dinosaurio de especie desconocida, pues ha sido creado manipulando genéticamente su ADN, y que resulta ser mucho más inteligente de lo que se pensaba, se escapa de su recinto y comienza a causar estragos entre los visitantes del Parque.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Jurassic World'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suspenso') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suspenso') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suspenso';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Aventura') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Aventura') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Aventura';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Ficción') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Ficción') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Ficción';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Bryce Dallas Howard') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Bryce Dallas Howard') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Bryce Dallas Howard';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Chris Pratt') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Chris Pratt') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Chris Pratt';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Irrfan Khan') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Irrfan Khan') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Irrfan Khan';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Vincent D''Onofrio') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Vincent D''Onofrio') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Vincent D''Onofrio';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Omar Sy') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Omar Sy') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Omar Sy';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Nick Robinson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Nick Robinson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Nick Robinson';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Judy Greer') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Judy Greer') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Judy Greer';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Terror') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Terror'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/33.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/33.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/dtKMEAXyPkg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/dtKMEAXyPkg'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Terror');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/33.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/dtKMEAXyPkg');
SET @idContenido = 33;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  33,
  'Años después de que una plaga mate a la mayoría de la humanidad y transforme al resto en monstruos, el único superviviente en la ciudad de Nueva York lucha valientemente para encontrar una cura.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Soy leyenda'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Terror') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Terror') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Terror';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Ficción') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Ficción') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Ficción';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Will Smith') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Will Smith') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Will Smith';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Alice Braga') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Alice Braga') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Alice Braga';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Charlie Tahan') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Charlie Tahan') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Charlie Tahan';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Dash Mihok') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Dash Mihok') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Dash Mihok';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Salli Richardson-Whitfield') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Salli Richardson-Whitfield') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Salli Richardson-Whitfield';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Willow Smith') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Willow Smith') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Willow Smith';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Emma Thompson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Emma Thompson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Emma Thompson';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Suceso Real') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Suceso Real'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/34.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/34.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/PSoRx87OO6k') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/PSoRx87OO6k'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Suceso Real');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/34.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/PSoRx87OO6k');
SET @idContenido = 34;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  34,
  'Cuenta la historia de la misión de la NASA que llevó al primer hombre a la luna, centrada en Neil Armstrong (interpretado por Ryan Gosling) y el periodo comprendido entre los años 1961 y 1969. Un relato en primera persona, basado en la novela de James R. Hansen, que explora el sacrificio y el precio que representó, tanto para Armstrong como para Estados Unidos, una de las misiones más peligrosas de la historia.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'El primer hombre en la luna'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suceso Real') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suceso Real') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suceso Real';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ryan Gosling') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ryan Gosling') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ryan Gosling';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Claire Foy') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Claire Foy') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Claire Foy';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jason Clarke') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jason Clarke') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jason Clarke';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Kyle Chandler') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Kyle Chandler') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Kyle Chandler';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Corey Stoll') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Corey Stoll') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Corey Stoll';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Patrick Fugit') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Patrick Fugit') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Patrick Fugit';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Ciencia Ficción') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Ciencia Ficción'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/35.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/35.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/_EhiLLOhVis') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/_EhiLLOhVis'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Ciencia Ficción');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/35.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/_EhiLLOhVis');
SET @idContenido = 35;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  35,
  'Han pasado 10 años tras la primera invasión que sufrió la humanidad, pero la lucha aún no ha terminado. El planeta vuelve a ser asediado por los Kaiju, una raza de alienígenas colosales, que emergen desde un portal interdimensional con el objetivo de destruir a la raza humana. Ante esta nueva amenaza, los Jaegers, robots gigantes de guerra pilotados por dos personas para sobrellevar la inmensa carga neuronal que conlleva manipularlos, ya no están a la altura de lo que se les viene encima. Será entonces cuando los supervivientes de la primera invasión, además de nuevos personajes como el hijo de Pentecost, tendrán que idear la manera de sorprender al enorme enemigo, apostando por nuevas estrategias defensivas y de ataque. Con la Tierra en ruinas e intentando reconstruirse, esta nueva batalla puede ser decisiva para el futuro.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Titanes del pacífico - La insurrección'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Acción') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Acción') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Acción';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Fantasía') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Fantasía') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Fantasía';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Sci-Fi') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Sci-Fi') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Sci-Fi';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'John Boyega') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'John Boyega') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'John Boyega';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Scott Eastwood') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Scott Eastwood') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Scott Eastwood';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Cailee Spaeny') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Cailee Spaeny') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Cailee Spaeny';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jing Tian') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jing Tian') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jing Tian';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Rinko Kikuchi') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Rinko Kikuchi') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Rinko Kikuchi';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Burn Gorman') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Burn Gorman') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Burn Gorman';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Suceso Real') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Suceso Real'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/36.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/36.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/FrvkCS0ZGPU') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/FrvkCS0ZGPU'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Suceso Real');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/36.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/FrvkCS0ZGPU');
SET @idContenido = 36;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  36,
  'Sólo hace falta una persona para empezar una revolución. Jobs es la extraordinaria historia de Steve Jobs, el original innovador y emprendedor que no dejó que nada se interpusiera en su camino hacia la grandeza. La película cuenta la épica y turbulenta historia de Jobs mientras abría un camino que cambió la tecnología - y el mundo - para siempre. Su vida es repasada desde que era adolescente, intentando estudiar en la universidad, hasta el año 2001, cuando el iPod fue presentado al mundo y comenzó a ''allanar'' el camino para lo que años después, sería el iPhone.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'JOBS: La Vida De Steve Jobs'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Historia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Historia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Historia';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Tecnología') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Tecnología') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Tecnología';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ahston Kutcher') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ahston Kutcher') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ahston Kutcher';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Dermot Mulroney') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Dermot Mulroney') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Dermot Mulroney';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Josh Gad') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Josh Gad') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Josh Gad';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Lukas Haas') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Lukas Haas') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Lukas Haas';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Matthew Modine') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Matthew Modine') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Matthew Modine';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'J.K. Simmons') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'J.K. Simmons') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'J.K. Simmons';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Lesley Ann Warren') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Lesley Ann Warren') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Lesley Ann Warren';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Suceso Real') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Suceso Real'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/37.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/37.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/lEyrivrjAuU') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/lEyrivrjAuU'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Suceso Real');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/37.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/lEyrivrjAuU');
SET @idContenido = 37;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  37,
  'Esta película es el documental semigracioso sobre los hombres que hicieron el mundo de la tecnología lo que es hoy, sus luchas durante el colegio, la fundación de sus compañías y las acciones ingeniosas que tomaron para aumentar los Imperios corporativos globales de Apple Computer Inc. y Microsoft Corporation.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Piratas de Silicon Valey'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Tecnología') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Tecnología') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Tecnología';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Historia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Historia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Historia';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Comedia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Comedia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Comedia';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Noah Wyle') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Noah Wyle') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Noah Wyle';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Anthony Michael') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Anthony Michael') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Anthony Michael';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Joey Slotnick') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Joey Slotnick') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Joey Slotnick';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'J.G. Hertzler') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'J.G. Hertzler') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'J.G. Hertzler';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Wayne Pére') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Wayne Pére') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Wayne Pére';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Sheila Shaw') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Sheila Shaw') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Sheila Shaw';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Gemma Zamprogna') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Gemma Zamprogna') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Gemma Zamprogna';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'John DiMaggio') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'John DiMaggio') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'John DiMaggio';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Suceso Real') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Suceso Real'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/38.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/38.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/lB95KLmpLR4') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/lB95KLmpLR4'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Suceso Real');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/38.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/lB95KLmpLR4');
SET @idContenido = 38;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  38,
  'En una noche de otoño de 2003, el genio de la programación de computación de la Universidad de Harvard Mark Zuckerberg se sienta en su computadora y acaloradamente comienza a trabajar en una nueva idea. En una furia de los blogs y la programación, lo que comienza en su dormitorio como un pequeño sitio entre amigos pronto se convierte en una red social global y una revolución en la comunicación. A sólo seis años y 500 millones de amigos más tarde, Mark Zuckerberg es el multimillonario más joven de la historia ... pero para este empresario, el éxito conduce a complicaciones tanto personales como legales.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Red Social'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Historia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Historia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Historia';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Tecnología') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Tecnología') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Tecnología';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jesse Eisenberg') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jesse Eisenberg') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jesse Eisenberg';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Andrew Garfield') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Andrew Garfield') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Andrew Garfield';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Justin Timberlake') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Justin Timberlake') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Justin Timberlake';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Armie Hammer') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Armie Hammer') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Armie Hammer';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Max Minghella') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Max Minghella') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Max Minghella';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Rooney Mara') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Rooney Mara') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Rooney Mara';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Brenda Song') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Brenda Song') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Brenda Song';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Rashida Jones') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Rashida Jones') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Rashida Jones';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'John Gertz') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'John Gertz') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'John Gertz';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Acción') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Acción'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/39.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/39.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/k3TwIJjyjPM') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/k3TwIJjyjPM'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Acción');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/39.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/k3TwIJjyjPM');
SET @idContenido = 39;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  39,
  'Milo Hoffman es un joven informático increíblemente prometedor para su edad que rápidamente es contratado por una importante empresa de Sillicon Valley. El empleo de sus sueños se ha hecho realidad, ya que ahí puede trabajar con los ordenadores más potentes del mundo y con las últimas tecnologías que aún no han salido al mercado. El Paraíso de un informático. Su jefe, Gary Winston , es un poderoso pez gordo de la industria que en un principio parece un tipo íntegro y legal. Pero pronto descubrirá que fisgar en sus archivos secretos no es la mejor idea si uno quiere conservar su trabajo... y su vida.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Antitrust'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Acción') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Acción') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Acción';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suspenso') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suspenso') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suspenso';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ryan Phillippe') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ryan Phillippe') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ryan Phillippe';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Rachael Leigh Cook') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Rachael Leigh Cook') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Rachael Leigh Cook';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Tim Robbins') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Tim Robbins') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Tim Robbins';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Claire Forlani') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Claire Forlani') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Claire Forlani';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Richard Rountree') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Richard Rountree') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Richard Rountree';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Tygh Runyan') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Tygh Runyan') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Tygh Runyan';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ned Bellamy') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ned Bellamy') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ned Bellamy';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Tyler Labine') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Tyler Labine') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Tyler Labine';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Ciencia Ficción') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Ciencia Ficción'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/40.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/40.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/A_apvQkWsVY') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/A_apvQkWsVY'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Ciencia Ficción');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/40.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/A_apvQkWsVY');
SET @idContenido = 40;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  40,
  'Una misión al planeta Marte. Dos años de duración. De repente, los tres tripulantes afectados a esta labor deben tomar una decisión imposible cuando un pasajero imprevisto compromete la vida de todos a bordo. No hay vuelta atrás. La decisión deberá tomarse contemplando la vida de los, ahora, cuatro pasajeros aún cuando la supervivecnaia tenga que acarrear algún sacrificio.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Stowaway'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Ciencia ficción') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Ciencia ficción') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Ciencia ficción';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suspenso') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suspenso') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suspenso';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Anna Kendrick') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Anna Kendrick') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Anna Kendrick';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Daniel Dae Kim') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Daniel Dae Kim') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Daniel Dae Kim';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Shamier Anderson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Shamier Anderson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Shamier Anderson';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Toni Collette') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Toni Collette') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Toni Collette';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Acción') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Acción'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/41.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/41.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/BUb_-RxsoBs') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/BUb_-RxsoBs'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Acción');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/41.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/BUb_-RxsoBs');
SET @idContenido = 41;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  41,
  'Decidido a asegurarse de que el sacrificio final de Superman no fue en vano, Bruce Wayne alinea fuerzas con Diana Prince con planes para reclutar un equipo de metahumanos para proteger al mundo de una amenaza de proporciones catastróficas que se aproxima. En esta fascinante entrega, no apta para niños, verás cómo se conforma la Liga de la Justicia, uniendo a los principales superhéroes conocidos como Metahumanos.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Liga de la Justicia - Zack Snyder'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Acción') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Acción') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Acción';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Aventura') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Aventura') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Aventura';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Ciencia ficción') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Ciencia ficción') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Ciencia ficción';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Fantasía') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Fantasía') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Fantasía';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ben Affleck') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ben Affleck') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ben Affleck';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Henry Cavill') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Henry Cavill') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Henry Cavill';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Gal Gadot') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Gal Gadot') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Gal Gadot';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jason Momoa') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jason Momoa') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jason Momoa';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ezra Miller') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ezra Miller') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ezra Miller';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ray Fisher') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ray Fisher') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ray Fisher';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Amy Adams') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Amy Adams') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Amy Adams';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jeremy Irons') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jeremy Irons') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jeremy Irons';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Connie Nielsen') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Connie Nielsen') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Connie Nielsen';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Serie') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Serie'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Comedia') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Comedia'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/42.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/42.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/mVHDanSl2pc') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/mVHDanSl2pc'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Serie');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Comedia');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/42.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/mVHDanSl2pc');
SET @idContenido = 42;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  42,
  'Un quiropráctico y padre soltero, Alan Harper, vive en una casa al frente de la playa con su hijo mediocre, Jake, y un billonario de la Internet divorciado Walden Schmidt, que se muda con la familia de los Harper y ofrece comprar la casa luego de la muerte inesperada del hermano de Alan, Charlie, que era el propietario de la casa en la que vivía con Alan y Jake, luego de que padre e hijo se mudaran después del divorcio de Alan. La exesposa de Alan y madre de Jake, Judith, permanece en sus vidas.',
  12,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Two and a half men'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Familia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Familia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Familia';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Comedia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Comedia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Comedia';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Aventura') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Aventura') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Aventura';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Charlie Sheen') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Charlie Sheen') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Charlie Sheen';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jon Cryer') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jon Cryer') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jon Cryer';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Angus T. Jones') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Angus T. Jones') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Angus T. Jones';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Conchata Ferrel') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Conchata Ferrel') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Conchata Ferrel';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Holland Taylor') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Holland Taylor') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Holland Taylor';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Marin Hinkle') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Marin Hinkle') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Marin Hinkle';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jennifer Bini Taylor') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jennifer Bini Taylor') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jennifer Bini Taylor';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Melanie Lynskey') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Melanie Lynskey') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Melanie Lynskey';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ashton Kutcher') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ashton Kutcher') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ashton Kutcher';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Amber Tamblyn') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Amber Tamblyn') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Amber Tamblyn';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Serie') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Serie'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Acción') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Acción'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/43.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/43.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/w1jkStuRQU8') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/w1jkStuRQU8'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Serie');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Acción');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/43.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/w1jkStuRQU8');
SET @idContenido = 43;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  43,
  'Ocho ladrones toman rehenes en la Fábrica Nacional de Moneda y Timbre de España, mientras el líder de la banda manipula a la policía para cumplir con su plan.',
  4,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'La casa de Papel'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Aventura') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Aventura') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Aventura';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Acción') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Acción') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Acción';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Úrsula Corberó') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Úrsula Corberó') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Úrsula Corberó';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Álvaro Morte') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Álvaro Morte') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Álvaro Morte';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Itziar Ituño') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Itziar Ituño') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Itziar Ituño';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Pedro Alonso') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Pedro Alonso') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Pedro Alonso';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Alba Flores') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Alba Flores') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Alba Flores';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Miguel Herrán') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Miguel Herrán') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Miguel Herrán';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jaime Lorente') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jaime Lorente') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jaime Lorente';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Esther Acebo') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Esther Acebo') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Esther Acebo';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Enrique Arce') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Enrique Arce') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Enrique Arce';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Serie') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Serie'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Suspenso') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Suspenso'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/44.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/44.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/b9EkMc79ZSU') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/b9EkMc79ZSU'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Serie');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Suspenso');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/44.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/b9EkMc79ZSU');
SET @idContenido = 44;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  44,
  'Pasan cosas muy extrañas en Hawkins, Indiana, tras una desaparición que revela la presencia de una niña con poderes sobrenaturales. Después de la extraña desaparición de un niño, un pueblo se encuentra ante un misterio que revela experimentos secretos, fuerzas sobrenaturales.',
  4,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Stranger Things'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Misterio') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Misterio') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Misterio';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suspenso') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suspenso') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suspenso';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Familia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Familia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Familia';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Winona Ryder') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Winona Ryder') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Winona Ryder';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'David Harbour') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'David Harbour') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'David Harbour';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Finn Wolfhard') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Finn Wolfhard') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Finn Wolfhard';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Millie Bobby Brown') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Millie Bobby Brown') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Millie Bobby Brown';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Gaten Matarazzo') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Gaten Matarazzo') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Gaten Matarazzo';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Caleb McLaughlin') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Caleb McLaughlin') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Caleb McLaughlin';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Natalia Dyer') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Natalia Dyer') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Natalia Dyer';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Charlie') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Charlie') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Charlie';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Heaton') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Heaton') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Heaton';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Joe Keery') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Joe Keery') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Joe Keery';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Suspenso') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Suspenso'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/45.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/45.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/OiTiKOy59o4') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/OiTiKOy59o4'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Suspenso');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/45.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/OiTiKOy59o4');
SET @idContenido = 45;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  45,
  'Durante un paseo espacial rutinario, dos astronautas sufren un grave accidente y quedan flotando en el espacio. Una es la doctora Ryan Stone, una brillante ingeniera en su primera misión espacial en la Shuttle. Su acompañante es el veterano astronauta Matt Kowalsky. Durante el paseo algo sale mal y ocurre el desastre: el shuttle queda destrozado, dejando a Ryan y Matt completamente solos, momento a partir del cual intentarán por todos los medios volver a la Tierra.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Gravity'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Ciencia ficción') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Ciencia ficción') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Ciencia ficción';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suspenso') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suspenso') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suspenso';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Sandra Bullock') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Sandra Bullock') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Sandra Bullock';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'George Clooney') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'George Clooney') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'George Clooney';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ed Harris') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ed Harris') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ed Harris';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Orto Ignatiussen') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Orto Ignatiussen') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Orto Ignatiussen';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Phaldut Sharma') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Phaldut Sharma') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Phaldut Sharma';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Amy Warren') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Amy Warren') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Amy Warren';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Basher Savage') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Basher Savage') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Basher Savage';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Adam Cozens') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Adam Cozens') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Adam Cozens';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Terror') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Terror'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/49.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/49.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/FnCdOQsX5kc') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/FnCdOQsX5kc'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Terror');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/49.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/FnCdOQsX5kc');
SET @idContenido = 49;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  49,
  'Remake del clásico de Stephen King, y de la película homónima de 1990, en el que un payaso aterroriza a los niños de un vecindario. En un pequeño pueblo de Maine, siete niños conocidos como el Club de los Perdedores se encuentran cara a cara con problemas de la vida, matones y un monstruo que toma la forma de un payaso llamado Pennywise..',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'It (eso)'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Terror') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Terror') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Terror';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suspenso') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suspenso') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suspenso';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jaeden Martell') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jaeden Martell') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jaeden Martell';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jeremy Ray') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jeremy Ray') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jeremy Ray';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Sophia Lillis') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Sophia Lillis') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Sophia Lillis';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Finn Wolfhard') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Finn Wolfhard') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Finn Wolfhard';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Chosen Jacobs') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Chosen Jacobs') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Chosen Jacobs';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jack Dylan') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jack Dylan') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jack Dylan';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Wyatt Oleff') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Wyatt Oleff') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Wyatt Oleff';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Bill Skarsgård') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Bill Skarsgård') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Bill Skarsgård';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Nicholas Hamilton') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Nicholas Hamilton') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Nicholas Hamilton';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Suceso Real') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Suceso Real'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/46.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/46.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/e3ZtOS4MCkk') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/e3ZtOS4MCkk'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Suceso Real');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/46.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/e3ZtOS4MCkk');
SET @idContenido = 46;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  46,
  'El Apolo 13 inicia su viaje a la luna en abril de 1970. Cuando la tripulación está a punto de llegar a su destino, una explosión en el espacio les hace perder oxígeno, energía y el curso de la nave... Todo se convierte en una situación desesperada para los tres hombres tripulantes, especialmente cuando el oxígeno amenaza con agotarse. Mientras, el mundo entero, que apenas un año antes conoció la gloria de la aventura espacial cuando el hombre pisó la luna, contiene la respiración a la espera de ver cómo acaba tan angustiosa espera.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Apollo 13'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Historia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Historia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Historia';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suceso Real') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suceso Real') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suceso Real';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Tom Hanks') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Tom Hanks') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Tom Hanks';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Bill Paxton') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Bill Paxton') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Bill Paxton';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Kevin Bacon') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Kevin Bacon') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Kevin Bacon';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Gary Sinise') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Gary Sinise') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Gary Sinise';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ed Harris') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ed Harris') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ed Harris';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Kathleen Quinlan') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Kathleen Quinlan') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Kathleen Quinlan';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Roger Corman') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Roger Corman') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Roger Corman';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Chris Ellis') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Chris Ellis') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Chris Ellis';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Xander Berkeley') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Xander Berkeley') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Xander Berkeley';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Terror') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Terror'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/47.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/47.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/8L-1Qk_MQQs') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/8L-1Qk_MQQs'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Terror');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/47.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/8L-1Qk_MQQs');
SET @idContenido = 47;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  47,
  'Incapaz de decirle a su mujer Katherine la trágica muerte de su hijo recién nacido, el diplomático americano Robert Thorn acepta un huérfano como su hijo. Los detalles del nacimiento del chico son un secreto, pero cuando Damien va creciendo, empieza a dar muestras de que no es un chico corriente.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'La profecía'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Terror') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Terror') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Terror';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suspenso') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suspenso') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suspenso';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Liev Schreiber') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Liev Schreiber') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Liev Schreiber';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Julia Stiles') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Julia Stiles') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Julia Stiles';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Seamus Davey-Fitzpatrick') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Seamus Davey-Fitzpatrick') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Seamus Davey-Fitzpatrick';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'David Thewils') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'David Thewils') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'David Thewils';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Pete Postlethwaite') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Pete Postlethwaite') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Pete Postlethwaite';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Mia Farrow') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Mia Farrow') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Mia Farrow';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Predrag Bjelac') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Predrag Bjelac') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Predrag Bjelac';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Carlo Sabatini') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Carlo Sabatini') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Carlo Sabatini';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Amy Huck') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Amy Huck') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Amy Huck';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Terror') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Terror'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/48.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/48.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/YDGw1MTEe9k') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/YDGw1MTEe9k'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Terror');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/48.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/YDGw1MTEe9k');
SET @idContenido = 48;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  48,
  'Regan es una niña de doce años víctima de fenómenos paranormales como la levitación o la manifestación de una fuerza sobrehumana. Su madre, aterrorizada, tras someter a su hija a múltiples análisis médicos que no ofrecen ningún resultado, acude a un sacerdote con estudios de psiquiatría. Éste está convencido de que el mal no es físico sino espiritual, es decir, que la niña es víctima de una posesión diabólica. Por eso, con la ayuda de otro sacerdote decide practicar un exorcismo.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'El exorcista'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Terror') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Terror') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Terror';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suspenso') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suspenso') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suspenso';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ellen Burstyn') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ellen Burstyn') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ellen Burstyn';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Linda Blair') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Linda Blair') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Linda Blair';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Max vox Sydow') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Max vox Sydow') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Max vox Sydow';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Lee J. Cobb') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Lee J. Cobb') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Lee J. Cobb';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Kitty Winn') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Kitty Winn') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Kitty Winn';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jack MacGowran') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jack MacGowran') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jack MacGowran';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jason Miller') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jason Miller') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jason Miller';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'William O''Malley') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'William O''Malley') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'William O''Malley';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Barton Heyman') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Barton Heyman') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Barton Heyman';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Serie') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Serie'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Comedia') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Comedia'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/50.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/50.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/LHOtME2DL4g') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/LHOtME2DL4g'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Serie');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Comedia');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/50.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/LHOtME2DL4g');
SET @idContenido = 50;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  50,
  'Steve Carell protagoniza The Office, un fresco y divertido vistazo, con formato pseudo-documental, al día a día en la vida de unos excéntricos trabajadores de la empresa Dunder Mifflin. El serio pero despistadísimo director Michael Scott se considera un magnífico jefe y mentor, pero realmente inspira más críticas que respeto a sus empleados.',
  9,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'The Office'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Comedia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Comedia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Comedia';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Familia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Familia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Familia';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Rainn Wilson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Rainn Wilson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Rainn Wilson';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Steve Carell') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Steve Carell') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Steve Carell';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jenna Fischer') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jenna Fischer') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jenna Fischer';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'John Krasinski') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'John Krasinski') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'John Krasinski';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'B.J. Novak') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'B.J. Novak') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'B.J. Novak';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Kate Flannery') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Kate Flannery') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Kate Flannery';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Brian Baumgartner') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Brian Baumgartner') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Brian Baumgartner';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Leslie David Baker') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Leslie David Baker') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Leslie David Baker';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Mindy Kaling') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Mindy Kaling') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Mindy Kaling';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Angela Kinsey') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Angela Kinsey') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Angela Kinsey';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Serie') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Serie'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Familia') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Familia'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/51.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/51.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/fYlZDTru55g') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/fYlZDTru55g'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Serie');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Familia');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/51.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/fYlZDTru55g');
SET @idContenido = 51;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  51,
  'Un cirujano joven y autista que padece el síndrome del sabio empieza a trabajar en un hospital prestigioso. Allá tendrá que vencer el escepticismo con el que sus colegas lo reciben.',
  4,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'The Good Doctor'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Familia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Familia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Familia';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Freddie Highmore') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Freddie Highmore') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Freddie Highmore';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Antonia Thomas') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Antonia Thomas') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Antonia Thomas';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Hill Harper') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Hill Harper') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Hill Harper';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Richard Schiff') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Richard Schiff') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Richard Schiff';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Christina Chang') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Christina Chang') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Christina Chang';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Paige Spara') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Paige Spara') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Paige Spara';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Fiona Gubelmann') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Fiona Gubelmann') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Fiona Gubelmann';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Will Yun Lee') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Will Yun Lee') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Will Yun Lee';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Nicholas Gonzalez') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Nicholas Gonzalez') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Nicholas Gonzalez';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Suceso Real') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Suceso Real'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/52.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/52.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/Salz7uGp72c') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/Salz7uGp72c'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Suceso Real');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/52.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/Salz7uGp72c');
SET @idContenido = 52;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  52,
  'La película gira en torno a la vida de Stephen Hawking, el importante teórico y divulgador científico que cambió la historia de la ciencia y la tecnología moderna para siempre. La película se centrará en la relación que mantuvo el británico con Jane Wilde, su primera mujer, con quien contrajo matrimonio después de que le diagnosticaran una enfermedad por la que no le quedaban más de dos años de vida. Estupenda adaptación con un Eddie Redmayne que cada día nos sorprende más.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'La teoría del todo'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Romance') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Romance') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Romance';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suceso Real') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suceso Real') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suceso Real';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Eddie Redmayne') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Eddie Redmayne') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Eddie Redmayne';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Felicity Jones') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Felicity Jones') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Felicity Jones';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Charlie Cox') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Charlie Cox') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Charlie Cox';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Emily Watson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Emily Watson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Emily Watson';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Simon McBurney') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Simon McBurney') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Simon McBurney';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'David Thewlis') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'David Thewlis') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'David Thewlis';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Maxine Peake') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Maxine Peake') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Maxine Peake';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Harry Lloyd') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Harry Lloyd') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Harry Lloyd';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Tom Prior') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Tom Prior') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Tom Prior';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Suceso Real') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Suceso Real'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/53.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/53.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/nuPZUUED5uk') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/nuPZUUED5uk'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Suceso Real');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/53.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/nuPZUUED5uk');
SET @idContenido = 53;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  53,
  'Durante el invierno de 1952, las autoridades británicas entraron en el hogar del matemático, analista y héroe de guerra Alan Turing, con la intención de investigar la denuncia de un robo. Al final acabaron arrestando a Turing acusándole de indecencia grave, un cargo que le supondría una devastadora condena por una ofensa criminal: ser homosexual. Los oficiales no tenían ni idea de que en realidad estaban incriminando al pionero de la informática actual. Liderando a un heterogéneo grupo de académicos, lingüistas, campeones de ajedrez y oficiales de inteligencia, se le conoce por haber descifrado el código de la inquebrantable máquina Enigma de los alemanes durante la Segunda Guerra Mundial.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Código enigma'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Historia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Historia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Historia';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suspenso') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suspenso') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suspenso';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suceso Real') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suceso Real') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suceso Real';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Benedict Cumberbatch') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Benedict Cumberbatch') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Benedict Cumberbatch';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Keira Knightley') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Keira Knightley') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Keira Knightley';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Matthew Goode') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Matthew Goode') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Matthew Goode';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Rory Kinnear') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Rory Kinnear') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Rory Kinnear';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Allen Leech') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Allen Leech') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Allen Leech';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Matthew Beard') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Matthew Beard') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Matthew Beard';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Charles Dance') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Charles Dance') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Charles Dance';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Mark Strong') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Mark Strong') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Mark Strong';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'James Northcote') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'James Northcote') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'James Northcote';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Suceso Real') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Suceso Real'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/54.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/54.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/RK8xHq6dfAo') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/RK8xHq6dfAo'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Suceso Real');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/54.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/RK8xHq6dfAo');
SET @idContenido = 54;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  54,
  'Narra la historia nunca contada de tres brillantes mujeres científicas afroamericanas que trabajaron en la NASA a comienzos de los años sesenta (en plena carrera espacial, y asimismo en mitad de la lucha por los derechos civiles de los negros estadounidenses) en el ambicioso proyecto de poner en órbita al astronauta John Glenn.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Talentos ocultos'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Historia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Historia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Historia';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suspenso') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suspenso') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suspenso';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suceso Real') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suceso Real') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suceso Real';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Taraji P. Henson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Taraji P. Henson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Taraji P. Henson';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Octavia Spencer') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Octavia Spencer') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Octavia Spencer';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Janelle Monáe') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Janelle Monáe') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Janelle Monáe';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Kevin Costner') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Kevin Costner') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Kevin Costner';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Kirsten Dunst') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Kirsten Dunst') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Kirsten Dunst';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jim Parsons') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jim Parsons') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jim Parsons';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Mahershala Ali') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Mahershala Ali') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Mahershala Ali';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Glen Powell') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Glen Powell') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Glen Powell';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ariana Neal') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ariana Neal') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ariana Neal';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Suceso Real') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Suceso Real'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/55.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/55.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/jT51irTIrAc') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/jT51irTIrAc'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Suceso Real');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/55.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/jT51irTIrAc');
SET @idContenido = 55;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  55,
  'Obsesionado con la búsqueda de una idea matemática original, el brillante estudiante John Forbes Nash llega a Princeton para realizar sus estudios de postgrado. Es un muchacho extraño y solitario, al que sólo comprende su compañero de cuarto. Por fin, Nash esboza una revolucionaria teoría y consigue una plaza de profesor en el MIT. Alicia Lardé, una de sus alumnas, lo deja fascinado al mostrarle que las leyes del amor están por encima de las de las matemáticas. Gracias a su prodigiosa habilidad para descifrar códigos es reclutado por Parcher William, del departamento de Defensa, para ayudar a los Estados Unidos en la Guerra Fría contra la Unión Soviética.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Una mente brillante'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Historia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Historia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Historia';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Romance') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Romance') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Romance';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suceso Real') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suceso Real') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suceso Real';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Russell Crowe') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Russell Crowe') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Russell Crowe';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jennifer Connelly') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jennifer Connelly') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jennifer Connelly';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ed Harris') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ed Harris') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ed Harris';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Paul Bettany') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Paul Bettany') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Paul Bettany';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Christopher Plummer') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Christopher Plummer') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Christopher Plummer';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Josh Lucas') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Josh Lucas') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Josh Lucas';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Adam Goldberg') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Adam Goldberg') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Adam Goldberg';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Anthony Rapp') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Anthony Rapp') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Anthony Rapp';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Judd Hirsch') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Judd Hirsch') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Judd Hirsch';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Ciencia Ficción') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Ciencia Ficción'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/56.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/56.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/7BWWWQzTpNU') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/7BWWWQzTpNU'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Ciencia Ficción');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/56.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/7BWWWQzTpNU');
SET @idContenido = 56;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  56,
  'Una nave espacial, que viaja a un planeta lejano transportando a miles de personas, tiene una avería en una de las cápsulas de hibernación tras el impacto con un gran meteorito. Como resultado, un pasajero se despierta noventa años antes del final del viaje.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Passengers'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Romance') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Romance') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Romance';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Sci-Fi') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Sci-Fi') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Sci-Fi';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Ciencia Ficción') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Ciencia Ficción') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Ciencia Ficción';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jennifer Lawrence') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jennifer Lawrence') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jennifer Lawrence';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Chris Pratt') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Chris Pratt') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Chris Pratt';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Michael Sheen') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Michael Sheen') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Michael Sheen';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Laurence Fishburne') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Laurence Fishburne') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Laurence Fishburne';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Andy García') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Andy García') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Andy García';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Aurora Perrineau') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Aurora Perrineau') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Aurora Perrineau';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Kristin Brock') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Kristin Brock') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Kristin Brock';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Julee Cerda') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Julee Cerda') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Julee Cerda';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Fred Melamed') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Fred Melamed') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Fred Melamed';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Suspenso') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Suspenso'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/57.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/57.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/iMW4RpQmJJQ') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/iMW4RpQmJJQ'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Suspenso');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/57.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/iMW4RpQmJJQ');
SET @idContenido = 57;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  57,
  'Un avión se estrella y tan sólo sobreviven cinco personas. Asignada al caso por su mentor, la joven terapeuta Claire, una brillante psicóloga, deberá ayudar a los supervivientes a superar el trauma. Pero, poco a poco, éstos empiezan a desaparecer misteriosamente... o a no aparecer en la sesiones. Nada está claro, ni siquiera qué pasó en el accidente. Además, entre los supervivientes está Eric, un atractivo pasajero que parece no necesitar terapia. (la línea entre este mundo y el próximo, está a pundo de ser cruzada)',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Passengers'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Misterio') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Misterio') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Misterio';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suspenso') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suspenso') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suspenso';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Romance') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Romance') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Romance';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Anne Hathaway') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Anne Hathaway') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Anne Hathaway';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Patrick Wilson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Patrick Wilson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Patrick Wilson';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Andre Braugher') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Andre Braugher') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Andre Braugher';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Dianne Wiest') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Dianne Wiest') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Dianne Wiest';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'David Morse') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'David Morse') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'David Morse';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'William B. Davis') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'William B. Davis') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'William B. Davis';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ryan Robbins') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ryan Robbins') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ryan Robbins';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Clea DuVall') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Clea DuVall') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Clea DuVall';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Don Thompson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Don Thompson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Don Thompson';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Suceso Real') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Suceso Real'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/58.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/58.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/JW3WfSFgrVY') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/JW3WfSFgrVY'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Suceso Real');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/58.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/JW3WfSFgrVY');
SET @idContenido = 58;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  58,
  'Irán, año 1979. Cuando la embajada de los Estados Unidos en Teherán es ocupada por seguidores del Ayatolá Jomeini para pedir la extradición del Sha de Persia, la CIA y el gobierno canadiense organizaron una operación para rescatar a seis diplomáticos estadounidenses que se habían refugiado en la casa del embajador de Canadá. Con este fin se recurrió a un experto en rescatar rehenes y se preparó el escenario para el rodaje de una película de ciencia-ficción, de título ''Argo'', en la que participaba un equipo de cazatalentos de Hollywood. La misión: ir a Teherán y hacer pasar a los diplomáticos por un equipo de filmación canadiense para traerlos de vuelta a casa.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Argo'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suspenso') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suspenso') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suspenso';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suceso Real') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suceso Real') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suceso Real';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ben Affleck') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ben Affleck') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ben Affleck';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Bryan Cranston') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Bryan Cranston') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Bryan Cranston';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Alan Arkin') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Alan Arkin') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Alan Arkin';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jogn Goodman') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jogn Goodman') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jogn Goodman';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Victor Garber') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Victor Garber') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Victor Garber';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Tate Donovan') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Tate Donovan') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Tate Donovan';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Clea DuVall') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Clea DuVall') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Clea DuVall';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Scoot McNairy') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Scoot McNairy') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Scoot McNairy';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Rory Cochrane') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Rory Cochrane') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Rory Cochrane';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Kerry Bishé') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Kerry Bishé') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Kerry Bishé';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Ciencia Ficción') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Ciencia Ficción'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/59.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/59.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/34cEo0VhfGE') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/34cEo0VhfGE'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Ciencia Ficción');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/59.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/34cEo0VhfGE');
SET @idContenido = 59;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  59,
  'Un grupo de científicos y exploradores emprende un viaje espacial a un remoto planeta, una rara estrella recién descubierta, donde sus límites físicos y mentales serán puestos a prueba. El motivo de la misión es que los humanos creen que allá podrán encontrar la respuesta a las preguntas más profundas y al mayor de los misterios: el origen de la vida en la Tierra.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Prometheus'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Ciencia Ficción') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Ciencia Ficción') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Ciencia Ficción';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Aventura') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Aventura') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Aventura';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Misterio') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Misterio') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Misterio';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Noomi Rapace') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Noomi Rapace') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Noomi Rapace';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Michael Fassbender') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Michael Fassbender') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Michael Fassbender';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Charlize Theron') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Charlize Theron') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Charlize Theron';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Logan Marshall-Green') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Logan Marshall-Green') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Logan Marshall-Green';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Guy Pearce') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Guy Pearce') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Guy Pearce';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Idris Elba') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Idris Elba') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Idris Elba';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Sean Harris') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Sean Harris') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Sean Harris';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Rafe Spall') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Rafe Spall') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Rafe Spall';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Kate Dickie') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Kate Dickie') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Kate Dickie';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Emut Elliott') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Emut Elliott') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Emut Elliott';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Benedict Wong') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Benedict Wong') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Benedict Wong';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Lucy Hutchinson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Lucy Hutchinson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Lucy Hutchinson';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Patrick Wilson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Patrick Wilson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Patrick Wilson';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ian Whyte') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ian Whyte') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ian Whyte';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Branwell Donaghey') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Branwell Donaghey') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Branwell Donaghey';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Vladimir Furdik') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Vladimir Furdik') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Vladimir Furdik';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'C.C. Smiff') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'C.C. Smiff') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'C.C. Smiff';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Shane Steyn') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Shane Steyn') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Shane Steyn';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'John Lebar') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'John Lebar') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'John Lebar';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Ciencia Ficción') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Ciencia Ficción'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/60.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/60.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/svnAD0TApb8') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/svnAD0TApb8'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Ciencia Ficción');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/60.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/svnAD0TApb8');
SET @idContenido = 60;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  60,
  'Rumbo a un remoto planeta al otro lado de la galaxia, la tripulación de la nave colonial Covenant descubre lo que creen que es un paraíso inexplorado, pero resulta tratarse de un mundo oscuro y hostil cuyo único habitante es un ''sintético'' llamado David (Michael Fassbender), superviviente de la malograda expedición Prometheus. Secuela de ''Prometheus'' (2012), a su vez precuela de ''Alien, el octavo pasajero'' (1979).',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Alien: Covenant'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Ciencia Ficción') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Ciencia Ficción') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Ciencia Ficción';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Aventura') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Aventura') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Aventura';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Misterio') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Misterio') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Misterio';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Michael Fassbender') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Michael Fassbender') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Michael Fassbender';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Katherine Waterston') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Katherine Waterston') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Katherine Waterston';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Billy Crudup') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Billy Crudup') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Billy Crudup';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Danny McBride') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Danny McBride') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Danny McBride';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Demián Bichir') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Demián Bichir') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Demián Bichir';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Carmen Ejogo') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Carmen Ejogo') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Carmen Ejogo';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jussie Smollett') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jussie Smollett') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jussie Smollett';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Callie Hernandez') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Callie Hernandez') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Callie Hernandez';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Amy Seimetz') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Amy Seimetz') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Amy Seimetz';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Nathaniel Dean') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Nathaniel Dean') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Nathaniel Dean';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Alexander England') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Alexander England') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Alexander England';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Benjamin Rigby') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Benjamin Rigby') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Benjamin Rigby';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Uli Latukefu') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Uli Latukefu') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Uli Latukefu';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Tess Haubrich') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Tess Haubrich') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Tess Haubrich';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Andrew Crawford') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Andrew Crawford') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Andrew Crawford';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Guy Pierce') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Guy Pierce') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Guy Pierce';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'James Franco') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'James Franco') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'James Franco';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Noomi Rapace') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Noomi Rapace') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Noomi Rapace';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Javier Botet') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Javier Botet') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Javier Botet';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Suspenso') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Suspenso'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/61.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/61.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/viX9irZw9Cg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/viX9irZw9Cg'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Suspenso');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/61.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/viX9irZw9Cg');
SET @idContenido = 61;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  61,
  'Seis miembros de la tripulación de la Estación Espacial Internacional que están a punto de lograr uno de los descubrimientos más importantes en la historia humana: la primera evidencia de vida extraterrestre en Marte. A medida que el equipo comienza a investigar y sus métodos tienen consecuencias inesperadas, la forma viviente demostrará ser más inteligente de lo que cualquiera esperaba.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Life: Vida inteligente'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Ciencia Ficción') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Ciencia Ficción') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Ciencia Ficción';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suspenso') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suspenso') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suspenso';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Terror') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Terror') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Terror';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jake Gyllenhaal Rebecca Ferguson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jake Gyllenhaal Rebecca Ferguson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jake Gyllenhaal Rebecca Ferguson';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ryan Reynolds') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ryan Reynolds') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ryan Reynolds';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Hiroyuki Sanada') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Hiroyuki Sanada') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Hiroyuki Sanada';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Airyon Bakare') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Airyon Bakare') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Airyon Bakare';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Olga Dihovichnaya') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Olga Dihovichnaya') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Olga Dihovichnaya';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Naoko Mori') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Naoko Mori') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Naoko Mori';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Haruka Kuroda Camiel Warren-Taylor') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Haruka Kuroda Camiel Warren-Taylor') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Haruka Kuroda Camiel Warren-Taylor';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Suceso Real') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Suceso Real'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/62.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/62.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/w0jqppl-ybY') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/w0jqppl-ybY'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Suceso Real');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/62.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/w0jqppl-ybY');
SET @idContenido = 62;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  62,
  'Basada en el libro ''A tale of love and fallout'' de Lauren Redniss, Radioactive es la historia biográfica sobre la científica polaca Marie Curie, la primera persona en recibir dos premios Nobel en distintas especialidades —Física y Química—, y la primera mujer en ocupar el puesto de profesora en la Universidad de París. Dirigida por Marjane Satrapi y protagonizada por Rosamund Pike como Marie Curie, está basada en la novela gráfica de Lauren Redniss.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Madame Curie'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Romance') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Romance') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Romance';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Historia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Historia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Historia';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suceso Real') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suceso Real') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suceso Real';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Rosamund Pike') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Rosamund Pike') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Rosamund Pike';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Sam Riley') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Sam Riley') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Sam Riley';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Aneurin Barnard') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Aneurin Barnard') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Aneurin Barnard';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Anya Taylor-Joy') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Anya Taylor-Joy') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Anya Taylor-Joy';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Simon Russell Beale') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Simon Russell Beale') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Simon Russell Beale';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jonathan Aris') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jonathan Aris') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jonathan Aris';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Corey Johnson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Corey Johnson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Corey Johnson';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Tim Woodward') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Tim Woodward') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Tim Woodward';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Katherine Parkinson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Katherine Parkinson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Katherine Parkinson';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Serie') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Serie'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Comedia') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Comedia'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/63.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/63.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/wCa1jfo93jQ') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/wCa1jfo93jQ'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Serie');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Comedia');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/63.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/wCa1jfo93jQ');
SET @idContenido = 63;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  63,
  'En un desordenado sótano en las entrañas de Industrias Reynholm habitan Roy y Moss, los componentes del Departamento de informática. Víctimas del desprecio y del escarnio de sus compañeros más guays, su mundo de servidores y cortafuegos se ve interrumpido por la llegada de Jen, su nueva jefa, que sabe tanto de ordenadores como un yak.',
  4,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'The IT Crowd'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Comedia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Comedia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Comedia';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Chris O''Dowd') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Chris O''Dowd') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Chris O''Dowd';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Richard Ayoade') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Richard Ayoade') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Richard Ayoade';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Katherine Parkinson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Katherine Parkinson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Katherine Parkinson';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Matt Berry') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Matt Berry') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Matt Berry';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Noel Fielding') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Noel Fielding') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Noel Fielding';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Peter Serafinowicz') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Peter Serafinowicz') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Peter Serafinowicz';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Gragam Linehan') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Gragam Linehan') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Gragam Linehan';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Tom Binns') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Tom Binns') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Tom Binns';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Lewis Macleod') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Lewis Macleod') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Lewis Macleod';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Serie') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Serie'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Ciencia Ficción') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Ciencia Ficción'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/64.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/64.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/BV8qFeZxZPE') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/BV8qFeZxZPE'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Serie');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Ciencia Ficción');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/64.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/BV8qFeZxZPE');
SET @idContenido = 64;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  64,
  'En un presente paralelo donde el último gadget que hay que tener para cualquier familia ocupada es un ''Synth'' - un sirviente robótico altamente desarrollado que es tan similar a un humano real que está transformando la manera en que vivimos.',
  3,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Humans'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Ciencia Ficción') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Ciencia Ficción') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Ciencia Ficción';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Sci-Fi') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Sci-Fi') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Sci-Fi';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Fantasía') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Fantasía') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Fantasía';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Misterio') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Misterio') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Misterio';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Katherine Parkinson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Katherine Parkinson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Katherine Parkinson';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Gemma Chan') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Gemma Chan') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Gemma Chan';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Emily Berrington') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Emily Berrington') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Emily Berrington';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Lucy Carless') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Lucy Carless') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Lucy Carless';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Colin Morgan') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Colin Morgan') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Colin Morgan';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Theo Stevenson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Theo Stevenson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Theo Stevenson';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Pixie Daves') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Pixie Daves') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Pixie Daves';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Tom Goodman-Hill') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Tom Goodman-Hill') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Tom Goodman-Hill';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ivanno Jeremiah') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ivanno Jeremiah') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ivanno Jeremiah';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ruth Bradley') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ruth Bradley') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ruth Bradley';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Will Tudor') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Will Tudor') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Will Tudor';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Neil Maskell') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Neil Maskell') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Neil Maskell';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Billy Jenkins') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Billy Jenkins') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Billy Jenkins';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Bella Dayne') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Bella Dayne') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Bella Dayne';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Thusitha Jayasumdera') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Thusitha Jayasumdera') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Thusitha Jayasumdera';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Danny Webb') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Danny Webb') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Danny Webb';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Carrie-Anne Moss') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Carrie-Anne Moss') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Carrie-Anne Moss';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'William Hurt') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'William Hurt') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'William Hurt';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Acción') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Acción'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/65.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/65.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/u3wtVI-aJuw') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/u3wtVI-aJuw'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Acción');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/65.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/u3wtVI-aJuw');
SET @idContenido = 65;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  65,
  'El más famoso de los videojuegos de carreras llega a la gran pantalla para dejar a los más fanáticos boquiabiertos. Need for Speed cuenta la historia de un experto en automovilismo (Aaron Paul), el cual tiene un garage en dónde transforma coches para hacerlos más rápidos de lo que son para poder competir en carreras ilegales. Entró en la cárcel por un delito que no había cometido, justo cuando su mejor amigo muere en una carrera, y ahora sale de allí para vengarse.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Need for Speed'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Acción') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Acción') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Acción';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suspenso') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suspenso') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suspenso';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Aaron Paul') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Aaron Paul') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Aaron Paul';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Dominic Cooper') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Dominic Cooper') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Dominic Cooper';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Imogen Poots') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Imogen Poots') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Imogen Poots';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ramón Rodríguez') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ramón Rodríguez') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ramón Rodríguez';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Michael Keaton') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Michael Keaton') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Michael Keaton';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Rami Malek') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Rami Malek') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Rami Malek';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Kid Cudi') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Kid Cudi') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Kid Cudi';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Dakota Johnson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Dakota Johnson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Dakota Johnson';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Harrison Gilbertson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Harrison Gilbertson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Harrison Gilbertson';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Carmela Zumbado') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Carmela Zumbado') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Carmela Zumbado';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jalil Jay Lynch') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jalil Jay Lynch') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jalil Jay Lynch';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Nick Chinlund') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Nick Chinlund') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Nick Chinlund';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Chad Randall') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Chad Randall') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Chad Randall';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Serie') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Serie'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Drama'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/66.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/66.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/miQqyfO66uw') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/miQqyfO66uw'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Serie');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Drama');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/66.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/miQqyfO66uw');
SET @idContenido = 66;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  66,
  'Mare of Easttown es una miniserie estadounidense de drama y misterio creada por Brad Ingelsby cuenta la historia de Mare Sheehan, una detective de un pequeño pueblo de Pensilvania que investiga un asesinato local mientras trata de evitar que su vida se desmorone a raiz de la muerte de su hijo, su separación, y la posible restitución de su nieto a su madre biológica.',
  1,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Mare of Easttown'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Misterio') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Misterio') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Misterio';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Crimen') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Crimen') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Crimen';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suspenso') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suspenso') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suspenso';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Kate Winslet') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Kate Winslet') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Kate Winslet';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Julianne Nicholson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Julianne Nicholson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Julianne Nicholson';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jean Smart') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jean Smart') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jean Smart';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Angourie Rice') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Angourie Rice') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Angourie Rice';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Evan Peters') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Evan Peters') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Evan Peters';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Sosie Bacon') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Sosie Bacon') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Sosie Bacon';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'David Denman') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'David Denman') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'David Denman';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Neal Huff') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Neal Huff') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Neal Huff';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'James McArdle') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'James McArdle') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'James McArdle';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Guy Pearce') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Guy Pearce') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Guy Pearce';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Cailee Spaeny') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Cailee Spaeny') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Cailee Spaeny';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'John Douglas Thompson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'John Douglas Thompson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'John Douglas Thompson';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Joe Tippett') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Joe Tippett') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Joe Tippett';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Cameron Mann') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Cameron Mann') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Cameron Mann';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Chinasa Ogbuagu') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Chinasa Ogbuagu') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Chinasa Ogbuagu';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Suceso Real') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Suceso Real'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/67.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/67.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/jVHCQfcugdw') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/jVHCQfcugdw'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Suceso Real');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/67.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/jVHCQfcugdw');
SET @idContenido = 67;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  67,
  'La vida de Ray Charles es una alternancia de triunfos y fracasos personales que se suceden a lo largo de una dilatada y galardonada carrera en el mundo del espectáculo. Pero estamos hablando de un hombre que sintetizó sus luchas, su dolor y su oscuridad personal con la misma efectividad con la que supo fundir en su arte una miríada de estilos musicales: el jazz, el rhythm & blues, el rock & roll, el gospel y el country. Su historia tiene entonces un sentido muy distinto: la cadena de logros se transforma en el vibrante y conmovedor trayecto de un genio único con una visión propia que enseñó al mundo a escuchar música de una forma nueva. RAY es la biografía, nunca contada antes, de esa leyenda de la música americana que es Ray Charles. Se centra en el período más explosivo de la carrera de Charles, que comienza cuando este joven negro ciego se sube solo a un autobús en Florida y cruza el país para refinar su arte en la floreciente escena jazzística de Seattle.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Ray'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Música') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Música') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Música';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suceso Real') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suceso Real') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suceso Real';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Historia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Historia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Historia';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jamie Foxx') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jamie Foxx') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jamie Foxx';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Kerry Washington') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Kerry Washington') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Kerry Washington';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Regina King') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Regina King') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Regina King';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Harry Lennix') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Harry Lennix') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Harry Lennix';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Clifton Powell') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Clifton Powell') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Clifton Powell';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Bokeem Woodbine') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Bokeem Woodbine') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Bokeem Woodbine';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Sharon Warren') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Sharon Warren') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Sharon Warren';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'C.J. Sanders') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'C.J. Sanders') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'C.J. Sanders';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Curtis Armstrong') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Curtis Armstrong') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Curtis Armstrong';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Serie') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Serie'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Ciencia Ficción') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Ciencia Ficción'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/68.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/68.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/jVHCQfcugdw') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/jVHCQfcugdw'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Serie');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Ciencia Ficción');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/68.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/jVHCQfcugdw');
SET @idContenido = 68;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  68,
  'Black Mirror es una serie de televisión británica creada por Charlie Brooker que muestra el lado oscuro de la vida y la tecnología. La serie es producida por Zeppotron para Endemol. En cuanto al contenido del programa y la estructura, Brooker ha señalado que ''cada episodio tiene un tono diferente, un entorno diferente, incluso una realidad diferente, pero todos son acerca de la forma en que vivimos ahora - y la forma en que podríamos estar viviendo en 10 minutos si somos torpes''.',
  5,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Black Mirror'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Ciencia Ficción') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Ciencia Ficción') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Ciencia Ficción';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Fantasía') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Fantasía') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Fantasía';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Michaela Coel') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Michaela Coel') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Michaela Coel';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Daniel Lapaine') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Daniel Lapaine') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Daniel Lapaine';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Hannah John-Kamen') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Hannah John-Kamen') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Hannah John-Kamen';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Andrew Roux') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Andrew Roux') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Andrew Roux';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Claire Keelan') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Claire Keelan') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Claire Keelan';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Sinéad Matthews') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Sinéad Matthews') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Sinéad Matthews';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Anna Wilson-Jones') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Anna Wilson-Jones') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Anna Wilson-Jones';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Paul Popplewell') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Paul Popplewell') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Paul Popplewell';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Julia Davis') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Julia Davis') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Julia Davis';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ashely Thomas') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ashely Thomas') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ashely Thomas';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Kerrie Hayes') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Kerrie Hayes') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Kerrie Hayes';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Amy Beth Hayes') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Amy Beth Hayes') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Amy Beth Hayes';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Rebekah Staton') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Rebekah Staton') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Rebekah Staton';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Rhashan Stone') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Rhashan Stone') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Rhashan Stone';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Phoebe Fox') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Phoebe Fox') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Phoebe Fox';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jimi Mistry') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jimi Mistry') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jimi Mistry';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Tobias Menzies') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Tobias Menzies') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Tobias Menzies';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Cherry Jones') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Cherry Jones') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Cherry Jones';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Alice Eve') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Alice Eve') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Alice Eve';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Susannah Fielding') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Susannah Fielding') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Susannah Fielding';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Demetri Goritsas') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Demetri Goritsas') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Demetri Goritsas';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Kadiff Kirwan') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Kadiff Kirwan') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Kadiff Kirwan';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Sope Dirisu') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Sope Dirisu') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Sope Dirisu';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jackson Bews') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jackson Bews') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jackson Bews';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Annabel Davis') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Annabel Davis') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Annabel Davis';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Billy Griffin Jr.') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Billy Griffin Jr.') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Billy Griffin Jr.';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Paul Lawrence Kitson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Paul Lawrence Kitson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Paul Lawrence Kitson';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jeff Mash Patrick Kennedy') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jeff Mash Patrick Kennedy') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jeff Mash Patrick Kennedy';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Lydia Wilson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Lydia Wilson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Lydia Wilson';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Alastair Mackenzie') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Alastair Mackenzie') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Alastair Mackenzie';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Chetna Pandya') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Chetna Pandya') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Chetna Pandya';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Tuppence Middleton') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Tuppence Middleton') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Tuppence Middleton';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ian Bonar') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ian Bonar') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ian Bonar';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Elisabeth Hopper') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Elisabeth Hopper') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Elisabeth Hopper';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Nick Bartlett') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Nick Bartlett') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Nick Bartlett';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Wunmi Mosaku') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Wunmi Mosaku') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Wunmi Mosaku';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Alex Lawther') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Alex Lawther') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Alex Lawther';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jerome Flynn') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jerome Flynn') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jerome Flynn';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Susannah Doyle') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Susannah Doyle') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Susannah Doyle';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Madeline Brewer') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Madeline Brewer') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Madeline Brewer';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ariane Labed') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ariane Labed') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ariane Labed';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Sarah Snook') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Sarah Snook') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Sarah Snook';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Michael Kelly') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Michael Kelly') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Michael Kelly';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jola Bokinni') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jola Bokinni') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jola Bokinni';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Faye Marsay') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Faye Marsay') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Faye Marsay';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Benefict Wong') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Benefict Wong') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Benefict Wong';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jonas Karlsson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jonas Karlsson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jonas Karlsson';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Chloe Pirrie') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Chloe Pirrie') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Chloe Pirrie';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Eugene O''Hare') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Eugene O''Hare') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Eugene O''Hare';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Indira Ainger') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Indira Ainger') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Indira Ainger';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'James Lance') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'James Lance') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'James Lance';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'David Ajala') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'David Ajala') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'David Ajala';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Sarah Abbott') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Sarah Abbott') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Sarah Abbott';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Maxine Peake') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Maxine Peake') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Maxine Peake';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jake Davies') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jake Davies') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jake Davies';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Clint Dyer') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Clint Dyer') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Clint Dyer';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Letitia Wright') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Letitia Wright') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Letitia Wright';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Babs Olusanmokun') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Babs Olusanmokun') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Babs Olusanmokun';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Georgina Campbell') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Georgina Campbell') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Georgina Campbell';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jesse Plemons') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jesse Plemons') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jesse Plemons';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jimmi Simpson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jimmi Simpson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jimmi Simpson';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Aaron Paul') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Aaron Paul') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Aaron Paul';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Aldis Hodge') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Aldis Hodge') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Aldis Hodge';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Kiran Sonia Sawar') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Kiran Sonia Sawar') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Kiran Sonia Sawar';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Miley Cyrus') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Miley Cyrus') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Miley Cyrus';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Anthony Mackie') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Anthony Mackie') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Anthony Mackie';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Nicole Beharie') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Nicole Beharie') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Nicole Beharie';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Bryce Dallas Howard') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Bryce Dallas Howard') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Bryce Dallas Howard';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Mackenzie Davis') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Mackenzie Davis') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Mackenzie Davis';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Gugu Mbatha-Raw') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Gugu Mbatha-Raw') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Gugu Mbatha-Raw';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Serie') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Serie'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Drama'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/69.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/69.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/c4LtoWQaLxk') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/c4LtoWQaLxk'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Serie');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Drama');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/69.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/c4LtoWQaLxk');
SET @idContenido = 69;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  69,
  'Una madre soltera se adentra en un mundo de retorcidos juegos psicológicos cuando inicia una relación cuasi-no consentida con su jefe, un psiquiatra, y se hace amiga en secreto de su misteriosa esposa. La trama se bassa en un thriller sobre un triángulo amoroso perverso, más la introducción sutilmente de un elemento clave, que dará un giro notable a la obra.',
  1,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Detrás de sus ojos'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suspenso') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suspenso') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suspenso';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Crimen') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Crimen') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Crimen';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Simona Brown') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Simona Brown') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Simona Brown';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Eve Hewson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Eve Hewson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Eve Hewson';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Toma Bateman') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Toma Bateman') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Toma Bateman';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Robert Aramayo') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Robert Aramayo') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Robert Aramayo';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Tyler Howitt') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Tyler Howitt') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Tyler Howitt';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Georgie Glen') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Georgie Glen') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Georgie Glen';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Kamontip Krissy Ashton') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Kamontip Krissy Ashton') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Kamontip Krissy Ashton';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Rob Horrocks') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Rob Horrocks') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Rob Horrocks';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Joakim Skarli') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Joakim Skarli') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Joakim Skarli';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Ciencia Ficción') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Ciencia Ficción'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/70.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/70.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/UVMcpZ42BkA') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/UVMcpZ42BkA'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Ciencia Ficción');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/70.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/UVMcpZ42BkA');
SET @idContenido = 70;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  70,
  'En un futuro cercano, Theodore, un hombre solitario a punto de divorciarse que trabaja en una empresa como escritor de cartas para terceras personas, compra un día un nuevo sistema operativo basado en el modelo de Inteligencia Artificial, diseñado para satisfacer todas las necesidades del usuario. Para su sorpresa, se crea una relación romántica entre él y Samantha, la voz femenina de ese sistema operativo.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Her'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Sci-Fi') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Sci-Fi') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Sci-Fi';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Ciencia Ficción') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Ciencia Ficción') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Ciencia Ficción';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Romance') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Romance') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Romance';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Joaquin Phoenix') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Joaquin Phoenix') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Joaquin Phoenix';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Scarlett Johansson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Scarlett Johansson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Scarlett Johansson';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Amy Adams') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Amy Adams') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Amy Adams';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Rooney Mara') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Rooney Mara') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Rooney Mara';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Olivia Wilde') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Olivia Wilde') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Olivia Wilde';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Chris Pratt') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Chris Pratt') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Chris Pratt';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Matt Letscher') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Matt Letscher') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Matt Letscher';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Portia Doubleday') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Portia Doubleday') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Portia Doubleday';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Spike Jonze') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Spike Jonze') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Spike Jonze';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Acción') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Acción'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/71.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/71.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/Ohws8y572KE') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/Ohws8y572KE'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Acción');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/71.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/Ohws8y572KE');
SET @idContenido = 71;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  71,
  'Ethan Hunt es un superespía capaz de resolver cualquier arriesgada situación con la máxima elegancia. Forma parte de un competente equipo dirigido por el agente Jim Phelps, que ha vuelto a reunir a sus hombres para participar en una dificilísima misión: evitar la venta de un disco robado que contiene información secreta de vital importancia.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Misión Imposible'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Acción') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Acción') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Acción';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Romance') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Romance') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Romance';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Tom Cruise') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Tom Cruise') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Tom Cruise';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jon Voight') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jon Voight') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jon Voight';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Emmanuelle Béart') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Emmanuelle Béart') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Emmanuelle Béart';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Henry Czerny') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Henry Czerny') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Henry Czerny';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jean Reno') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jean Reno') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jean Reno';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ving Rhames') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ving Rhames') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ving Rhames';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Kristin Scott Thomas') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Kristin Scott Thomas') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Kristin Scott Thomas';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Vanessa Redgrave') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Vanessa Redgrave') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Vanessa Redgrave';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ingeborga Dapkünaitè') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ingeborga Dapkünaitè') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ingeborga Dapkünaitè';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Acción') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Acción'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/72.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/72.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/AeUzNxHHryQ') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/AeUzNxHHryQ'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Acción');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/72.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/AeUzNxHHryQ');
SET @idContenido = 72;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  72,
  'Guerra fría, años 60. Narra las aventuras de dos agentes secretos que se parecen más de lo que creen: Napoleon Solo, de la CIA, e Illya Kuryakin, del KGB. Ambos se ven obligados a olvidar sus diferencias y formar un equipo cuya misión será poner fin a una misteriosa organización criminal internacional que pretende desestabilizar el frágil equilibrio de poder provocado por la proliferación de las armas nucleares. La hija de un científico alemán desaparecido es la clave para infiltrarse en la organización, encontrar al científico y evitar una catástrofe mundial.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'El agente de C.I.P.O.L.'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Acción') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Acción') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Acción';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Aventura') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Aventura') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Aventura';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Comedia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Comedia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Comedia';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Henry Cavill') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Henry Cavill') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Henry Cavill';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Armie Hammer Alicia Vikander') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Armie Hammer Alicia Vikander') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Armie Hammer Alicia Vikander';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Elizabeth Debicki') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Elizabeth Debicki') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Elizabeth Debicki';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Luca Calvani') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Luca Calvani') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Luca Calvani';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Sylvester Groth') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Sylvester Groth') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Sylvester Groth';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Hugh Grant') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Hugh Grant') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Hugh Grant';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jared Harris') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jared Harris') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jared Harris';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Christian Berkel') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Christian Berkel') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Christian Berkel';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Misha Kuznetsov') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Misha Kuznetsov') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Misha Kuznetsov';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Guy Williams') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Guy Williams') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Guy Williams';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Marianna Di Martino') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Marianna Di Martino') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Marianna Di Martino';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Fantasía') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Fantasía'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/73.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/73.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/2QKg5SZ_35I') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/2QKg5SZ_35I'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Fantasía');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/73.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/2QKg5SZ_35I');
SET @idContenido = 73;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  73,
  'Cuatro adolescentes son absorbidos por un videojuego, en el que se convierten en avatares de personajes arquetípicos. Allí vivirán múltiples aventuras, al tiempo que buscan cómo salir de allí para volver a su mundo.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Jumanji - Bienvenidos a la jungla'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Comedia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Comedia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Comedia';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Ficción') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Ficción') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Ficción';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Aventura') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Aventura') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Aventura';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Fantasía') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Fantasía') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Fantasía';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Dwayne Johnson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Dwayne Johnson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Dwayne Johnson';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Kevin Hart') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Kevin Hart') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Kevin Hart';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jack Black') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jack Black') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jack Black';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Karen Gillan') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Karen Gillan') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Karen Gillan';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Nick Jonas') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Nick Jonas') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Nick Jonas';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Rhys Darby') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Rhys Darby') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Rhys Darby';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Bobby Cannavale') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Bobby Cannavale') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Bobby Cannavale';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Alex Wolff') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Alex Wolff') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Alex Wolff';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ser''Darius Blain') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ser''Darius Blain') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ser''Darius Blain';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Madison Iseman') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Madison Iseman') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Madison Iseman';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Morgan Turner') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Morgan Turner') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Morgan Turner';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Sean Buxton') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Sean Buxton') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Sean Buxton';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Mason Guccione') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Mason Guccione') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Mason Guccione';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Marin Hinkle') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Marin Hinkle') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Marin Hinkle';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Colin Hanks') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Colin Hanks') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Colin Hanks';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Fantasía') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Fantasía'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/21.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/21.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/rBxcF-r9Ibs') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/rBxcF-r9Ibs'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Fantasía');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/21.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/rBxcF-r9Ibs');
SET @idContenido = 21;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  21,
  'Las aventuras continúan en el fantástico mundo del video juego Jumanji, donde nada es lo que parece. En esta ocasión, los jugadores vuelven al juego, pero sus personajes se han intercambiado entre sí, lo que ofrece un curioso plantel: los mismos héroes con distinta apariencia y habilidades. Pero, ¿dónde está el resto de la gente?',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Jumanji - The next level'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Comedia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Comedia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Comedia';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Ficción') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Ficción') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Ficción';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Aventura') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Aventura') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Aventura';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Fantasía') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Fantasía') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Fantasía';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Dwayne Johnson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Dwayne Johnson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Dwayne Johnson';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Kevin Hart') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Kevin Hart') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Kevin Hart';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jack Black') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jack Black') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jack Black';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Karen Gillan') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Karen Gillan') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Karen Gillan';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Awkwafina') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Awkwafina') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Awkwafina';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Nick Jonas') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Nick Jonas') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Nick Jonas';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Rhys Darby') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Rhys Darby') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Rhys Darby';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Bobby Cannavale') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Bobby Cannavale') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Bobby Cannavale';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Alex Wolff') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Alex Wolff') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Alex Wolff';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ser''Darius Blain') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ser''Darius Blain') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ser''Darius Blain';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Madison Iseman') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Madison Iseman') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Madison Iseman';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Morgan Turner') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Morgan Turner') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Morgan Turner';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Sean Buxton') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Sean Buxton') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Sean Buxton';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Mason Guccione') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Mason Guccione') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Mason Guccione';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Marin Hinkle') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Marin Hinkle') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Marin Hinkle';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Colin Hanks') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Colin Hanks') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Colin Hanks';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Danny DeVito') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Danny DeVito') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Danny DeVito';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Danny Glover') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Danny Glover') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Danny Glover';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Fantasía') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Fantasía'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/74.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/74.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/sfM7_JLk-84') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/sfM7_JLk-84'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Fantasía');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/74.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/sfM7_JLk-84');
SET @idContenido = 74;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  74,
  'En 1984, en plena guerra fría, Diana Prince, conocida como La Mujer Maravilla, se enfrenta al empresario Maxwell Lord y a su antigua amiga Barbara Minerva / Cheetah, una villana que posee fuerza y agilidad sobrehumanas.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Mujer Maravilla 1984'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Comedia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Comedia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Comedia';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Ficción') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Ficción') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Ficción';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Aventura') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Aventura') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Aventura';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Fantasía') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Fantasía') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Fantasía';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Gal Gadot') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Gal Gadot') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Gal Gadot';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Chris Pine') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Chris Pine') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Chris Pine';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Kristen Wiig') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Kristen Wiig') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Kristen Wiig';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Pedro Pascal') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Pedro Pascal') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Pedro Pascal';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Robin Wright') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Robin Wright') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Robin Wright';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Connie Nielsen') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Connie Nielsen') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Connie Nielsen';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Lilly Aspell') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Lilly Aspell') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Lilly Aspell';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Amr Waked') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Amr Waked') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Amr Waked';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Kristoffer Polaha') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Kristoffer Polaha') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Kristoffer Polaha';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Aventura') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Aventura'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/75.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/75.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/DBfsgcswlYQ') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/DBfsgcswlYQ'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Aventura');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/75.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/DBfsgcswlYQ');
SET @idContenido = 75;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  75,
  'Christian Wolff es un contable y genio matemático, un hombre obsesivo con el orden y con mucha más afinidad con los números que con las personas, que lleva una doble vida como asesino despiadado.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'El Contador'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Aventura') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Aventura') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Aventura';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Acción') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Acción') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Acción';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suspenso') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suspenso') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suspenso';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Crimen') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Crimen') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Crimen';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ben Affleck') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ben Affleck') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ben Affleck';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Anna Kendrick') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Anna Kendrick') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Anna Kendrick';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'J.K. Simmons') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'J.K. Simmons') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'J.K. Simmons';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jon Bernthal') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jon Bernthal') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jon Bernthal';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jeffrey Tambor') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jeffrey Tambor') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jeffrey Tambor';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Cynthia Addai-Robinson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Cynthia Addai-Robinson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Cynthia Addai-Robinson';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'John Lithgow') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'John Lithgow') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'John Lithgow';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jean Smart') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jean Smart') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jean Smart';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Andy Umberger') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Andy Umberger') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Andy Umberger';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Alison Wright') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Alison Wright') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Alison Wright';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Daeg Faerch') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Daeg Faerch') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Daeg Faerch';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Seth Lee') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Seth Lee') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Seth Lee';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Tait Fletcher') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Tait Fletcher') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Tait Fletcher';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Angel Giuffria') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Angel Giuffria') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Angel Giuffria';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ron Yuan') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ron Yuan') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ron Yuan';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Scott Hunter') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Scott Hunter') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Scott Hunter';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Dennis Keiffer') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Dennis Keiffer') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Dennis Keiffer';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jake Presley') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jake Presley') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jake Presley';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Suceso Real') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Suceso Real'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/76.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/76.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/DBfsgcswlYQ') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/DBfsgcswlYQ'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Suceso Real');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/76.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/DBfsgcswlYQ');
SET @idContenido = 76;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  76,
  'Frank Tassone, uno de los superintendentes más destacados del distrito escolar de Roslyn en Nueva York se desvive a diario para que la educación de sus alumnos sea la mejor. Pero de forma paralela, este se lucra con dinero público para llevar una vida llena de lujos. Así, Tassone y su personal, amigos y familiares, se convierten en los principales sospechosos del mayor escándalo de malversación de fondos ocurrido en una escuela pública de toda la historia de los Estados Unidos. (Algunas personas aprenden de manera difícil.)',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Mala Educación'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suceso Real') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suceso Real') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suceso Real';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Historia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Historia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Historia';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Hugh Jackman') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Hugh Jackman') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Hugh Jackman';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Allison Janney') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Allison Janney') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Allison Janney';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Geraldine Viswanathan') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Geraldine Viswanathan') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Geraldine Viswanathan';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Alex Wolff') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Alex Wolff') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Alex Wolff';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Rafael Casal') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Rafael Casal') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Rafael Casal';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Stephen Spinella') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Stephen Spinella') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Stephen Spinella';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Annaleigh Ashford') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Annaleigh Ashford') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Annaleigh Ashford';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ray Romano') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ray Romano') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ray Romano';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Hari Dhillon') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Hari Dhillon') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Hari Dhillon';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jerremy Shamos') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jerremy Shamos') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jerremy Shamos';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Stephanie Kurtzuba') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Stephanie Kurtzuba') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Stephanie Kurtzuba';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Catherine Curtin') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Catherine Curtin') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Catherine Curtin';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Kathrine Narducci') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Kathrine Narducci') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Kathrine Narducci';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ray Abruzzo') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ray Abruzzo') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ray Abruzzo';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Aventura') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Aventura'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/78.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/78.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/B2G-8raHvOU') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/B2G-8raHvOU'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Aventura');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/78.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/B2G-8raHvOU');
SET @idContenido = 78;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  78,
  'Un padre divorciado trata de establecerse, impresionar a su hijo y encontrar su destino. Él se presenta para un trabajo como vigilante nocturno en el Museo Americano de Historia Natural de la ciudad de Nueva York y, posteriormente, descubre que los objetos expuestos, animados por un artefacto mágico de Egipto, vuelven a la vida durante la noche. Al principio le va muy mal tratando de mantener el orden y la calma en el museo, pero al final se vuelve muy buen amigo de todos y juntos ayudan a recuperar aquel artefacto mágico egipcio, ya que ha sido robado por los antiguos vigilantes del museo.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Noche en el Museo'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Aventura') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Aventura') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Aventura';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Ciencia Ficción') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Ciencia Ficción') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Ciencia Ficción';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Comedia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Comedia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Comedia';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Familia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Familia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Familia';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Acción') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Acción') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Acción';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ben Stiller') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ben Stiller') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ben Stiller';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Robin Williams') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Robin Williams') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Robin Williams';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Carla Gugino') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Carla Gugino') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Carla Gugino';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Dick Van Dyke') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Dick Van Dyke') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Dick Van Dyke';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Steve Coogan') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Steve Coogan') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Steve Coogan';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jake Cherry') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jake Cherry') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jake Cherry';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Mickey Rooney') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Mickey Rooney') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Mickey Rooney';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Bill Cobbs') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Bill Cobbs') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Bill Cobbs';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Owen Wilson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Owen Wilson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Owen Wilson';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ricky Gervais') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ricky Gervais') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ricky Gervais';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Kim Raver') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Kim Raver') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Kim Raver';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Rami Malek') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Rami Malek') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Rami Malek';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Mizuo Peck') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Mizuo Peck') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Mizuo Peck';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Suceso Real') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Suceso Real'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/79.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/79.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/mP0VHJYFOAU') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/mP0VHJYFOAU'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Suceso Real');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/79.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/mP0VHJYFOAU');
SET @idContenido = 79;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  79,
  'Bohemian Rhapsody es una rotunda y sonora celebración de Queen, de su música y de su extraordinario cantante Freddie Mercury, que desafió estereotipos e hizo añicos tradiciones para convertirse en uno de los showmans más queridos del mundo. La película plasma el meteórico ascenso al olimpo de la música de la banda a través de sus icónicas canciones y su revolucionario sonido, su crisis cuando el estilo de vida de Mercury estuvo fuera de control, y su triunfal reunión en la víspera del Live Aid, en la que Mercury, mientras sufría una enfermedad que amenazaba su vida, lidera a la banda en uno de los conciertos de rock más grandes de la historia. Veremos cómo se cimentó el legado de una banda que siempre se pareció más a una familia, y que continúa inspirando a propios y extraños, soñadores y amantes de la música hasta nuestros días.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Bohemian Rhapsody'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suceso Real') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suceso Real') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suceso Real';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Historia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Historia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Historia';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Música') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Música') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Música';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Rami Malek') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Rami Malek') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Rami Malek';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Gwilym Lee') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Gwilym Lee') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Gwilym Lee';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ben Hardy') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ben Hardy') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ben Hardy';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Joseph Mazzello') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Joseph Mazzello') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Joseph Mazzello';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Lucy Boynton') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Lucy Boynton') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Lucy Boynton';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Aidan Gillen') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Aidan Gillen') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Aidan Gillen';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Allen Leech') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Allen Leech') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Allen Leech';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Tom Hollander') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Tom Hollander') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Tom Hollander';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Mike Myers') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Mike Myers') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Mike Myers';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Comedia') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Comedia'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/80.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/80.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/mP0VHJYFOAU') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/mP0VHJYFOAU'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Comedia');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/80.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/mP0VHJYFOAU');
SET @idContenido = 80;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  80,
  'Los Ángeles, 1987: Un aspirante a roquero y una chica que trabajan en el mismo club (Bourbone Room) se enamoran y tratan de impedir que el local caiga en manos de unos empresarios que quieren demolerlo. Esta película es la adaptación cinematográfica del musical homónimo de Broadway.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Rock of ages'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Música') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Música') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Música';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Musical') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Musical') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Musical';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Comedia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Comedia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Comedia';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Romance') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Romance') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Romance';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Julianne Hough') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Julianne Hough') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Julianne Hough';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Diego Boneta') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Diego Boneta') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Diego Boneta';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Tom Cruise') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Tom Cruise') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Tom Cruise';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Alec Baldwin') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Alec Baldwin') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Alec Baldwin';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Russell Brand') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Russell Brand') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Russell Brand';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Malin Åkerman') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Malin Åkerman') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Malin Åkerman';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Paul Giamatti') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Paul Giamatti') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Paul Giamatti';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Bryan Cranston') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Bryan Cranston') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Bryan Cranston';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Catherine Zeta-Jones') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Catherine Zeta-Jones') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Catherine Zeta-Jones';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Mary J. Blige') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Mary J. Blige') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Mary J. Blige';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Erica Frene') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Erica Frene') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Erica Frene';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Shane Hartline') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Shane Hartline') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Shane Hartline';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'James Martin Kelly') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'James Martin Kelly') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'James Martin Kelly';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Will Forte') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Will Forte') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Will Forte';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Eli Roth') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Eli Roth') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Eli Roth';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Ciencia Ficción') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Ciencia Ficción'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/81.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/81.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/QtZ6BQRDk4g') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/QtZ6BQRDk4g'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Ciencia Ficción');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/81.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/QtZ6BQRDk4g');
SET @idContenido = 81;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  81,
  'Año 1979, en un pequeño pueblo de Ohio. Joe Lamb (Joel Courtney) es un muchacho que ha perdido a su madre en un accidente y que vive con su padre policía (Kyle Chandler). Comenzado el verano, y mientras rueda una película de zombis en Super 8 con sus amigos -y sobre todo con la bella Alice Dainard (Elle Fanning)-, Joe observa cómo una camioneta se estrella contra un tren de mercancías, provocando su descarrilamiento y un terrible accidente. A partir de ese momento cosas extrañas e inexplicables comienzan a suceder en el pueblo.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Super 8'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suspenso') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suspenso') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suspenso';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Misterio') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Misterio') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Misterio';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Sci-Fi') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Sci-Fi') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Sci-Fi';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Joel Courtney') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Joel Courtney') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Joel Courtney';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Elle Fanning') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Elle Fanning') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Elle Fanning';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Riley Griffiths') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Riley Griffiths') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Riley Griffiths';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Kyle Chandler') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Kyle Chandler') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Kyle Chandler';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Noah Emmerich') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Noah Emmerich') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Noah Emmerich';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'AJ Michalka') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'AJ Michalka') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'AJ Michalka';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ryan Lee') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ryan Lee') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ryan Lee';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ron Eldard') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ron Eldard') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ron Eldard';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Gabriel Basso') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Gabriel Basso') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Gabriel Basso';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Aventura') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Aventura'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/82.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/82.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/vn9mMeWcgoM') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/vn9mMeWcgoM'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Aventura');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/82.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/vn9mMeWcgoM');
SET @idContenido = 82;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  82,
  'Tras cuatro años de abandono del complejo turístico Jurassic World, la isla Nublar solo está habitada por los dinosaurios supervivientes, pero el volcán inactivo de la isla comienza a cobrar vida, Owen y Claire montan una campaña para rescatar a los dinosaurios restantes en la isla.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Jurassic World - El reino caido'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Aventura') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Aventura') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Aventura';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Acción') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Acción') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Acción';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Sci-Fi') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Sci-Fi') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Sci-Fi';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Chris Pratt') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Chris Pratt') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Chris Pratt';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Bryce Dallas Howard') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Bryce Dallas Howard') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Bryce Dallas Howard';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Rafe Spall') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Rafe Spall') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Rafe Spall';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Justice Smith') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Justice Smith') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Justice Smith';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Daniella Pineda') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Daniella Pineda') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Daniella Pineda';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'James Cromwell') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'James Cromwell') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'James Cromwell';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Toby Jones') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Toby Jones') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Toby Jones';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ted Levine') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ted Levine') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ted Levine';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jeff Goldblum') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jeff Goldblum') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jeff Goldblum';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'BD Wong') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'BD Wong') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'BD Wong';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Geraldine Chaplin') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Geraldine Chaplin') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Geraldine Chaplin';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Isabella Sermon') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Isabella Sermon') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Isabella Sermon';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Kevin Layne') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Kevin Layne') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Kevin Layne';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Aventura') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Aventura'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/83.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/83.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/WAdJf4wTC5Y') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/WAdJf4wTC5Y'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Aventura');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/83.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/WAdJf4wTC5Y');
SET @idContenido = 83;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  83,
  'Guerra Fría (1957). Indiana Jones (Harrison Ford) y su amigo Mac (Ray Winstone) acaban de escapar de las garras de unos agentes soviéticos en un remoto aeropuerto. El decano de la Universidad (Jim Broadbent) le confiesa a su amigo el profesor Jones que las últimas misiones de Indy han fracasado y que está a punto de ser despedido. Mientras tanto, Indiana conoce a Mutt (Shia LaBeouf), un joven rebelde que le propone un trato: si le ayuda a resolver un problema personal, él, a cambio, le facilitaría uno de los descubrimientos más espectaculares de la historia: la Calavera de Cristal de Akator, que se encuentra en un lugar remoto del Perú. Pero los agentes soviéticos, dirigidos por la fría y bella Irina Spalko (Cate Blanchett), tienen el mismo objetivo.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Indiana Jones - y el Reino de la Calavera de Cristal'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Aventura') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Aventura') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Aventura';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Acción') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Acción') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Acción';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Harrison Ford') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Harrison Ford') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Harrison Ford';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Shia LaBeouf') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Shia LaBeouf') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Shia LaBeouf';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Cate Blanchett') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Cate Blanchett') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Cate Blanchett';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Karen Allen') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Karen Allen') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Karen Allen';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ray Winstone') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ray Winstone') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ray Winstone';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'John Hurt') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'John Hurt') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'John Hurt';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jim Broadbent') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jim Broadbent') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jim Broadbent';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Igor Jijikine') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Igor Jijikine') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Igor Jijikine';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Dimitri Diatchenko') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Dimitri Diatchenko') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Dimitri Diatchenko';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Familia') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Familia'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/84.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/84.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/hJ2j4oWdQtU') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/hJ2j4oWdQtU'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Familia');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/84.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/hJ2j4oWdQtU');
SET @idContenido = 84;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  84,
  'Mikey, un muchacho de trece años, que junto con su hermano mayor y sus amigos se hacen llamar ''Los Goonies'', decide subir a jugar al desván de su casa, donde su padre guarda antigüedades. Allí, el grupo encuentra el mapa de un tesoro y emprende un fabuloso viaje para validar la veracidad de dicho mapa, y encontrar ese tesoro tan preciado por estos amigos inseparables.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Los Goonies'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Familia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Familia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Familia';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Aventura') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Aventura') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Aventura';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Acción') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Acción') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Acción';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Sean Astin') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Sean Astin') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Sean Astin';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Josh Brolin') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Josh Brolin') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Josh Brolin';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jeff Cohen') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jeff Cohen') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jeff Cohen';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Corey Feldman') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Corey Feldman') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Corey Feldman';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Kerri Green') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Kerri Green') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Kerri Green';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Martha Plimpton') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Martha Plimpton') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Martha Plimpton';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jonathan Ke Quan') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jonathan Ke Quan') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jonathan Ke Quan';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jogn matuszak') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jogn matuszak') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jogn matuszak';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Robert Davi') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Robert Davi') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Robert Davi';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Familia') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Familia'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/85.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/85.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/SbXIj2T-_uk') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/SbXIj2T-_uk'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Familia');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/85.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/SbXIj2T-_uk');
SET @idContenido = 85;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  85,
  'El aspirante a campeón de carreras Rayo McQueen está sobre la vía rápida al éxito, la fama y todo lo que él había soñado, hasta que por error toma un desvío inesperado en la polvorienta y solitaria Ruta 66. Su actitud arrogante se desvanece cuando llega a una pequeña comunidad olvidada que le enseña las cosas importantes de la vida que había olvidado.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Cars'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Familia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Familia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Familia';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Animación') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Animación') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Animación';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Aventura') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Aventura') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Aventura';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Comedia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Comedia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Comedia';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Owen Wilson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Owen Wilson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Owen Wilson';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Bonnie Hunt') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Bonnie Hunt') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Bonnie Hunt';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Paul Newman') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Paul Newman') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Paul Newman';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Larry the Cable Guy') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Larry the Cable Guy') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Larry the Cable Guy';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Tony Shalhoub') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Tony Shalhoub') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Tony Shalhoub';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Cheech Marin') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Cheech Marin') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Cheech Marin';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Michael Wallis') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Michael Wallis') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Michael Wallis';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'George Carlin') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'George Carlin') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'George Carlin';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Paul Dooley') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Paul Dooley') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Paul Dooley';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Familia') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Familia'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/86.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/86.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/SbXIj2T-_uk') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/SbXIj2T-_uk'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Familia');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/86.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/SbXIj2T-_uk');
SET @idContenido = 86;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  86,
  'Los pingüinos llevan sus misiones en su hábitat en el Parque Central. Aparecen Julien, el rey de los lémures, y sus súbditos Maurice y Mort, sus nuevos vecinos, que constituyen la exhibición de lémures en el zoológico. Ahora los pingüinos deben mantener las cosas bajo control, a menudo a pesar de las payasadas de los lémures así como auxiliar en labores poco comunes o aventuras fuera de lo común. Skipper rara vez llama al Rey Julien por su nombre, dirigiéndose a él siempre como ''Cola anillada'' (por ser un lemur de cola anillada).',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Los pingüinos de Madagascar'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Familia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Familia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Familia';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Animación') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Animación') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Animación';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Aventura') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Aventura') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Aventura';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Comedia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Comedia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Comedia';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'John DiMaggio') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'John DiMaggio') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'John DiMaggio';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Chris Miller') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Chris Miller') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Chris Miller';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Tom McGrath Danny Jacobs') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Tom McGrath Danny Jacobs') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Tom McGrath Danny Jacobs';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Andy Richter') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Andy Richter') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Andy Richter';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Nicole Sullivan Christopher Knights') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Nicole Sullivan Christopher Knights') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Nicole Sullivan Christopher Knights';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Wayne Knight') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Wayne Knight') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Wayne Knight';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Terror') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Terror'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/87.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/87.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/JMao8sg4DPA') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/JMao8sg4DPA'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Terror');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/87.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/JMao8sg4DPA');
SET @idContenido = 87;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  87,
  'Louis Creed, su esposa y sus dos niños se instalan en una vivienda próxima a una carretera con mucho tráfico. Cerca de la casa hay un sendero que lleva a un cementerio de animales y también a un antiguo cementerio indio; según la leyenda, los que sean enterrados allí volverán a la vida. Cuando uno de los niños muere atropellado por un camión, Louis ldecide enterrarlo en el cementerio indio.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Cementerio de animales'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Terror') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Terror') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Terror';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suspenso') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suspenso') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suspenso';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Dale Midkiff') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Dale Midkiff') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Dale Midkiff';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Fred Gwynne') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Fred Gwynne') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Fred Gwynne';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Denise Crosby') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Denise Crosby') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Denise Crosby';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Brad Greenquist') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Brad Greenquist') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Brad Greenquist';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Michael Lombard') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Michael Lombard') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Michael Lombard';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Miko Hughes') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Miko Hughes') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Miko Hughes';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Blaze Berdahl') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Blaze Berdahl') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Blaze Berdahl';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Susan Blommaert') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Susan Blommaert') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Susan Blommaert';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Mara Clark') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Mara Clark') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Mara Clark';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Terror') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Terror'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/88.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/88.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/9eZgEKjYJqA') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/9eZgEKjYJqA'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Terror');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/88.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/9eZgEKjYJqA');
SET @idContenido = 88;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  88,
  'Una familia americana de clase media se traslada a vivir e una nueva casa en un aparentemente idílico barrio, pero dentro de la casa comienzan a suceder cosas extrañas, fenómenos paranormales para los que no hay explicación posible.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Poltergeist'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Terror') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Terror') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Terror';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suspenso') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suspenso') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suspenso';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Craig T. Nelson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Craig T. Nelson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Craig T. Nelson';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'JoBeth Williams') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'JoBeth Williams') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'JoBeth Williams';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Beatrice Straight') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Beatrice Straight') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Beatrice Straight';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Dominique Dunne') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Dominique Dunne') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Dominique Dunne';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Oliver Robins') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Oliver Robins') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Oliver Robins';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Heather O''Rourke') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Heather O''Rourke') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Heather O''Rourke';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Michael McManus') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Michael McManus') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Michael McManus';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Virginia Kiser') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Virginia Kiser') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Virginia Kiser';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Martin Casella') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Martin Casella') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Martin Casella';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Aventura') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Aventura'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/89.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/89.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/lfqHb6INj3w') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/lfqHb6INj3w'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Aventura');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/89.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/lfqHb6INj3w');
SET @idContenido = 89;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  89,
  'El catedrático y afamado simbologista Robert Langdon se ve obligado a acudir una noche al Museo del Louvre, cuando el asesinato de un restaurador deja tras de sí un misterioso rastro de símbolos y pistas. Con la ayuda de la criptógrafa de la policía Sophie Neveu y poniendo en juego su propia vida, Langdon descubre que la obra de Leonardo Da Vinci esconde una serie de misterios que apuntan a una sociedad secreta encargada de custodiar un antiguo secreto que ha permanecido oculto durante dos mil años.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'El código Da Vinci'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Aventura') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Aventura') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Aventura';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suspenso') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suspenso') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suspenso';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Misterio') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Misterio') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Misterio';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Tom Hanks') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Tom Hanks') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Tom Hanks';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Audrey Tautou') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Audrey Tautou') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Audrey Tautou';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ian McKellen') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ian McKellen') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ian McKellen';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jean Reno') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jean Reno') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jean Reno';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Paul Bettany') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Paul Bettany') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Paul Bettany';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Alfred Molina') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Alfred Molina') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Alfred Molina';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jürgen Prochnow') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jürgen Prochnow') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jürgen Prochnow';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jean-Yves Berteloot') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jean-Yves Berteloot') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jean-Yves Berteloot';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Etienne Chicot') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Etienne Chicot') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Etienne Chicot';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Comedia') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Comedia'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/90.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/90.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/EG0MR5dFz7E') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/EG0MR5dFz7E'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Comedia');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/90.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/EG0MR5dFz7E');
SET @idContenido = 90;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  90,
  'Las joyas de la Corona de su Majestad han desaparecido. Detrás de ello se esconde Pascal Sauvage (John Malkovich), que también conspira para hacerse con el trono de la reina. La misión es asignada a Johnny English (Rowan Atkinson), un agente tan entregado al trabajo como inexperto. Desde ese momento la información confidencial, los coches de lujo y la tecnología más sofisticada forman parte de su rutina diaria. Johnny English aún no se lo acaba de creer. Quizás todo esto le venga algo grande, pero su empeño con la misión y dedicación para llegar hasta el final es incuestionable, especialmente después de conocer a la agente doble Lorna Campbell (Natalie Imbruglia). Parece ser que lo de estar enamorado aún hará más emocionante esto de salvar al país.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Johnny English'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Comedia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Comedia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Comedia';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Familia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Familia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Familia';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Acción') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Acción') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Acción';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Rowan Atkinson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Rowan Atkinson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Rowan Atkinson';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Natalie Imbruglia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Natalie Imbruglia') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Natalie Imbruglia';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ben Miller') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ben Miller') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ben Miller';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'John Malkovich') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'John Malkovich') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'John Malkovich';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Greg Wise') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Greg Wise') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Greg Wise';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Tasha de Vasconcelos') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Tasha de Vasconcelos') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Tasha de Vasconcelos';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Douglas McFerran') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Douglas McFerran') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Douglas McFerran';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Steve Nicolson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Steve Nicolson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Steve Nicolson';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Terence Harvey') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Terence Harvey') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Terence Harvey';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Drama'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/91.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/91.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/aQXh_AaJXaM') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/aQXh_AaJXaM'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Drama');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/91.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/aQXh_AaJXaM');
SET @idContenido = 91;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  91,
  'Homenaje al rock de los 70. Gracias a sus buenas críticas musicales, un adolescente que aspira a ser periodista es contratado por la revista ''Rolling Stone'' para cubrir la gira de una famosa banda. A pesar de su juventud y de la oposición de su madre, el chico vivirá con los músicos y sus fans una aventura inolvidable. Basada en la propia experiencia de Crowe.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Almost Famous'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Música') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Música') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Música';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suceso Real') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suceso Real') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suceso Real';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Billy Crudup') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Billy Crudup') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Billy Crudup';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Frances McDormand') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Frances McDormand') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Frances McDormand';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Kate Hudson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Kate Hudson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Kate Hudson';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Patrick Fugit') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Patrick Fugit') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Patrick Fugit';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jason Lee') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jason Lee') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jason Lee';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Zoey Deschanel') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Zoey Deschanel') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Zoey Deschanel';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Michael Angarano') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Michael Angarano') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Michael Angarano';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Anna Paquin') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Anna Paquin') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Anna Paquin';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Fairuzza Balk') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Fairuzza Balk') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Fairuzza Balk';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Comedia') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Comedia'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/92.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/92.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/TExoc0MG4I4') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/TExoc0MG4I4'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Comedia');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/92.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/TExoc0MG4I4');
SET @idContenido = 92;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  92,
  'Dewey Finn -Jack Black- es un guitarrista con delirios de grandeza que es expulsado de su banda. Desesperado por encontrar un trabajo ante su falta de dinero, suplanta la identidad de un profesor sustituto para dar clase en una escuela privada a los pequeños alumnos pre-adolescentes de 5o grado a los que intentará enseñarles el ''rock & roll de alto voltaje''. Además entre sus alumnos está Yuki, un guitarrista prodigio de 9 años que puede ayudar a Dewey a ganar la competición de bandas de música... y de paso solucionar sus problemas económicos.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Escuela de Rock'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Familia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Familia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Familia';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Comedia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Comedia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Comedia';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Música') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Música') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Música';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jack Black') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jack Black') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jack Black';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Joan Cusack') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Joan Cusack') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Joan Cusack';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Mike White') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Mike White') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Mike White';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Sarah Silverman') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Sarah Silverman') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Sarah Silverman';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Lee Wilkof') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Lee Wilkof') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Lee Wilkof';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Kate McGregor-Stewart') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Kate McGregor-Stewart') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Kate McGregor-Stewart';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Adam Pascal') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Adam Pascal') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Adam Pascal';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Suzzane Douglas') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Suzzane Douglas') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Suzzane Douglas';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Miranda Cosgrove') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Miranda Cosgrove') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Miranda Cosgrove';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Familia') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Familia'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/93.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/93.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/jEDaVHmw7r4') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/jEDaVHmw7r4'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Familia');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/93.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/jEDaVHmw7r4');
SET @idContenido = 93;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  93,
  'Kevin McAllister es un niño de ocho años, miembro de una familia numerosa, que accidentalmente se queda abandonado en su casa cuando toda la familia se marcha a pasar las vacaciones a Francia. Kevin aprende a valerse por sí mismo e incluso a protegerse de Harry y Marv, dos bribones que se proponen asaltar todas las casas cerradas de su vecindario. Cuando su madre Kate lo hecha en falta, realiza un pintoresco viaje de vuelta contra reloj a Chicago para recuperar a su hijo.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Mi pobre angelito'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Familia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Familia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Familia';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Comedia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Comedia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Comedia';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Música') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Música') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Música';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Macaulay Culkin') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Macaulay Culkin') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Macaulay Culkin';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Joe Pesci') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Joe Pesci') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Joe Pesci';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Daniel Stern') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Daniel Stern') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Daniel Stern';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'John Heard') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'John Heard') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'John Heard';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Catherine O''Hara') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Catherine O''Hara') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Catherine O''Hara';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Roberts Blossom') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Roberts Blossom') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Roberts Blossom';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Devin Ratray') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Devin Ratray') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Devin Ratray';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Michael C. Maronna') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Michael C. Maronna') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Michael C. Maronna';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Hillary Wolf') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Hillary Wolf') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Hillary Wolf';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Comedia') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Comedia'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/94.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/94.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/tn02SPT6ivM') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/tn02SPT6ivM'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Comedia');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/94.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/tn02SPT6ivM');
SET @idContenido = 94;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  94,
  'Cuando dos cuarentones vendedores de relojes son despedidos de sus respectivos trabajos, convencidos ambos de que no se han adaptado a los cambios de las nuevas tecnologías, deciden empezar de nuevo y buscar trabajo en la empresa más exitosa de Internet: Google. Finalmente consiguen un contrato de prácticas como becarios. La locura comienza cuando se ven compitiendo para conseguir el puesto con jóvenes veinteañeros, mucho más listos y más familiarizados con el mundo digital que ellos.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Aprendices fuera de línea'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Familia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Familia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Familia';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Comedia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Comedia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Comedia';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Owen Wilson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Owen Wilson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Owen Wilson';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Vince Vaughn') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Vince Vaughn') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Vince Vaughn';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Will Ferrell') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Will Ferrell') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Will Ferrell';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Rose Byrne') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Rose Byrne') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Rose Byrne';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Aasif Mandvi') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Aasif Mandvi') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Aasif Mandvi';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Max Minghella') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Max Minghella') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Max Minghella';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Josh Brener') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Josh Brener') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Josh Brener';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Dylan O''Brien') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Dylan O''Brien') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Dylan O''Brien';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Tiya Sircar') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Tiya Sircar') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Tiya Sircar';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Tobit Raphael') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Tobit Raphael') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Tobit Raphael';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Josh Gad') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Josh Gad') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Josh Gad';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jessica Szohr') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jessica Szohr') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jessica Szohr';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Rob Riggle') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Rob Riggle') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Rob Riggle';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Eric André') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Eric André') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Eric André';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Harvey Guillén') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Harvey Guillén') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Harvey Guillén';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Gary Anthony Williams') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Gary Anthony Williams') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Gary Anthony Williams';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Bruno Amato') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Bruno Amato') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Bruno Amato';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'B.J. Novak') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'B.J. Novak') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'B.J. Novak';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Karen Ceesay') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Karen Ceesay') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Karen Ceesay';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'John Goodman') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'John Goodman') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'John Goodman';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Serie') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Serie'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Comedia') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Comedia'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/95.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/95.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/_wR3LhFlgGo') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/_wR3LhFlgGo'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Serie');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Comedia');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/95.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/_wR3LhFlgGo');
SET @idContenido = 95;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  95,
  'Ambientada en el continente estadounidense, una empresa norteamericana que busca reducir los gastos, asciende a su mejor empleado del Call Center, poniéndolo a cargo del mismo. La única condición para dicho empleado, es viajar a la India, lugar en el mundo donde tercerizan el servicio ode atención al cliente, para abaratar costos. Allí, en la Ciudad de Bombay, los nativos le explican la cultura indú a los nóveles norteamericanos, y viceversa. Tendrán que convivir cada uno de los empleados de estos diferentes países, con sus pares y/o jefes opuestos en cultura.',
  1,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Outsourced'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Familia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Familia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Familia';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Comedia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Comedia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Comedia';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Rebecca Hazlewood') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Rebecca Hazlewood') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Rebecca Hazlewood';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Sacha Dhawan') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Sacha Dhawan') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Sacha Dhawan';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Diedrich Bader') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Diedrich Bader') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Diedrich Bader';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Pippa Black') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Pippa Black') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Pippa Black';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Parvesh Ceena') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Parvesh Ceena') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Parvesh Ceena';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Thushari Jayasekera') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Thushari Jayasekera') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Thushari Jayasekera';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Ben Rappaport') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Ben Rappaport') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Ben Rappaport';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Guru Singh') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Guru Singh') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Guru Singh';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Rizwan Manji') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Rizwan Manji') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Rizwan Manji';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Anisha Nagarajan') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Anisha Nagarajan') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Anisha Nagarajan';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Carla Gallo') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Carla Gallo') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Carla Gallo';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Radhika Chaudhari') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Radhika Chaudhari') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Radhika Chaudhari';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Nicholas Logan') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Nicholas Logan') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Nicholas Logan';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Suspenso') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Suspenso'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/96.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/96.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/EgdxIlSuB70') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/EgdxIlSuB70'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Suspenso');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/96.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/EgdxIlSuB70');
SET @idContenido = 96;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  96,
  'Nancy, una estudiante de medicina apasionada del surfing, es una joven que trata de superar la pérdida de su madre. Un día, practicando surf en una solitaria playa mexicana se queda atrapada en un islote a sólo cien metros de la costa. El problema está en que un enorme tiburón blanco se interpone entre ella y la otra orilla.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Miedo Profundo'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suspenso') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suspenso') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suspenso';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Terror') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Terror') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Terror';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Blake Lively') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Blake Lively') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Blake Lively';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Óscar Jaenada') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Óscar Jaenada') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Óscar Jaenada';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Janelle Bailley') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Janelle Bailley') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Janelle Bailley';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Chelsea Moody') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Chelsea Moody') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Chelsea Moody';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Angelo Josue Lozano Corzo') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Angelo Josue Lozano Corzo') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Angelo Josue Lozano Corzo';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'José Manuel Trujillo Salas') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'José Manuel Trujillo Salas') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'José Manuel Trujillo Salas';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Brett Cullen') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Brett Cullen') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Brett Cullen';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Sedona Legge') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Sedona Legge') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Sedona Legge';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Pablo Calva') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Pablo Calva') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Pablo Calva';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Suceso Real') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Suceso Real'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/97.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/97.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT 'https://www.youtube.com/embed/5ZQVpPiOji0') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/5ZQVpPiOji0'
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Suceso Real');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/97.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = 'https://www.youtube.com/embed/5ZQVpPiOji0');
SET @idContenido = 97;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  97,
  'Inspirada en los hechos que tuvieron lugar durante un intento por alcanzar el pico más alto del mundo, narra las peripecias de dos expediciones que se enfrentan a la peor tormenta de nieve conocida. En un desesperado esfuerzo por sobrevivir, el temple de los alpinistas se ve puesto a prueba al tener que enfrentarse a la furia desatada de los elementos y a obstáculos casi insuperables.',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'Everest'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suceso Real') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suceso Real') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suceso Real';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Drama') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Drama') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Drama';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Suspenso') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Suspenso') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Suspenso';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jason Clarke') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jason Clarke') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jason Clarke';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Josh Brolin') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Josh Brolin') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Josh Brolin';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jake Gyllenhaal') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jake Gyllenhaal') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jake Gyllenhaal';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jogn Hawkes') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jogn Hawkes') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jogn Hawkes';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Sam Worthington') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Sam Worthington') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Sam Worthington';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Emily Watson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Emily Watson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Emily Watson';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Martin Henderson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Martin Henderson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Martin Henderson';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Michael Kelly') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Michael Kelly') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Michael Kelly';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Keira Knightley') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Keira Knightley') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Keira Knightley';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Robin Wright') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Robin Wright') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Robin Wright';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Thomas M. Wright') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Thomas M. Wright') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Thomas M. Wright';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Clive StandenNaoko Mori') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Clive StandenNaoko Mori') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Clive StandenNaoko Mori';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Mia Goth') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Mia Goth') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Mia Goth';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Elizabeth Debicki') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Elizabeth Debicki') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Elizabeth Debicki';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Tom Goodman-Hill') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Tom Goodman-Hill') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Tom Goodman-Hill';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Vanessa Kirby') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Vanessa Kirby') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Vanessa Kirby';


-- Insertar Categoria
INSERT INTO Categoria (categoriaName)
SELECT * FROM (SELECT 'Película') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Categoria WHERE categoriaName = 'Película'
) LIMIT 1;

-- Insertar Genero
INSERT INTO Genero (generoName)
SELECT * FROM (SELECT 'Familia') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Genero WHERE generoName = 'Familia'
) LIMIT 1;

-- Insertar Poster
INSERT INTO Poster (postername)
SELECT * FROM (SELECT './posters/98.jpg') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Poster WHERE postername = './posters/98.jpg'
) LIMIT 1;

-- Insertar Trailer
INSERT INTO Trailer (trailername)
SELECT * FROM (SELECT '') AS tmp
WHERE NOT EXISTS (
  SELECT 1 FROM Trailer WHERE trailername = ''
) LIMIT 1;

-- Obtener IDs FK
SET @idCategoria = (SELECT idCategoria FROM Categoria WHERE categoriaName = 'Película');
SET @idGenero = (SELECT idGenero FROM Genero WHERE generoName = 'Familia');
SET @idPoster = (SELECT idPoster FROM Poster WHERE postername = './posters/98.jpg');
SET @idTrailer = (SELECT idTrailer FROM Trailer WHERE trailername = '');
SET @idContenido = 98;

-- Insertar Contenido
INSERT INTO Contenido (idContenido, resumen, temporadas, idPosterContenido, idTrailerContenido, idCategoriaContenido, idGeneroContenido, titulo)
VALUES (
  98,
  'El delirante y gótico estilo de vida de la peculiar familia Addams se ve amenazado peligrosamente cuando el codicioso dúo que forman madre e hijo, con la ayuda de un abogado sin ningún escrúpulos, conspiran para hacerse con la fortuna familiar... (No se pierdan las locutras de Gomez, Morticia, Tío Lucas, Merlina, El tío Cosas, Dedos y Largo)',
  NULL,
  @idPoster,
  @idTrailer,
  @idCategoria,
  @idGenero,
  'La Familia Addams'
);
-- Insertar Tags y asociarlos

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Familia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Familia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Familia';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Comedia') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Comedia') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Comedia';

INSERT INTO Tag (tagName)
SELECT * FROM (SELECT 'Fantasía') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Tag WHERE tagName = 'Fantasía') LIMIT 1;

INSERT INTO ContenidoTag (idContenido, idTag)
SELECT @idContenido, idTag FROM Tag WHERE tagName = 'Fantasía';
-- Insertar Actores y asociarlos

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Raúl Juliá') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Raúl Juliá') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Raúl Juliá';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Anjelica Huston') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Anjelica Huston') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Anjelica Huston';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Christopher Lloyd') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Christopher Lloyd') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Christopher Lloyd';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Christina Ricci') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Christina Ricci') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Christina Ricci';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Carel Struycken') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Carel Struycken') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Carel Struycken';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Dan Hedaya') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Dan Hedaya') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Dan Hedaya';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Jimmy Workman') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Jimmy Workman') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Jimmy Workman';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Elizabeth Wilson') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Elizabeth Wilson') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Elizabeth Wilson';

INSERT INTO Actor (actorName)
SELECT * FROM (SELECT 'Dana Ivey') AS tmp
WHERE NOT EXISTS (SELECT 1 FROM Actor WHERE actorName = 'Dana Ivey') LIMIT 1;

INSERT INTO Reparto (idContenido, idActor)
SELECT @idContenido, idActor FROM Actor WHERE actorName = 'Dana Ivey';

