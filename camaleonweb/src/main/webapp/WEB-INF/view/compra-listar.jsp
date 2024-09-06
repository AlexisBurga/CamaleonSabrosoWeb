<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Sistema Compras</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" 
    integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" 
    crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

    <nav></nav>

    <section class="px-4 py-4">
        <div class="container">
            <h1>Compras</h1>
            <div class="container text-center">
                <button class="btn btn-primary" 
                    onclick="window.location.href='/camaleonweb/compras/findOne?opcion=1'; return false;">
                    <i class="fa-solid fa-plus"></i> Agregar Compra
                </button>
            </div>
        </div>
        <div class="table-responsive">
            <table id="tablaCompras" name="tablaCompras" data-height="600" data-search="true"
                data-pagination="true" data-toggle="tablaCompras" data-toolbar=".toolbar"
                class="table table-striped table-sm">
                <thead>
                    <tr>
                        <th>idCompra</th>
                        <th data-field="FechaCompra" data-sortable="true">Fecha Compra</th>
                        <th data-field="idProveedor" data-sortable="true">Proveedor</th>
                        <th data-field="idSucursal" data-sortable="true">Sucursal</th>
                        <th data-field="idVendedor" data-sortable="true">Vendedor</th>
                        <th data-field="Total" data-sortable="true">Total</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="item" items="${compras}">
                        <tr>
                            <td>${item.idCompra}</td>
                            <td>${fn:substring(item.fechaCompra,0,10)}</td>
                            <td>${item.idProveedor}</td>
                            <td>${item.idSucursal}</td>
                            <td>${item.idVendedor}</td>
                            <td>${item.total}</td>
                            <td>
                                <button class="btn btn-success" 
                                    onclick="window.location.href='/camaleonweb/compras/findOne?idCompra=${item.idCompra}&opcion=1'; return false;">
                                    <i class="fa-solid fa-pen-to-square"></i> Actualizar
                                </button>
                                
                                <button class="btn btn-danger" 
                                    onclick="window.location.href='/camaleonweb/compras/findOne?idCompra=${item.idCompra}&opcion=2'; return false;">
                                    <i class="fa-regular fa-square-minus"></i> Eliminar
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
        var $tablaCompras = $('#tablaCompras');

        $(function() {
            $tablaCompras.bootstrapTable({
                sortReset: true
            });
        });
    </script>

</body>
</html>
