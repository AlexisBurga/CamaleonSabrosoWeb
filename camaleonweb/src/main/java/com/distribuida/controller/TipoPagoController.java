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
import com.distribuida.dao.TipoPagoDAO;
import com.distribuida.entities.TipoPago;


@Controller
@RequestMapping("/tipopagos")  // Usar minúsculas y plural para las rutas de recursos
public class TipoPagoController {

    @Autowired
    private TipoPagoDAO tipoPagoDAO;  // Unificar el nombre de la variable para evitar confusión

    @GetMapping("/findAll")
    public String findAll(ModelMap modelMap) {
    	List <TipoPago> tipoPagos = tipoPagoDAO.findALL();
        modelMap.addAttribute("tipoPagos", tipoPagos);  
        return "tipopago-listar";  
    }

    @GetMapping("/findOne")
    public String findOne(@RequestParam("idTipoPago") @Nullable Integer idTipoPago
    		             ,@RequestParam("opcion")@Nullable Integer opcion
    		             , ModelMap modelMap) {
    	if(idTipoPago !=null) {
    		TipoPago tipoPago = tipoPagoDAO.findOne(idTipoPago);
    		modelMap.addAttribute("tipoPago",tipoPago);
    	}
    	
    	if (opcion == 1) return "add-tipopago";
    	else return "del-tipopago";
    	
    }
        
     @PostMapping("/add")
     private String add (@RequestParam("idTipoPago") @Nullable Integer idtipopago
    		           ,@RequestParam("tipo") @Nullable String tipo
    		           
    		 ) {
    	 if(idtipopago == null) {
    	 TipoPago tipoPago = new TipoPago(0, tipo);
    	 tipoPagoDAO.add(tipoPago);
    		 
    	 }else {
    		 TipoPago tipoPago = new TipoPago(idtipopago, tipo);
        	 tipoPagoDAO.up(tipoPago);
     }
    	return "redirect:/tipopagos/findAll";
     }
     
     @GetMapping("/del")
     public String del(@RequestParam("idTipoPago") @Nullable Integer idtipopago) {
         if (idtipopago == null) {
             // Maneja el caso cuando idtipopago es nulo (puedes mostrar un mensaje de error o redirigir a otra página)
             return "redirect:/tipopagos/findAll";
         }
         
         tipoPagoDAO.del(idtipopago);
         return "redirect:/tipopagos/findAll";
     }

 }
  
