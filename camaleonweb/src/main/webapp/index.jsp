<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Facturas y Detalles Facturas</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }
        #sidebar {
            width: 250px;
            height: 100vh;
            background-color: #343a40;
            color: #fff;
            position: fixed;
            top: 0;
            left: 0;
            padding: 20px;
            overflow-y: auto;
            border-right: 1px solid #ccc;
        }
        #sidebar h2 {
            color: #fff;
            font-size: 1.5rem;
            margin-bottom: 30px;
        }
        #sidebar .nav-link {
            color: #fff;
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 10px;
            transition: background-color 0.3s;
        }
        #sidebar .nav-link:hover {
            background-color: #495057;
            text-decoration: none;
        }
        .container-fluid {
            margin-left: 250px;
            padding: 20px;
        }
        .content {
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }
    </style>
</head>
<body>
    <div id="sidebar">
        <h2 class="text-center">Menu</h2>
        <ul class="nav flex-column">
            <li class="nav-item">
                <a class="nav-link" href="/camaleonweb/DetallePedidos/findAll">
                    <i class="fa-solid fa-box"></i> Detalles Pedidos
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/camaleonweb/DetallesCompras/findAll">
                    <i class="fa-solid fa-box-open"></i> Detalles Compras
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/camaleonweb/detalleplatillos/findAll">
                    <i class="fa-solid fa-utensils"></i> Detalle Platillos
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/camaleonweb/devoluciones/findAll">
                    <i class="fa-solid fa-undo"></i> Devoluciones
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/camaleonweb/envios/findAll">
                    <i class="fa-solid fa-truck"></i> Envios
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/camaleonweb/facturas/findAll">
                    <i class="fa-solid fa-file-invoice"></i> Facturas
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/camaleonweb/inventarios/findAll">
                    <i class="fa-solid fa-warehouse"></i> Inventarios
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/camaleonweb/pago/findAll">
                    <i class="fa-solid fa-credit-card"></i> Pagos
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/camaleonweb/pedidos/findAll">
                    <i class="fa-solid fa-list-alt"></i> Pedidos
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/camaleonweb/platillos/findAll">
                    <i class="fa-solid fa-concierge-bell"></i> Platillos
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/camaleonweb/productos/findAll">
                    <i class="fa-solid fa-cube"></i> Productos
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/camaleonweb/promociones/findAll">
                    <i class="fa-solid fa-tags"></i> Promociones
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/camaleonweb/proveedores/findAll">
                    <i class="fa-solid fa-truck-loading"></i> Proveedores
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/camaleonweb/sucursales/findAll">
                    <i class="fa-solid fa-store"></i> Sucursales
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/camaleonweb/tipopagos/findAll">
                    <i class="fa-solid fa-money-bill-wave"></i> Tipo Pago
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/camaleonweb/vendedores_promociones/findAll">
                    <i class="fa-solid fa-user-tag"></i> Vendedores Promociones
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/camaleonweb/vendedores/findAll">
                    <i class="fa-solid fa-user-tie"></i> Vendedores
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/camaleonweb/clientes_promociones/findAll">
                    <i class="fa-solid fa-user-plus"></i> Clientes Promociones
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/camaleonweb/compras/findAll">
                    <i class="fa-solid fa-shopping-cart"></i> Compras
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/camaleonweb/clientes/findAll">
                    <i class="fa-solid fa-users"></i> Clientes
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/camaleonweb/bodegas/findAll">
                    <i class="fa-solid fa-boxes"></i> Bodegas
                </a>
            </li>
        </ul>
    </nav>


    <!-- Main Content -->
    <div class="container-fluid" style="margin-left: 250px;">
        <div class="content p-3">
            <!-- Contenido adicional aquí -->
        </div>
    </div>

    <!-- Optional JavaScript; choose one of the two! -->
    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>
