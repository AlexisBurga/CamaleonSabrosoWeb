package com.distribuida.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.distribuida.dao.PagoDAO;
import com.distribuida.dao.TipoPagoDAO;
import com.distribuida.entities.Pago;



@Controller
@RequestMapping("/pago")  // Usar minúsculas y singular para las rutas de recursos
public class PagoController {

    @Autowired
    private PagoDAO pagoDAO;

    @Autowired
    private TipoPagoDAO tipoPagoDAO;


    @GetMapping("/findAll")
    public String findAll(ModelMap modelMap) {
    	List<Pago> pagos = pagoDAO.findALL();
        modelMap.addAttribute("pagos", pagos);
        return "pago-listar";  // Retorna la vista "listar-pagos.html"
    }

 
	@GetMapping("findOne")
	private String finOne(@RequestParam("idPago")@Nullable Integer idPago
			            , @RequestParam("opcion")@Nullable Integer opcion
			            , ModelMap modelMap) {
		
		if(idPago != null) {
			Pago Pago = pagoDAO.findOne(idPago);
			modelMap.addAttribute("Pago", Pago);
		}
		
		modelMap.addAttribute("tipoPago", tipoPagoDAO.findALL());
		
		if (opcion == 1 )return "add-pago";
		else return "del-Pagos";
			
	}
	/**
	 * @param idPago
	 * @param idPedido
	 * @param fechaPago
	 * @param idTipoPago
	 * @param monto
	 */
	
	@PostMapping("/add")
	private String add(@RequestParam("idPago")@Nullable Integer idPago
			, @RequestParam("idPedido")@Nullable Integer idPedido
			, @RequestParam("fechaPago")@Nullable @DateTimeFormat(pattern = "yyyy-MM-dd") Date fechaPago
			, @RequestParam("idTipoPago")@Nullable Integer idTipoPago
			, @RequestParam("monto")@Nullable Double monto
			, ModelMap modelMap
			) {
		
		if(idPago == null) {
			Pago pago = new Pago(0,idPedido,fechaPago,idTipoPago,monto);
			pagoDAO.add(pago); 
			}else { 
				Pago pago = new Pago(idPago,idPedido,fechaPago,idTipoPago,monto);
				pagoDAO.add(pago); 
			}
			return "redirect:/pago/findAll";
		
			}
	
	
	@GetMapping("/del")
	public String del(@RequestParam("idPago")@Nullable Integer idPago) {
		
		//try {
			
			pagoDAO.del(idPago);
			return "redirect:/pago/findAll";
			
		//} catch (Exception e) {
			// TODO: handle exception
		//}
		
		
    }
}

