var express = require('express');
var router = express.Router();


router.get('/',function(req,res){
	res.render('inicio',{layout:false});
});


module.exports = router;