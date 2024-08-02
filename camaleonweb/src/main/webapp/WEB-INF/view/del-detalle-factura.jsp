<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Eliminar Detalle de Factura</title>
</head>
<body>
<h2>Eliminar Detalle de Factura</h2>
<p>¿Estás seguro que deseas eliminar el detalle de factura con ID: ${Detalle_factura.idDetalleFactura}?</p>
<form action="del" method="get">
    <input type="hidden" name="idDetalle_factura" value="${Detalle_factura.idDetalleFactura}"/>
    <button type="submit">Eliminar</button>
</form>
<a href="findAll">Cancelar</a>
</body>
</html>
