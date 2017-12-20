package com.sam.springmvc.dao;

import java.util.List;

import com.sam.springmvc.model.Application;
import com.sam.springmvc.model.Job;

public interface ApplicationDao {

	public void addApplication(Application app);
	
	public List<Application> getResponses(String jobid);
	
	public Application getApplication(Integer id);
}
