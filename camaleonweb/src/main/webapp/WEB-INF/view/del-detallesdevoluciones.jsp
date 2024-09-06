<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="ISO-8859-1">
    <title>Eliminar Detalle de Devolución</title>
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
        }

        .container {
            width: 70%;
            max-width: 900px;
            margin: 60px auto;
            padding: 30px;
            background-color: #fff;
            border-radius: 12px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
            text-align: center;
        }

        .details {
            margin: 20px 0;
            padding: 20px;
            background-color: #f0f4f7;
            border-left: 5px solid #4CAF50; /* Verde claro */
            border-radius: 6px;
            text-align: left;
        }

        .details strong {
            display: block;
            margin-bottom: 15px;
            font-size: 1.4em;
            color: #333;
        }

        .details p {
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
            background-color: #4CAF50; /* Verde claro */
            color: white;
        }

        .btn-submit:hover {
            background-color: #45a049; /* Verde más oscuro */
        }

        .btn-cancel {
            background-color: #3498db; /* Azul */
            color: white;
        }

        .btn-cancel:hover {
            background-color: #2980b9; /* Azul más oscuro */
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Eliminar Detalle de Devolución</h1>

        <div class="details">
            <strong>¿Desea eliminar el siguiente dato?</strong>
            <p><strong>ID Detalle Devolución:</strong> ${detalleDevolucion.idDetalleDevolucion}</p>
            <!-- Agrega más detalles si es necesario -->
        </div>

        <form action="del" method="get">
            <input type="hidden" id="idDetalleDevolucion" name="idDetalleDevolucion" value="${detalleDevolucion.idDetalleDevolucion}" />
            
            <div class="button-group">
                <button type="submit" class="btn-submit">Eliminar</button>
                <button type="button" class="btn-cancel" onclick="window.location.href='/ProyectoWeb/findAll';">Cancelar</button>
            </div>
        </form>
    </div>
</body>
</html>
