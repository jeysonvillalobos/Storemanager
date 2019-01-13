var db = require('../../config/database');

module.exports = {

	ventas:function(rel){
            db.query('select productos.nombre,ventas.cantidad,productos.precio_de_venta,productos.precio_de_compra,ventas.ventas_total,ventas.ganancias from ventas inner JOIN productos on productos.idproducto = ventas.idproducto',function(err,result,field){
                    return rel(result);
             });
        },
        gananciasYtotal:function(rel){
                db.query("select sum(ventas_total) as 'total_ventas', sum(ganancias) as 'ganancias' from ventas",function(err,result,field){
                        return rel(result);
                });
        },
};

