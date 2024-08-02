package com.distribuida.dao;

import java.util.List;

import com.distribuida.entities.DetalleFactura;

public interface Detalle_facturaDao {

	public List<DetalleFactura>findAll();
	public DetalleFactura findOne(int id);
	public void add(DetalleFactura detallefactura);
	public void up(DetalleFactura detallefactura);
	public void del(int id);
	

}
