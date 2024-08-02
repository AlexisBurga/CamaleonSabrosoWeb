<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Eliminar Factura</title>
</head>
<body>
<h2>Eliminar Factura</h2>
<p>¿Estás seguro que deseas eliminar la factura con ID: ${factura.idFactura}?</p>
<form action="del" method="get">
    <input type="hidden" name="idFactura" value="${factura.idFactura}"/>
    <button type="submit">Eliminar</button>
</form>
<a href="findAll">Cancelar</a>
</body>
</html>
