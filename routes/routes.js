var express = require('express');
var router = express.Router();
var load = require('../middleware/load');



/* ---------  Static Pages --------- */

router.use('/',load.Controller('staticPages'));




module.exports = router;
