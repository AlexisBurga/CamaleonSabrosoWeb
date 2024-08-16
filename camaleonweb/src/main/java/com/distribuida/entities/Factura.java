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

    @Column(name = "id_pedido")  // Corregido
    private Integer idPedido;

    @Column(name = "id_tipo_pago")  // Corregido
    private Integer idTipoPago;

    // Constructor sin argumentos (requerido por Hibernate)
    public Factura() {}

    // Constructor con argumentos para inserción
    public Factura(int idFactura, Double total, Integer idPedido, Integer idTipoPago) {
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

    public Integer getIdPedido() {
        return idPedido;
    }

    public void setIdPedido(Integer idPedido) {
        this.idPedido = idPedido;
    }

    public Integer getIdTipoPago() {
        return idTipoPago;
    }

    public void setIdTipoPago(Integer idTipoPago) {
        this.idTipoPago = idTipoPago;
    }

    @Override
    public String toString() {
        return "Factura [idFactura=" + idFactura + ", total=" + total + ", idPedido=" + idPedido + ", idTipoPago=" + idTipoPago + "]";
    }
}
