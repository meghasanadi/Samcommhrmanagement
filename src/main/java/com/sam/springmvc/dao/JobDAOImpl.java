package com.sam.springmvc.dao;

import java.util.List;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.SharedSessionContract;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.stereotype.Repository;

import com.sam.springmvc.model.Job;

@Repository
public class JobDAOImpl implements JobDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Autowired
	private DataSource dataSource;
	private NamedParameterJdbcTemplate dbTemplate;
	private JdbcTemplate jdbcTemplate;
	private SimpleJdbcInsert jdbcInsert;
	private JobRowMapper jobRowMapper;
	
	@PostConstruct
	public void setup() {
		jdbcTemplate = new JdbcTemplate(dataSource);
		dbTemplate = new NamedParameterJdbcTemplate(dataSource);
		jdbcInsert = new SimpleJdbcInsert(dataSource);
		jdbcInsert.withTableName("jcb_admin_item_insertion_table");
		jdbcInsert.usingGeneratedKeyColumns("itemId");
		
		jobRowMapper = new JobRowMapper();
	}

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
	/*@Override
	public Job updateJob(Job job) {
	
		Session session = sessionFactory.openSession();

		SQLQuery insertsqlQuery = session.createSQLQuery("update db1.job_tbl set job_description = REPLACE(job_description,\"�?�\",'.\\r\\n')");     
	    insertsqlQuery.executeUpdate();
					return job;
	}*/
	
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

	@Override
	public int updateJob1(Job job) {
		String sql="update db1.job_tbl set job_description = (REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(job_description,\"�??\",'<li>'), \"�?�\",'<li>'),\"�?�\",'<li>'),\"�?�\",'<li>'),\"�?�\",'<li>'),\"-\",'<li>')) where id="+job.getId()+""; 
	    return jdbcTemplate.update(sql); 
	}

	@Override
	public int updateJobResponses(Job job) {
		String sql="UPDATE db1.job_tbl SET responses = (SELECT COUNT(*) FROM db1.job_seeker_application WHERE position = 'SAMJID_01') where jobid='"+job.getJobid()+"'";
		return jdbcTemplate.update(sql);
	}
	
}
