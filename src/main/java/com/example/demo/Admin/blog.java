package com.example.demo.Admin;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class blog {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	private String title;
	
	private String cone;
	
	private String ctwo;
	
	private String cthree;
	
	private String blogimg;
	
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

	

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getCone() {
		return cone;
	}

	public void setCone(String cone) {
		this.cone = cone;
	}

	public String getCtwo() {
		return ctwo;
	}

	public void setCtwo(String ctwo) {
		this.ctwo = ctwo;
	}

	public String getCthree() {
		return cthree;
	}

	public void setCthree(String cthree) {
		this.cthree = cthree;
	}

	public String getBlogimg() {
		return blogimg;
	}

	public void setBlogimg(String blogimg) {
		this.blogimg = blogimg;
	}

}
