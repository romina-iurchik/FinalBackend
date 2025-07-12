-- CREATE DATABASE trailerflix
-- CHARACTER SET utf8mb4
-- COLLATE utf8mb4_unicode_ci;

-- use trailerflix;

CREATE TABLE IF NOT EXISTS `Categoria` (
	`idCategoria` int AUTO_INCREMENT NOT NULL UNIQUE,
	`categoriaName` varchar(255) NOT NULL UNIQUE,
	PRIMARY KEY (`idCategoria`)
);

CREATE TABLE IF NOT EXISTS `Tag` (
	`idTag` int AUTO_INCREMENT NOT NULL UNIQUE,
	`tagName` varchar(50) NOT NULL UNIQUE,
	PRIMARY KEY (`idTag`)
);

CREATE TABLE IF NOT EXISTS `Genero` (
	`idGenero` int AUTO_INCREMENT NOT NULL UNIQUE,
	`generoName` varchar(50) NOT NULL UNIQUE,
	PRIMARY KEY (`idGenero`)
);

CREATE TABLE IF NOT EXISTS `Poster` (
	`idPoster` int AUTO_INCREMENT NOT NULL UNIQUE,
	`postername` varchar(255) NOT NULL UNIQUE,
	PRIMARY KEY (`idPoster`)
);

CREATE TABLE IF NOT EXISTS `Trailer` (
	`idTrailer` int AUTO_INCREMENT NOT NULL UNIQUE,
	`trailerName` text NOT NULL,
	PRIMARY KEY (`idTrailer`)
);

CREATE TABLE IF NOT EXISTS `Actor` (
	`idActor` int AUTO_INCREMENT NOT NULL UNIQUE,
	`actorName` varchar(50) NOT NULL UNIQUE,
	PRIMARY KEY (`idActor`)
);

CREATE TABLE IF NOT EXISTS `Contenido` (
  `idContenido` int AUTO_INCREMENT NOT NULL UNIQUE,
  `resumen` text NOT NULL,
  `temporadas` int NULL DEFAULT NULL,
  `idPosterContenido` int NOT NULL,
  `idTrailerContenido` int NOT NULL,
  `idCategoriaContenido` int NOT NULL,
  `idGeneroContenido` int NOT NULL,
  `titulo` varchar(255),
  PRIMARY KEY (`idContenido`)
);

CREATE TABLE IF NOT EXISTS `Reparto` (
	`idActor` int NOT NULL,
	`idContenido` int NOT NULL,
	PRIMARY KEY (`idActor`, `idContenido`)
);

CREATE TABLE IF NOT EXISTS `ContenidoTag` (
	`idContenido` int NOT NULL,
	`idTag` int NOT NULL,
	PRIMARY KEY (`idContenido`, `idTag`)
);







ALTER TABLE `Contenido` ADD CONSTRAINT `Contenido_fk3` FOREIGN KEY (`idPosterContenido`) REFERENCES `Poster`(`idPoster`);

ALTER TABLE `Contenido` ADD CONSTRAINT `Contenido_fk4` FOREIGN KEY (`idTrailerContenido`) REFERENCES `Trailer`(`idTrailer`);

ALTER TABLE `Contenido` ADD CONSTRAINT `Contenido_fk5` FOREIGN KEY (`idCategoriaContenido`) REFERENCES `Categoria`(`idCategoria`);

ALTER TABLE `Contenido` ADD CONSTRAINT `Contenido_fk6` FOREIGN KEY (`idGeneroContenido`) REFERENCES `Genero`(`idGenero`);
ALTER TABLE `Reparto` ADD CONSTRAINT `Reparto_fk0` FOREIGN KEY (`idActor`) REFERENCES `Actor`(`idActor`);

ALTER TABLE `Reparto` ADD CONSTRAINT `Reparto_fk1` FOREIGN KEY (`idContenido`) REFERENCES `Contenido`(`idContenido`);
ALTER TABLE `ContenidoTag` ADD CONSTRAINT `ContenidoTag_fk0` FOREIGN KEY (`idContenido`) REFERENCES `Contenido`(`idContenido`);

ALTER TABLE `ContenidoTag` ADD CONSTRAINT `ContenidoTag_fk1` FOREIGN KEY (`idTag`) REFERENCES `Tag`(`idTag`);



