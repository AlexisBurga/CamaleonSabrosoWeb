package com.distribuida.dao;

import java.util.List;

import com.distribuida.entities.DetallePlatillos;

public interface DetallePlatillosDAO {
	
	//Crud Basico
	
	public List<DetallePlatillos> findAll();
	
	public DetallePlatillos findOne(int id);
	
	public void add(DetallePlatillos detallePlatillos);
	
	public void up(DetallePlatillos detallePlatillos);
	
	public void del(int id);
	
	// CRUD avanzados 


}
