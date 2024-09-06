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

import com.distribuida.dao.CompraDAO;
import com.distribuida.entities.Compra;



@Controller
@RequestMapping("/compras") //Path principal
public class CompraController {

	@Autowired
	private CompraDAO compraDAO;
	
	@GetMapping("/findAll")
	public String findAll(Model model) {
		/*try {
			List<Compra> Compras=CompraDAO.findALL();
			model.addAttribute ("Compras", Compras);
			return "listar-Compras";
		}catch(Exception e){
			e.printStackTrace();
		}*/
		List<Compra> Compras=compraDAO.findALL();
		model.addAttribute ("compras", Compras);
		return "compra-listar";
	}
	
	@GetMapping("/findOne")
	public String findOne(@RequestParam("idCompra") @Nullable Integer idCompra,
	                      @RequestParam("opcion") @Nullable Integer opcion,
	                      Model model) {

	    // Verifica si `idCompra` es `null`
	    if (idCompra != null) {
	        Compra compra = compraDAO.findOne(idCompra);
	        model.addAttribute("Compra", compra);
	    } else {
	        // Manejo cuando `idCompra` es null (opcional)
	        // Podrías agregar un mensaje de error o redirigir a otra página
	        model.addAttribute("error", "El ID de la compra no puede ser nulo");
	    }

	    // Verifica `opcion`
	    if (opcion != null && opcion == 1) {
	        return "compra-add";
	    } else {
	        return "compra-dell";
	    }
	}

	
	@PostMapping("/add")
	public String add(@RequestParam ("idCompra") @Nullable Integer idCompra
					 ,@RequestParam ("fechaCompra") @Nullable @DateTimeFormat(pattern = "yyyy-MM-dd") Date fechaCompra
					 ,@RequestParam ("idProveedor") @Nullable Integer idProveedor
					 ,@RequestParam ("idSucursal") @Nullable Integer idSucursal
					 ,@RequestParam ("idVendedor") @Nullable Integer idVendedor
					 ,@RequestParam ("total") @Nullable Double total 
					 ,Model model
			) {
		/*try {
			if(idCompra == null) {
				Compra Compra = new Compra(0, cedula, nombre, apellido, telefono, correo);
				CompraDAO.add(Compra);
			}else {
				Compra Compra2 = new Compra(idCompra, cedula, nombre, apellido, telefono, correo);
				CompraDAO.up(Compra2);
			}
				
			return "redirect:/Compras/findAll";
		} catch (Exception e) {
			// TODO: handle exception
		}*/
		if(idCompra == null) {
			Compra compra = new Compra(0,fechaCompra, idProveedor, idSucursal, idVendedor, total);
			/*compra.setProveedor(proveedorDAO.findOne(id_proveedor));
			 *compra.setSucursal(sucursalDAO.findOne(id_sucursal));
			 *compra.setVendedor(vendedorDAO.findOne(id_vendedor));
			 * 
			 */
			compraDAO.add(compra);
		}else {
			Compra compra = new Compra(idCompra,fechaCompra, idProveedor, idSucursal, idVendedor, total);
			compraDAO.add(compra);
		}
			
		return "redirect:/compras/findAll";
	}
	
	@GetMapping("/del")
	public String dell(@RequestParam("idCompra") @Nullable Integer idCompra) {
	    if (idCompra != null) {
	        compraDAO.del(idCompra);
	        return "redirect:/compras/findAll";
	    } else {
	        // Manejo cuando `idCompra` es null, por ejemplo, redirigir a una página de error
	        return "redirect:/compras/findAll"; 
	    }
	}

	
}
