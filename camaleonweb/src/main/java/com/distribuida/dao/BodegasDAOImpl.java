package com.distribuida.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.distribuida.entities.Bodegas;



@Repository
public class BodegasDAOImpl implements BodegasDAO {

	@Autowired
	private SessionFactory  sessionFactory;
	
	
	@Override
	@Transactional
	public List<Bodegas> findAll() {
		// TODO Auto-generated method stub
		
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("from Bodegas", Bodegas.class).getResultList();
	}

	@Override
	@Transactional
	public Bodegas findOne(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		return session.get(Bodegas.class, id);
	}

	@Override
	@Transactional
	public void add(Bodegas bodegas) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(bodegas);
	}
	
	@Override
	@Transactional
	public void up(Bodegas bodegas) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(bodegas);
	}

	@Override
	@Transactional
	public void del(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.delete(findOne(id));
	}

	

}