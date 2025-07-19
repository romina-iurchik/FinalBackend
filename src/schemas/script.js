const fs = require('fs');
const generateInsertSQL = require('./generateInsertSQL');

// Cargar JSON con los datos
const data = require('./trailerflix.json'); // Poné la ruta correcta de tu JSON

let finalSQL = '';

// Generar SQL para cada objeto en el JSON
data.forEach(item => {
  finalSQL += generateInsertSQL(item) + '\n';
});

// Guardar todo el SQL generado en un archivo
fs.writeFileSync('insert_contenido.sql', finalSQL, 'utf8');

console.log('✔ Script SQL generado exitosamente como insert_contenido.sql');