package com.distribuida.dao;

import java.util.List;

import com.distribuida.entities.Factura;

public interface FacturaDao {
    List<Factura> findAll();
    Factura findOne(int id);
    void add(Factura factura);
    void up(Factura factura);
    void del(int id);
}
