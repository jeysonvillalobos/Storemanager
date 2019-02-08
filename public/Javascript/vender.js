
var table = document.getElementById("tablaProductos");
var tablaProductosDB = document.getElementById("tablaProductosDB");
var totalPrecio = document.getElementById("totalPrecio");
var productos = [];
var txtbuscarProductos = document.getElementById("txtbuscarProductos");
var btnCotizar = document.getElementById("btnCotizar");

traerProductosDB();

txtbuscarProductos.onkeyup = function(){

   (async () => {
        const rawResponse = await fetch('/vender/buscarProducto', {
          method: 'POST',
          headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
          },
          body: JSON.stringify({dato: txtbuscarProductos.value})
        });
        const content = await rawResponse.json();
        
            tablaProductosDB.innerHTML = `
            <tr>
                <th>Nombre</th>
                <th>Precio</th> 
                <th>Cantidad</th>
                <th>Agregar</th>
          </tr>`;

        llenarTablaProductos(content);

      })();

}

btnCotizar.onclick = function(){
     var dineroRecibido = prompt("Ingresa el dinero que recibiste", "");
    if (dineroRecibido != "") {
        var sum = 0;
        for(let i = 0; i < productos.length;i++){
            sum = Number(sum) + Number(productos[i].precio);
        }

        if(Number(dineroRecibido) >=  Number(sum)){
            var devuelta = Number(dineroRecibido) - Number(sum);
            alert('La devuelta es de: $' + devuelta.toLocaleString());
            (async () => {
                const rawResponse = await fetch('/vender/guardarCotizacion', {
                method: 'POST',
                headers: {
                    'Accept': 'application/json',
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({productos: productos})
                });
            })();
            productos = [];
            table.innerHTML = `
            <tr>
                <th>Nombre</th>
                <th>Precio</th> 
                <th>Cantidad</th>
          </tr>`;

          totalPrecio.innerHTML = "Total: $ 0";
          txtbuscarProductos.value = "";
          txtbuscarProductos.focus();
            
        }
        else{
            alert('El dinero recibido es de $' +  dineroRecibido.toLocaleString() + ' y la cuenta es de $' + sum.toLocaleString() + ' el dinero recibido no alcanza.');
        }
    }
    else{
        alert("No dejes el espacio en blanco");
    }


    

}


function traerProductosDB(){

    (async () => {
        const rawResponse = await fetch('/vender/diezProductos', {
          method: 'POST',
          headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
          },
          body: JSON.stringify({dato: 'Buen'})
        });
        const content = await rawResponse.json();

        llenarTablaProductos(content);
      })();
}


function llenarTablaProductos(datos){
    
    for(let p = 0; p < datos.length;p++)
    {
        let row = tablaProductosDB.insertRow(1);
        let TableDBNombre = row.insertCell(0);
        let TableDBPrecio = row.insertCell(1);
        let TableDBCantidad = row.insertCell(2);
        let TableDBAgregar = row.insertCell(3);

        TableDBNombre.innerHTML = datos[p].nombre;
        TableDBPrecio.innerHTML = '$ '+datos[p].precio_de_venta.toLocaleString();
        TableDBCantidad.innerHTML = `<input type="number" value="1" id="cantidad${datos[p].idproducto}">`;
        TableDBAgregar.innerHTML =  `<a href="#" onclick="agregar(${datos[p].idproducto},'${datos[p].nombre}','${datos[p].precio_de_venta}',document.getElementById('cantidad${datos[p].idproducto}').value,Math.round(Math.random() * ((1000+1)-1)+1))">Agregar</a>`;
    }
}


function agregar(id,nombre,precio,cantidad,codigo){
    var precioProducto = Number(precio) * Number(cantidad);
    productos.push({
        id:id,
        nombre:nombre,
        precio:precioProducto,
        cantidad:cantidad,
        codigo:codigo
    });

    var row = table.insertRow(1);

    var TableNombre = row.insertCell(0);
    var TablePrecio = row.insertCell(1);
    var TableCantidad = row.insertCell(2);
    var TableCodigo = row.insertCell(3);
    
    row.onclick = function(){
        var codigo  = table.rows[row.rowIndex].cells[3].innerHTML;
        eliminarItem(row.rowIndex,codigo);
    }

    TableNombre.innerHTML = nombre;
    TablePrecio.innerHTML = precio;
    TableCantidad.innerHTML = cantidad;
    TableCodigo.innerHTML = codigo;
    TableCodigo.style.display = "none";
    total();
}

function eliminarItem(rowIndex,codigo){
    table.deleteRow(rowIndex);
    
    var index = productos.findIndex(item => item.codigo == codigo);
    productos.splice(index,1);
    total();
}

function total(){
    var sum = 0;
    for(let i = 0; i < productos.length;i++){
        sum = Number(sum) + Number(productos[i].precio);
    }

    totalPrecio.innerHTML = "Total: $ " + sum.toLocaleString();
}
