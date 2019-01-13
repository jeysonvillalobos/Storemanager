var txtUsuario = document.getElementById("txtUsuario");
var txtContrasena = document.getElementById("txtContrasena");
var botonLogin = document.getElementById("botonLogin");
var login = document.getElementById("login");
var contenedor = document.getElementById("contenedor");

function LoginValidation(){
    if(txtUsuario.value == "jeyson" && txtContrasena.value == "23214723"){
        login.style.display = 'none';
        contenedor.style.display = 'block';
    }
    else{
        alert("Error contraseña incorrecta.");
    }
}

botonLogin.onclick = function(){
    LoginValidation();
}

txtContrasena.onkeyup = function(e){
    if(e.keyCode == 13){
        LoginValidation();
    }
}