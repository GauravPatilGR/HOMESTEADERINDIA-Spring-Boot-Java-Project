package com.example.demo;


import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;



@Entity
public class Training_Farmer {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
    private String fname;
	
	private String femail;
	
	private String fmobile;
	
	private String flocation;
	
	private String ftraining;
	
	private String fcomment;
	
	private Date   fdate;
	
	public Date getFdate() {
		return fdate;
	}

	public void setFdate(Date fdate) {
		this.fdate = fdate;
	}


	
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getFemail() {
		return femail;
	}

	public void setFemail(String femail) {
		this.femail = femail;
	}

	public String getFmobile() {
		return fmobile;
	}

	public void setFmobile(String fmobile) {
		this.fmobile = fmobile;
	}

	public String getFlocation() {
		return flocation;
	}

	public void setFlocation(String flocation) {
		this.flocation = flocation;
	}

	public String getFtraining() {
		return ftraining;
	}

	public void setFtraining(String ftraining) {
		this.ftraining = ftraining;
	}

	public String getFcomment() {
		return fcomment;
	}

	public void setFcomment(String fcomment) {
		this.fcomment = fcomment;
	}

	

}
