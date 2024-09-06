<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Eliminar Platillo</title>
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
        .platillo-details {
            margin-bottom: 20px;
            text-align: left;
            color: #495057;
        }
        .platillo-details strong {
            display: block;
            margin-bottom: 5px;
        }
        .platillo-image {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <h1>Eliminar Platillo</h1>
    <form action="del" method="get">
        <input type="hidden" id="idPlatillos" name="idPlatillos" value="${platillo.idPlatillos}" />
        
        <div class="platillo-image">
            <img alt="Imagen del platillo" width="250" height="250"
                 src="${pageContext.request.contextPath}/resources/img/${platillo.imagen}"
                 onerror="this.onerror=null; this.src='${pageContext.request.contextPath}/resources/img/default.jpg';" />
        </div>
        
        <div class="platillo-details">
            <strong>Platillo:</strong> ${platillo.platillo}
            <strong>Descripción:</strong> ${platillo.descripcion}
        </div>
        
        <strong>¿Desea eliminar este platillo?</strong>
        
        <button type="submit">Eliminar</button>
        <button type="button" class="cancel-button" onclick="window.location.href='/Trabajogrupalv1/platillos/findAll'; return false;">
            Cancelar
        </button>
    </form>
</body>
</html>
