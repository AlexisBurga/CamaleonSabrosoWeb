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

import com.distribuida.dao.CompraDAO;
import com.distribuida.dao.DetallesComprasDAO;
import com.distribuida.entities.DetallesCompras;



@Controller
@RequestMapping("/DetallesCompras") //Path principal
public class DetallesComprasController {

	@Autowired
	private DetallesComprasDAO DetallesComprasDAO;
	
	@Autowired
	private CompraDAO compraDAO;
	
	@GetMapping("/findAll")
	public String findAll(ModelMap modelMap) {
		/*try {
			List<DetallesCompras> DetallesComprass=DetallesComprasDAO.findALL();
			model.addAttribute ("DetallesComprass", DetallesComprass);
			return "listar-DetallesComprass";
		}catch(Exception e){
			e.printStackTrace();
		}*/
		List<DetallesCompras> DetallesCompras=DetallesComprasDAO.findALL();
		modelMap.addAttribute ("detallesCompras", DetallesCompras);
		return "detallesCompra-listar";
	}
	
	@GetMapping("/findOne")
	public String findOne(@RequestParam("idDetalleCompra")@Nullable Integer idDetalleCompra
						  ,@RequestParam("opcion") @Nullable Integer opcion
						  ,ModelMap modelMap
			) {
		/*try {
			if(idDetallesCompras != null) {
				DetallesCompras DetallesCompras = DetallesComprasDAO.findOne(idDetallesCompras);
				model.addAttribute("DetallesCompras", DetallesCompras);
			}
			if(opcion == 1) return "add-DetallesComprass";
			else return "del-DetallesComprass";
		} catch (Exception e) {
			// TODO: handle exception
		}*/
		if(idDetalleCompra != null) {
			DetallesCompras DetallesCompras = DetallesComprasDAO.findOne(idDetalleCompra);
			modelMap.addAttribute("detallesCompra", DetallesCompras);
		}
		
		modelMap.addAttribute("compras", compraDAO.findALL());
		if(opcion == 1) return "add-DetallesComprass";
		else return "del-DetallesCompras";
	}
	
	@PostMapping("/add")
	public String add(@RequestParam ("idDetalleCompra") @Nullable Integer idDetalleCompra
					 ,@RequestParam ("idCompra") @Nullable Integer idCompra
					 ,@RequestParam ("idProducto") @Nullable Integer idProducto
					 ,@RequestParam ("cantidad") @Nullable Integer cantidad
					 ,@RequestParam ("precioUnitario") @Nullable double precioUnitario
					 ,ModelMap modelMap
			) {
		if(idDetalleCompra == null) {//a
			DetallesCompras detallesCompras = new DetallesCompras(0,cantidad,precioUnitario);
			detallesCompras.setIdCompra(idCompra);
			detallesCompras.setIdProducto(idProducto);

			DetallesComprasDAO.add(detallesCompras);
		}else {
			DetallesCompras detallesCompras = new DetallesCompras(idDetalleCompra, cantidad, precioUnitario);
			detallesCompras.setIdCompra(idCompra);
			detallesCompras.setIdProducto(idProducto);
			DetallesComprasDAO.up(detallesCompras);
		}
			
		return "redirect:/DetallesCompras/findAll";
	}
	
	@GetMapping("/del")
	public String dell(@RequestParam  ("idDetalleCompra") @Nullable Integer idDetalleCompra) {
		/*try {
			DetallesComprasDAO.dell(idDetallesCompras);
			return "redirect:/DetallesComprass/findAll";
		} catch (Exception e) {
			// TODO: handle exception
		}*/
		DetallesComprasDAO.dell(idDetalleCompra);
		return "redirect:/DetallesCompras/findAll";
	}
	
}
