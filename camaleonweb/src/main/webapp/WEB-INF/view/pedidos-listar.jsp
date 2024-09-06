<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pedidos</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

	<section class="px-5 py-5">
		<div class="container" style="text-align: center;">
			<h1>Pedidos</h1>
				<br>
			<button onclick="window.location.href='/camaleonweb/pedidos/findOne?idPedidos=${items.idPedidos}&opcion=1'; return false;">
				Agregar
			</button>
			
		</div>
		
			<div class="table-responsive" style="text-align: center;">
			<br>
				<table id="tabla1" name="tabla1" 
					data-height="600" 
					data-search="true"
					data-pagination="true" 
					data-toogle="tabla1" 
					data-tollbar=".toolbar"
				class="table table-striped table-sm">
				<thead>
					<tr>
						<th>id_pedidos</th>
						<th>fechapedido</th>
						<th>idproveedor</th>
						<th>idsucursal</th>
						<th>idcliente</th>
						<th>total</th>
					</tr>
				</thead>
				
				<tbody>
					<c:forEach var="items" items="${pedidos}">
						<tr>
							<td>${items.idPedidos}</td>
							<td>${fn:substring(items.fechaPedido,0,10)}</td>
							<td>${items.idProveedor}</td>
							<td>${items.idSucursal}</td>
							<td>${items.idCliente}</td>
							<td>${items.total}</td>
		
							<td>
								<button class="btn btn-success"
								 onclick="window.location.href='/camaleonweb/pedidos/findOne?idPedidos=${items.idPedidos}&opcion=1'; return false;">
									Actualizar
								</button>
								<br>
								<button class="btn btn-danger"
								onclick="window.location.href='/camaleonweb/pedidos/findOne?idPedidos=${items.idPedidos}&opcion=2'; return false;">
									Eliminar
								</button>
							</td>
						</tr>
					</c:forEach>
				</tbody>
				
			</table>
			</div>
			
			
	</section>

	
	
	
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>
	<script type="text/javascript">
		var $tabla1 = $('#tabla1')
 
		$(function() {
 
			$tabla1.bootstrapTable({
				sortReset : true
			})
		})
	</script>

</body>
</html>