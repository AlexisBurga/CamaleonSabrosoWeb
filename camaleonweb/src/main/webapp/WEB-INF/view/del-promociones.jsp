<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Eliminar promoción</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
</head>
<body>
    <section class="px-5 py-5">
        <div class="container">
            <h1 class="text-center">Eliminar promoción</h1>
            <div class="alert alert-warning text-center" role="alert">
                <strong>¿Desea eliminar esta promoción?</strong>
            </div>
            <form action="${pageContext.request.contextPath}/promociones/del" method="get" class="text-center">
                <input type="hidden" id="idPromocion" name="idpromocion" value="${promocion.idPromocion}" />
                <button type="submit" class="btn btn-danger">
                    <i class="fa-solid fa-trash"></i> Eliminar
                </button>
                <button type="button" class="btn btn-secondary" onclick="window.location.href='${pageContext.request.contextPath}/promociones/findAll'; return false;">
                    <i class="fa-solid fa-ban"></i> Cancelar
                </button>
            </form>
        </div>
    </section>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
</body>
</html>