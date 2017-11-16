package com.sam.springmvc.model;

import java.io.Serializable;
import java.sql.Time;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "job_tbl")
public class Job implements Serializable {
	
	private static final long serialVersionUID = -3465813074586302847L;

	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	@Column
	private String jobid;
	
	@Column
	private String job_name;
	
	@Column
	private Date date;
	private Time time;
	private String keyskills;
	private String job_designation;
	private String job_description;
	private String experience;
	private String job_type;
	private String companyname;
	private String Salary;
	private String Functionalarea;
	private String shortdescription;
	@Column
	private String status;

	public String getJobid() {
		return jobid;
	}
	public void setJobid(String jobid) {
		this.jobid = jobid;
	}
	public String getJob_name() {
		return job_name;
	}
	public void setJob_name(String job_name) {
		this.job_name = job_name;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public Time getTime() {
		return time;
	}
	public void setTime(Time time) {
		this.time = time;
	}
	public String getKeyskills() {
		return keyskills;
	}
	public void setKeyskills(String keyskills) {
		this.keyskills = keyskills;
	}
	public String getJob_designation() {
		return job_designation;
	}
	public void setJob_designation(String job_designation) {
		this.job_designation = job_designation;
	}
	public String getJob_description() {
		return job_description;
	}
	public void setJob_description(String job_description) {
		this.job_description = job_description;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public String getJob_type() {
		return job_type;
	}
	public void setJob_type(String job_type) {
		this.job_type = job_type;
	}
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getSalary() {
		return Salary;
	}
	public void setSalary(String salary) {
		Salary = salary;
	}
	public String getFunctionalarea() {
		return Functionalarea;
	}
	public void setFunctionalarea(String functionalarea) {
		Functionalarea = functionalarea;
	}
	public String getShortdescription() {
		return shortdescription;
	}
	public void setShortdescription(String shortdescription) {
		this.shortdescription = shortdescription;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	

}
