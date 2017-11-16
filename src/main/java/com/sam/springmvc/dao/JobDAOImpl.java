package com.sam.springmvc.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sam.springmvc.model.Job;

@Repository
public class JobDAOImpl implements JobDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addJobs(Job job) {
		sessionFactory.getCurrentSession().saveOrUpdate(job);
		
	}

	@Override
	public List<Job> getAllJobs() {
		
/*		return sessionFactory.getCurrentSession().createQuery("FROM Job job WHERE active=:active").list();
*/		return sessionFactory.getCurrentSession().createQuery("from Job").list();

	}
	
	@Override
	public List<Job> listActiveJobs() {
		return sessionFactory.getCurrentSession().createQuery("from Job as job where job.status = 'Active'").list();
						
	}
	

	@Override
	public Job updateJob(Job job) {
		 sessionFactory.getCurrentSession().update(job);
		return job;
		 
	}

	@Override
	public void deleteJob(int jobid) {
		Job job= (Job) sessionFactory.getCurrentSession().load(Job.class, jobid);
		if(null!=job) {
			this.sessionFactory.getCurrentSession().delete(job);

		}
	}

	@Override
	public Job getJob(Integer jobid) {
		return (Job) sessionFactory.getCurrentSession().get(
				Job.class, jobid);
	}
	
}
