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
@Table (name = "bodegas")

public class Bodegas {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column (name = "id_bodegas")
	private int idBodegas;
	@Column (name ="Nombre")
	private String nombre;
	@Column (name ="Ubicacion")
	private String ubicacion;
	@Column (name ="Capacidad")
	private int capacidad;
	@Column (name ="id_sucursales")
	private int idSucursales;
	
//	@JoinColumn(name= "idSucursales")
//	@ManyToOne(cascade = {CascadeType.DETACH, CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH})
//	private Sucursales sucursal;
	
	
	
	public Bodegas() {}

	public Bodegas(int idBodegas, String nombre, String ubicacion, int capacidad, int idSucursales) {
		
		this.idBodegas = idBodegas;
		this.nombre = nombre;
		this.ubicacion = ubicacion;
		this.capacidad = capacidad;
		this.idSucursales = idSucursales;
	}



	public int getIdBodegas() {
		return idBodegas;
	}

	public void setIdBodegas(int idBodegas) {
		this.idBodegas = idBodegas;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getUbicacion() {
		return ubicacion;
	}

	public void setUbicacion(String ubicacion) {
		this.ubicacion = ubicacion;
	}

	public int getCapacidad() {
		return capacidad;
	}

	public void setCapacidad(int capacidad) {
		this.capacidad = capacidad;
	}

	public int getIdSucursales() {
		return idSucursales;
	}

	public void setIdSucursales(int idSucursales) {
		this.idSucursales = idSucursales;
	}

	
	
	// Inyección de dependencias (dato temporal) luego se aplicará DI en el entitie "Sucursal"
		//public void setIdSucurales(int idSucursales) {
		//	this.idSucursales = idSucursales;
		//}

	@Override
	public String toString() {
		return "Bodega [idBodegas=" + idBodegas + ", nombre=" + nombre + ", ubicacion=" + ubicacion + ", capacidad="
				+ capacidad + ", idSucursales=" + idSucursales + "]";
	}
	
	
	

}
