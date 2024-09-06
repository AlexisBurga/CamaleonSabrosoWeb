<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Eliminar TipoPago</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css" />
</head>
<body>

<div class="container" style="text-align: center;">
	<h1>Eliminar TipoPago</h1>
	<form action="del" method="get">
		<input type="hidden" id="idTipoPago" name="idTipoPago" value="${tipoPago.idTipoPago}" />
		<strong>¿Deseas borrar este TipoPago?</strong>
		<br><br/>
		<button class="btn btn-success" type="submit">BORRAR</button>
		<button class="btn btn-danger" type="button" onclick="window.location.href='/Pagosss-web/tipopagos/findAll'; return false;">
			CANCELAR
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
