package com.distribuida.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.distribuida.entities.promociones;
 
@Repository
public class promocionesDAOImpl implements promocionesDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public List<promociones>  findALL(){
		//TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		
		return session.createQuery("from promociones",promociones.class).getResultList();
	}
	
	
	
	@Override
	@Transactional
	public promociones findOne(int id) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		return session.get(promociones.class, id);
	}

	@Override
	@Transactional

	public void add(promociones promociones) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(promociones);
	}

	@Override
	@Transactional

	public void up(promociones promociones) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(promociones);
	}

	@Override
	@Transactional

	public void del(int id) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		session.delete(findOne(id));

	}

}
