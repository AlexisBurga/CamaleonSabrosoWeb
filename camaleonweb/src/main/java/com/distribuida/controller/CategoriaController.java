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

import com.distribuida.dao.CategoriaDAO;

import com.distribuida.entities.Categoria;


@Controller
@RequestMapping("/categorias")    //path principal
public class CategoriaController {
	
	@Autowired 
	private CategoriaDAO categoriaDAO;
	
	@GetMapping("/findAll")       //path secundario
	public String findAll(Model model) {
		List<Categoria> categorias = categoriaDAO.findALL();
		model.addAttribute("categorias", categorias);   // EJ: clave = keyCategorias, valor = categorias
		return "categoria-listar";    // esto es el nombre del formulario EJ: listar-categorias.html listar-categorias-jsp
	}
	
	@GetMapping("/findOne")
	public String findOne(@RequestParam("id") @Nullable Integer idCategoria,
                          @RequestParam("opcion") @Nullable Integer opcion,
                          Model model) {
		if (idCategoria != null) {
			Categoria categoria = categoriaDAO.findOne(idCategoria);
			model.addAttribute("categoria", categoria);
		}
		
		if(opcion == 1) return "categoria-add";   // actualización
		else return "del-categorias";              // eliminación
	}
	
	@PostMapping("/add")
	public String add(@RequestParam("id") @Nullable Integer id,
                      @RequestParam("nombre") @Nullable String nombre,
                      @RequestParam("descripcion") @Nullable String descripcion,
                      @RequestParam("estado") @Nullable String estado,
                      @RequestParam("imagen") @Nullable String imagen,
                      Model model) {
		if(id == null) {
			Categoria nuevaCategoria = new Categoria(0, nombre, descripcion, imagen, estado);
			categoriaDAO.add(nuevaCategoria);
		} else {
			Categoria categoriaExistente = new Categoria(id, nombre, descripcion, imagen, estado);
			categoriaDAO.up(categoriaExistente);
		}
		return "redirect:/categorias/findAll";   // ir a formulario web por path o url
	}

	@GetMapping("/del")
	public String del(@RequestParam("id") @Nullable Integer idCategoria) {
		categoriaDAO.del(idCategoria);
		return "redirect:/categorias/findAll";
	}
}
