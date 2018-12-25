var db = require('../../config/database');

module.exports = {

	diezProductos:function(rel){
                db.query('select * from productos LIMIT 10',function(err,result,field){
                        return rel(result);
                });
        },
        
        buscarProducto:function(dato,callback){
        
                db.query(`select * from productos where nombre like '%${dato}%'`,function(err,result,field){
                        return callback(result);
                });
        },

        guardarCotizacion:function(idproducto,cantidad,precio){

                db.query(`select precio_de_compra,precio_de_venta from productos where idproducto = ${idproducto}`,function(err,result,field){
                        var precio_de_compra = result[0]["precio_de_compra"];
                        var precio_de_venta = result[0]["precio_de_venta"];
                        var ganancias = (Number(precio_de_venta) - Number(precio_de_compra)) * Number(cantidad);
                        db.query(`INSERT INTO ventas(idproducto, cantidad, ventas_total, ganancias) VALUES ('${idproducto}','${cantidad}','${precio}','${ganancias}')`);

                });
        }

};

