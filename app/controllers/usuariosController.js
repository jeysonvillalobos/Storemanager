var express = require('express');
var router = express.Router();

router.get('/',function(req,res){
	res.render('usuarios',{layout:false});
});




module.exports = router;