<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Agregar/Editar Detalle de Factura</title>
</head>
<body>
<h2><c:choose><c:when test="${not empty Detalle_factura}">Editar</c:when><c:otherwise>Agregar</c:otherwise></c:choose> Detalle de Factura</h2>
<form action="add" method="post">
    <input type="hidden" name="idDetalle_factura" value="${Detalle_factura.idDetalleFactura}"/>
    <label>Cantidad:</label>
    <input type="text" name="cantidad" value="${Detalle_factura.cantidad}" required/><br/>
    <label>Subtotal:</label>
    <input type="text" name="subtotal" value="${Detalle_factura.subtotal}" required/><br/>
    <label>ID Factura:</label>
    <input type="text" name="id_factura" value="${Detalle_factura.idFactura}" required/><br/>
    <label>ID Libro:</label>
    <input type="text" name="id_libro" value="${Detalle_factura.idLibro}" required/><br/>
    <button type="submit">Guardar</button>
</form>
<a href="findAll">Cancelar</a>
</body>
</html>
/html>