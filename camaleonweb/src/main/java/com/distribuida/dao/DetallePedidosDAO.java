package com.distribuida.dao;

import java.util.List;

import com.distribuida.entities.DetallePedidos;

public interface DetallePedidosDAO {

	public List<DetallePedidos> findAll();

	public DetallePedidos findOne(int id);

	public void add(DetallePedidos detallePedidos);

	public void up(DetallePedidos detallePedidos);

	public void del(int id);

}
