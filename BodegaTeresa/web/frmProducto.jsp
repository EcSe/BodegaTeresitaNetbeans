<%-- 
    Document   : frmProducto
    Created on : 15-sep-2017, 12:03:57
    Author     : elvinsallinas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="estilos.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <div class="principal">
            <div class="encabezado"></div>
            <div class="menu">
                <jsp:include page="menu.jsp"></jsp:include>
            </div>
            <div class="contenido">
                <form action="productoservlet" method="POST">
                    <input type="hidden" name="accion" value="agregarprod">
                    <table class="tablaFrm">
                        <tr>
                            <td>Nombre Producto</td>
                            <td><input type="text" name="txtnombre"></td>
                        </tr>
                        <tr>
                            <td>Precio</td>
                            <td><input type="text" name="txtprecio"></td>
                        </tr>
                        <tr>
                            <td>Stock</td>
                            <td><input type="text" name="txtstock"></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Agregar"></td>
                        </tr>
                    </table>
                    ${mensaje}
                </form>
            </div>
        </div>
    </body>
</html>
