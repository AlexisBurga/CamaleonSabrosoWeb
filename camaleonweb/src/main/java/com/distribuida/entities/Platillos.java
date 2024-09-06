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
@Table(name = "platillos")
public class Platillos {
	///id_platillos, platillo, descripcion, imagen
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id_platillos")
	private int idPlatillos;
	@Column(name="platillo")
	private String platillo;
	@Column(name="descripcion")
	private String descripcion;
	@Column(name="imagen")
	private String imagen;
	
	
	public Platillos() {}


	public Platillos(int idPlatillos, String platillo, String descripcion, String imagen) {
		super();
		this.idPlatillos = idPlatillos;
		this.platillo = platillo;
		this.descripcion = descripcion;
		this.imagen = imagen;
	}


	public int getIdPlatillos() {
		return idPlatillos;
	}


	public void setIdPlatillos(int idPlatillos) {
		this.idPlatillos = idPlatillos;
	}


	public String getPlatillo() {
		return platillo;
	}


	public void setPlatillo(String platillo) {
		this.platillo = platillo;
	}


	public String getDescripcion() {
		return descripcion;
	}


	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}


	public String getImagen() {
		return imagen;
	}


	public void setImagen(String imagen) {
		this.imagen = imagen;
	}


	@Override
	public String toString() {
		return "Platillos [idPlatillos=" + idPlatillos + ", platillo=" + platillo + ", descripcion=" + descripcion
				+ ", imagen=" + imagen + "]";
	}
	
	
	
	

}
