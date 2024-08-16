<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Eliminar Detalle de Factura</title>
</head>
<body>
<h1>Eliminar Detalle de Factura</h1>

<form action="del" method="post">
    <input type="hidden" id="idDetalle_factura" name="idDetalle_factura" value="${Detalle_factura.idDetalleFactura}" />
    
    <strong>¿Deseas eliminar el detalle de factura con ID: ${Detalle_factura.idDetalleFactura}?</strong>
    <br/><br/>
    
    <!-- Botón para confirmar eliminación -->
    <button type="submit">Eliminar</button>
    
    <!-- Botón para cancelar y regresar a la lista -->
    <button onclick="window.location.href='/ismac-libreria-web/Detallefacturas/findAll'; return false;">
        Cancelar
    </button>
</form>

</body>
</html>
