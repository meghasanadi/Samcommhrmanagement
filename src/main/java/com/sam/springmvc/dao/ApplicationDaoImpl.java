package com.sam.springmvc.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sam.springmvc.model.Application;
import com.sam.springmvc.model.Job;

@Repository
public class ApplicationDaoImpl implements ApplicationDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addApplication(Application app) {
		sessionFactory.getCurrentSession().saveOrUpdate(app);

	}

	//return sessionFactory.getCurrentSession().createQuery("from Job as job where job.status = 'Active'").list();
	
	@Override
	public List<Application> getResponses(String jobid) {
		return sessionFactory.getCurrentSession().createQuery("from Application as app where app.position='"+jobid+"'").list();
	}

	@Override
	public Application getApplication(Integer id) {
		
		return (Application) sessionFactory.getCurrentSession().get(Application.class, id);
	}



}
