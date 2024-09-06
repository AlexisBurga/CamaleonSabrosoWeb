package com.distribuida.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.distribuida.entities.DetallePlatillos;

@Repository
public class DetallePlatillosDAOImpl implements DetallePlatillosDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    @Transactional
    public List<DetallePlatillos> findAll() {
        Session session = sessionFactory.getCurrentSession();
        return session.createQuery("SELECT dp FROM DetallePlatillos dp", DetallePlatillos.class).getResultList();
    }

    @Override
    @Transactional
    public DetallePlatillos findOne(int id) {
        Session session = sessionFactory.getCurrentSession();
        Query<DetallePlatillos> query = session.createQuery("SELECT dp FROM DetallePlatillos dp WHERE dp.idDetallePlatillos =: keyIdDetallePlatillos", DetallePlatillos.class);
        query.setParameter("keyIdDetallePlatillos", id);
        return query.getSingleResult();
    }

    @Override
    @Transactional
    public void add(DetallePlatillos detallePlatillos) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(detallePlatillos);
    }

    @Override
    @Transactional
    public void up(DetallePlatillos detallePlatillos) {
        Session session = sessionFactory.getCurrentSession();
        Query<?> query = session.createQuery("UPDATE DetallePlatillos dp SET dp.ingrediente =: keyIngrediente, "
                + "dp.descripcion =: keyDescripcion, "
                + "dp.imagen =: keyImagen, "
                + "dp.idProductos =: keyIdProductos, "
                + "dp.idPlatillos =: keyIdPlatillos "
                + "WHERE dp.idDetallePlatillos =: keyIdDetallePlatillos");
        query.setParameter("keyIngrediente", detallePlatillos.getIngrediente());
        query.setParameter("keyDescripcion", detallePlatillos.getDescripcion());
        query.setParameter("keyImagen", detallePlatillos.getImagen());
        query.setParameter("keyIdProductos", detallePlatillos.getIdProductos());
        query.setParameter("keyIdPlatillos", detallePlatillos.getIdPlatillos());
        query.setParameter("keyIdDetallePlatillos", detallePlatillos.getIdDetallePlatillos());
        
        query.executeUpdate();
    }

    @Override
    @Transactional
    public void del(int id) {
        Session session = sessionFactory.getCurrentSession();
        Query<?> query = session.createQuery("DELETE FROM DetallePlatillos dp WHERE dp.idDetallePlatillos =: keyIdDetallePlatillos");
        query.setParameter("keyIdDetallePlatillos", id);
        
        query.executeUpdate();
    }
}
