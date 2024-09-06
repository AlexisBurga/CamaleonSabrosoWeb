<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="ISO-8859-1">
<title>Eliminar Devolución</title>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;700&display=swap');

    body {
        font-family: 'Playfair Display', serif;
        background: linear-gradient(to right, #ece9e6, #ffffff);
        margin: 0;
        padding: 0;
        color: #333;
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
    h1 {
        color: #ff6b6b;
        margin-bottom: 20px;
        font-size: 2.5em;
    }
    .info {
        margin: 20px 0;
        padding: 20px;
        background-color: #f0f4f7;
        border-left: 5px solid #ff6b6b;
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
        background-color: #ff6b6b;
        color: white;
    }
    .btn-submit:hover {
        background-color: #ff5252;
    }
    .btn-cancel {
        background-color: #4CAF50;
        color: white;
    }
    .btn-cancel:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>

<div class="container">
    <h1>Eliminar Devolución</h1>
    <div class="info">
        <strong>Detalles de la Devolución:</strong>
        <p><strong>ID de Devolución:</strong> ${devoluciones.idDevolucion}</p>
        <p><strong>ID de Pedido:</strong> ${devoluciones.idPedido}</p>
        <p><strong>Fecha de Devolución:</strong> ${devoluciones.fechaDevolucion}</p>
        <p><strong>Motivo:</strong> ${devoluciones.motivo}</p>
    </div>

    <form action="del" method="get">
        <input type="hidden" id="idDevolucion" name="idDevolucion" value="${devoluciones.idDevolucion}" />
        
        <strong>¿Desea eliminar este dato?</strong>
        <br/>
        
        <button type="submit" class="btn-submit">Eliminar</button>
        
        <button type="button" class="btn-cancel" onclick="window.location.href='/ProyectoWeb/devoluciones/findAll';">Cancelar</button>
    </form>
</div>

</body>
</html>
