<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Agregar Detalle de Compra</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
    <style>
        body {
            padding: 20px;
            background-color: #f8f9fa;
        }
        .form-container {
            max-width: 600px;
            margin: auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        .form-container h1 {
            margin-bottom: 20px;
            font-size: 1.5em;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .btn-group {
            display: flex;
            justify-content: space-between;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h1>Agregar Detalle de Compra</h1>
        <form action="add" method="post">
            <input type="hidden" id="idDetalleCompra" name="idDetalleCompra" value="${detallesCompra.idDetalleCompra}"/>

            <div class="form-group">
                <label for="idCompra" class="form-label">ID Compra</label>
                <input type="number" class="form-control" id="idCompra" name="idCompra" value="${detallesCompra.idCompra}" required>
            </div>

            <div class="form-group">
                <label for="idProducto" class="form-label">ID Producto</label>
                <input type="number" class="form-control" id="idProducto" name="idProducto" value="${detallesCompra.idProducto}" required>
            </div>

            <div class="form-group">
                <label for="cantidad" class="form-label">Cantidad</label>
                <input type="number" class="form-control" id="cantidad" name="cantidad" value="${detallesCompra.cantidad}" required>
            </div>

            <div class="form-group">
                <label for="precioUnitario" class="form-label">Precio Unitario</label>
                <input type="number" class="form-control" id="precioUnitario" name="precioUnitario" value="${detallesCompra.precioUnitario}" required>
            </div>

            <div class="btn-group">
                <button type="submit" class="btn btn-success">Guardar</button>
                <button type="button" class="btn btn-secondary" onclick="window.location.href='/compra-web-online/DetallesCompras/findAll'; return false;">Cancelar</button>
            </div>
        </form>
    </div>
</body>
</html>
