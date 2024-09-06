<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Agregar detalle pedidos</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

<section class="px-5 py-5">
	<div class="container">
		<h1>Agregar detalle pedidos</h1>
		<form action="add" method="post" class="needs-validation" novalidate="novalidate">
			<input type="hidden" id="idDetallePedidos" name="idDetallePedidos" value="${detallePedidos.idDetallePedidos}" />
			
			<div class="form-group">
				<label for="idpedido" class="form-label">Pedidos Id</label>
				<input type="text" class="form-control" id="idpedido" name="idpedido" value="${detallePedidos.idPedido}" required />
			</div>
			
			<div class="form-group">
				<label for="idProducto" class="form-label">Producto Id</label>
				<input type="text" class="form-control" id="idProducto" name="idProducto" value="${detallePedidos.idProducto}" required />
			</div>
			
			<div class="form-group">
				<label for="cantidad" class="form-label">Cantidad</label>
				<input type="text" class="form-control" id="cantidad" name="cantidad" value="${detallePedidos.cantidad}" required />
			</div>
			
			<div class="form-group">
				<label for="precioUnitario" class="form-label">Precio Unitario</label>
				<input type="text" class="form-control" id="precioUnitario" name="precioUnitario" value="${detallePedidos.precioUnitario}" required />
			</div>
			
			<br>
			
			<button type="submit" class="btn btn-success">Guardar</button>
			<button class="btn btn-danger" onclick="window.location.href='/Proyecto-Web-Pedidos/detallepedidos/findAll'; return false;">Cancelar</button>
		</form>
	</div>
</section>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>

<script>
	(() => {
		'use strict';
		
		const forms = document.querySelectorAll('.needs-validation');
		
		Array.from(forms).forEach(form => {
			form.addEventListener('submit', event => {
				if (!form.checkValidity()) {
					event.preventDefault();
					event.stopPropagation();
				}
				form.classList.add('was-validated');
			}, false);
		});
	})();
</script>

</body>
</html>
