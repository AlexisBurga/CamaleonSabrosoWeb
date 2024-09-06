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

import com.distribuida.dao.DetallePlatillosDAO;
import com.distribuida.entities.DetallePlatillos;

@Controller
@RequestMapping("/detalleplatillos") // path Principal
public class DetallePlatillosController {

    @Autowired
    private DetallePlatillosDAO detallePlatillosDAO;

    @GetMapping("/findAll") // path secundario
    public String findAll(Model model) {
        List<DetallePlatillos> detallePlatillos = detallePlatillosDAO.findAll();
        model.addAttribute("detallePlatillos", detallePlatillos); // EJ: Clave = KeyDetallePlatillos, valor = detallePlatillos
        return "listar-detalle-platillos"; // nombre del formulario EJ: listar-detalle-platillos.html o listar-detalle-platillos.jsp
    }

    
    //AqUI
    @GetMapping("/findOne")
    public String findOne(@RequestParam("idDetallePlatillos") @Nullable Integer idDetallePlatillos,
                          @RequestParam("opcion") @Nullable Integer opcion, Model model) {
        if (idDetallePlatillos != null) {
            DetallePlatillos detallePlatillo = detallePlatillosDAO.findOne(idDetallePlatillos);
            model.addAttribute("detallePlatillo", detallePlatillo);
        }

        if (opcion == 1)
            return "add-detalle-platillos"; // Actualización
        else
            return "del-detalle-platillos"; // Eliminación
    }

    @PostMapping("/add")
    public String add(@RequestParam("idDetallePlatillos") @Nullable Integer idDetallePlatillos,
                      @RequestParam("ingrediente") @Nullable String ingrediente,
                      @RequestParam("descripcion") @Nullable String descripcion,
                      @RequestParam("imagen") @Nullable String imagen,
                      @RequestParam("idProductos") @Nullable String idProductos,
                      @RequestParam("idPlatillos") @Nullable String idPlatillos,
                      Model model) {

        if (idDetallePlatillos == null) {
            DetallePlatillos nuevoDetallePlatillo = new DetallePlatillos(0, ingrediente, descripcion, imagen, idProductos, idPlatillos);
            detallePlatillosDAO.add(nuevoDetallePlatillo);
        } else {
            DetallePlatillos detallePlatilloExistente = new DetallePlatillos(idDetallePlatillos, ingrediente, descripcion, imagen, idProductos, idPlatillos);
            detallePlatillosDAO.up(detallePlatilloExistente);
        }

        return "redirect:/detallePlatillos/findAll"; // ir a formulario web por path o url.
    }

    @GetMapping("/del")
    public String del(@RequestParam("idDetallePlatillos") @Nullable Integer idDetallePlatillos) {
        detallePlatillosDAO.del(idDetallePlatillos);
        return "redirect:/detallePlatillos/findAll";
    }
}
