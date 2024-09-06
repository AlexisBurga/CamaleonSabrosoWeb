<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Eliminar Bodega</title>
<style>
    body {
        font-family: Arial, sans-serif;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        background-color: #d8cfc4; /* Color ropa palo (beige pálido) */
        text-align: center;
    }

    h1 {
        font-size: 3rem; /* Tamaño grande para el título */
        color: #ff69b4; /* Color rosado claro */
        font-style: italic; /* Letra cursiva */
        margin-bottom: 30px; /* Espacio debajo del título */
    }

    form {
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    button {
        padding: 15px 30px;
        font-size: 18px;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        color: white;
        text-align: center;
        transition: background-color 0.3s ease, transform 0.3s ease, box-shadow 0.3s ease;
        margin: 10px;
    }

    button[type="submit"] {
        background-color: #ff69b4; /* Color rosado claro */
    }

    button[type="submit"]:hover {
        background-color: #ff1493; /* Color rosado más oscuro */
        transform: scale(1.05);
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.3);
    }

    button[type="button"] {
        background-color: #9370db; /* Color morado */
    }

    button[type="button"]:hover {
        background-color: #8a2be2; /* Color morado más oscuro */
        transform: scale(1.05);
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.3);
    }

    .fa-trash-can, .fa-ban {
        margin-right: 8px;
    }
</style>
</head>
<body>

    <h1>Bodegas</h1>

    <form action="del" method="get">
        <input type="hidden" id="idBodegas" name="idBodegas" value="${bodegas.idBodegas}" />
        
        <strong>¿DESEAS BORRAR ESTA BODEGA?</strong>
        <br/>
        <button type="submit">
            <i class="fa-solid fa-trash-can" style="color: #ff0000;"></i>
            BORRAR
        </button>
        
        <button type="button" onclick="window.location.href='/camaleonweb/bodegas/findAll'; return false;">
            <i class="fa-solid fa-ban" style="color: #800040;"></i>
            CANCELAR
        </button>
    </form>

</body>
</html>


