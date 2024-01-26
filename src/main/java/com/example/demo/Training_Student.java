package com.example.demo;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Training_Student {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	private String sname;
	
	private String semail;
	
	private String scollege;
	
    private String slocation;
	
	private String straining;
	
	private String scomment;
	
	private Date sdate;
	
	public Date getSdate() {
		return sdate;
	}

	public void setSdate(Date sdate) {
		this.sdate = sdate;
	}

	
	
	public int getSid() {
		return id;
	}

	public void setSid(int sid) {
		this.id = sid;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public String getSemail() {
		return semail;
	}

	public void setSemail(String semail) {
		this.semail = semail;
	}

	public String getScollege() {
		return scollege;
	}

	public void setScollege(String scollege) {
		this.scollege = scollege;
	}

	public String getSlocation() {
		return slocation;
	}

	public void setSlocation(String slocation) {
		this.slocation = slocation;
	}

	public String getStraining() {
		return straining;
	}

	public void setStraining(String straining) {
		this.straining = straining;
	}

	public String getScomment() {
		return scomment;
	}

	public void setScomment(String scomment) {
		this.scomment = scomment;
	}

	
	

}
