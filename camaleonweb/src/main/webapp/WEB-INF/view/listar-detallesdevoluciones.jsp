<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Detalles Devoluciones</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap');

        body {
            background-color: #f8f9fa;
            font-family: 'Roboto', sans-serif;
        }

        h1 {
            margin-bottom: 30px;
            text-align: center;
            color: #fff;
            background: linear-gradient(90deg, #007bff, #0056b3);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.15);
            animation: fadeIn 1s ease-in-out, bounce 1.5s infinite;
            font-weight: 700;
            letter-spacing: 2px;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-50px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes bounce {
            0%, 20%, 50%, 80%, 100% {
                transform: translateY(0);
            }
            40% {
                transform: translateY(-10px);
            }
            60% {
                transform: translateY(-5px);
            }
        }

        .search-container {
            display: flex;
            justify-content: flex-end;
            margin-bottom: 20px;
        }

        .search-container input {
            width: 350px;
            margin-right: 10px;
            border-radius: 30px;
            border: 1px solid #ced4da;
            padding: 10px 20px;
            font-family: 'Roboto', sans-serif;
            transition: all 0.3s ease;
        }

        .search-container input:focus {
            border-color: #007bff;
            box-shadow: 0px 0px 8px #007bff;
        }

        .table-container {
            background: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
            overflow-y: auto;
            max-height: 450px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            text-align: left;
            font-family: 'Roboto', sans-serif;
        }

        th {
            background-color: #007bff;
            color: #ffffff;
        }

        tbody tr:hover {
            background-color: #c7eb7a; /* Sombreado verde claro */
        }

        .btn-primary, .btn-success, .btn-danger {
            border-radius: 30px;
            padding: 10px 20px;
            transition: background-color 0.3s ease, transform 0.3s ease;
            font-family: 'Roboto', sans-serif;
        }

        .btn-primary:hover, .btn-success:hover, .btn-danger:hover {
            transform: scale(1.08);
        }

        .btn-primary {
            background-color: #007bff;
        }

        .btn-success {
            background-color: #28a745;
        }

        .btn-danger {
            background-color: #dc3545;
        }
    </style>
</head>
<body>

<section class="px-5 py-5">
    <div class="container">
        <h1>Detalles Devoluciones</h1>
        <div class="search-container">
            <input type="text" id="searchInput" class="form-control" placeholder="Buscar en la tabla...">
            <button class="btn btn-primary" onclick="window.location.href='/camaleonweb/detallesdevoluciones/findOne?opcion=1'; return false;">
                <i class="fa-solid fa-plus"></i> Agregar
            </button>
        </div>
        <div class="table-container">
            <table id="detallesTable">
                <thead>
                    <tr>
                        <th>Id Detalle Devolución</th>
                        <th>Id Devolución</th>
                        <th>Id Producto</th>
                        <th>Cantidad</th>
                        <th>Precio Unitario</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="item" items="${DetallesDevoluciones}">
                        <tr> 
                            <td>${item.idDetalleDevolucion}</td>
                            <td>${item.idDevolucion}</td>
                            <td>${item.idProducto}</td>
                            <td>${item.cantidad}</td>
                            <td>${item.precioUnitario}</td>
                            <td> 
                                <button class="btn btn-success" onclick="window.location.href='/camaleonweb/detallesdevoluciones/findOne?idDetalleDevolucion=${item.idDetalleDevolucion}&opcion=1'; return false;">
                                    <i class="fa-solid fa-pen-to-square"></i> Actualizar
                                </button>
                                <button class="btn btn-danger" onclick="window.location.href='/camaleonweb/detallesdevoluciones/findOne?idDetalleDevolucion=${item.idDetalleDevolucion}&opcion=2'; return false;">
                                    <i class="fa-solid fa-trash"></i> Eliminar
                                </button>             
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</section>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
        $("#searchInput").on("keyup", function() {
            var value = $(this).val().toLowerCase();
            $("#detallesTable tbody tr").filter(function() {
                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            });
        });
    });
</script>

</body>
</html>
