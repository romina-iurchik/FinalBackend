# 📚 Documentación de Trailerflix

## Índice
- [🎬 Descripción](#descripción)
- [👩🏼‍🤝‍👩 Integrantes](#integrantes)
- [📁 Estructura del Proyecto](#estructura-del-proyecto)
- [🧩 Parte 1: Modelo Relacional](#parte-1-modelo-relacional)
  - [🔗 Diagrama ER](#diagrama-er)
  - [🗄️ Tablas y Relaciones](#tablas-y-relaciones)
- [🧮 Parte 2: Consultas SQL](#parte-2-consultas-sql)
  - [📸 Imágenes de Consultas](#imágenes-de-consultas)
  - [📝 Ejemplos de Consultas](#ejemplos-de-consultas)
- [⚙️ Instalación y Puesta en Marcha](#instalación-y-puesta-en-marcha)
  - [🌱 Variables de Entorno](#variables-de-entorno)
  - [🚀 Levantar el Backend](#levantar-el-backend)
- [🌐 Endpoints de la API](#endpoints-de-la-api)
  - [🔄 Diagrama de Flujo de la API](#diagrama-de-flujo-de-la-api)
  - [🧪 Ejemplos de Respuesta de la API](#ejemplos-de-respuesta-de-la-api)
- [🛠️ Migración de Datos](#migración-de-datos)
- [📦 Recursos y Créditos](#recursos-y-créditos)
- [📝 Notas Finales](#notas-finales)

---

## 🎬 Descripción

Trailerflix es una plataforma de streaming ficticia que permite consultar información sobre películas y series, sus géneros, categorías, actores, tags, posters y trailers. El backend está desarrollado en Node.js con Express y Sequelize, y utiliza MySQL como base de datos relacional. Los datos originales provienen de un archivo JSON y han sido migrados a un modelo relacional.

---

## 👩🏼‍🤝‍👩 Integrantes

- 🎐 Beverly J.L. Gonzalez
- 🎐 Romina Iurchik
- 🎐 Mariana Jobse

---

## 📁 Estructura del Proyecto

```
FinalBackend/
  ├── src/
  │   ├── app.js
  │   ├── config/
  │   │   └── sequelize.js
  │   ├── models/
  │   ├── routes/
  │   │   ├── controllers/
  │   │   └── index.routes.js
  │   ├── schemas/
  │   │   ├── trailerflix.json
  │   │   ├── generateInsertSQL.js
  │   │   ├── script.js
  │   │   └── insert_contenido.sql
  │   └── sql/
  │       ├── Creo_Trailerflix.sql
  │       └── veo_todoelcontenido.sql
  └── README.md
```

---

# 🧩 Parte 1: Modelo Relacional

## 🔗 Diagrama ER

- [Ver diagrama en DB Designer](https://dbdesigner.page.link/8d4K7rnqkLx5UngQ6)

### 🖼️ Diagrama Mermaid del Modelo Relacional

```mermaid
erDiagram
  Catalogo {
    int idCatalogo PK
    string titulo
    string resumen
    int? duracion
    int? temporadas
    string? busqueda
    int idPosterCatalogo FK
    int idTrailerCatalogo FK
    int idCategoriaCatalogo FK
    int idGeneroCatalogo FK
  }
  Categoria {
    int idCategoria PK
    string categoriaName
  }
  Genero {
    int idGenero PK
    string generoName
  }
  Actor {
    int idActor PK
    string actorName
  }
  Tag {
    int idTag PK
    string tagName
  }
  Poster {
    int idPoster PK
    string posterName
  }
  Trailer {
    int idTrailer PK
    string trailerName
  }
  CatalogoTag {
    int idCatalogo PK, FK
    int idTag PK, FK
  }
  Reparto {
    int idCatalogo PK, FK
    int idActor PK, FK
  }
  Catalogo ||--o{ CatalogoTag : ""
  Tag ||--o{ CatalogoTag : ""
  Catalogo ||--o{ Reparto : ""
  Actor ||--o{ Reparto : ""
  Catalogo }o--|| Categoria : ""
  Catalogo }o--|| Genero : ""
  Catalogo }o--|| Poster : ""
  Catalogo }o--|| Trailer : ""
```

### 🗄️ Tablas y Relaciones

- **Tablas principales:**  
  - `Catalogo` (contenido)
  - `Categoria`
  - `Genero`
  - `Actor`
  - `Tag`
  - `Poster`
  - `Trailer`
- **Tablas intermedias:**  
  - `CatalogoTag` (N:M Catalogo-Tag)
  - `Reparto` (N:M Catalogo-Actor)

---

# 🧮 Parte 2: Consultas SQL

## 📸 Imágenes de Consultas

> Agregar aquí img de resultados de consultas en MySQL Workbench:

- ![Consulta: ver todo el contenido](./src/img/consultaSelectAll.png)
- ![Consulta: películas por género](./src/img/ejemplo_peliculas_genero.png)
- ![Consulta: series por actor](./src/img/ejemplo_series_actor.png)

## 📝 Ejemplos de Consultas

- **Ver todo el contenido:**
  ```sql
  SELECT c.idCatalogo, c.titulo, cat.categoriaName, g.generoName
  FROM Catalogo c
  JOIN Categoria cat ON c.idCategoriaCatalogo = cat.idCategoria
  JOIN Genero g ON c.idGeneroCatalogo = g.idGenero;
  ```

- **Películas por género:**
  ```sql
  SELECT c.titulo, g.generoName
  FROM Catalogo c
  JOIN Genero g ON c.idGeneroCatalogo = g.idGenero
  WHERE g.generoName = 'Ciencia Ficción';
  ```

- **Series por actor:**
  ```sql
  SELECT c.titulo, a.actorName
  FROM Catalogo c
  JOIN Reparto r ON c.idCatalogo = r.idCatalogo
  JOIN Actor a ON r.idActor = a.idActor
  WHERE a.actorName = 'Pedro Pascal';
  ```

- **Vista para devolver estructura tipo JSON original:**
  ```sql
  CREATE VIEW vista_trailerflix AS
  SELECT c.*, cat.categoriaName, g.generoName, p.posterName, t.trailerName
  FROM Catalogo c
  JOIN Categoria cat ON c.idCategoriaCatalogo = cat.idCategoria
  JOIN Genero g ON c.idGeneroCatalogo = g.idGenero
  JOIN Poster p ON c.idPosterCatalogo = p.idPoster
  JOIN Trailer t ON c.idTrailerCatalogo = t.idTrailer;
  ```

---

# ⚙️ Instalación y Puesta en Marcha

## 🌱 Variables de Entorno

| Variable         | Descripción                  | Ejemplo           |
|------------------|-----------------------------|-------------------|
| DB_NAME          | Nombre de la base de datos   | trailerflix       |
| DB_USER          | Usuario de MySQL             | root              |
| DB_PASSWORD      | Contraseña de MySQL          | tu_password       |
| DB_HOST          | Host de la base de datos     | localhost         |
| DB_DIALECT       | Dialecto de Sequelize        | mysql             |
| PORT             | Puerto del servidor          | 3000              |

Crea un archivo `.env` en `src/config/` con estos valores.

## 🚀 Levantar el Backend

1. **Clona el repositorio**
   ```sh
   git clone <URL_DEL_REPO>
   cd FinalBackend
   ```

2. **Instala dependencias**
   ```sh
   npm install
   ```

3. **Crea la base de datos y tablas**
   ```sql
   CREATE DATABASE trailerflix;
   USE trailerflix;
   ```
   ```sh
   mysql -u tu_usuario -p trailerflix < src/sql/Creo_Trailerflix.sql
   ```

4. **Carga los datos**
   ```sh
   mysql -u tu_usuario -p trailerflix < src/schemas/insert_contenido.sql
   ```

5. **Inicia el backend**
   ```sh
   node src/app.js
   ```
   El servidor estará en `http://localhost:3000`

---

# 🌐 Endpoints de la API

## 🔄 Diagrama de Flujo de la API

```mermaid
flowchart TD
    A[Cliente (Postman/Frontend)] -->|Request HTTP| B[Servidor Express]
    B -->|Consulta| C[Sequelize ORM]
    C -->|Query| D[(MySQL)]
    D -->|Datos| C
    C -->|Objeto JS| B
    B -->|Response JSON| A
```

## Endpoints REST

| Método | Endpoint | Descripción | Ejemplo |
|--------|----------|-------------|---------|
| GET | `/` | Mensaje de bienvenida | `GET /` |
| GET | `/catalogo` | Todo el contenido | `GET /catalogo` |
| GET | `/peliculas` | Solo películas | `GET /peliculas` |
| GET | `/series` | Solo series | `GET /series` |
| GET | `/titulo/:titulo` | Buscar por título exacto | `GET /titulo/The Mandalorian` |
| GET | `/actores` | Todos los actores | `GET /actores` |
| GET | `/actores/:id/contenido` | Trabajos de un actor | `GET /actores/1/contenido` |
| GET | `/categoria/:categoria` | Filtrar por categoría | `GET /categoria/Serie` |
| GET | `/genero/:tag` | Filtrar por género | `GET /genero/Drama` |
| GET | `/tags` | Todos los tags | `GET /tags` |
| GET | `/tags/:id/contenido` | Contenidos por tag | `GET /tags/2/contenido` |
| GET | `/actor/:name` | Buscar por nombre de actor | `GET /actor/Pedro Pascal` |
| POST | `/catalogo` | Crear nuevo contenido | `POST /catalogo` |
| PUT | `/catalogo/:id` | Editar contenido existente | `PUT /catalogo/99` |
| DELETE | `/catalogo/:id` | Eliminar contenido | `DELETE /catalogo/99` |

---

## 🧪 Ejemplos de Respuesta de la API

### GET `/peliculas`
```json
[
  {
    "idCatalogo": 6,
    "titulo": "Enola Holmes",
    "resumen": "La hermana menor de Sherlock...",
    "duracion": "97 minutos",
    "temporadas": null,
    "busqueda": null,
    "Categoria": { "categoriaName": "Película" }
  }
]
```

### GET `/actores`
```json
[
  { "idActor": 1, "actorName": "Pedro Pascal" },
  { "idActor": 2, "actorName": "Millie Bobby Brown" }
]
```

### GET `/actores/1/contenido`
```json
{
  "actor": "Pedro Pascal",
  "trabajos": [
    { "idCatalogo": 3, "titulo": "The Mandalorian", "resumen": "Ambientada tras la caída del Imperio..." }
  ]
}
```

### GET `/tags`
```json
[
  { "idTag": 1, "tagName": "Drama" },
  { "idTag": 2, "tagName": "Acción" }
]
```

### GET `/tags/2/contenido`
```json
{
  "tag": "Acción",
  "contenidos": [
    { "idCatalogo": 8, "titulo": "Avengers: End Game", "resumen": "Después de los devastadores eventos..." }
  ]
}
```

### GET `/titulo/The Mandalorian`
```json
{
  "titulo": "The Mandalorian",
  "resumen": "Ambientada tras la caída del Imperio y antes de la aparición de la Primera Orden..."
}
```

### POST `/catalogo`
**Body esperado:**
```json
{
  "titulo": "Nueva Película",
  "resumen": "Descripción...",
  "duracion": 120,
  "temporadas": null,
  "idPosterCatalogo": 1,
  "idTrailerCatalogo": 1,
  "idCategoriaCatalogo": 1,
  "idGeneroCatalogo": 1
}
```
**Respuesta:**
```json
{
  "idCatalogo": 99,
  "titulo": "Nueva Película",
  "resumen": "Descripción..."
}
```

### PUT `/catalogo/99`
**Body esperado:**
```json
{
  "titulo": "Película Editada",
  "resumen": "Nueva descripción..."
}
```
**Respuesta:**
```json
{
  "message": "Contenido actualizado correctamente"
}
```

### DELETE `/catalogo/99`
**Respuesta:**
```json
{
  "message": "Contenido eliminado correctamente"
}
```

---

# 🛠️ Migración de Datos

- El archivo `generateInsertSQL.js` genera los INSERTs a partir del JSON.
- El archivo `script.js` ejecuta la migración.
- Los datos se insertan en la base de datos usando el script `insert_contenido.sql`.

---

# 📦 Recursos y Créditos

- [DB Designer](https://dbdesigner.page.link/8d4K7rnqkLx5UngQ6)
- [Express](https://expressjs.com/)
- [Sequelize](https://sequelize.org/)
- [MySQL](https://www.mysql.com/)

---

# 📝 Notas Finales

- Recuerda poblar correctamente la base de datos para que los endpoints funcionen.
- Si tienes dudas, revisa los scripts y modelos en la carpeta `src/`.
- Para cualquier consulta, revisa la documentación incluida o contacta a los integrantes del equipo.

---

> **Autoras:**  
> 🎐 Beverly J. L. Gonzalez Casanova  
> 🎐 Romina del Carmen Iurchik  
> 🎐 Mariana Jobse
