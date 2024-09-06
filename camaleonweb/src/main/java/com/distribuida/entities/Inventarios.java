package com.distribuida.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity
@Table(name = "inventarios")
public class Inventarios {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_inventario")
	private int idInventario;
	@Column(name = "id_producto")
	private int idProducto;
	@Column(name = "id_bodega")
	private int idBodega;
	@Column(name = "cantidad")
	private int cantidad;
	
	public Inventarios() {}

	public Inventarios(int idInventario, int idProducto, int idBodega, int cantidad) {
		super();
		this.idInventario = idInventario;
		this.idProducto = idProducto;
		this.idBodega = idBodega;
		this.cantidad = cantidad;
	}

	public int getIdInventario() {
		return idInventario;
	}

	public void setIdInventario(int idInventario) {
		this.idInventario = idInventario;
	}

	public int getIdProducto() {
		return idProducto;
	}

	public void setIdProducto(int idProducto) {
		this.idProducto = idProducto;
	}

	public int getIdBodega() {
		return idBodega;
	}

	public void setIdBodega(int idBodega) {
		this.idBodega = idBodega;
	}

	public int getCantidad() {
		return cantidad;
	}

	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}

	@Override
	public String toString() {
		return "Inventarios [idInventario=" + idInventario + ", idProducto=" + idProducto + ", idBodega=" + idBodega
				+ ", cantidad=" + cantidad + "]";
	}
	
	
	
	
	

}
