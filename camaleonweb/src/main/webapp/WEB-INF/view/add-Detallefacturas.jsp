<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="ISO-8859-1">
    <title>Agregar/Editar Detalle de Factura</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
</head>
<body>

<div class="container mt-5">
    <h2>
        <c:choose>
            <c:when test="${not empty Detalle_factura}">Editar</c:when>
            <c:otherwise>Agregar</c:otherwise>
        </c:choose> Detalle de Factura
    </h2>
    <form action="${pageContext.request.contextPath}/Detallefacturas/add" method="post" class="mt-4">
        <input type="hidden" name="idDetalle_factura" value="${Detalle_factura.idDetalleFactura}"/>

        <div class="mb-3">
            <label for="cantidad" class="form-label">Cantidad:</label>
            <input type="number" id="cantidad" name="cantidad" class="form-control" value="${Detalle_factura.cantidad}" required/>
        </div>

        <div class="mb-3">
            <label for="precio_unitario" class="form-label">Precio Unitario:</label>
            <input type="number" id="precio_unitario" name="precio_unitario" class="form-control" step="0.01" value="${Detalle_factura.precioUnitario}" required/>
        </div>

        <div class="mb-3">
            <label for="id_factura" class="form-label">ID Factura:</label>
            <input type="number" id="id_factura" name="id_factura" class="form-control" value="${Detalle_factura.idFactura}" required/>
        </div>

        <div class="mb-3">
            <label for="id_producto" class="form-label">ID Producto:</label>
            <input type="number" id="id_producto" name="id_producto" class="form-control" value="${Detalle_factura.idProducto}" required/>
        </div>

        <button type="submit" class="btn btn-primary">Guardar</button>
        <a href="${pageContext.request.contextPath}/Detallefacturas/findAll" class="btn btn-secondary">Cancelar</a>
    </form>
</div>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
</body>
</html>
