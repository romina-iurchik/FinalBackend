# 🎬 TP3 Final Backend - 📄 DOCUMENTACION 📄

##  💪🏼 Desafío de Base de Datos: Trailerflix

##  👩🏼‍🤝‍👩 Integrantes 👩🏼‍🤝‍👩: 
- 🎐 Beverly J.L. Gonzalez
- 🎐 Romina Iurchik
- 🎐 Mariana Jobse

# 📁 Parte 1: Modelo Relacional

## Migrar trailerFlix(NoSQL) hacia un modelo relacional(SQL)

Observando el archivo trailerflix.json (con papel y lápiz en mano): 
- 1. Identificar las propiedades
- 2. Definir atributos
- 3. Establecer relaciones
- 4. Normalizar los datos
- 5. Diseñar el esquema, en nuestro caso utilizamos: DB Designer (https://dbdesigner.page.link/8d4K7rnqkLx5UngQ6)
- 6. Exportar el esquema creado con: "export as sql script"

## En VSC

Definicion de un script para la migracion de los datos json a SQL. En este caso se utilizó OpenIA. 

Se creo el archivo `generateInsertSQL.js` y lo ejecuta el archivo `script.js` quien lee el archivo `trailerflix.json` para convertir el json.

## En MySQLWorkbrench: 
Crear el Schema a utilizar --> `trailerflix`

Seleccionar el Schema creado --> ` use trailerflix;`

Ejecutar el script de creacion de tablas y relaciones exportado desde DB Designer --> `Creo_Trailerflix.sql`

Ejecutar el script de insercion de datos `insert_contenido.sql`

Para ver si los datos se exportaron bien se crea la consulta: `veo_todoelcontenido.sql`

# ![VerTodoElContenido](./src/img/consultaSelectAll.png)


# 🧮 Parte 2: Consultas SQL