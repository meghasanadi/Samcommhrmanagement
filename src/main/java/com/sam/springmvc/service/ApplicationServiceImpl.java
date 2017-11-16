package com.sam.springmvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sam.springmvc.dao.ApplicationDao;
import com.sam.springmvc.model.Application;

@Service
@Transactional
public class ApplicationServiceImpl implements ApplicationService {

	@Autowired
	private ApplicationDao appDao;
	
	@Override
	public void addApplication(Application app) {

		appDao.addApplication(app);
	}

}
