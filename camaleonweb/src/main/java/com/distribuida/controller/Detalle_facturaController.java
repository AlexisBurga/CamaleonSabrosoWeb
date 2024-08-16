package com.distribuida.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.distribuida.dao.Detalle_facturaDao;
import com.distribuida.entities.DetalleFactura;

@Controller
@RequestMapping("/Detallefacturas")
public class Detalle_facturaController {

    @Autowired
    private Detalle_facturaDao detalleFacturaDao;

    @GetMapping("/findAll")
    public String findAll(ModelMap modelMap) {
        List<DetalleFactura> detalleFacturas = detalleFacturaDao.findAll();
        modelMap.addAttribute("Detalle_facturas", detalleFacturas);
        return "Listar-Detallefactura";
    }

    @GetMapping("/findOne")
    public String findOne(@RequestParam("idDetalle_factura") @Nullable Integer idDetalleFactura,
                          @RequestParam("opcion") @Nullable Integer opcion,
                          ModelMap modelMap) {
        if (idDetalleFactura != null) {
            DetalleFactura detalleFactura = detalleFacturaDao.findOne(idDetalleFactura);
            modelMap.addAttribute("Detalle_factura", detalleFactura);
        }

        // If option 1, go to add page, else go to delete page
        if (opcion == 1) {
            return "add-Detalle_facturas";
        } else {
            return "del-Detalle_facturas";
        }
    }

    @PostMapping("/add")
    public String add(@RequestParam("idDetalle_factura") @Nullable Integer idDetalleFactura,
                      @RequestParam("cantidad") @Nullable Integer cantidad,
                      @RequestParam("id_factura") @Nullable Integer idFactura,
                      @RequestParam("id_producto") @Nullable Integer idProducto,  // Cambiado de id_libro a id_producto
                      @RequestParam("precio_unitario") @Nullable Double precioUnitario,
                      ModelMap modelMap) {

        if (idProducto == null) {
            modelMap.addAttribute("error", "El campo ID Producto no puede estar vacío.");
            return "add-Detalle_facturas";  // Regresar al formulario si el ID Producto es nulo
        }

        if (idDetalleFactura == null) {
            DetalleFactura detalleFactura = new DetalleFactura();
            detalleFactura.setCantidad(cantidad);
            detalleFactura.setIdFactura(idFactura);
            detalleFactura.setIdProducto(idProducto);
            detalleFactura.setPrecioUnitario(precioUnitario);
            detalleFacturaDao.add(detalleFactura);
        } else {
            DetalleFactura detalleFactura2 = new DetalleFactura();
            detalleFactura2.setIdDetalleFactura(idDetalleFactura);
            detalleFactura2.setCantidad(cantidad);
            detalleFactura2.setIdFactura(idFactura);
            detalleFactura2.setIdProducto(idProducto);
            detalleFactura2.setPrecioUnitario(precioUnitario);
            detalleFacturaDao.up(detalleFactura2);
        }

        return "redirect:/Detallefacturas/findAll";   // Redirect to the list page after adding or updating
    }

    @GetMapping("/del")
    public String delete(@RequestParam("idDetalle_factura") @Nullable Integer idDetalleFactura) {
        detalleFacturaDao.del(idDetalleFactura);
        return "redirect:/Detallefacturas/findAll";  // Redirect to the list page after deletion
    }
}
