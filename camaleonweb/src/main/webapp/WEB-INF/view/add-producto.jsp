<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Producto</title>
    <link href="https://fonts.googleapis.com/css2?family=Lora:wght@400;700&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Lora', serif;
            background-color: #f9f3f6;
            color: #333;
            margin: 0;
            padding: 20px;
        }
        h1 {
            color: #ff6f61;
            text-align: center;
            margin-bottom: 20px;
            font-family: 'Playfair Display', serif;
        }
        .form-container {
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
            color: #ff6f61;
        }
        .form-group input {
            width: calc(100% - 22px);
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 16px;
        }
        button {
            background-color: #ff6f61;	
            color: #fff;
            border: none;
            border-radius: 4px;
            padding: 10px 15px;
            cursor: pointer;
            font-size: 16px;
            margin-right: 10px;
            transition: background-color 0.3s ease;
        }
        button:hover {
            background-color: #ff9bb0;
        }
        .cancel-button {
            background-color: #f44336;
        }
        .cancel-button:hover {
            background-color: #c62828;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h1>Producto</h1>

        <form action="add" method="post">
            <!-- Eliminar campo idProducto si es autogenerado -->
                        <input type="hidden" id=idProducto name="idProducto" value="${producto.idProducto}" />
            
            <div class="form-group">
                <label for="nombre">Nombre:</label>
                <input type="text" id="nombre" name="nombre" value="${producto.nombre}" required />
            </div>
            
            <div class="form-group">
                <label for="descripcion">Descripción:</label>
                <input type="text" id="descripcion" name="descripcion" value="${producto.descripcion}" required />
            </div>
            
            <div class="form-group">
                <label for="precio">Precio:</label>
                <input type="number" id="precio" name="precio" value="${producto.precio}" step="0.01" required />
            </div>
            
            <div class="form-group">
                <label for="stock">Stock:</label>
                <input type="number" id="stock" name="stock" value="${producto.stock}" required />
            </div>
            
            <button type="submit">Guardar</button>
            <button type="button" class="cancel-button" onclick="window.location.href='/ProyectoWeb/productos/findAll';">Cancelar</button>
        </form>
    </div>
</body>
</html>
