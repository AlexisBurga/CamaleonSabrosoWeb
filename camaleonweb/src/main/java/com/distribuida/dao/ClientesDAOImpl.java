package com.distribuida.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.distribuida.entities.Clientes;
 
@Repository
public class ClientesDAOImpl implements ClientesDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public List<Clientes>  findALL(){
		//TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		
		return session.createQuery("from Clientes",Clientes.class).getResultList();
	}
	
	
	
	@Override
	@Transactional
	public Clientes findOne(int id) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		return session.get(Clientes.class, id);
	}

	@Override
	@Transactional

	public void add(Clientes clientes) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(clientes);
	}

	@Override
	@Transactional

	public void up(Clientes clientes) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(clientes);
	}

	@Override
	@Transactional

	public void del(int id) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		session.delete(findOne(id));

	}

}
