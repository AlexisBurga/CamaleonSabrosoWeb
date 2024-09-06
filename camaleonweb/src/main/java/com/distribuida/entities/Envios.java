package com.distribuida.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity
@Table(name= "envios")
public class Envios {
	
	//id_envio, IdPedido, FechaEnvio, IdSucursalOrigen, IdSucursalDestino


	   @Id
	    @GeneratedValue(strategy= GenerationType.IDENTITY)
	   @Column(name="id_envio")
	private int idEnvios;
	    @Column(name="fechaEnvio")
	private Date fechaEnvio;
	@Column (name="id_pedidos")
	private int idPedido;
	
	@Column (name="id_sucursales")
	private int idSucursal;

		//@JoinColumn(name="id_Pedido")
		//@ManyToOne(cascade = {CascadeType.DETACH,CascadeType.MERGE,CascadeType.PERSIST,CascadeType.REFRESH})
		//private Pedido pedido;
		
		//@JoinColumn(name="id_SucursalOrigen")
		//@ManyToOne(cascade = {CascadeType.DETACH,CascadeType.MERGE,CascadeType.PERSIST,CascadeType.REFRESH})
		//private Sucursalorigen sucursalorigen;

	
	
public Envios () {}

		public Envios(int idEnvios, Date fechaEnvio, int idPedido, int idSucursal) {
			super();
			this.idEnvios = idEnvios;
			this.fechaEnvio = fechaEnvio;
			this.idPedido = idPedido;
			this.idSucursal = idSucursal;
		}

		public int getIdEnvios() {
			return idEnvios;
		}

		public void setIdEnvios(int idEnvios) {
			this.idEnvios = idEnvios;
		}

		public Date getFechaEnvio() {
			return fechaEnvio;
		}

		public void setFechaEnvio(Date fechaEnvio) {
			this.fechaEnvio = fechaEnvio;
		}

		public int getIdPedido() {
			return idPedido;
		}

		public void setIdPedido(int idPedido) {
			this.idPedido = idPedido;
		}

		public int getIdSucursal() {
			return idSucursal;
		}

		public void setIdSucursal(int idSucursal) {
			this.idSucursal = idSucursal;
		}

		@Override
		public String toString() {
			return "Envios [idEnvios=" + idEnvios + ", fechaEnvio=" + fechaEnvio + ", idPedido=" + idPedido
					+ ", idSucursal=" + idSucursal + "]";
		}

}