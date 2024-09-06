<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DetallePedidos</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	<section class="px-5 py-5">
		<div class="container" style="text-align: center;">
			<h1>DetallePedidos</h1>
			<br>
			<button class="btn btn-primary" onclick="window.location.href='/camaleonweb/detallepedidos/findOne?idDetallePedidos=${items.idDetallePedidos}&opcion=1'; return false;">
				Agregar
			</button>
		</div>
		
		<div class="table-responsive" style="text-align: center;">
			<br>
			<table id="tabla1" name="tabla1" data-height="600" data-search="true" data-pagination="true" class="table table-striped table-sm">
				<thead>
					<tr>
						<th>id_detalle_pedidos</th>
						<th>idpedido</th>
						<th>idproducto</th>
						<th>cantidad</th>
						<th>preciounitario</th>
					</tr>
				</thead>
				
				<tbody>
					<c:forEach var="items" items="${detallePedidos}">
						<tr>
							<td>${items.idDetallePedidos}</td>
							<td>${items.idPedido}</td>
							<td>${items.idProducto}</td>
							<td>${items.cantidad}</td>
							<td>${items.precioUnitario}</td>
							<td>
								<button class="btn btn-success" onclick="window.location.href='/camaleonweb/detallepedidos/findOne?idDetallePedidos=${items.idDetallePedidos}&opcion=1'; return false;">
									Actualizar
								</button>
								<br>
								<button class="btn btn-danger" onclick="window.location.href='/camaleonweb/detallepedidos/findOne?idDetallePedidos=${items.idDetallePedidos}&opcion=2'; return false;">
									Eliminar
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
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>
	<script type="text/javascript">
		var $tabla1 = $('#tabla1')
 
		$(function() {
			$tabla1.bootstrapTable({
				sortReset: true
			})
		})
	</script>

</body>
</html>
