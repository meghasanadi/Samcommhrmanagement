package com.sam.springmvc.service;

import java.util.List;

import com.sam.springmvc.model.Application;

public interface ApplicationService {
	
	public void addApplication(Application app);
	
	public List<Application> getResponses(String  jobid);

	public Application getApplication(Integer id);
}
