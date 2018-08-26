var db = require('../../config/database');

module.exports = {

	insertarUsuarios:function(nombre){
		db.query(`INSERT INTO usuarios (idusuarios, nombre) VALUES (NULL, '${nombre}');`);

	},

};

