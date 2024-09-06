<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Eliminar Detalle de Compra</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
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
        <h2>Eliminar Detalle de Compra</h2>
        <form action="del" method="get">
            <input type="hidden" id="idDetalleCompra" name="idDetalleCompra" value="${detallesCompra.idDetalleCompra}"/>
            <strong>¿Desea eliminar este dato?</strong>
            <div class="btn-group">
                <button type="submit" class="btn btn-danger">Eliminar</button>
                <button type="button" class="btn btn-secondary" onclick="window.location.href='/compra-web-online/DetallesCompras/findAll'; return false;">Cancelar</button>
            </div>
        </form>
    </div>
</body>
</html>
