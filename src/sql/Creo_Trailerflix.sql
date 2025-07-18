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
    `trailerName` varchar(255) NOT NULL,
    PRIMARY KEY (`idTrailer`)
);

CREATE TABLE IF NOT EXISTS `Actor` (
    `idActor` int AUTO_INCREMENT NOT NULL UNIQUE,
    `actorName` varchar(50) NOT NULL UNIQUE,
    PRIMARY KEY (`idActor`)
);

CREATE TABLE IF NOT EXISTS `Catalogo` (
    `idCatalogo` int AUTO_INCREMENT NOT NULL UNIQUE,
    `resumen` TEXT NOT NULL,
    `duracion` varchar(50) NULL DEFAULT NULL,
    `busqueda` varchar(255) NULL DEFAULT NULL,
    `temporadas` int NULL DEFAULT NULL,
    `idPosterCatalogo` int NOT NULL,
    `idTrailerCatalogo` int NOT NULL,
    `idCategoriaCatalogo` int NOT NULL,
    `idGeneroCatalogo` int NOT NULL,
    `titulo` varchar(255) NOT NULL,
    PRIMARY KEY (`idCatalogo`)
);

CREATE TABLE IF NOT EXISTS `Reparto` (
    `idActor` int NOT NULL,
    `idCatalogo` int NOT NULL,
    PRIMARY KEY (`idActor`, `idCatalogo`)
);

CREATE TABLE IF NOT EXISTS `CatalogoTag` (
    `idCatalogo` int NOT NULL,
    `idTag` int NOT NULL,
    PRIMARY KEY (`idCatalogo`, `idTag`)
);


ALTER TABLE `Catalogo` ADD CONSTRAINT `Catalogo_fk3` FOREIGN KEY (`idPosterCatalogo`) REFERENCES `Poster`(`idPoster`);

ALTER TABLE `Catalogo` ADD CONSTRAINT `Catalogo_fk4` FOREIGN KEY (`idTrailerCatalogo`) REFERENCES `Trailer`(`idTrailer`);

ALTER TABLE `Catalogo` ADD CONSTRAINT `Catalogo_fk5` FOREIGN KEY (`idCategoriaCatalogo`) REFERENCES `Categoria`(`idCategoria`);

ALTER TABLE `Catalogo` ADD CONSTRAINT `Catalogo_fk6` FOREIGN KEY (`idGeneroCatalogo`) REFERENCES `Genero`(`idGenero`);

ALTER TABLE `Reparto` ADD CONSTRAINT `Reparto_fk0` FOREIGN KEY (`idActor`) REFERENCES `Actor`(`idActor`);

ALTER TABLE `Reparto` ADD CONSTRAINT `Reparto_fk1` FOREIGN KEY (`idCatalogo`) REFERENCES `Catalogo`(`idCatalogo`);

ALTER TABLE `CatalogoTag` ADD CONSTRAINT `CatalogoTag_fk0` FOREIGN KEY (`idCatalogo`) REFERENCES `Catalogo`(`idCatalogo`);

ALTER TABLE `CatalogoTag` ADD CONSTRAINT `CatalogoTag_fk1` FOREIGN KEY (`idTag`) REFERENCES `Tag`(`idTag`);
