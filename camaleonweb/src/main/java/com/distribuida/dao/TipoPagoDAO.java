package com.distribuida.dao;

import java.util.List;

import com.distribuida.entities.TipoPago;


public interface TipoPagoDAO {

	//crud basico
	public List<TipoPago> findALL();

	public TipoPago findOne(int id);
	
	public void add (TipoPago tipoPago);
	
	public void up (TipoPago tipoPago);
	
	public void del (int id);
	
	//crud avanzado 
	
	
}
