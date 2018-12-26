var express = require('express');
var router = express.Router();
var load = require('../middleware/load');

/* ---------  staticPages --------- */
router.use('/',load.Controller('staticPages'));


/* ---------  venderController --------- */
router.use('/vender',load.Controller('venderController'));

/* ---------  fiadosController --------- */
router.use('/fiados',load.Controller('fiadosController'));

/* ---------  clientesController --------- */
router.use('/clientes',load.Controller('clientesController'));

/* ---------  productosController --------- */
router.use('/productos',load.Controller('productosController'));



module.exports = router;
