<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>${promocion != null ? 'Actualizar' : 'Agregar'} Promoción</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
</head>
<body>
    <section class="px-5 py-5">
        <div class="container">
            <h1 class="text-center">${promocion != null ? 'Actualizar' : 'Agregar'} Promoción</h1>
            <form action="${pageContext.request.contextPath}/promociones/add" method="post">
                <input type="hidden" name="idpromocion" value="${promocion != null ? promocion.idPromocion : ''}" />
                <div class="mb-3">
                    <label for="Nombre" class="form-label">Nombre</label>
                    <input type="text" class="form-control" id="Nombre" name="Nombre" value="${promocion != null ? promocion.nombre : ''}" required />
                </div>
                <div class="mb-3">
                    <label for="Descuento" class="form-label">Descuento</label>
                    <input type="number" class="form-control" id="Descuento" name="Descuento" value="${promocion != null ? promocion.descuento : ''}" required />
                </div>
                <div class="mb-3">
                    <label for="FechaInicio" class="form-label">Fecha de Inicio</label>
                    <input type="date" class="form-control" id="FechaInicio" name="FechaInicio" value="${promocion != null ? promocion.fechaInicio : ''}" required />
                </div>
                <div class="mb-3">
                    <label for="FechaFin" class="form-label">Fecha de Fin</label>
                    <input type="date" class="form-control" id="FechaFin" name="FechaFin" value="${promocion != null ? promocion.fechaFin : ''}" required />
                </div>
                <button type="submit" class="btn btn-primary">
                    <i class="fa-solid fa-save"></i> ${promocion != null ? 'Actualizar' : 'Agregar'}
                </button>
                <a href="${pageContext.request.contextPath}/promociones/findAll" class="btn btn-secondary">
                    <i class="fa-solid fa-ban"></i> Cancelar
                </a>
            </form>
        </div>
    </section>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
</body>
</html>
