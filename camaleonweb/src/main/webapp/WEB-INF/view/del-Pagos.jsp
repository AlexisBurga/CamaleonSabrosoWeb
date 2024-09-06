<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Eliminar Pago</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css" />
</head>
<body>

<div class="container" style="text-align: center;">
	<h1>Eliminar Pago</h1>
	<form action="del" method="get">
		<input type="hidden" id="idPagos" name="idPago" value="${Pago.idPago}" />
		<strong>¿Deseas borrar este Pago?</strong>
		<br><br/>
		<button class="btn btn-success" type="submit">Eliminar</button>
		<button class="btn btn-danger" type="button" onclick="window.location.href='/Pagosss-web/pago/findAll'; return false;">
			Cancelar
		</button>
	</form>
</div>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>

</body>
</html>
