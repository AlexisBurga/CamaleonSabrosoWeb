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

import com.distribuida.dao.PedidosDAO;
import com.distribuida.entities.Pedidos;

@Controller
@RequestMapping("/pedidos")
public class PedidosController {

    @Autowired
    private PedidosDAO pedidosDAO;

    @GetMapping("/findAll")
    public String findAll(Model model) {
        List<Pedidos> pedidos = pedidosDAO.findALL();
        model.addAttribute("pedidos", pedidos);
        return "pedidos-listar";
    }

    @GetMapping("/findOne")
    public String findOne(@RequestParam("idPedidos") @Nullable Integer idPedidos,
                          @RequestParam("opcion") @Nullable Integer opcion,
                          Model model) {
        if (idPedidos != null) {
            Pedidos pedidos = pedidosDAO.findOne(idPedidos);
            model.addAttribute("pedidos", pedidos);
        }
        if (opcion != null && opcion == 1) {
            return "pedidos-add";
        } else {
            return "del-pedidos";
        }
    }

    @PostMapping("/add")
    public String add(@RequestParam("idPedidos")@Nullable Integer idPedidos,
                      @RequestParam("FechaPedido")@Nullable @DateTimeFormat(pattern = "yyyy-MM-dd") Date FechaPedido,
                      @RequestParam("IdProveedor")@Nullable Integer IdProveedor,
                      @RequestParam("IdSucursal")@Nullable Integer IdSucursal,
                      @RequestParam("IdCliente")@Nullable Integer IdCliente,
                      @RequestParam("Total")@Nullable Double Total,
                      Model model) {
    	
    	 if (FechaPedido == null || IdProveedor == null || IdSucursal == null || IdCliente == null || Total == null ) {
             model.addAttribute("error", "Todos los campos deben ser completos.");
             return "pedidos-add";
         }

        Pedidos pedidos;
        if (idPedidos == null) {
            pedidos = new Pedidos(0, FechaPedido, IdProveedor, IdSucursal, IdCliente, Total);
        } else {
            pedidos = new Pedidos(idPedidos, FechaPedido, IdProveedor, IdSucursal, IdCliente, Total);
        }
        
        pedidosDAO.add(pedidos);

        return "redirect:/pedidos/findAll";
    }

    @GetMapping("/del")
    public String del(@RequestParam("idPedidos") @Nullable Integer idPedidos) {
        if (idPedidos != null) {
            pedidosDAO.del(idPedidos);
        }
        return "redirect:/pedidos/findAll";
    }
}
