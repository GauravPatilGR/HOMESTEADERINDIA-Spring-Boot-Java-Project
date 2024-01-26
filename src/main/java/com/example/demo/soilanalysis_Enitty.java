package com.example.demo;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class soilanalysis_Enitty {
	
    
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	private String sname;
	
	private String slocation;
	
	private String smobile;
	
	private String semail;
	
    private String sdepth;
	
	private String  stype;
	
	private String sorganic;
	
	private String stexture;
	
	private String scrop;
	
	private String spcrop;
	
	private String sfertilizer;
	
	private String sirrigation;
	
	private String scomments;
	
	
	public String getScomments() {
		return scomments;
	}

	public void setScomments(String scomments) {
		this.scomments = scomments;
	}

	private Date sdate;
	
	public Date getSdate() {
		return sdate;
	}

	public void setSdate(Date sdate) {
		this.sdate = sdate;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public String getSlocation() {
		return slocation;
	}

	public void setSlocation(String slocation) {
		this.slocation = slocation;
	}

	public String getSmobile() {
		return smobile;
	}

	public void setSmobile(String smobile) {
		this.smobile = smobile;
	}

	public String getSemail() {
		return semail;
	}

	public void setSemail(String semail) {
		this.semail = semail;
	}

	public String getSdepth() {
		return sdepth;
	}

	public void setSdepth(String sdepth) {
		this.sdepth = sdepth;
	}

	public String getStype() {
		return stype;
	}

	public void setStype(String stype) {
		this.stype = stype;
	}

	public String getSorganic() {
		return sorganic;
	}

	public void setSorganic(String sorganic) {
		this.sorganic = sorganic;
	}

	public String getStexture() {
		return stexture;
	}

	public void setStexture(String stexture) {
		this.stexture = stexture;
	}

	public String getScrop() {
		return scrop;
	}

	public void setScrop(String scrop) {
		this.scrop = scrop;
	}

	public String getSpcrop() {
		return spcrop;
	}

	public void setSpcrop(String spcrop) {
		this.spcrop = spcrop;
	}

	public String getSfertilizer() {
		return sfertilizer;
	}

	public void setSfertilizer(String sfertilizer) {
		this.sfertilizer = sfertilizer;
	}

	public String getSirrigation() {
		return sirrigation;
	}

	public void setSirrigation(String sirrigation) {
		this.sirrigation = sirrigation;
	}

	
	

}
