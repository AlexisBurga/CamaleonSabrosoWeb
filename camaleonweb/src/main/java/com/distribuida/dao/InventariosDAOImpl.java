package com.distribuida.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.distribuida.entities.Inventarios;


@Repository
public class InventariosDAOImpl implements InventariosDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional 
	public List<Inventarios> findAll() {
		// TODO Auto-generated method stub
		Session session= sessionFactory.getCurrentSession();
		return session.createQuery("from Inventarios",Inventarios.class).getResultList();
		
	}
	
	@Transactional 
	public Inventarios findOne(int id) {
		// TODO Auto-generated method stub
		Session session= sessionFactory.getCurrentSession();
		return session.get(Inventarios.class, id);
	}
	



	@Transactional 
	public void add(Inventarios inventarios) {
		// TODO Auto-generated method stub
		Session session= sessionFactory.getCurrentSession();
		session.saveOrUpdate(inventarios);

	}
	
	
	@Transactional
	public void up(Inventarios inventarios) {
		// TODO Auto-generated method stub
		Session session= sessionFactory.getCurrentSession();
		session.saveOrUpdate(inventarios);

	}
	
	@Transactional 
	public void del(int id) {
		// TODO Auto-generated method stub
		Session session= sessionFactory.getCurrentSession();
		session.delete(findOne(id));

	}


}
