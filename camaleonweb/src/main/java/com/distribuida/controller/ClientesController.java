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

import com.distribuida.dao.ClientesDAO;
import com.distribuida.entities.Clientes;

@Controller
@RequestMapping("/clientes")    	// path principal 
 
public class ClientesController {

	
	@Autowired
	private ClientesDAO clientesDAO;
	
	
	@GetMapping("/findAll")  		//path secundario
	public String findAll (Model model ) {
		

		List<Clientes> clientes = clientesDAO.findALL();
		
		model.addAttribute("clientes", clientes);
		
		return "listar-clientes" ;  //Esto es el nombre del formulario 
		
	}
	
	@GetMapping("/findOne")
	public String findOne(@RequestParam("idclientes") @Nullable Integer idclientes
						 ,@RequestParam("opcion") @Nullable Integer opcion
						 ,Model model
			) {

		if(idclientes != null) {
			Clientes cliente = clientesDAO.findOne(idclientes);
			model.addAttribute("cliente", cliente);	
		}
		
		if(opcion !=  null && opcion ==1) {
			
			 return "add-clientes"; // Vista para agregar o editar
        } else {
            return "del-clientes"; // Vista para confirmar eliminación
        }
	}
	
	@PostMapping("/add")
	public String add(@RequestParam("idcliente")@Nullable Integer idcliente
					,@RequestParam("Nombre")@Nullable String Nombre
					,@RequestParam("Direccion")@Nullable String Direccion
					,@RequestParam("Telefono")@Nullable String Telefono
					,@RequestParam("Email")@Nullable String Email
					, Model model 
			) {
		
		if(idcliente == null) {
		Clientes cliente = new Clientes(0, Nombre, Direccion, Telefono, Email);
		clientesDAO.add(cliente);
		
		}else {
			
		Clientes cliente = new Clientes(idcliente, Nombre, Direccion, Telefono, Email);
		clientesDAO.up(cliente);	
		}
		return "redirect:/clientes/findAll";
		

	}
	



	@GetMapping("/del")
	public String del(@RequestParam("idcliente") @Nullable Integer idcliente) {
	    clientesDAO.del(idcliente);
	    return "redirect:/clientes/findAll";
	}

		

	}






