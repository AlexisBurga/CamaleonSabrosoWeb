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

import com.distribuida.dao.DetallePedidosDAO;
import com.distribuida.entities.DetallePedidos;

@Controller
@RequestMapping("/DetallePedidos")
public class DetallePedidosController {
	
	@Autowired
	private DetallePedidosDAO detallePedidosDAO;
	
	@GetMapping("/findAll")
	public String findAll(Model model) {
		List<DetallePedidos> detallePedidos = detallePedidosDAO.findAll();
		model.addAttribute("detallePedidos", detallePedidos);
		return "detallePedidos-listar";
	}
	
	@GetMapping("/findOne")
	public String findOne(@RequestParam("idDetallePedidos")@Nullable Integer idDetallePedidos
			             ,@RequestParam("opcion")@Nullable Integer opcion
			             ,Model model) {
		if(idDetallePedidos != null) {
			DetallePedidos detallePedidos = detallePedidosDAO.findOne(idDetallePedidos);
			model.addAttribute("detallePedidos", detallePedidos);
		}
		if(opcion == 1) return "detallepedidos-add";
		else return "detallepedidos-del";
	}
	
	
	@PostMapping("/add")
	public String add(@RequestParam(value = "idDetallePedidos", required = false) Integer idDetallePedidos,
	                  @RequestParam(value = "idpedido", required = false) Integer idPedido,
	                  @RequestParam(value = "idProducto", required = false) Integer idProducto,
	                  @RequestParam(value = "cantidad", required = false) Integer cantidad,
	                  @RequestParam(value = "precioUnitario", required = false) Double precioUnitario,
	                  Model model) {

	    // Verificar que los parámetros no sean nulos
	    if (idPedido == null || idProducto == null || cantidad == null || precioUnitario == null) {
	        // Manejo de error: los datos del formulario no son válidos
	        model.addAttribute("error", "Todos los campos deben ser completos.");
	        return "detallepedidos-add"; // Volver al formulario con un mensaje de error
	    }

	    DetallePedidos detallePedidos;

	    if (idDetallePedidos == null) {
	        // Crear un nuevo objeto DetallePedidos
	        detallePedidos = new DetallePedidos(0, idPedido, idProducto, cantidad, precioUnitario);
	    } else {
	        // Actualizar el objeto existente
	        detallePedidos = new DetallePedidos(idDetallePedidos, idPedido, idProducto, cantidad, precioUnitario);
	    }

	    // Guardar o actualizar el detallePedidos
	    detallePedidosDAO.add(detallePedidos);

	    return "redirect:/detallepedidos/findAll";
	}

	
	@GetMapping("/del")
	public String del(@RequestParam("idDetallePedidos") @Nullable Integer idDetallePedidos) {
	    detallePedidosDAO.del(idDetallePedidos);
	    return "redirect:/detallepedidos/findAll";
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
}
