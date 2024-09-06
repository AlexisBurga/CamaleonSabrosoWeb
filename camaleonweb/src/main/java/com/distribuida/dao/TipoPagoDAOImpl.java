package com.distribuida.dao;

import java.util.List;

import javax.persistence.EntityNotFoundException;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.distribuida.entities.TipoPago;

@Repository
public class TipoPagoDAOImpl implements TipoPagoDAO {

    @Autowired
    private SessionFactory sessionFactory;
    
    @Override
    @Transactional
    public List<TipoPago> findALL() {
        Session session = sessionFactory.getCurrentSession();
        return session.createQuery("from TipoPago", TipoPago.class).getResultList();
    }

    @Override
    @Transactional
    public TipoPago findOne(int id) {
        Session session = sessionFactory.getCurrentSession();
        return session.get(TipoPago.class, id);
    }

    @Override
    @Transactional
    public void add(TipoPago tipoPago) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(tipoPago);
    }

    @Override
    @Transactional
    public void up(TipoPago tipoPago) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(tipoPago);
    }

    @Override
    @Transactional
    public void del(int id) {
        Session session = sessionFactory.getCurrentSession();
        TipoPago tipoPago = session.get(TipoPago.class, id);
        if (tipoPago != null) {
            session.delete(tipoPago);
        } else {
            throw new EntityNotFoundException("TipoPago con ID " + id + " no encontrado.");
        }
    }

}
