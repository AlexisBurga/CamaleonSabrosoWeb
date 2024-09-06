<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Vendedores </title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<div class="container mt-5">
    <h1 class="text-center">Vendedores</h1>

    <div class="text-center my-4">
        <button class="btn btn-primary" onclick="window.location.href='/camaleonweb/vendedores/findOne?opcion=1'; return false;">
            <i class="fa-solid fa-plus"></i> Agregar
        </button>
    </div>

    <div class="table-responsive">
        <table id="tablaVendedores"
               class="table table-striped table-sm"
               data-height="600"
               data-search="true"
               data-pagination="true"
               data-toggle="tablaVendedores"
               data-toolbar=".toolbar">
            <thead>
                <tr>
                    <th data-field="idVendedores" data-sortable="true">ID Vendedores</th>
                    <th data-field="Nombre" data-sortable="true">Nombre</th>
                    <th data-field="Dirección" data-sortable="true">Dirección</th>
                    <th data-field="Teléfono" data-sortable="true">Teléfono</th>
                    <th data-field="Email" data-sortable="true">Email</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="item" items="${vendedores}">
                    <tr>
                        <td>${item.idvendedores}</td>
                        <td>${item.nombre}</td>
                        <td>${item.direccion}</td>
                        <td>${item.telefono}</td>
                        <td>${item.email}</td>
                        <td>
                            <button class="btn btn-success" onclick="window.location.href='/camaleonweb/vendedores/findOne?idvendedores=${item.idvendedores}&opcion=1'; return false;">
                                <i class="fa-solid fa-pen-to-square"></i> Actualizar
                            </button>
                            <button class="btn btn-danger" onclick="window.location.href='/camaleonweb/vendedores/findOne?idvendedores=${item.idvendedores}&opcion=2'; return false;">
                                <i class="fa-solid fa-trash"></i> Eliminar
                            </button>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>

<script type="text/javascript">
    var $tablaVendedores = $('#tablaVendedores');

    $(function() {
        $tablaVendedores.bootstrapTable({ sortReset: true });
    });
</script>

</body>
</html>