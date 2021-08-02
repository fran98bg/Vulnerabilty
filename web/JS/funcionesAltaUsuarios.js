/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function resetearFormulario(){
    document.getElementById("formularioAlta").reset();
    var avisoContrasena = document.getElementById("avisoContrasena");
    
    avisoContrasena.innerHTML="-------";
    avisoContrasena.style.color="black";
    var btnEnviarDatos = document.getElementById("btnEnviarDatos");
        
    btnEnviarDatos.disabled = true;
}

function usuarioGeneradoAutomaticamente(){
    var nombre = document.getElementById("txtNombre");
    var apellido = document.getElementById("txtApellido");
    var usuarioGeneradoAutomaticamente = document.getElementById("txtUsuarioGenerado");
    
    var resultadoCombinado = nombre.value.slice(0,3) + apellido.value.slice(0,3)+"@hotmail.com";
    
    usuarioGeneradoAutomaticamente.value = resultadoCombinado; 
    
    if(nombre.value.length == 0 || apellido.value.length == 0){
        usuarioGeneradoAutomaticamente.value = "";
    }
    
    
    function coincidirContrasena(){
        var txtContrasena = document.getElementById("txtContrasena");
        
        var txtRepetirContrasena = document.getElementById("txtRepetirContrasena");
        
        var avisoContrasena = document.getElementById("avisoContrasena");
        var btnEnviarDatos = document.getElementById("btnEnviarDatos");
        
        btnEnviarDatos.disabled = true;
        if(txtContrasena.value.length == 0 || txtRepetirContrasena.value.length==0){
            avisoContrasena.innerHTML = "Ninguna contraseña puede quedar vacía";
            avisoContrasena.style.color="blue";
            btnEnviarDatos.disabled = true;
        }else if(txtContrasena.value!=txtRepetirContrasena.value){
            avisoContrasena.innerHTML = "Las contraseñas no coinciden";
            avisoContrasena.style.color="red"; 
            btnEnviarDatos.disabled = true;
        }else{
            avisoContrasena.innerHTML = "Las contraseñas coinciden";
            avisoContrasena.style.color="green"; 
            btnEnviarDatos.disabled = false;
        }
    }
}