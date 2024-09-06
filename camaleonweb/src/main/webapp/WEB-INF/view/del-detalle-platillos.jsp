<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Eliminar Detalle Platillo</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f9fa;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            flex-direction: column;
        }
        h1 {
            color: #343a40;
            text-align: center;
            margin-bottom: 20px;
            position: absolute;
            top: 20px;
            width: 100%;
        }
        form {
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            width: 350px;
            text-align: center;
            margin-top: 60px;
        }
        button {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
            margin: 10px 0;
            width: 100%;
            transition: background-color 0.3s;
        }
        button:hover {
            background-color: #0056b3;
        }
        .cancel-button {
            background-color: #dc3545;
        }
        .cancel-button:hover {
            background-color: #c82333;
        }
        .detalle-platillo-details {
            margin-bottom: 20px;
            text-align: left;
            color: #495057;
        }
        .detalle-platillo-details strong {
            display: block;
            margin-bottom: 5px;
        }
        .platillo-image {
            margin-bottom: 20px;
        }
        .platillo-image img {
            width: 250px;
            height: 250px;
            object-fit: cover;
        }
    </style>
</head>
<body>
    <h1>Eliminar Detalle Platillo</h1>
    <form action="del" method="get">
        <input type="hidden" id="idDetallePlatillos" name="idDetallePlatillos" value="${detallePlatillo.idDetallePlatillos}" />
        
        <div class="platillo-image">
            <img alt="Imagen del detalle del platillo" 
                 src="${pageContext.request.contextPath}/resources/img/${detallePlatillo.imagen}" 
                 onerror="this.onerror=null; this.src='${pageContext.request.contextPath}/resources/img/default.jpg';" />
        </div>
        
        <div class="detalle-platillo-details">
            <strong>Ingrediente:</strong> ${detallePlatillo.ingrediente}
            <strong>Descripción:</strong> ${detallePlatillo.descripcion}
        </div>
        
        <strong>¿Desea eliminar este detalle de platillo?</strong>
        
        <button type="submit">Eliminar</button>
        <button type="button" class="cancel-button" onclick="window.location.href='${pageContext.request.contextPath}/detallePlatillos/findAll'; return false;">
            Cancelar
        </button>
    </form>
</body>
</html>

