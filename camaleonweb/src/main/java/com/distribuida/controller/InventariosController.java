package com.distribuida.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.distribuida.dao.InventariosDAO;
import com.distribuida.entities.Inventarios;

@Controller
@RequestMapping("/inventarios")     //path Principal 

public class InventariosController {
	

	  @Autowired
	    private InventariosDAO inventariosDAO;

	    @GetMapping("/findAll") // path secundario
	    public String findAll(Model model) {
	    	
	    	
			List<Inventarios> inventarios = inventariosDAO.findAll();
	        model.addAttribute("inventarios", inventarios);
	        
	        
	        return "listar-inventarios"; //nombre del formulario.jsp
	    }
	    
	    @GetMapping("/findOne")
	    public String findOne(@RequestParam("idInventario") @Nullable Integer idInventario,
	                          @RequestParam("opcion") @Nullable Integer opcion,
	                          Model model) {
	    	
	        if (idInventario != null) {
	            Inventarios inventarios = inventariosDAO.findOne(idInventario);
	            model.addAttribute("inventarios", inventarios);
	        }
	        if (opcion == 1) return "add-inventarios"; //Actualizacion
	        else return "del-inventarios"; //Eliminación
	    }
	    
	    
	    @PostMapping("/add")
	    public String add(@RequestParam("idInventario") @Nullable Integer idInventario,
	                      @RequestParam("idProducto") @Nullable Integer idProducto,
	                      @RequestParam("idBodega") @Nullable Integer idBodega,
	                      @RequestParam("cantidad") @Nullable Integer cantidad,
	                      Model model) {
	    	 if (idInventario == null) {
	             Inventarios inventarios = new Inventarios(0, idProducto, idBodega, cantidad);
	             inventariosDAO.add(inventarios);
	         } else {
	             Inventarios inventarios = new Inventarios(idInventario, idProducto, idBodega, cantidad);
	             inventariosDAO.up(inventarios);
	         }
	         return "redirect:/inventarios/findAll";
	     }
	    
	    
	    
	    @GetMapping("/del")
	    public String del(@RequestParam("idInventario") @Nullable Integer idInventario) {
	    	//try {
	    	
	    	inventariosDAO.del(idInventario);
	        return "redirect:/inventarios/findAll";
	        
			//} catch (Exception e) {
				// TODO: handle exception
		//	}
	        
	    }
}
