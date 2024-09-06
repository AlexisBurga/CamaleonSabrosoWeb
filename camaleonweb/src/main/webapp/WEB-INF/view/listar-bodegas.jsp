<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sistema Bodegas</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
    .btn-custom-add {
        background-color: #66cc66; /* Verde claro */
        color: white;
        border-radius: 30px;
        padding: 10px 20px;
        font-size: 16px;
        transition: background-color 0.3s ease, transform 0.3s ease;
    }

    .btn-custom-add:hover {
        background-color: #55b355;
        transform: translateY(-3px);
        box-shadow: 0 6px 12px rgba(85, 179, 85, 0.4);
    }

    .btn-custom-update {
        background-color: #8e44ad; /* Morado */
        color: white;
        border-radius: 30px;
        padding: 10px 20px;
        font-size: 16px;
        transition: background-color 0.3s ease, transform 0.3s ease;
    }

    .btn-custom-update:hover {
        background-color: #732d91;
        transform: translateY(-3px);
        box-shadow: 0 6px 12px rgba(115, 45, 145, 0.4);
    }

    .btn-custom-delete {
        background-color: #ff66b2; /* Rosado */
        color: white;
        border-radius: 30px;
        padding: 10px 20px;
        font-size: 16px;
        transition: background-color 0.3s ease, transform 0.3s ease;
    }

    .btn-custom-delete:hover {
        background-color: #e0559e;
        transform: translateY(-3px);
        box-shadow: 0 6px 12px rgba(224, 85, 158, 0.4);
    }

    .btn i {
        margin-right: 8px;
    }

    .table-responsive {
        margin-top: 20px;
    }

    .btn-title {
        display: inline-block;
        background-color: #3498db; /* Azul */
        color: white;
        padding: 15px 30px;
        font-size: 24px;
        border-radius: 30px;
        text-decoration: none;
        font-weight: bold;
        transition: background-color 0.3s ease, transform 0.3s ease;
        cursor: pointer;
    }

    .btn-title:hover {
        background-color: #2980b9;
        transform: translateY(-3px);
        box-shadow: 0 6px 12px rgba(41, 128, 185, 0.4);
    }
</style>
</head>
<body>
<nav></nav>
<section class="px-5 py-5">
    <div class="container" style="text-align: center;">
        <h1 class="title">BODEGAS</h1>

        <!-- Botón centrado -->
        <div class="button-container">
            <button class="btn btn-custom-add" onclick="window.location.href='/camaleonweb/bodegas/findOne?opcion=1';return false;">   
                <i class="fa-solid fa-address-card"></i>             
                AGREGAR    
            </button>
        </div>
    </div>
</section>

<style>
    .title {
        font-size: 3rem; /* Tamaño grande para el título */
        color: #ff69b4; /* Color rosado claro */
        font-style: italic; /* Letra cursiva */
        margin-bottom: 20px; /* Espacio debajo del título */
    }

    .button-container {
        display: flex;
        justify-content: center;
        margin-top: 20px; /* Espacio arriba del botón */
    }

    .btn-custom-add {
        padding: 10px 20px;
        font-size: 16px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        background-color: #ff69b4; /* Color rosado claro */
        color: white;
        transition: background-color 0.3s ease, transform 0.3s ease;
    }

    .btn-custom-add:hover {
        background-color: #ff1493; /* Color rosado más oscuro */
        transform: scale(1.05);
    }

    .btn-custom-add i {
        margin-right: 8px;
    }
</style>
                                                               
    </div>
    <div class="table-responsive" style="text-align: center;">            
        <table id="tabla1"
        name="tabla1"
        data-height="600"
        data-search="true"
        data-pagination="true"
        data-toogle="tabla1"
        data-tollbar=".toolbar"
        class="table table-striped table-sm">
            <thead>
                <tr>
                    <th>ID Bodega</th>
                    <th>Nombre</th>
                    <th>Ubicación</th>
                    <th>Capacidad</th>
                    <th>ID Sucursal</th>                
                </tr>            
            </thead>        
            <tbody>
                <c:forEach var="item" items="${Bodegas}">
                    <tr>
                        <td>${item.idBodegas}</td>
                        <td>${item.nombre}</td>
                        <td>${item.ubicacion}</td>
                        <td>${item.capacidad}</td>
                        <td>${item.idSucursales}</td>
                        <td>
                            <button class="btn btn-custom-update" onclick="window.location.href='/camaleonweb/bodegas/findOne?idBodegas=${item.idBodegas}&opcion=1';return false;">
                                <i class="fa-solid fa-file-pen"></i>
                                ACTUALIZAR                                                                                                    
                            </button>
                            <button class="btn btn-custom-delete" onclick="window.location.href='/camaleonweb/bodegas/findOne?idBodegas=${item.idBodegas}&opcion=2';return false;">
                                <i class="fa-solid fa-trash"></i>                        
                                ELIMINAR                                                                                                    
                            </button>
                        </td>
                    </tr>            
                </c:forEach>                                    
            </tbody>
        </table>
    </div>
</section>

<footer></footer>            

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>
<script type="text/javascript">
    var $tabla1 = $('#tabla1');
    $(function() {
        $tabla1.bootstrapTable({ sortReset: true });
    });
</script>
</body>
</html>


