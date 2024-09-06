package com.distribuida.dao;

import java.util.List;

import com.distribuida.entities.Pago;


public interface PagoDAO {

	//crud basico
	public List<Pago> findALL();

	public Pago findOne(int id);
	
	public void add (Pago pago);
	
	public void up (Pago pago);
	
	public void del (int id);
	
	//crud avanzado 
	
	
}
