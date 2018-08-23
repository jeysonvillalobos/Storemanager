var express = require('express');
var router = express.Router();
var load = require('../middleware/load');

/* ---------  staticPages --------- */
router.use('/',load.Controller('staticPages'));


/* ---------  productosController --------- */
router.use('/productos',load.Controller('productosController'));

/* ---------  fiadosController --------- */
router.use('/fiados',load.Controller('fiadosController'));




module.exports = router;
