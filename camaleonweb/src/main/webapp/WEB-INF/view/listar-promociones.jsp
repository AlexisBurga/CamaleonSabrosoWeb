<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Inventario - Promociones</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
</head>
<body>
    <nav></nav>
    <section class="px-5 py-5">
        <div class="container">
            <h1 class="text-center">Promociones</h1>
            <div class="position-absolute">
                <button class="btn btn-primary" onclick="window.location.href='camaleonweb/promociones/findOne?opcion=1'; return false;">
                    <i class="fa-solid fa-plus"></i> Agregar
                </button>
            </div>
            <div class="table-responsive">
                <table id="tablaPromociones"
                       class="table table-striped table-sm"
                       data-height="600"
                       data-search="true"
                       data-pagination="true">
                    <thead>
                        <tr>
                            <th>ID Promoción</th>
                            <th data-field="Nombre" data-sortable="true">Nombre</th>
                            <th data-field="Descuento" data-sortable="true">Descuento</th>
                            <th data-field="FechaInicio" data-sortable="true">Fecha Inicio</th>
                            <th data-field="FechaFin" data-sortable="true">Fecha Fin</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="promocion" items="${promociones}">
                            <tr>
                                <td>${promocion.idPromocion}</td>
                                <td>${promocion.nombre}</td>
                                <td>${promocion.descuento}</td>
                                <td><fmt:formatDate value="${promocion.fechaInicio}" pattern="yyyy-MM-dd"/></td>
                                <td><fmt:formatDate value="${promocion.fechaFin}" pattern="yyyy-MM-dd"/></td>
                                <td>
                                    <button class="btn btn-success" onclick="window.location.href='/camaleonweb/promociones/findOne?idpromocion=${promocion.idPromocion}&opcion=1'; return false;">
                                        <i class="fa-solid fa-pen-to-square"></i> Actualizar
                                    </button>
                                    <button class="btn btn-danger" onclick="window.location.href='/camaleonweb/promociones/del?idpromocion=${promocion.idPromocion}'; return false;">
                                        <i class="fa-solid fa-trash"></i> Eliminar
                                    </button>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </section>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>
    <script type="text/javascript">
        $(function(){
            $('#tablaPromociones').bootstrapTable({ sortReset: true });
        });
    </script>
</body>
</html>
