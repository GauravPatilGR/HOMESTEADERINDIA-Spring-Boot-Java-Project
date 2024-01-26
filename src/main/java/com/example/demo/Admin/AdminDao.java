package com.example.demo.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminDao implements serviceadmin {
	
	
	
	
	
	//Blog
	@Autowired
	RepoBlog rb;
	
	//Subadmin
	@Autowired
	Reposubadmin rs;

	                                        //Blog Start
    //Blog Save
	@Override
	public void blogupload(blog b1) {
		
		rb.save(b1);
		
	}

	//Blog Show Farmer Page
	@Override
	public List<blog> showallblog() {
		
		return rb.findAll();	
		
	}

	//Show Full Blog on Farmer
	@Override
	public List<blog> findblogbytittle(String title) {
		
		return rb.findByTitleLike(title);
	}

	//Remove Blog
	@Override
	public void deleteblog(int id) {
		
		rb.deleteById(id);
		
	}
                                          //Blog END
	
	
	                                   //Subadmin Start
	//Add Subadmin
	@Override
	public void savasubadmin(subadmin_Entity s1) {
		
		rs.save(s1);
	}

	//Login Check subadmin
	@Override
	public subadmin_Entity checksubadmin(String name, String password) {
		
		return rs.findByNameAndPassword(name, password);
	}

	//Show subadmin to Admin Page
	@Override
	public List<subadmin_Entity> showallsubadmin() {
		
		return rs.findAll();
	}

	//Remove Subadmin Access
	@Override
	public void removesubadminaccress(int id) {
		
		rs.deleteById(id);
		
	}

	

	

	
	

}
