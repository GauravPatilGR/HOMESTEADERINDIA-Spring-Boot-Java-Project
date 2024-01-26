package com.example.demo.Admin;

import java.util.List;

import com.example.demo.soilanalysis_Enitty;
import com.example.demo.Agroagency.agroEntity;

public interface serviceadmin {

	
	 //Method Save Blog 
	 public void blogupload(blog b1);
	 
	 //Method Show Blog 
	 List<blog> showallblog();
	 
	 //Method Show With Content Blog 
	 List<blog> findblogbytittle(String title);
	
	 //Method to Delete Blog
	 public void deleteblog(int id);
	 
	 //Method Save Subadmin
	 public void savasubadmin(subadmin_Entity s1);
	 
	 //Login Subadmin
	 subadmin_Entity checksubadmin (String name,String password);
	
	 //Show All Subadmin
	 List<subadmin_Entity> showallsubadmin();
	
	 //Remove Acces of Subadmin
	 public void removesubadminaccress(int id);
	 
	
}
