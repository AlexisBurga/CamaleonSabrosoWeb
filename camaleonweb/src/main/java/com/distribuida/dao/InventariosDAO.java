package com.distribuida.dao;

import java.util.List;

import com.distribuida.entities.Inventarios;

public interface InventariosDAO {

	//Crud Basico
	
	public List<Inventarios> findAll();
	
	public Inventarios findOne(int id);
	
	public void add(Inventarios inventarios);
	
	public void up (Inventarios inventarios);
	
	public void del(int id);
	
	// CRUD avanzados 
}
