<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Agregar/Editar Tipo de Pago</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

<section class="px-5 py-5">
	<div class="container">
		<h1>Tipo de Pago</h1>
		<form action="add" method="post" class="needs-validation" novalidate>
			<input type="hidden" id="idTipoPago" name="idTipoPago" value="${tipoPago.idTipoPago}">
			
			<div class="form-group">
				<label for="tipo" class="form-label">Tipo de Pago</label>
				<input class="form-control" type="text" id="tipo" name="tipo" value="${tipoPago.tipo}" required>
				<div class="invalid-feedback">
					Por favor, ingrese el tipo de pago.
				</div>
			</div>
			
			<div class="mt-3">
				<button class="btn btn-primary" type="submit">Guardar</button>
				<button class="btn btn-secondary" type="button" onclick="window.location.href='/Pagosss-web/tipopagos/findAll'; return false;">Cancelar</button>
			</div>
		</form>
	</div>
</section>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
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
