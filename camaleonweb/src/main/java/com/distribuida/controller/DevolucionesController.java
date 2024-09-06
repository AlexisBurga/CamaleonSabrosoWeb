package com.distribuida.controller;

import java.time.LocalDate;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.distribuida.dao.DevolucionesDAO;
import com.distribuida.entities.Devoluciones;

@Controller
@RequestMapping("/devoluciones") //path Principal
public class DevolucionesController {

    @Autowired
    private DevolucionesDAO devolucionesDAO;

    @GetMapping("/findAll") // path secundario
    public String findAll(Model model) {
    	
    	
		List<Devoluciones> devoluciones = devolucionesDAO.findAll();
        model.addAttribute("devoluciones", devoluciones);
        
        
        return "listar-devoluciones"; //nombre del formulario EJ.listar-devoluciones.html o listar-devoluciones.jsp
    }

    @GetMapping("/findOne")
    public String findOne(@RequestParam("idDevolucion") @Nullable Integer idDevolucion,
                          @RequestParam("opcion") @Nullable Integer opcion,
                          Model model) {
    	
        if (idDevolucion != null) {
            Devoluciones devoluciones = devolucionesDAO.findOne(idDevolucion);
            model.addAttribute("devoluciones", devoluciones);
        }
        if (opcion == 1) return "add-devoluciones"; //Actualizacion
        else return "del-devoluciones"; //Eliminación
    }

    @PostMapping("/add")
    public String add(@RequestParam("idDevolucion") @Nullable Integer idDevolucion,
                      @RequestParam("IdPedido") @Nullable Integer idPedido,
                      @RequestParam("fechaDevolucion") @Nullable String fechaDevolucion,
                      @RequestParam("motivo") @Nullable String motivo,
                      ModelMap modelMap) {
    	
    	 LocalDate fecha = LocalDate.parse(fechaDevolucion);
         Date fechaSql = java.sql.Date.valueOf(fecha);
    	
        if (idDevolucion == null) {
            Devoluciones devoluciones = new Devoluciones(0, fechaSql, motivo);
            devolucionesDAO.add(devoluciones);
        } else {
            Devoluciones devoluciones = new Devoluciones(idDevolucion, fechaSql, motivo);
            devolucionesDAO.up(devoluciones);
        }
        return "redirect:/devoluciones/findAll"; //ir a formulario web por path o url.
    }

    @GetMapping("/del")
    public String del(@RequestParam("idDevolucion") @Nullable Integer idDevolucion) {
    	//try {
    	
    	devolucionesDAO.del(idDevolucion);
        return "redirect:/devoluciones/findAll";
        
		//} catch (Exception e) {
			// TODO: handle exception
	//	}
        
    }
}
