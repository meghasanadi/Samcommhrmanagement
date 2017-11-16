package com.sam.springmvc.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sam.springmvc.model.Application;

@Repository
public class ApplicationDaoImpl implements ApplicationDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addApplication(Application app) {
		sessionFactory.getCurrentSession().saveOrUpdate(app);

	}

}
