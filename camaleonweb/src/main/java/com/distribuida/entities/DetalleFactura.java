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
@Table(name = "detallefactura")
public class DetalleFactura {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_detalle_factura")
    private int idDetalleFactura;

    @Column(name = "idFactura")
    private int idFactura;

    @Column(name = "IdProducto")
    private int idProducto;

    @Column(name = "Cantidad")
    private int cantidad;
  
    @Column(name = "PrecioUnitario")
    private double precioUnitario;

    // 
	//@JoinColumn(name = "idFacturaa")
	//@JoinColumn(name = "idTipoPago")
	//@ManyToOne(cascade = {CascadeType.DETACH, CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH})
	
    // Constructor sin argumentos
    public DetalleFactura() {
    }

	public DetalleFactura(int idDetalleFactura, int idFactura, int idProducto, int cantidad, double precioUnitario) {
		
		this.idDetalleFactura = idDetalleFactura;
		this.idFactura = idFactura;
		this.idProducto = idProducto;
		this.cantidad = cantidad;
		this.precioUnitario = precioUnitario;
	}

	public int getIdDetalleFactura() {
		return idDetalleFactura;
	}

	public void setIdDetalleFactura(int idDetalleFactura) {
		this.idDetalleFactura = idDetalleFactura;
	}

	public int getIdFactura() {
		return idFactura;
	}

	public void setIdFactura(int idFactura) {
		this.idFactura = idFactura;
	}

	public int getIdProducto() {
		return idProducto;
	}

	public void setIdProducto(int idProducto) {
		this.idProducto = idProducto;
	}

	public int getCantidad() {
		return cantidad;
	}

	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}

	public double getPrecioUnitario() {
		return precioUnitario;
	}

	public void setPrecioUnitario(double precioUnitario) {
		this.precioUnitario = precioUnitario;
	}

	@Override
	public String toString() {
		return "DetalleFactura [idDetalleFactura=" + idDetalleFactura + ", idFactura=" + idFactura + ", idProducto="
				+ idProducto + ", cantidad=" + cantidad + ", precioUnitario=" + precioUnitario + "]";
	}
	
	
}