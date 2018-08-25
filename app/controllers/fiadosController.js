var express = require('express');
var router = express.Router();

router.get('/',function(req,res){
	res.render('fiados',{layout:false});
});

router.get('/:id',function(req,res){
	res.render('fiadosDetalles',{layout:false});
});

module.exports = router;