package com.distribuida.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.distribuida.entities.Platillos;

@Repository
public class PlatillosDAOImpl implements PlatillosDAO {
    
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    @Transactional
    public List<Platillos> findAll() {
        Session session = sessionFactory.getCurrentSession();
        return session.createQuery("SELECT p FROM Platillos p", Platillos.class).getResultList();
    }

    @Override
    @Transactional
    public Platillos findOne(int id) {
        Session session = sessionFactory.getCurrentSession();
        Query<Platillos> query = session.createQuery("SELECT p FROM Platillos p WHERE p.idPlatillos =: keyIdPlatillos", Platillos.class);
        query.setParameter("keyIdPlatillos", id);
        return query.getSingleResult();
    }

    @Override
    @Transactional
    public void add(Platillos platillos) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(platillos);
    }

    @Override
    @Transactional
    public void up(Platillos platillos) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("UPDATE Platillos p SET p.platillo =: keyPlatillo, "
                + "p.descripcion =: keyDescripcion, "
                + "p.imagen =: keyImagen "
                + "WHERE p.idPlatillos =: keyIdPlatillos");
        query.setParameter("keyPlatillo", platillos.getPlatillo());
        query.setParameter("keyDescripcion", platillos.getDescripcion());
        query.setParameter("keyImagen", platillos.getImagen());
        query.setParameter("keyIdPlatillos", platillos.getIdPlatillos());
        
        query.executeUpdate();
    }

    @Override
    @Transactional
    public void del(int id) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("DELETE FROM Platillos p WHERE p.idPlatillos =: keyIdPlatillos");
        query.setParameter("keyIdPlatillos", id);
        
        query.executeUpdate();
    }
}
