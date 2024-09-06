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
@Table(name="vendedores")

public class Vendedores {


	
	// Atributos 
		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		@Column(name = "id_vendedores")
		private int idvendedores;
		@Column(name = "Nombre")
		private String nombre;
		@Column(name = "Direccion")
		private String direccion;
		@Column(name = "Telefono")
		private String telefono;
		@Column(name = "Email")
		private String email;
		
		
		public Vendedores() {}


		public Vendedores(int idvendedores, String nombre, String direccion, String telefono, String email) {
			
			this.idvendedores = idvendedores;
			this.nombre = nombre;
			this.direccion = direccion;
			this.telefono = telefono;
			this.email = email;
		}


		public int getIdvendedores() {
			return idvendedores;
		}


		public void setIdvendedores(int idvendedores) {
			this.idvendedores = idvendedores;
		}


		public String getNombre() {
			return nombre;
		}


		public void setNombre(String nombre) {
			this.nombre = nombre;
		}


		public String getDireccion() {
			return direccion;
		}


		public void setDireccion(String direccion) {
			this.direccion = direccion;
		}


		public String getTelefono() {
			return telefono;
		}


		public void setTelefono(String telefono) {
			this.telefono = telefono;
		}


		public String getEmail() {
			return email;
		}


		public void setEmail(String email) {
			this.email = email;
		}


		@Override
		public String toString() {
			return "Vendedores [idvendedores=" + idvendedores + ", nombre=" + nombre + ", direccion=" + direccion
					+ ", telefono=" + telefono + ", email=" + email + "]";
		}
		
		
		
		
		
		
		
}