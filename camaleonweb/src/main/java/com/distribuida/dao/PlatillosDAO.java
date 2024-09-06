package com.distribuida.dao;

import java.util.List;

import com.distribuida.entities.Platillos;

public interface PlatillosDAO {
	
	//Crud Basico
	
	public List<Platillos> findAll();
	
	public Platillos findOne(int id);
	
	public void add(Platillos platillos);
	
	public void up(Platillos platillos);
	
	public void del(int id);
	
	// CRUD avanzados 


}
