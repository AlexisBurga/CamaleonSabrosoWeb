<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Listar Facturas</title>
</head>
<body>

    <h2>Lista de Facturas</h2>
    
    <!-- Botón para agregar una nueva factura -->
    <button onclick="window.location.href='/camaleonweb/facturas/findOne?opcion=1'; return false;">
        Agregar Nueva Factura
    </button>
    
    <c:if test="${not empty facturas}">
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Total</th>
                    <th>ID Pedido</th>
                    <th>ID Tipo Pago</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="factura" items="${facturas}">
                    <tr>
                        <td>${factura.idFactura}</td>
                        <td>${factura.total}</td>
                        <td>${factura.idPedido}</td>
                        <td>${factura.idTipoPago}</td>
                        <td>
                            <!-- Botón para editar la factura -->
                            <button onclick="window.location.href='/camaleonweb/facturas/findOne?idFactura=${factura.idFactura}&opcion=1'; return false;">
                                Editar
                            </button>
                            <!-- Botón para eliminar la factura -->
                            <button onclick="window.location.href='/camaleonweb/facturas/del?idFactura=${factura.idFactura}'; return false;">
                                Eliminar
                            </button>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </c:if>
    
    <c:if test="${empty facturas}">
        <p>No hay facturas disponibles.</p>
    </c:if>
    
</body>
</html>
