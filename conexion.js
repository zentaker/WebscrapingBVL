var mysql = require('mysql');

var conexion = mysql.createConnection({
    host: 'localhost',
    database: 'stocks',
    user: 'root',
    password: ''
});

conexion.connect(function(error) {
    if (error) {
        throw error;
    } else {
        console.log('conexion exitosa');
    }
});

conexion.query('INSERT INTO alicorp SET ?', { nombre: 'alicorp', precio: '12', hora: 'prueva', fecha: 'prueva', acronimo: "prueva" }, function (error, results, fields) {
    if (error) throw error;
    console.log(results.insertId);
});

conexion.end();
