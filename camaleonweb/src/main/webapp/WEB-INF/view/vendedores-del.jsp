<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="ISO-8859-1">
    <title>Eliminar Vendedor</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
</head>
<body>

<div class="container mt-5">
    <h1>Eliminar Vendedor</h1>
    <div class="alert alert-warning" role="alert">
        <strong>¿Desea eliminar este dato?</strong>
    </div>

    <form action="del" method="get">
        <!-- Campo oculto para el ID de Vendedores -->
        <input type="hidden" id="idvendedores" name="idvendedores" value="${vendedores.idvendedores}" />
        
        <!-- Botón de Confirmar Eliminación -->
        <button type="submit" class="btn btn-danger">Eliminar</button>
        
        <!-- Botón de Cancelar -->
        <button type="button" class="btn btn-secondary" onclick="window.location.href='/Vendedores-web/vendedores/findAll'; return false;">
            Cancelar
        </button>
    </form>
</div>

<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>

</body>
</html>
