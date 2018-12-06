<%-- 
    Document   : registrar
    Created on : 5/12/2018, 09:37:32 PM
    Author     : Alfredo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="nuevoUsuario" method="post" action="NuevoUsuarioSer">
            <br>Nickname: <input type="text" name="nickname">
            <br>CURP: <input type="text" name="curp">
            <br>Nombre: <input type="text" name="nombre">
            <br>Telefono: <input type="text" name="telefono">
            <br>Email: <input type="text" name="email">
            <br>Edad: <input type="text" name="edad">
            <br>Direccion: <input type="text" name="direccion">
            <br>Código postal: <input type="text" name="codigoPostal">
            <br><input type="submit" value="Registrar">
        </form>
        
    </body>
</html>
