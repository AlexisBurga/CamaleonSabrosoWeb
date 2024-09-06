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

import com.distribuida.dao.PlatillosDAO;
import com.distribuida.entities.Platillos;

@Controller
@RequestMapping("/platillos") // path Principal
public class PlatillosController {

    @Autowired
    private PlatillosDAO platillosDAO;

    @GetMapping("/findAll") // path secundario
    public String findAll(Model model) {
        List<Platillos> platillos = platillosDAO.findAll();
        model.addAttribute("platillos", platillos); // EJ: Clave = KeyPlatillos, valor = platillos
        return "listar-platillos"; // nombre del formulario EJ: listar-platillos.html o listar-platillos.jsp
    }

    @GetMapping("/findOne")
    public String findOne(@RequestParam("idPlatillos") @Nullable Integer idPlatillos,
                          @RequestParam("opcion") @Nullable Integer opcion, Model model) {
        if (idPlatillos != null) {
            Platillos platillo = platillosDAO.findOne(idPlatillos);
            model.addAttribute("platillo", platillo);
        }

        if (opcion == 1)
            return "add-platillos"; // Actualización
        else
            return "del-platillos"; // Eliminación
    }

    @PostMapping("/add")
    public String add(@RequestParam("idPlatillos") @Nullable Integer idPlatillos,
                      @RequestParam("platillo") @Nullable String platillo,
                      @RequestParam("descripcion") @Nullable String descripcion,
                      @RequestParam("imagen") @Nullable String imagen, Model model) {

        if (idPlatillos == null) {
            Platillos nuevoPlatillo = new Platillos(0, platillo, descripcion, imagen);
            platillosDAO.add(nuevoPlatillo);
        } else {
            Platillos platilloExistente = new Platillos(idPlatillos, platillo, descripcion, imagen);
            platillosDAO.up(platilloExistente);
        }

        return "redirect:/platillos/findAll"; // ir a formulario web por path o url.
    }

    @GetMapping("/del")
    public String del(@RequestParam("idPlatillos") @Nullable Integer idPlatillos) {
        platillosDAO.del(idPlatillos);
        return "redirect:/platillos/findAll";
    }
}
