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
@Table(name = "pagos")
public class Pago {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_pago")
	private int idPago;

	@Column(name = "id_pedido")
	private int idPedido;

	@Column(name = "fechapago")
	private Date fechaPago;

	@Column(name = "id_tipo_pago")
	private int idTipoPago;

	@Column(name = "monto")
	private double monto;

	/*@JoinColumn(name = "id_tipo_pago")
	@ManyToOne(cascade = {CascadeType.DETACH, CascadeType.MERGE,
	CascadeType.PERSIST, CascadeType.REFRESH})
	private TipoPago tipoPago;

	
	@JoinColumn(name = "id_pedido")
	@ManyToOne(cascade = {CascadeType.DETACH, CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH})
	private Pedido pedido;*/

	public Pago() {
	}

	public Pago(int idPago, int idPedido, Date fechaPago, int idTipoPago, double monto) {
		super();
		this.idPago = idPago;
		this.idPedido = idPedido;
		this.fechaPago = fechaPago;
		this.idTipoPago = idTipoPago;
		this.monto = monto;
	}

	public int getIdPago() {
		return idPago;
	}

	public void setIdPago(int idPago) {
		this.idPago = idPago;
	}

	public int getIdPedido() {
		return idPedido;
	}

	public void setIdPedido(int idPedido) {
		this.idPedido = idPedido;
	}

	public Date getFechaPago() {
		return fechaPago;
	}

	public void setFechaPago(Date fechaPago) {
		this.fechaPago = fechaPago;
	}

	public int getIdTipoPago() {
		return idTipoPago;
	}

	public void setIdTipoPago(int idTipoPago) {
		this.idTipoPago = idTipoPago;
	}

	public double getMonto() {
		return monto;
	}

	public void setMonto(double monto) {
		this.monto = monto;
	}

	@Override
	public String toString() {
		return "Pago [idPago=" + idPago + ", idPedido=" + idPedido + ", fechaPago=" + fechaPago + ", idTipoPago="
				+ idTipoPago + ", monto=" + monto + "]";
	}

}
