package com.distribuida.controller;
 
import java.util.Date;
import java.util.List;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
 
import com.distribuida.dao.promocionesDAO;
import com.distribuida.entities.promociones;
 
@Controller
@RequestMapping("/promociones") 
 
public class promocionesController {
 
	
	
	@Autowired
	private promocionesDAO promocionesDAO;
	
	
	@GetMapping("/findAll") 
	public String findAll (Model model ) {
		
		List<promociones> promociones = promocionesDAO.findALL();
		
		model.addAttribute("promociones", promociones);
		
		return "listar-promociones" ; 
		
	
	}
	
	@GetMapping("/findOne")
	public String findOne(@RequestParam("idpromocion") @Nullable Integer idpromocion
						 ,@RequestParam("opcion") @Nullable Integer opcion
						 ,Model model
			) {
	
 
		if(idpromocion != null) {
			promociones promocion = promocionesDAO.findOne(idpromocion);
			model.addAttribute("promocion", promocion);	
		}
		
		if(opcion !=null && opcion ==1) {
			
			return "add-promociones";
	}else {
			return "del-promociones";
	}
}
	
	@PostMapping("/add")
	public String add(@RequestParam("idpromocion")@Nullable Integer idpromocion
					,@RequestParam("Nombre")@Nullable String Nombre
					,@RequestParam("Descuento")@Nullable Double Descuento
					,@RequestParam("FechaInicio")@DateTimeFormat(pattern = "yyyy-MM-dd") @Nullable Date FechaInicio
					,@RequestParam("FechaFin")@DateTimeFormat(pattern = "yyyy-MM-dd") @Nullable Date FechaFin
			) {
		
 
		if(idpromocion == null) {
		promociones promociones = new promociones(0, Nombre, Descuento, FechaInicio, FechaFin);
		promocionesDAO.add(promociones);
		
		}else {
			
		promociones promocion = new promociones(idpromocion,Nombre, Descuento, FechaInicio, FechaFin);
		promocionesDAO.up(promocion);	
		}
		return "redirect:/promociones/findAll";
	
	}
	

	@GetMapping ("/del")
	public String del(@RequestParam("idpromocion")@Nullable Integer idpromocion) {
	    if (idpromocion != null) {
	        promocionesDAO.del(idpromocion);
	    }
		return "redirect:/promociones/findAll";
		
	}
	
}

