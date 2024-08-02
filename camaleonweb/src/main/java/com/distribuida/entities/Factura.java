package com.distribuida.entities;

import javax.persistence.*;

@Entity
@Table(name = "facturas")
public class Factura {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_factura")
    private int idFactura;

    @Column(name = "total")
    private Double total;

    @Column(name = "IdPedido")
    private int idPedido;

    @Column(name = "IdTipoPago")
    private int idTipoPago;

  //@JoinColumn (name = "IdPedido")
  	//@ManyToOne(cascade = {CascadeType.DETACH, CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH})
  	//private Pedido Pedido;
  	/* @JoinColumn (name = "IdTipoPago")
  	 * @ManyToOne(cascade ={CascadeType.DETACH, CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH})
  	 * private TipoPago TipoPago;.*/
   


    // Constructor sin argumentos (requerido por Hibernate)
    public Factura() {}

    // Constructor con argumentos para inserción
 
    public Factura(int idFactura, Double total, int idPedido, int idTipoPago) {
		this.idFactura = idFactura;
		this.total = total;
		this.idPedido = idPedido;
		this.idTipoPago = idTipoPago;
	}

	public int getIdFactura() {
		return idFactura;
	}

	public void setIdFactura(int idFactura) {
		this.idFactura = idFactura;
	}

	public Double getTotal() {
		return total;
	}

	public void setTotal(Double total) {
		this.total = total;
	}

	public int getIdPedido() {
		return idPedido;
	}

	public void setIdPedido(int idPedido) {
		this.idPedido = idPedido;
	}

	public int getIdTipoPago() {
		return idTipoPago;
	}

	public void setIdTipoPago(int idTipoPago) {
		this.idTipoPago = idTipoPago;
	}

	@Override
	public String toString() {
		return "Factura [idFactura=" + idFactura + ", total=" + total + ", idPedido=" + idPedido + ", idTipoPago="
				+ idTipoPago + "]";
	}

}