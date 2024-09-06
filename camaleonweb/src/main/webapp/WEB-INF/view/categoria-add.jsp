<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Categoria</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <nav></nav>
    
    <section class="px-5 py-5">
        <div class="container">
            <h1>Categoria</h1>
            <form action="add" method="post" class="needs-validation" novalidate>
                <input type="hidden" id="id" name="id" value="${categoria.id}" />
                
                <div class="form-group">
                    <label for="nombre" class="form-label">Nombre</label>
                    <input class="form-control" type="text" id="nombre" name="nombre" value="${categoria.nombre}" required />
                </div>
                
                <div class="form-group">
                    <label for="descripcion" class="form-label">Descripción</label>
                    <input class="form-control" type="text" id="descripcion" name="descripcion" value="${categoria.descripcion}" required />
                </div>
                
                <div class="form-group">
                    <label for="imagen" class="form-label">Imagen</label>
                    <input class="form-control" type="text" id="imagen" name="imagen" value="${categoria.imagen}" />
                </div>
                
                <div class="form-group">
                    <label for="estado" class="form-label">Estado</label>
                    <select class="form-select" id="estado" name="estado" required>
                        <option value="activo" ${categoria.estado == 'activo' ? 'selected' : ''}>Activo</option>
                        <option value="inactivo" ${categoria.estado == 'inactivo' ? 'selected' : ''}>Inactivo</option>
                    </select>
                </div>
                
                <button class="btn btn-success" type="submit">Guardar</button>
                <button class="btn btn-primary" type="button" onclick="window.location.href='/tu_contexto/categorias/findAll'; return false;">Cancelar</button>
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

