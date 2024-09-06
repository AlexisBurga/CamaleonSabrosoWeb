<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sistema Compras</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap-table.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" 
    integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" 
    crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

    <nav></nav>

    <section class="px-5 py-5">
        <div class="container">
            <h1>Compras</h1>
            <form action="add" method="post" class="needs-validation" novalidate>
                <input type="hidden" id="idCompra" name="idCompra" value="${Compra.idCompra}">
                
                <div class="form-group">
                    <label for="fechaCompra" class="form-label">Fecha de Compra</label>
                    <input class="form-control" type="date" id="fechaCompra" name="fechaCompra" value="${fn:substring(Compra.fechaCompra,0,10)}" required>
                </div>
                
                <div class="form-group">
                    <label for="idProveedor" class="form-label">Id Proveedor</label>
                    <input class="form-control" type="text" id="idProveedor" name="idProveedor" value="${Compra.idProveedor}" required>
                </div>
                
                <div class="form-group">
                    <label for="idSucursal" class="form-label">Id Sucursal</label>
                    <input class="form-control" type="text" id="idSucursal" name="idSucursal" value="${Compra.idSucursal}" required>
                </div>
                
                <div class="form-group">
                    <label for="idVendedor" class="form-label">Id Vendedor</label>
                    <input class="form-control" type="text" id="idVendedor" name="idVendedor" value="${Compra.idVendedor}" required>
                </div>
                
                <div class="form-group">
                    <label for="total" class="form-label">Total</label>
                    <input class="form-control" type="text" id="total" name="total" value="${Compra.total}" required>
                </div>
                <br>
                <button class="btn btn-success" type="submit">Guardar</button>    
                <button class="btn btn-danger" type="button" onclick="window.location.href='/compra-web-online/compras/findAll'; return false;">Cancelar</button>
            </form>
        </div>
    </section>

    <footer></footer>

    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>

    <script>
        (() => {
          'use strict'
          const forms = document.querySelectorAll('.needs-validation')
          Array.from(forms).forEach(form => {
            form.addEventListener('submit', event => {
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
