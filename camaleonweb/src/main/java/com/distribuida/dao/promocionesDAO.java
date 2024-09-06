package com.distribuida.dao;

import java.util.List;
import com.distribuida.entities.promociones;
public interface promocionesDAO {
	


			public List<promociones> findALL();
			
			public promociones findOne(int id);
			
			public void add(promociones Promociones);
			
			public void up(promociones Promociones);
			
			public void del(int id);
			
		}
