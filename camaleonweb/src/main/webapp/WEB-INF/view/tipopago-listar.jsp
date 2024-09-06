<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tipo de Pago</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

<section class="px-5 py-5">
    <div class="container" style="text-align: center;">
        <h1>Tipo de Pago</h1>
        <button class="btn btn-primary" 
            onclick="window.location.href='/camaleonweb/tipopagos/findOne?opcion=1'; return false;">
            <i  class="fa-regular fa-address-book"></i> 
        </button>
    </div>
    <div class="table-responsive">
        <table id="tabla1"
            name="tabla1"
            data-height="600"
            data-search="true"
            data-pagination="true"
            data-toggle="tabla1"
            class="table table-striped table-sm">
            <thead>
                <tr>
                    <th>ID_Tipo_Pago</th>
                    <th data-field="Tipo" data-sortable="true">Tipo</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="item" items="${tipoPagos}">
                    <tr>
                        <td>${item.idTipoPago}</td>
                        <td>${item.tipo}</td>
                        <td>
                            <button class="btn btn-success"
                                onclick="window.location.href='/camaleonwebtipopagos/findOne?idTipoPago=${item.idTipoPago}&opcion=1'; return false;">
                                <i class="fa-solid fa-file-pen"></i> Actualizar
                            </button>
                            <button class="btn btn-danger"
                                onclick="window.location.href='/camaleonweb/tipopagos/findOne?idTipoPago=${item.idTipoPago}&opcion=2'; return false;">
                                <i class="fa-solid fa-trash"></i> Eliminar
                            </button>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</section>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>
<script type="text/javascript">
    var $tabla1 = $('#tabla1');
    $(function(){
        $tabla1.bootstrapTable({ sortReset: true });
    });
</script>

</body>
</html>

