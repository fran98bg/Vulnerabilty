<%-- 
    Document   : altaUsuario
    Created on : 15 jul 2021, 16:15:55
    Author     : Fran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
                <% 
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setDateHeader("Expires", 0);
        %>
    </head>
    <body>
        <div class="cuerpoFormulario" id="cuerpoFormulario">
            <form class="formularioAlta" id="formularioAlta" method="POST" action="Guardar">
                <h1>Regristro</h1>
                <label>CURP</label> <input type="txt" class="txt" id="txtCurp" required="" name="txtCurp">
                <br>
                <br>
                <label>Nombre</label> <input type="txt" class="txt" id="txtNombre" required="" name="txtNombre" onkeyup="usuarioGeneradoAutomaticamente()">
                <br>
                <br>
                <label>Apellidos</label> <input type="txt" class="txt" id="txtApellido" name="txtApellido" required="" onkeyup="usuarioGeneradoAutomaticamente()">
               <br>
                <br>
                <label>Contraseña</label> <input type="password" class="txt" id="txtContrasena" required="" onkeyup="coincidirContrasena()">
                <label>Repite Contraseña</label> <input type="password" class="txt" id="txtRepetirContrasena" name="txtContrasena" onkeyup="coincidirContrasena() required="">
                <br>
                <br>
                <label class="avisoContrasena" id="avisoContrasena">-------</label>
                <br>
                <br>
                <label>Usuario Generado</label> <input type="txt" class="txt" id="txtUsuarioGenerado" required="" readonly="" name="txtUsuarioGenerado">
            <br>
                <br>
            <input type="submit" value="Enviar Datos" class="btn" id="btnEnviarDatos"/>
            <input type="button" value="Borrar Datos" class="btn" id="btnBorrarDatos" onclick="resetearFormulario()"/>
            </form>
            
            
        </div>
    </body>
    <script src="JS/funcionesAltaUsuarios.js"></script>
</html>
