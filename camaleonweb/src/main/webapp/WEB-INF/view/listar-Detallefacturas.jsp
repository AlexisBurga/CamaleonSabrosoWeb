<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Listar Detalles de Facturas</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

<nav> <!-- Menú de navegación, si es necesario --> </nav>

<section class="px-5 py-5">
    <div class="container">
        <h2>Lista de Detalles de Facturas</h2>

        <!-- Botón para agregar un nuevo detalle de factura -->
        <div class="mb-3">
            <button class="btn btn-primary" onclick="window.location.href='${pageContext.request.contextPath}/Detallefacturas/findOne?opcion=1'; return false;">
                Agregar Nuevo Detalle de Factura
                <i class="fa-solid fa-plus"></i>
            </button>
        </div>

        <c:if test="${not empty Detalle_facturas}">
            <div class="table-responsive">
                <table id="detallesTabla" class="table table-striped table-sm"
                       data-search="true"
                       data-pagination="true"
                       data-sortable="true">
                    <thead>
                        <tr>
                            <th data-field="ID Detalle Factura" data-sortable="true">ID Detalle Factura</th>
                            <th data-field="Cantidad" data-sortable="true">Cantidad</th>
                            <th data-field="Precio Unitario" data-sortable="true">Precio Unitario</th>
                            <th data-field="ID Factura" data-sortable="true">ID Factura</th>
                            <th data-field="ID Producto" data-sortable="true">ID Producto</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="detalle" items="${Detalle_facturas}">
                            <tr>
                                <td>${detalle.idDetalleFactura}</td>
                                <td>${detalle.cantidad}</td>
                                <td>${detalle.precioUnitario}</td>
                                <td>${detalle.idFactura}</td>
                                <td>${detalle.idProducto}</td>
                                <td>
                                    <!-- Botón para editar el detalle de factura -->
                                    <button class="btn btn-sm btn-warning" onclick="window.location.href='${pageContext.request.contextPath}/Detallefacturas/findOne?idDetalle_factura=${detalle.idDetalleFactura}&opcion=1'; return false;">
                                        <i class="fa-solid fa-edit"></i>
                                    </button>
                                    <!-- Botón para eliminar el detalle de factura -->
                                    <button class="btn btn-sm btn-danger" onclick="window.location.href='${pageContext.request.contextPath}/Detallefacturas/findOne?idDetalle_factura=${detalle.idDetalleFactura}&opcion=2'; return false;">
                                        <i class="fa-solid fa-trash-alt"></i>
                                    </button>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </c:if>

        <c:if test="${empty Detalle_facturas}">
            <p class="alert alert-warning">No hay detalles de facturas disponibles.</p>
        </c:if>

    </div>
</section>

<footer> <!-- Pie de página, si es necesario --> </footer>

<script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
<script>
    $(function() {
        $('#detallesTabla').bootstrapTable({
            sortReset: true
        });
    });
</script>

</body>
</html>

