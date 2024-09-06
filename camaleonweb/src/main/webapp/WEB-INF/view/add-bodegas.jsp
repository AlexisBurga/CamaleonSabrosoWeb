<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sistema Bodegas</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
    .btn-custom-save {
        background-color: #ff66b2; /* Rosado */
        color: white;
        border-radius: 30px;
        padding: 10px 20px;
        font-size: 16px;
        transition: background-color 0.3s ease, transform 0.3s ease;
    }

    .btn-custom-save:hover {
        background-color: #e0559e;
        transform: translateY(-3px);
        box-shadow: 0 6px 12px rgba(224, 85, 158, 0.4);
    }

    .btn-custom-cancel {
        background-color: #8e44ad; /* Morado */
        color: white;
        border-radius: 30px;
        padding: 10px 20px;
        font-size: 16px;
        transition: background-color 0.3s ease, transform 0.3s ease;
    }

    .btn-custom-cancel:hover {
        background-color: #732d91;
        transform: translateY(-3px);
        box-shadow: 0 6px 12px rgba(115, 45, 145, 0.4);
    }

    .btn i {
        margin-right: 8px;
    }

    .form-container {
        background-color: #fff;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        max-width: 500px;
        margin: auto;
    }

    input[type="text"], input[type="number"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    label {
        font-weight: bold;
        margin-top: 10px;
        display: block;
    }

    .button-group {
        display: flex;
        justify-content: space-between;
    }
</style>
</head>
<body>
<nav></nav>
<section class="px-5 py-5">
    <div class="container">
        <div class="form-container">
            <form action="add" method="post">
                <input type="hidden" id="idBodegas" name="idBodegas" value="${bodegas.idBodegas}" />
                
                <label for="nombre">Nombre</label>
                <input type="text" id="nombre" name="nombre" value="${bodegas.nombre}"/>
                
                <label for="ubicacion">Ubicación</label>
                <input type="text" id="ubicacion" name="ubicacion" value="${bodegas.ubicacion}" />
                
                <label for="capacidad">Capacidad</label>
                <input type="number" id="capacidad" name="capacidad" value="${bodegas.capacidad}" />
                
                <label for="idSucursales">ID Sucursales</label>
                <input type="number" id="idSucursales" name="idSucursales" value="${bodegas.idSucursales}" />
                
                <div class="button-group">
                    <button class="btn btn-custom-save" type="submit">
                        <i class="fa-solid fa-pager"></i> Guardar 
                    </button>  
                    <button class="btn btn-custom-cancel" type="button" onclick="window.location.href='/camaleonweb/bodegas/findAll';return false;">
                        <i class="fa-solid fa-ban"></i> Cancelar
                    </button>  
                </div>
            </form>
        </div>
    </div>
</section>
<footer></footer>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>
<script type="text/javascript">
    (() => {
        'use strict'
        const forms = document.querySelectorAll('.needs-validation')
        Array.from(forms).forEach(form => {
            form.addEventListener('submit', event => {
                if (!form.checkValidity()) {
                    event.preventDefault()
                    event.stopPropagation()
                }
                form.classList.add('was-validated')
            }, false)
        })
    })()
</script>  
</body>
</html>

