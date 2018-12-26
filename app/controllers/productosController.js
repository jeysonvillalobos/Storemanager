var express = require('express');
var router = express.Router();
var load    = require('../../middleware/load');
var productos = load.Model("productos");

router.get('/',function(req,res){
	res.render('productos',{layout:false,mensaje:req.flash('productoInsertado')});
});

router.post('/agregarProducto',function(req,res){
    var datosProducto = [{
        nombre:req.body.txtNombre,
        PrecioCompra:req.body.txtPrecioCompra,
        PrecioVenta:req.body.txtPrecioVenta,
        Cantidad:req.body.txtCantidad
    }];
    
    productos.agregarProducto(datosProducto);
    req.flash('productoInsertado', true);
	res.redirect('/productos');

});

module.exports = router;