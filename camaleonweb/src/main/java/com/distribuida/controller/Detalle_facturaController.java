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


	import com.distribuida.dao.Detalle_facturaDao;
	import com.distribuida.entities.DetalleFactura;



	@Controller
	@RequestMapping("/Detalle_facturas")       //paht principal
	public class Detalle_facturaController {
		
		// JSP .- Java Server Page, son las paginas web de tecnologia java
		@Autowired
		private Detalle_facturaDao Detalle_facturaDao;
		
		@GetMapping("/findAll")        //paht secundario
		public String findAll (ModelMap modelMap) {
			//try {
				List<DetalleFactura> Detalle_facturas = Detalle_facturaDao.findAll();
				
				modelMap.addAttribute("Detalle_factura", Detalle_facturas);
				
				return "Listar-Clinetes";  //Esto es el nombre del formulario .html
		//	}catch(Exception e) {
				
				
			}
		
		
		@GetMapping("/findOne")
		public String finOne(@RequestParam("idDetalle_factura")@Nullable Integer idDetalle_factura, 
		                     @RequestParam("opcion")@Nullable Integer opcion,
		                     ModelMap modelMap
		)
		{
			if(idDetalle_factura!=null) {
				DetalleFactura Detalle_factura = Detalle_facturaDao.findOne(idDetalle_factura);
				modelMap.addAttribute("Detalle_factura",Detalle_factura);
			}
			
			//Actualizacion
			if(opcion==1) return "add-Detalle_facturas";
			//Eliminacion
			else return "del-Detalle_facturas";
		} 
		@PostMapping ("/add")
		public String add(@RequestParam("idDetalle_factura")@Nullable Integer idDetalle_factura,
				@RequestParam("cantidad") @Nullable Integer cantidad,
			    @RequestParam("subtotal") @Nullable Float subtotal,
			    @RequestParam("id_factura") @Nullable Integer idFactura,
			    @RequestParam("id_libro") @Nullable Integer idLibro,
				          ModelMap modelMap
				          ) {
			//try {
			if(idDetalle_factura == null) {
				DetalleFactura Detalle_factura = new DetalleFactura();
				Detalle_facturaDao.add(Detalle_factura);
				
				}else {
					DetalleFactura Detalle_factura2 = new DetalleFactura();
					Detalle_facturaDao.up(Detalle_factura2);
				}
		
		return "redirect:/Detalle_facturas/findAll";   //ir al formulario web
//		}catch (Exception e){}
	}
		//try {
		@GetMapping("/del")
		public String del(@RequestParam("idDetalle_factura")@Nullable Integer idDetalle_factura) {
			Detalle_facturaDao.del(idDetalle_factura);
			return "redirect:/Detalle_facturas/findAll";
//			}catch (Exception e){}	
		}
	}
	 


