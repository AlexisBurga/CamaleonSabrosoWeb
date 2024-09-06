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

import com.distribuida.dao.BodegasDAO;
import com.distribuida.entities.Bodegas;
@Controller
@RequestMapping("/bodegas")     //path Principal
public class BodegasController {
	//JSP - Java server Page, son las paginas web ded tecnologias java
	@Autowired
	private BodegasDAO bodegasDAO;
	@GetMapping("/findAll")      // path secundario
	public String findAll(ModelMap  modelMap) {
		//try {
			List<Bodegas> bodegas = bodegasDAO.findAll();
			modelMap.addAttribute("Bodegas",bodegas);    //EJ : Clave = KeyClientes , valor = clientes

			return "listar-bodegas";  //nombre del formulario EJ.listar-clientes.html o listar-clientes.jsp
	//} catch (Exception e) {
			// TODO: handle exception
		//e.printStackTrace();
	   }
	

	@GetMapping("/findOne")
	public String findOne(@RequestParam("idBodegas")@Nullable Integer idBodegas
			             ,@RequestParam("opcion")@Nullable Integer opcion
			             ,ModelMap modelMap
			) {
	//	try {
			if(idBodegas !=null) {
				Bodegas bodegas = bodegasDAO.findOne(idBodegas);
				modelMap.addAttribute("bodegas", bodegas);
			}
			if(opcion == 1) return "add-bodegas";  //Actualizacion
			else return "del-bodegas";             //Eliminación
	//	} catch (Exception e) {
	//		// TODO: handle exception
	//	}

	}
	@PostMapping("/add")
	public String add(@RequestParam("idBodegas") @Nullable Integer idBodegas
			      ,@RequestParam("nombre") @Nullable String nombre
			      ,@RequestParam("ubicacion") @Nullable String ubicacion
			      ,@RequestParam("capacidad") @Nullable Integer capacidad
			      ,@RequestParam("idSucursales") @Nullable Integer idSucursales
			      ,ModelMap modelMap
			) {
	//	try {
			if(idBodegas == null) {
				Bodegas bodegas = new Bodegas(0, nombre, ubicacion, capacidad,idSucursales);
				bodegasDAO.add(bodegas);
			}else {
				Bodegas bodegas = new Bodegas(idBodegas, nombre, ubicacion, capacidad, idSucursales);
				bodegasDAO.up(bodegas);
	//	} catch (Exception e) {
	//		// TODO: handle exception
	//	}

		}
		return "redirect:/bodegas/findAll";    //ir a formulario web por path o url.
	}
	@GetMapping("/del")
	public String del(@RequestParam ("idBodegas") @Nullable Integer idBodegas) {
	
	        bodegasDAO.del(idBodegas);
	    
	    return "redirect:/bodegas/findAll";
	}
} 