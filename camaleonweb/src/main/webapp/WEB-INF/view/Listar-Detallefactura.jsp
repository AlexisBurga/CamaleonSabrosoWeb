<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Listar Detalles de Facturas</title>
</head>
<body>
    <h2>Lista de Detalles de Facturas</h2>

    <c:if test="${not empty Detalle_facturas}">
        <table border="1">
            <tr>
                <th>ID Detalle Factura</th>
                <th>Cantidad</th>
                <th>Precio Unitario</th>
                <th>ID Factura</th>
                <th>ID Producto</th>
                <th>Acciones</th>
            </tr>
            <c:forEach var="detalle" items="${Detalle_facturas}">
                <tr>
                    <td>${detalle.idDetalleFactura}</td>
                    <td>${detalle.cantidad}</td>
                    <td>${detalle.precioUnitario}</td>
                    <td>${detalle.idFactura}</td>
                    <td>${detalle.idProducto}</td>
                    <td>
                        <a href="findOne?idDetalle_factura=${detalle.idDetalleFactura}&opcion=1">Editar</a>
                        <a href="del?idDetalle_factura=${detalle.idDetalleFactura}">Eliminar</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </c:if>

    <c:if test="${empty Detalle_facturas}">
        <p>No hay detalles de facturas disponibles.</p>
    </c:if>

    <a href="findOne?opcion=1">Agregar Nuevo Detalle de Factura</a>

</body>
</html>
