<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sistema Categorías</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <nav></nav>

    <section class="px-5 py-5">
        <div class="container">
            <h1>Categorías</h1>
            <div class="container" style="text-align: center;">
                <button class="btn btn-primary" onclick="window.location.href='/camaleonweb/categorias/findOne?opcion=1'; return false;">
                    <i class="fa-solid fa-address-book"></i>
                    <!-- Agregar -->
                </button>
            </div>
            <div class="table-responsive">
                <table id="tablaCategorias"
                       name="tablaCategorias"
                       data-height="600"
                       data-search="true"
                       data-pagination="true"
                       data-toggle="tablaCategorias"
                       data-toolbar=".toolbar"
                       class="table table-striped table-sm">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th data-field="Nombre" data-sortable="true">Nombre</th>
                            <th data-field="Descripción" data-sortable="true">Descripción</th>
                            <th data-field="Imagen" data-sortable="true">Imagen</th>
                            <th data-field="Estado" data-sortable="true">Estado</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="item" items="${categorias}">
                            <tr>
                                <td>${item.id}</td>
                                <td>${item.nombre}</td>
                                <td>${item.descripcion}</td>
                                <td>
                                    <img alt="Imagen de categoría" width="100" height="100" src="${pageContext.request.contextPath}/resources/img/${item.imagen}"/>
                                </td>
                                <td>${item.estado}</td>
                                <td>
                                    <button class="btn btn-success" onclick="window.location.href='/camaleonweb/categorias/findOne?id=${item.id}&opcion=1'; return false;">
                                        <i class="fa-solid fa-arrow-rotate-right"></i> 
                                        <!-- Actualizar -->
                                    </button>
                                    <button class="btn btn-danger" onclick="window.location.href='/camaleonweb/categorias/findOne?id=${item.id}&opcion=2'; return false;">
                                        <i class="fa-solid fa-trash"></i> 
                                        <!-- Eliminar -->
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
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>

    <script type="text/javascript">
        var $tablaCategorias = $('#tablaCategorias');

        $(function (){
            $tablaCategorias.bootstrapTable({ sortReset: true });
        });
    </script>
</body>
</html>
