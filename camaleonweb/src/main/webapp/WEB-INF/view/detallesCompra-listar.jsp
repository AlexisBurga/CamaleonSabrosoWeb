<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Detalles Compras</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css" />
    <style>
        body {
            padding: 20px;
            background-color: #f8f9fa;
        }
        .container {
            max-width: 900px;
            margin: auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            margin-bottom: 20px;
        }
        .table-container {
            margin-top: 20px;
        }
        .table th, .table td {
            vertical-align: middle;
            text-align: center;
        }
        .btn-group {
            display: flex;
            justify-content: space-around;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Detalles de Compras</h1>
        <button class="btn btn-primary" onclick="window.location.href='/camaleonweb/DetallesCompras/findOne?opcion=1'; return false;">
            Agregar Detalle
        </button>
        <div class="table-container">
            <table class="table table-striped table-bordered">
                <thead class="table-dark">
                    <tr>
                        <th>ID Detalle Compra</th>
                        <th>ID Compra</th>
                        <th>ID Producto</th>
                        <th>Cantidad</th>
                        <th>Precio Unitario</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="item" items="${detallesCompras}">
                        <tr>
                            <td>${item.idDetalleCompra}</td>
                            <td>${item.idCompra}</td>
                            <td>${item.idProducto}</td>
                            <td>${item.cantidad}</td>
                            <td>${item.precioUnitario}</td>
                            <td>
                                <div class="btn-group">
                                    <button class="btn btn-warning" onclick="window.location.href='/camaleonweb/DetallesCompras/findOne?idDetalleCompra=${item.idDetalleCompra}&opcion=1'; return false;">
                                        Actualizar
                                    </button>
                                    <button class="btn btn-danger" onclick="window.location.href='/camaleonweb/DetallesCompras/findOne?idDetalleCompra=${item.idDetalleCompra}&opcion=2'; return false;">
                                        Eliminar
                                    </button>
                                </div>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
