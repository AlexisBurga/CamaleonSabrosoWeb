package com.distribuida.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "tipopago")
public class TipoPago {


	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_tipo_pago")
    private int idTipoPago;

    @Column(name = "Tipo")
    private String tipo;
    
    public TipoPago(){};

	public TipoPago(int idTipoPago, String tipo) {
		
		this.idTipoPago = idTipoPago;
		this.tipo = tipo;
	}

	public int getIdTipoPago() {
		return idTipoPago;
	}

	public void setIdTipoPago(int idTipoPago) {
		this.idTipoPago = idTipoPago;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	@Override
	public String toString() {
		return "TipoPago [idTipoPago=" + idTipoPago + ", tipo=" + tipo + "]";
	}

	
    
}
