package com.sam.springmvc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "job_seeker_application")
public class Application {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@Column
	private String firstname;
	private String lastname;
	private String email; 
	private String phoneno; 
	private String dob; 
	private String gender;
	private String position;
	private String salary_exp;
	private String noticeperiod;
	private String willingTorellocate; 
	private String relocatelocation; 
	private String pancard; 
	private String curcompany; 
	private String comments;
	private String applied;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoneno() {
		return phoneno;
	}
	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getSalary_exp() {
		return salary_exp;
	}
	public void setSalary_exp(String salary_exp) {
		this.salary_exp = salary_exp;
	}
	public String getNoticeperiod() {
		return noticeperiod;
	}
	public void setNoticeperiod(String noticeperiod) {
		this.noticeperiod = noticeperiod;
	}
	public String getWillingTorellocate() {
		return willingTorellocate;
	}
	public void setWillingTorellocate(String willingTorellocate) {
		this.willingTorellocate = willingTorellocate;
	}
	public String getRelocatelocation() {
		return relocatelocation;
	}
	public void setRelocatelocation(String relocatelocation) {
		this.relocatelocation = relocatelocation;
	}
	public String getPancard() {
		return pancard;
	}
	public void setPancard(String pancard) {
		this.pancard = pancard;
	}
	public String getCurcompany() {
		return curcompany;
	}
	public void setCurcompany(String curcompany) {
		this.curcompany = curcompany;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	public String getApplied() {
		return applied;
	}
	public void setApplied(String applied) {
		this.applied = applied;
	}
	@Override
	public String toString() {
		return "Application [id=" + id + ", firstname=" + firstname + ", lastname=" + lastname + ", email=" + email
				+ ", phoneno=" + phoneno + ", dob=" + dob + ", gender=" + gender + ", position=" + position
				+ ", salary_exp=" + salary_exp + ", noticeperiod=" + noticeperiod + ", willingTorellocate="
				+ willingTorellocate + ", relocatelocation=" + relocatelocation + ", pancard=" + pancard
				+ ", curcompany=" + curcompany + ", comments=" + comments + ", applied=" + applied + "]";
	}

	
}
