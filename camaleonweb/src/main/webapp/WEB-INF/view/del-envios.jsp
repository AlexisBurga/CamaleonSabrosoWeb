<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Eliminar Envio</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        body {
            background-color: #f0f4f8;
            font-family: 'Georgia', serif; /* Estilo de letra */
            padding: 20px;
        }
        h1 {
            text-align: center;
            color: #007bff;
            margin-bottom: 20px;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.1);
            animation: fadeIn 1s;
        }
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
        form {
            max-width: 500px;
            margin: 0 auto;
            background-color: white;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            border: 1px solid #e0e0e0;
            transition: transform 0.3s;
        }
        form:hover {
            transform: translateY(-5px);
        }
        strong {
            display: block;
            margin-bottom: 15px;
            color: #333;
            font-weight: bold;
            text-align: center;
        }
        button {
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 10px;
            transition: background-color 0.3s, transform 0.3s;
            display: block;
            width: 100%;
            font-family: 'Georgia', serif; /* Estilo de letra */
        }
        button.guardar {
            background-color: #28a745; /* Verde */
        }
        button.guardar:hover {
            background-color: #218838; /* Verde m�s oscuro */
            transform: scale(1.05);
        }
        button.cancelar {
            background-color: #dc3545; /* Rojo */
        }
        button.cancelar:hover {
            background-color: #c82333; /* Rojo m�s oscuro */
            transform: scale(1.05);
        }
        button:active {
            transform: scale(0.95);
        }
    </style>
</head>
<body>
    <h1>Eliminar Envio</h1>

    <form action="/camaleonweb/envios/delete" method="post">
        <input type="hidden" id="idEnvios" name="idEnvios" value="${envios.idEnvios}" />
        
        <strong>�Desea eliminar este env�o?</strong>
        
        <button type="submit" class="guardar">Eliminar</button>
        <button type="button" class="cancelar" onclick="window.location.href='/camaleonweb/envios/findAll'; return false;">
            Cancelar
        </button>
    </form>
</body>
</html>