package com.sam.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sam.springmvc.dao.ApplicationDao;
import com.sam.springmvc.model.Application;
import com.sam.springmvc.model.Job;

@Service
@Transactional
public class ApplicationServiceImpl implements ApplicationService {

	@Autowired
	private ApplicationDao appDao;
	
	@Override
	public void addApplication(Application app) {

		appDao.addApplication(app);
	}

	@Override
	public List<Application> getResponses(String  jobid) {
		
		return appDao.getResponses(jobid);
	}

	@Override
	public Application getApplication(Integer id) {
		
		return appDao.getApplication(id);
	}


}
