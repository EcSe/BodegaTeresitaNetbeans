<%-- 
    Document   : listaprod
    Created on : 15-sep-2017, 12:07:02
    Author     : elvinsallinas
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="daoImpl.productosDAOImpl"%>
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
                <table class="tablaDatos">
                    <tr>
                        <th>Codigo</th>
                        <th>Nombre</th>
                        <th>Precio</th>
                        <th>Stock</th>
                    </tr>
                    
                    <jsp:useBean class="daoImpl.productosDAOImpl" id="prod"></jsp:useBean>
                    <c:forEach items="${prod.lista()}" var="p">
                        <tr>
                            <td>${p.idproductos}</td>
                            <td>${p.nombre}</td>
                            <td>${p.precio}</td>
                            <td>${p.stock}</td>
                        </tr>                  
                    </c:forEach>       
                </table>
            </div>
                
    </body>
</html>
