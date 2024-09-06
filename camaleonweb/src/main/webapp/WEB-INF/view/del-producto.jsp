<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Eliminar Producto</title>
    <link href="https://fonts.googleapis.com/css2?family=Lora:wght@400;700&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Lora', serif;
            background-color: #f9f3f6;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #ff6f61;
            font-family: 'Playfair Display', serif;
            margin-bottom: 20px;
            font-size: 2.5em;
        }
        .info {
            margin: 20px 0;
            padding: 20px;
            background-color: #fef2f2;
            border: 1px solid #f7c6c7;
            border-radius: 8px;
        }
        .info strong {
            display: block;
            margin-bottom: 10px;
            font-size: 1.2em;
            color: #ff6f61;
        }
        .info p {
            margin: 5px 0;
            font-size: 1em;
            color: #333;
        }
        button {
            padding: 10px 20px;
            font-size: 1em;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin: 10px;
            transition: background-color 0.3s, transform 0.3s;
        }
        button:hover {
            transform: scale(1.05);
        }
        .btn-submit {
            background-color: #ff6f61;
            color: white;
        }
        .btn-submit:hover {
            background-color: #e55d4a;
        }
        .btn-cancel {
            background-color: #ff9bb0;
            color: white;
        }
        .btn-cancel:hover {
            background-color: #ff6f61;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Eliminar Producto</h1>
    <div class="info">
        <strong>Detalles del Producto:</strong>
        <p><strong>Nombre:</strong> ${producto.nombre}</p>
        <p><strong>Descripción:</strong> ${producto.descripcion}</p>
        <p><strong>Precio:</strong> ${producto.precio}</p>
        <p><strong>Stock:</strong> ${producto.stock}</p>
    </div>

    <form action="${pageContext.request.contextPath}/productos/del" method="get">
        <input type="hidden" name="idProducto" value="${producto.idProducto}" />
        <p><strong>¿Desea eliminar este producto?</strong></p>
        <button type="submit" class="btn-submit">Eliminar</button>
        <button type="button" class="btn-cancel"  onclick="window.location.href='/ProyectoWeb/productos/findAll';">Cancelar</button>
    </form>
</div>

</body>
</html>
