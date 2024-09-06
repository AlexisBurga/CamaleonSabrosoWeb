<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="ISO-8859-1">
    <title>Eliminar Factura</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    
    <script type="text/javascript">
        function confirmarEliminacion() {
            if (confirm("¿Estás seguro de que deseas eliminar esta factura?")) {
                document.getElementById("formEliminar").submit();
            }
        }
    </script>
</head>
<body>
    <section class="px-5 py-5">
        <div class="container">
            <h1 class="mb-4">Eliminar Factura</h1>
            <form id="formEliminar" action="${pageContext.request.contextPath}/facturas/del" method="post" class="needs-validation" novalidate>
                <input type="hidden" name="idFactura" value="${factura.idFactura}" />

                <p>¿Estás seguro de que deseas eliminar la factura con ID: <strong>${factura.idFactura}</strong>?</p>

                <div class="form-group mt-3">
                    <button type="button" class="btn btn-danger" onclick="confirmarEliminacion();">
                        Eliminar <i class="fa-solid fa-trash-can fa-sm"></i>
                    </button>
                    <button type="button" class="btn btn-secondary" onclick="window.location.href='${pageContext.request.contextPath}/facturas/findAll';">
                        Cancelar <i class="fa-solid fa-ban fa-sm" style="color: #ffca57;"></i>
                    </button>
                </div>
            </form>
        </div>
    </section>

    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
</body>
</html>
