var express = require('express');
var router = express.Router();

router.get('/',function(req,res){
	res.render('fiados',{layout:false});
});

module.exports = router;