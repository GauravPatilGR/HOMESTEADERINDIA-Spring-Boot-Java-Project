package com.example.demo;


import java.sql.Date;
import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class enquiry_Entity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
    int id;
	
	private String fproduct;
	
	private String ftype;
	
    private String fname;
	
	private String fnumber;
	
	

	private String femail;
	
	private String fstate;
	
	private String fcity;
	
	private String fmessage;
	
	private String fprice;
	
	
	public String getFemail() {
		return femail;
	}

	public void setFemail(String femail) {
		this.femail = femail;
	}
	
	public String getFprice() {
		return fprice;
	}

	public void setFprice(String fprice) {
		this.fprice = fprice;
	}

	private Date dateout;



	public Date getDateout() {
		return dateout;
	}

	public void setDateout(Date dateout) {
		this.dateout = dateout;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFproduct() {
		return fproduct;
	}

	public void setFproduct(String fproduct) {
		this.fproduct = fproduct;
	}

	public String getFtype() {
		return ftype;
	}

	public void setFtype(String ftype) {
		this.ftype = ftype;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getFnumber() {
		return fnumber;
	}

	public void setFnumber(String fnumber) {
		this.fnumber = fnumber;
	}

	public String getFstate() {
		return fstate;
	}

	public void setFstate(String fstate) {
		this.fstate = fstate;
	}

	public String getFcity() {
		return fcity;
	}

	public void setFcity(String fcity) {
		this.fcity = fcity;
	}

	public String getFmessage() {
		return fmessage;
	}

	public void setFmessage(String fmessage) {
		this.fmessage = fmessage;
	}

	
    

	

	

	
	
}
