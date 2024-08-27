<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="ISO-8859-1">
    <title>Listar Facturas</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

<nav> <!-- Puedes agregar aquí un menú de navegación si lo necesitas --> </nav>

<section class="px-5 py-5">
    <div class="container">
        <h2>Lista de Facturas</h2>

        <!-- Botón para agregar una nueva factura -->
        <div class="mb-3">
            <button class="btn btn-primary" onclick="window.location.href='${pageContext.request.contextPath}/facturas/findOne?opcion=1'; return false;">
                Agregar Nueva Factura
                <i class="fa-solid fa-file-invoice"></i>
            </button>
        </div>

        <c:if test="${not empty facturas}">
            <div class="table-responsive">
                <table id="facturasTabla" class="table table-striped table-sm"
                       data-search="true"
                       data-pagination="true"
                       data-sortable="true">
                    <thead>
                        <tr>
                            <th data-field="ID" data-sortable="true">ID</th>
                            <th data-field="Total" data-sortable="true">Total</th>
                            <th data-field="ID Pedido" data-sortable="true">ID Pedido</th>
                            <th data-field="ID Tipo Pago" data-sortable="true">ID Tipo Pago</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="factura" items="${facturas}">
                            <tr>
                                <td>${factura.idFactura}</td>
                                <td>${factura.total}</td>
                                <td>${factura.idPedido}</td>
                                <td>${factura.idTipoPago}</td>
                                <td>
                                    <!-- Botón para editar la factura -->
                                    <button class="btn btn-sm btn-warning" onclick="window.location.href='${pageContext.request.contextPath}/facturas/findOne?idFactura=${factura.idFactura}&opcion=1'; return false;">
                                        <i class="fa-solid fa-edit"></i>
                                    </button>
                                    <!-- Botón para ir al formulario de confirmación para eliminar la factura -->
                                    <button class="btn btn-sm btn-danger" onclick="window.location.href='${pageContext.request.contextPath}/facturas/findOne?idFactura=${factura.idFactura}&opcion=2'; return false;">
                                        <i class="fa-solid fa-trash-alt"></i>
                                    </button>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </c:if>

        <c:if test="${empty facturas}">
            <p class="alert alert-warning">No hay facturas disponibles.</p>
        </c:if>

    </div>
</section>

<footer> <!-- Puedes agregar aquí un pie de página si lo necesitas --> </footer>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
<script type="text/javascript">
    $(function() {
        $('#facturasTabla').bootstrapTable({
            sortReset: true
        });
    });
</script>

</body>
</html>

