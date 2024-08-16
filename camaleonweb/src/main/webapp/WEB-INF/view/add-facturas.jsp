<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title><c:choose>
               <c:when test="${not empty factura}">Actualizar</c:when>
               <c:otherwise>Agregar</c:otherwise>
           </c:choose> Factura</title>
</head>
<body>

    <h1><c:choose>
            <c:when test="${not empty factura}">Actualizar</c:when>
            <c:otherwise>Agregar</c:otherwise>
        </c:choose> Factura</h1>

    <form action="/camaleonweb/facturas/add" method="post">
        <input type="hidden" name="idFactura" value="${factura.idFactura}" />
        
        <label for="total">Total:</label>
        <input type="text" id="total" name="total" value="${factura.total}" required />
        <br />
        
        <label for="idPedido">ID Pedido:</label>
        <input type="text" id="idPedido" name="idPedido" value="${factura.idPedido}" required />
        <br />
        
        <label for="idTipoPago">ID Tipo Pago:</label>
        <input type="text" id="idTipoPago" name="idTipoPago" value="${factura.idTipoPago}" required />
        <br />
        
        <button type="submit">Guardar</button>
    </form>

    <a href="/camaleonweb/facturas/findAll">Cancelar</a>

</body>
</html>
