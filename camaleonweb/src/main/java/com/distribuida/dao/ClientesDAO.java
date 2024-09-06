package com.distribuida.dao;

import java.util.List;
import com.distribuida.entities.Clientes;

public interface ClientesDAO {


		public List<Clientes> findALL();
		
		public Clientes findOne(int id);
		
		public void add(Clientes clientes);
		
		public void up(Clientes clientes);
		
		public void del(int id);
		
	}


