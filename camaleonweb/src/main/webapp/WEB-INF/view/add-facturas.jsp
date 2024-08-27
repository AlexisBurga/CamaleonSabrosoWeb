<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title><c:choose>
               <c:when test="${not empty factura}">Actualizar</c:when>
               <c:otherwise>Agregar</c:otherwise>
           </c:choose> Factura</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

<section class="px-5 py-5">
    <div class="container">
        <h1 class="mb-4"><c:choose>
                <c:when test="${not empty factura}">Actualizar</c:when>
                <c:otherwise>Agregar</c:otherwise>
            </c:choose> Factura</h1>

        <form action="/camaleonweb/facturas/add" method="post" class="needs-validation" novalidate>
            <input type="hidden" name="idFactura" value="${factura.idFactura}" />

            <div class="mb-3">
                <label for="total" class="form-label">Total:</label>
                <input type="text" class="form-control" id="total" name="total" value="${factura.total}" required />
                <div class="invalid-feedback">
                    Por favor, ingrese el total.
                </div>
            </div>

            <div class="mb-3">
                <label for="idPedido" class="form-label">ID Pedido:</label>
                <input type="text" class="form-control" id="idPedido" name="idPedido" value="${factura.idPedido}" required />
                <div class="invalid-feedback">
                    Por favor, ingrese el ID del pedido.
                </div>
            </div>

            <div class="mb-3">
                <label for="idTipoPago" class="form-label">ID Tipo Pago:</label>
                <input type="text" class="form-control" id="idTipoPago" name="idTipoPago" value="${factura.idTipoPago}" required />
                <div class="invalid-feedback">
                    Por favor, ingrese el ID del tipo de pago.
                </div>
            </div>

            <button type="submit" class="btn btn-primary">
                <i class="fa-solid fa-save"></i> Guardar
            </button>
            <a href="/camaleonweb/facturas/findAll" class="btn btn-secondary">
                <i class="fa-solid fa-times"></i> Cancelar
            </a>
        </form>
    </div>
</section>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">
    // Validación del formulario Bootstrap
    (function () {
        'use strict'
        var forms = document.querySelectorAll('.needs-validation')

        Array.prototype.slice.call(forms)
            .forEach(function (form) {
                form.addEventListener('submit', function (event) {
                    if (!form.checkValidity()) {
                        event.preventDefault()
                        event.stopPropagation()
                    }
                    form.classList.add('was-validated')
                }, false)
            })
    })()
</script>

</body>
</html>
