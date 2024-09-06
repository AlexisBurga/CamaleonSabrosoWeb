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

import com.distribuida.dao.VendedoresDAO;
import com.distribuida.entities.Vendedores;


	

@Controller
@RequestMapping("/vendedores")
public class Vendedorescontroller {

    @Autowired
    private VendedoresDAO vendedoresDAO;

    @GetMapping("/findAll")
    public String findAll(Model model) {
        // Obtiene la lista de todos los vendedores
        List<Vendedores> vendedores = vendedoresDAO.findAll();
        model.addAttribute("vendedores", vendedores);
        return "vendedores-listar"; // Página de lista de vendedores
    }

    @GetMapping("/findOne")
    public String findOne(@RequestParam("idvendedores") @Nullable Integer idvendedores,
                          @RequestParam("opcion") @Nullable Integer opcion,
                          Model model) {
        // Verifica si el id del vendedor no es nulo
        if (idvendedores != null) {
            Vendedores vendedor = vendedoresDAO.findOne(idvendedores);
            model.addAttribute("vendedores", vendedor);
        }
        // Redirige a la página correspondiente según la opción
        if (opcion == 1) return "vendedores-add";
        else return "vendedores-del";
    }

    @PostMapping("/add")
    public String add(@RequestParam("idvendedores") @Nullable Integer idvendedores,
                      @RequestParam("nombre") @Nullable String nombre,
                      @RequestParam("direccion") @Nullable String direccion,
                      @RequestParam("telefono") @Nullable String telefono,
                      @RequestParam("email") @Nullable String email,
                      Model model) {
        // Verifica si es un nuevo vendedor o una actualización
        if (idvendedores == null) {
            Vendedores vendedor = new Vendedores(0, nombre, direccion, telefono, email);
            vendedoresDAO.add(vendedor); // Añade un nuevo vendedor
        } else {
            Vendedores vendedor = new Vendedores(idvendedores, nombre, direccion, telefono, email);
            vendedoresDAO.up(vendedor); // Actualiza un vendedor existente
        }
        return "redirect:/vendedores/findAll"; // Redirige a la lista de vendedores
    }

    @GetMapping("/del")
    public String del(@RequestParam("idvendedores") @Nullable Integer idvendedores) {
        // Elimina el vendedor con el id proporcionado
        vendedoresDAO.del(idvendedores);
        return "redirect:/vendedores/findAll"; // Redirige a la lista de vendedores
    }
}
