<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Agregar/Editar Detalle de Factura</title>
</head>
<body>
<h2>
    <c:choose>
        <c:when test="${not empty Detalle_factura}">Editar</c:when>
        <c:otherwise>Agregar</c:otherwise>
    </c:choose> Detalle de Factura
</h2>
<form action="add" method="post">
    <input type="hidden" name="idDetalle_factura" value="${Detalle_factura.idDetalleFactura}"/>

    <label>Cantidad:</label>
    <input type="number" name="cantidad" value="${Detalle_factura.cantidad}" required/><br/>

    <label>Precio Unitario:</label>
    <input type="number" step="0.01" name="precio_unitario" value="${Detalle_factura.precioUnitario}" required/><br/>

    <label>ID Factura:</label>
    <input type="number" name="id_factura" value="${Detalle_factura.idFactura}" required/><br/>

    <label>ID Producto:</label>
    <input type="number" name="id_producto" value="${Detalle_factura.idProducto}" required/><br/>

    <button type="submit">Guardar</button>
</form>
<a href="findAll">Cancelar</a>
</body>
</html>
