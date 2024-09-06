package com.distribuida.dao;

import java.util.List;

import com.distribuida.entities.Bodegas;

public interface BodegasDAO {
	
	//CRUD ELEMENTAL

	public List<Bodegas> findAll();
	public Bodegas findOne(int id);
	public void add(Bodegas bodegas);
	public void up(Bodegas bodegas);
	public void del(int id);
	
	
	//CRUD AVANZADO
	
	
}
