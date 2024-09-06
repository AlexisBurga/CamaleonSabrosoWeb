<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Gestión de Platillos</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

<nav></nav>

<section class="px-5 py-5">
    <div class="container">
        <h1>Platillos</h1>
        <div class="container" style="text-align: center;">
            <button class="btn btn-primary" onclick="window.location.href='/camaleonweb/platillos/findOne?opcion=1'; return false;">
                <i class="fa-solid fa-plus"></i> <!-- Icono de agregar -->
                Agregar
            </button>
            <!-- Botón de regresar -->
            <button class="btn btn-secondary" onclick="window.location.href='http://localhost:8080/camaleonweb/';">
                <i class="fa-solid fa-arrow-left"></i> <!-- Icono de regresar -->
                Regresar
            </button>
        </div>
        <div class="table-responsive">
            <table id="tablaPlatillos"
                   name="tablaPlatillos"
                   data-height="800"
                   data-search="true"
                   data-pagination="true"
                   class="table table-striped table-sm">
                <thead>
                    <tr>
                        <th>idPlatillos</th>
                        <th data-field="Platillo" data-sortable="true">Platillo</th>
                        <th data-field="Descripción" data-sortable="true">Descripción</th>
                        <th data-field="Imagen" data-sortable="true">Imagen</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="item" items="${platillos}">
                        <tr>
                            <td>${item.idPlatillos}</td>
                            <td>${item.platillo}</td>
                            <td>${item.descripcion}</td>
                            <td>
                                <img alt="Imagen del platillo" width="250" height="250" src="${pageContext.request.contextPath}/resources/img/${item.imagen}" />
                            </td>
                            <td>
                                <button class="btn btn-success" onclick="window.location.href='/camaleonweb/platillos/findOne?idPlatillos=${item.idPlatillos}&opcion=1'; return false;">
                                    <i class="fa-solid fa-pen-to-square"></i> <!-- Icono de actualizar -->
                                    Actualizar
                                </button>
                                <button class="btn btn-danger" onclick="window.location.href='/camaleonweb/platillos/findOne?idPlatillos=${item.idPlatillos}&opcion=2'; return false;">
                                    <i class="fa-solid fa-trash"></i> <!-- Icono de eliminar -->
                                    Eliminar
                                </button>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</section>

<footer></footer>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
<script type="text/javascript">
    var $tablaPlatillos = $('#tablaPlatillos');
    $(function(){
        $tablaPlatillos.bootstrapTable({ sortReset: true });
    });
</script>

</body>
</html>

