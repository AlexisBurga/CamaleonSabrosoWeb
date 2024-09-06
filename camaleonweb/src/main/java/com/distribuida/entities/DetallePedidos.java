package com.distribuida.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "detallespedidos")
public class DetallePedidos {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_detalle_pedidos")
	private int idDetallePedidos;

	@Column(name = "id_Pedido")
	private int IdPedido;

	@Column(name = "id_Producto")
	private int IdProducto;

	@Column(name = "cantidad")
	private int Cantidad;

	@Column(name = "precio_unitario")
	private Double PrecioUnitario;

	public DetallePedidos() {}

	public DetallePedidos(int idDetallePedidos, int idPedido, int idProducto, int cantidad, Double precioUnitario) {
		this.idDetallePedidos = idDetallePedidos;
		this.IdPedido = idPedido;
		this.IdProducto = idProducto;
		this.Cantidad = cantidad;
		this.PrecioUnitario = precioUnitario;
	}

	public int getIdDetallePedidos() {
		return idDetallePedidos;
	}

	public void setIdDetallePedidos(int idDetallePedidos) {
		this.idDetallePedidos = idDetallePedidos;
	}

	public int getIdPedido() {
		return IdPedido;
	}

	public void setIdPedido(int idPedido) {
		IdPedido = idPedido;
	}

	public int getIdProducto() {
		return IdProducto;
	}

	public void setIdProducto(int idProducto) {
		IdProducto = idProducto;
	}

	public int getCantidad() {
		return Cantidad;
	}

	public void setCantidad(int cantidad) {
		Cantidad = cantidad;
	}

	public Double getPrecioUnitario() {
		return PrecioUnitario;
	}

	public void setPrecioUnitario(Double precioUnitario) {
		PrecioUnitario = precioUnitario;
	}

	@Override
	public String toString() {
		return "DetallePedidos [idDetallePedidos=" + idDetallePedidos + ", IdPedido=" + IdPedido + ", IdProducto="
				+ IdProducto + ", Cantidad=" + Cantidad + ", PrecioUnitario=" + PrecioUnitario + "]";
	}
}
