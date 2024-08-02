package com.distribuida.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.distribuida.entities.DetalleFactura;

@Repository
public class Detalle_facturaDaoImpl implements Detalle_facturaDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    @Transactional
    public List<DetalleFactura> findAll() {
        Session session = sessionFactory.getCurrentSession();
        return session.createQuery("from DetalleFactura", DetalleFactura.class).getResultList();
    }

    @Override
    @Transactional
    public DetalleFactura findOne(int id) {
        Session session = sessionFactory.getCurrentSession();
        return session.get(DetalleFactura.class, id);
    }

    @Override
    @Transactional
    public void add(DetalleFactura detallefactura) {
        Session session = sessionFactory.getCurrentSession();
        session.save(detallefactura);
    }

    @Override
    @Transactional
    public void up(DetalleFactura detallefactura) {
        Session session = sessionFactory.getCurrentSession();
        session.update(detallefactura);
    }

    @Override
    @Transactional
    public void del(int id) {
        Session session = sessionFactory.getCurrentSession();
        DetalleFactura detallefactura = session.byId(DetalleFactura.class).load(id);
        session.delete(detallefactura);
    }
}
