var express = require('express');
var router  = express.Router();
var load    = require('../../middleware/load');

router.get('/',function(req,res) {
	res.render('usuarios',{layout:false,mensaje:req.flash('usuarioInsertado')});
});
/*----- Insertar usuario ------*/
router.post('/',function(req,res) {
	var usuarios = load.Model("usuarios");
	usuarios.insertarUsuarios(req.body.txt1);
	req.flash('usuarioInsertado', true);
	res.redirect('/usuarios');
});

module.exports = router;