<%-- 
    Document   : index
    Created on : 17-sep-2017, 16:17:03
    Author     : elvinsallinas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="encabezadoestilos.jsp"></jsp:include>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bodega Teresita</title>
    </head>
    <body>
        <form action="validarUsuario" method="post">
            <table>
                <tr>
                    <td>Usuario</td>
                    <td><input type="text" name="txtUsuario"></td>
                </tr>
                <tr>
                    <td>Contraseña</td>
                    <td><input type="password" name="txtClave"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Ingresar"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
