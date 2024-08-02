package com.distribuida.dao;

import java.util.List;
import javax.transaction.Transactional;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.distribuida.entities.Factura;

@Repository
public class FacturaDaoImpl implements FacturaDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    @Transactional
    public List<Factura> findAll() {
        Session session = sessionFactory.getCurrentSession();
        return session.createQuery("from Factura", Factura.class).getResultList();
        // Aquí "Factura" en singular, no "Facturas"
    }

    @Override
    @Transactional
    public Factura findOne(int id) {
        Session session = sessionFactory.getCurrentSession();
        return session.get(Factura.class, id);
    }

    @Override
    @Transactional
    public void add(Factura factura) {
        Session session = sessionFactory.getCurrentSession();
        session.save(factura);
        // Aquí se usa "factura" en singular
    }

    @Override
    @Transactional
    public void up(Factura factura) {
        Session session = sessionFactory.getCurrentSession();
        session.update(factura);
        // Aquí se usa "factura" en singular
    }

    @Override
    @Transactional
    public void del(int id) {
        Session session = sessionFactory.getCurrentSession();
        Factura factura = session.byId(Factura.class).load(id);
        session.delete(factura);
        // Aquí se usa "factura" en singular
    }
}
