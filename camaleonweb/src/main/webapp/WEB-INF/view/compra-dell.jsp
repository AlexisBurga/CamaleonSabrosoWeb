<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Eliminar Compra</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css" />
    <style>
        body {
            padding: 20px;
            background-color: #f8f9fa;
        }
        .form-container {
            max-width: 500px;
            margin: auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        .form-container strong {
            display: block;
            margin-bottom: 15px;
            font-size: 1.2em;
        }
        .btn-group {
            display: flex;
            justify-content: space-between;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <form action="del" method="get">
            <input type="hidden" id="idCompra" name="idCompra" value="${Compra.idCompra}">
            <strong>¿Desea eliminar este dato?</strong>
            <div class="mb-3">
                <label for="idCompra" class="form-label">ID de Compra</label>
                <input type="text" class="form-control" id="idCompra" name="idCompra" value="${Compra.idCompra}" readonly>
            </div>
            <div class="mb-3">
                <label for="fechaCompra" class="form-label">Fecha de Compra</label>
                <input type="date" class="form-control" id="fechaCompra" name="fechaCompra" value="${fn:substring(Compra.fechaCompra,0,10)}" readonly>
            </div>
            <div class="btn-group">
                <button type="submit" class="btn btn-danger">Eliminar</button>
                <button type="button" class="btn btn-secondary" onclick="window.location.href='/compra-web-online/compras/findAll'; return false;">Cancelar</button>
            </div>
        </form>
    </div>
</body>
</html>
