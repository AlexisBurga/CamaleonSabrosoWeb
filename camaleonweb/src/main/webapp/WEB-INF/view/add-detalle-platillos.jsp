<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Gestión de Detalle Platillos</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

<nav></nav>
<section class="px-5 py-5">
    <div class="container">
        <h1>Gestión de Detalle Platillos</h1>
        <form action="add" method="post" class="needs-validation" novalidate>
            <input type="hidden" id="idDetallePlatillos" name="idDetallePlatillos" value="${detallePlatillo.idDetallePlatillos}" />
            
            <div class="form-group">
                <label for="ingrediente" class="form-label">Ingrediente</label>
                <input type="text" class="form-control" id="ingrediente" name="ingrediente" value="${detallePlatillo.ingrediente}" required>
            </div>
            
            <div class="form-group">
                <label for="descripcion" class="form-label">Descripción</label>
                <input type="text" class="form-control" id="descripcion" name="descripcion" value="${detallePlatillo.descripcion}" required>
            </div>
            
            <div class="form-group">
                <label for="imagen" class="form-label">Imagen</label>
                <input type="text" class="form-control" id="imagen" name="imagen" value="${detallePlatillo.imagen != null ? detallePlatillo.imagen : '.jpg'}" required>
            </div>

            <div class="form-group">
                <label for="idProductos" class="form-label">ID Productos</label>
                <input type="text" class="form-control" id="idProductos" name="idProductos" value="${detallePlatillo.idProductos}" required>
            </div>

            <div class="form-group">
                <label for="idPlatillos" class="form-label">ID Platillos</label>
                <input type="text" class="form-control" id="idPlatillos" name="idPlatillos" value="${detallePlatillo.idPlatillos}" required>
            </div>
            
            <br>
            <button type="submit" class="btn btn-primary">Guardar</button> 
            <button type="button" class="btn btn-secondary" onclick="window.location.href='/Trabajogrupalv1/detallePlatillos/findAll';return false;">Cancelar</button>
        </form>
    </div>
</section>

<footer></footer>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>

<script>
    // Example starter JavaScript for disabling form submissions if there are invalid fields
    (() => {
        'use strict';
        const forms = document.querySelectorAll('.needs-validation');
        Array.from(forms).forEach(form => {
            form.addEventListener('submit', event => {
                if (!form.checkValidity()) {
                    event.preventDefault();
                    event.stopPropagation();
                }
                form.classList.add('was-validated');
            }, false);
        });
    })();

    // Colocar el cursor al inicio del campo de imagen
    document.addEventListener('DOMContentLoaded', function () {
        const imagenField = document.getElementById('imagen');
        imagenField.setSelectionRange(0, 0); // Coloca el cursor al inicio
        imagenField.focus(); // Asegúrate de que el campo tenga el enfoque
    });
</script>

</body>
</html>
