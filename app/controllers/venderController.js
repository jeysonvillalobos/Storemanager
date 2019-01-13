var express = require("express");
var router = express.Router();
var load    = require('../../middleware/load');
var productos = load.Model("productos");
var ventas = load.Model("ventas");

router.get('/',function(req,res){
	res.render('vender',{layout:false});
});

router.post('/buscarProducto',function(req,res){

	var dato = req.body.dato;
	productos.buscarProducto(dato,function(rel){
		res.json(rel);
	});

});

router.post('/diezProductos',function(req,res){

	productos.diezProductos(function(dato){
		res.json(dato);
	});

});

router.post('/guardarCotizacion',function(req,res){
	var pro = req.body.productos;

	for(let i = 0; i < pro.length; i++){
		productos.guardarCotizacion(pro[i].id,pro[i].cantidad,pro[i].precio);
	}

	return;
});

router.get('/ventas',function(req,res){
	ventas.ventas(function(dato){
		ventas.gananciasYtotal(function(datos){
			res.render('ventas',{ventas:dato,gananciasYtotal:datos,layout:false});
		});
	});
	
});

module.exports = router;