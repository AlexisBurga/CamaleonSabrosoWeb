package com.distribuida.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.distribuida.dao.FacturaDao;
import com.distribuida.entities.Factura;

@Controller
@RequestMapping("/facturas")
public class FacturaController {

    @Autowired
    private FacturaDao facturaDao;

    @GetMapping("/findAll")
    public String findAll(ModelMap modelMap) {
      //  try {
            List<Factura> facturas = facturaDao.findAll();
            modelMap.addAttribute("facturas", facturas);
            return "listar-facturas";
       // } catch (Exception e) {
       //     modelMap.addAttribute("error", "Error fetching facturas: " + e.getMessage());
       //  }
    }

    @GetMapping("/findOne")
    public String findOne(@RequestParam(name = "idFactura", required = false) Integer idFactura,
                          @RequestParam(name = "opcion", required = false) Integer opcion,
                          ModelMap modelMap) {
        if (idFactura != null) {
            Factura factura = facturaDao.findOne(idFactura);
            modelMap.addAttribute("factura", factura);
        }
        if (opcion != null && opcion == 1) {
            return "add-facturas";
        } else {
            return "del-facturas";
        }
    }


    @PostMapping("/add")
    public String add(@RequestParam(name = "idFactura", required = false) Integer idFactura,
                      @RequestParam(name = "total", required = false) Double total,
                      @RequestParam(name = "idPedido", required = false) Integer idPedido,
                      @RequestParam(name = "idTipoPago", required = false) Integer idTipoPago,
                      ModelMap modelMap) {
     //   try {
            if (idFactura == null) {
                Factura factura = new Factura();
                factura.setTotal(total);
                factura.setIdPedido(idPedido);
                factura.setIdTipoPago(idTipoPago);
                facturaDao.add(factura);
            } else {
                Factura factura = facturaDao.findOne(idFactura);
                factura.setTotal(total);
                factura.setIdPedido(idPedido);
                factura.setIdTipoPago(idTipoPago);
                facturaDao.up(factura);
            }
            return "redirect:/facturas/findAll";
        
   //     } catch (Exception e) {
          //  modelMap.addAttribute("error", "Error saving factura: " + e.getMessage());
         //   return "error";
       // }
    }

    @GetMapping("/del")
    public String delete(@RequestParam(name = "idFactura", required = false) Integer idFactura, ModelMap modelMap) {
     //   try {
            if (idFactura != null) {
                facturaDao.del(idFactura);
            }
            return "redirect:/facturas/findAll";
     //   } catch (Exception e) {
     //       modelMap.addAttribute("error", "Error deleting factura: " + e.getMessage());
       //     return "error";
       // }
    }
  }
