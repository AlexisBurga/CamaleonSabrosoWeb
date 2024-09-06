<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Agregar Clientes</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

 
 <section class="px-5 py-5">
    <div class="container">
    
        <h1>Agregar Clientes</h1>
        
			<form action="${pageContext.request.contextPath}/clientes/add" method="post">
			    <input type="hidden" name="idcliente" value="${cliente.idclientes}" />
			    <div class="form-group">
			        <label for="nombre">Nombre:</label>
			        <input type="text" class="form-control" id="nombre" name="Nombre" value="${cliente.nombre}" required />
			    </div>
			    <div class="form-group">
			        <label for="direccion">Dirección:</label>
			        <input type="text" class="form-control" id="direccion" name="Direccion" value="${cliente.direccion}" required />
			    </div>
			    <div class="form-group">
			        <label for="telefono">Teléfono:</label>
			        <input type="text" class="form-control" id="telefono" name="Telefono" value="${cliente.telefono}" required />
			    </div>
			    <div class="form-group">
			        <label for="email">Email:</label>
			        <input type="email" class="form-control" id="email" name="Email" value="${cliente.email}" required />
			    </div>
			    <button type="submit" class="btn btn-primary">Guardar</button>
			</form>

    
    <button type="button" class="btn btn-secondary" onclick="window.location.href='${pageContext.request.contextPath}/clientes/findAll'; return false;">
        Cancelar
    </button>

</form>



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
