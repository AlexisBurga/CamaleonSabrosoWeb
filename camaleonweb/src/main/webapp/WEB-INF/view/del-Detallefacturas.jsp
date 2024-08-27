<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Eliminar Detalle de Factura</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
</head>
<body>

<section class="container mt-5">
    <h2>Eliminar Detalle de Factura</h2>
    <form action="${pageContext.request.contextPath}/Detallefacturas/del" method="get">
        <input type="hidden" name="idDetalle_factura" value="${Detalle_factura.idDetalleFactura}">

        <!-- Mostrar información del detalle de la factura -->
        <div class="mb-3">
            <label>ID Detalle Factura:</label>
            <p>${Detalle_factura.idDetalleFactura}</p>
        </div>
        <div class="mb-3">
            <label>ID Factura:</label>
            <p>${Detalle_factura.idFactura}</p>
        </div>
        <div class="mb-3">
            <label>ID Producto:</label>
            <p>${Detalle_factura.idProducto}</p>
        </div>
        <div class="mb-3">
            <label>Cantidad:</label>
            <p>${Detalle_factura.cantidad}</p>
        </div>
        <div class="mb-3">
            <label>Precio Unitario:</label>
            <p>${Detalle_factura.precioUnitario}</p>
        </div>

        <p>¿Está seguro que desea eliminar este detalle de factura?</p>
        <button type="submit" class="btn btn-danger">Eliminar</button>
        <a href="${pageContext.request.contextPath}/Detallefacturas/findAll" class="btn btn-secondary">Cancelar</a>
    </form>
</section>

<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
</body>
</html>
