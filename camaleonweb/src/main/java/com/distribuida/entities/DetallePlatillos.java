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
@Table(name = "DetallePlatillos")
public class DetallePlatillos {

	// id detalle platillos, ingrediente, descripcion, imagen, id_productos, id_platillos  ID CORRECION ESPACIO O GUION BAJO
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id_detalleplatillos")
	private int idDetallePlatillos;
	@Column(name="ingrediente")
	private String ingrediente;
	@Column(name="descripcion")
	private String descripcion;
	@Column(name="imagen")
	private String imagen;
	@Column(name="id_productos")
	private String idProductos;
	@Column(name="id_platillos")
	private String idPlatillos;
	
	
	public DetallePlatillos() {}


	public DetallePlatillos(int idDetallePlatillos, String ingrediente, String descripcion, String imagen,
			String idProductos, String idPlatillos) {
		super();
		this.idDetallePlatillos = idDetallePlatillos;
		this.ingrediente = ingrediente;
		this.descripcion = descripcion;
		this.imagen = imagen;
		this.idProductos = idProductos;
		this.idPlatillos = idPlatillos;
	}


	public int getIdDetallePlatillos() {
		return idDetallePlatillos;
	}


	public void setIdDetallePlatillos(int idDetallePlatillos) {
		this.idDetallePlatillos = idDetallePlatillos;
	}


	public String getIngrediente() {
		return ingrediente;
	}


	public void setIngrediente(String ingrediente) {
		this.ingrediente = ingrediente;
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


	public String getIdProductos() {
		return idProductos;
	}


	public void setIdProductos(String idProductos) {
		this.idProductos = idProductos;
	}


	public String getIdPlatillos() {
		return idPlatillos;
	}


	public void setIdPlatillos(String idPlatillos) {
		this.idPlatillos = idPlatillos;
	}


	@Override
	public String toString() {
		return "DetallePlatillos [idDetallePlatillos=" + idDetallePlatillos + ", ingrediente=" + ingrediente
				+ ", descripcion=" + descripcion + ", imagen=" + imagen + ", idProductos=" + idProductos
				+ ", idPlatillos=" + idPlatillos + "]";
	}


	
	
	
}
