<%-- 
    Document   : login
    Created on : 15 jul 2021, 16:16:05
    Author     : Fran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <% 
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setDateHeader("Expires", 0);
        %>
    </head>
    <body>
        <div class="cuerpoFormulario" id="cuerpoFormulario">
            <form class="formularioLogin" id="formularioLogin">
                <h1>Inicio Sesion</h1>
                
                <p>Usuario:</p>
                <div class="texto">
                    <input type="text" class="txt" id="txtUsuario" required=""/>
                </div>
                
                <p>Contraseña:</p>
                <div class="texto">
                    <input type="password" class="txt" id="txtContrasena" required=""/>
                </div>
                <br>
                
                <input type="submit" value="Iniciar Sesion" class="btn">
                <input type="button" value="Borrar Datos" class="btn" onclick="resetearFormularioLogin()">
            </form>
            
        </div>
    </body>
    <script src="JS/funcionesLogin.js"></script>
</html>
