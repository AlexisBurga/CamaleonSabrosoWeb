<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="ISO-8859-1">
    <title>Eliminar Inventario</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;700&display=swap');

        body {
            font-family: 'Playfair Display', serif;
            background: linear-gradient(to right, #ece9e6, #ffffff);
            margin: 0;
            padding: 0;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        h1 {
            color: #4CAF50; /* Verde claro */
            margin-bottom: 20px;
            font-size: 2.5em;
            text-align: center;
        }

        .container {
            width: 90%;
            max-width: 600px;
            margin: 50px auto;
            padding: 30px;
            background-color: #fff;
            border-radius: 12px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
            text-align: center;
        }

        .info {
            margin: 20px 0;
            padding: 20px;
            background-color: #e9f5e9;
            border-left: 5px solid #4CAF50; /* Verde claro */
            border-radius: 6px;
            text-align: left;
        }

        .info strong {
            display: block;
            margin-bottom: 15px;
            font-size: 1.4em;
            color: #333;
        }

        .info p {
            margin: 5px 0;
            font-size: 1.1em;
        }

        button {
            padding: 12px 25px;
            font-size: 1.2em;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            margin: 15px;
            transition: background-color 0.3s, transform 0.3s;
            outline: none;
        }

        button:hover {
            transform: translateY(-3px);
        }

        .btn-submit {
            background-color: #ff4d4d; /* Rojo */
            color: white;
        }

        .btn-submit:hover {
            background-color: #e63946; /* Rojo más oscuro */
        }

        .btn-cancel {
            background-color: #28a745; /* Verde */
            color: white;
        }

        .btn-cancel:hover {
            background-color: #218838; /* Verde más oscuro */
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Eliminar Inventario</h1>
    <div class="info">
        <strong>Detalles del Inventario:</strong>
        <p><strong>ID de Inventario:</strong> ${inventarios.idInventario}</p>
        <p><strong>ID de Producto:</strong> ${inventarios.idProducto}</p>
        <p><strong>ID de Bodega:</strong> ${inventarios.idBodega}</p>
        <p><strong>Cantidad:</strong> ${inventarios.cantidad}</p>
    </div>

    <form action="del" method="get">
        <input type="hidden" id="idInventario" name="idInventario" value="${inventarios.idInventario}" />
        
        <strong>¿Está seguro de que desea eliminar este dato?</strong>
        <br/>
        
        <div class="button-group">
            <button type="submit" class="btn-submit">Eliminar</button>
            <button type="button" class="btn-cancel" onclick="window.location.href='/ProyectoWeb/inventarios/findAll';">Cancelar</button>
        </div>
    </form>
</div>

</body>
</html>
