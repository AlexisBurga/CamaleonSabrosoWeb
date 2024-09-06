<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Borrar Detalles de pedidos</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	
	<section class="px-5 py-5">
		<div class="container" style="text-align: center;">
			<h1>Borrar Detalles de pedidos</h1>
			<form action="del" method="get" class="needs-validation" novalidate="novalidate">
				<input type="hidden" id="idDetallePedidos" name="idDetallePedidos" value="${detallePedidos.idDetallePedidos}" />
				<strong>¿Deseas borrar los detalles del pedido?</strong>
				<br/>
				<br/>
				<button type="submit" class="btn btn-success">Borrar</button>
				<button class="btn btn-danger" onclick="window.location.href='/Proyecto-Web-Pedidos/detallepedidos/findAll'; return false;">Cancelar</button>
			</form>
		</div>
	</section>

	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>
	<script type="text/javascript">
		var $tabla1 = $('#tabla1');
		$(function() {
			$tabla1.bootstrapTable({
				sortReset : true
			});
		});
	</script>

</body>
</html>
