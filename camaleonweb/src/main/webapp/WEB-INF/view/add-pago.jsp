<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Agregar Pago</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap-table.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

<nav></nav>

<section class="px-5 py-5">
	<div class="container">
		<form action="add" method="post" class="needs-validation" novalidate>
			<input type="hidden" id="idPago" name="idPago" value="${Pago.idPago}">
			<div class="form-group">
				<label for="idPedido" class="form-label">ID Pedido</label>
				<input class="form-control" type="number" id="idPedido" name="idPedido" value="${Pago.idPedido}" required>
			</div>
			<div class="form-group">
				<label for="fechaPago" class="form-label">Fecha de Pago</label>
				<input class="form-control" type="date" id="fechaPago" name="fechaPago" value="${fn:substring(Pago.fechaPago,0,10)}" required>
			</div>
			<div class="form-group">
				<label for="idTipoPago" class="form-label">ID Tipo de Pago</label>
				<input class="form-control" type="number" id="idTipoPago" name="idTipoPago" value="${Pago.idTipoPago}" required>
			</div>
			<div class="form-group">
				<label for="monto" class="form-label">Monto</label>
				<input class="form-control" type="number" id="monto" name="monto" value="${Pago.monto}" required>
			</div>
			<div class="mt-3">
				<button class="btn btn-primary" type="submit">Guardar</button>
				<button class="btn btn-secondary" type="button" onclick="window.location.href='/Pagosss-web/pago/findAll'; return false;">Cancelar</button>
			</div>
		</form>
	</div>
</section>

<footer></footer>

<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/bootstrap-table.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/bootstrap-table-es-MX.min.js"></script>
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
