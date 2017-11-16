package com.sam.springmvc.service;

import java.util.List;

import com.sam.springmvc.model.Job;


public interface JobService {
	
	public void addJobs(Job job);
	
	public List<Job> getAllJobs();
	
	public void deleteJob(int jobid);
	
	public Job getJob(Integer jobid);
	
	public Job updateJob(Job job);
	
	public List<Job> listActiveJobs();	


}
