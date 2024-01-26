package com.example.demo.Agroagency;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class agroDao implements serviceagro {
	
	@Autowired
	RepositoryAgro ra;
	
	@Autowired
	Repoproduct rp;

	//Service for Register
	@Override
	public void registeragro(agroEntity a1) {
		
		ra.save(a1);
		
	}

	
	//service for Login Details
	@Override
	public agroEntity CheckLoginagro(String email, String password) {
		
		
		
		return ra.findByEmailAndPassword(email, password);
	}

	//service for add product
	@Override
	public void addnewproduct(product p1) {
		
		ra.save(p1);
		
	}


	//service for Shwo product list
	@Override
	public List<product> showallproduct() {
		
		return rp.findAll();
	}

	//service for Show product list
	@Override
	public List<product> showallproductfarmer() {
		
		return rp.findAll();
	}


	//Service for Show All product
	@Override
	public List<product> showallpage() {
		
		return rp.findAll();
	}


	//Service for Serach
	@Override
	public List<product> serch(String name, String type) {
		
		return rp.findByPnameOrPtypeLike(name, type);
	}

     //Service for Cheking pending Request
	 @Override
	 public List<agroEntity> getPendingAgro()
	 {
	        return ra.findByStatus("pending");
	 }
	  
	  //Service for Cheking Approve Request
	 @Override
	 public List<agroEntity> getApproveAgro() {
			
			return ra.findByStatus("Approve");
		}
      
	 
    //Search Agro
	@Override
	public List<agroEntity> findbyname(String name) {
		
		return ra.findByNameLike(name);
	}

    //Remove
	@Override
	public void delete(int id) {
		
	      ra.deleteById(id);
	}

    //Search Product
	@Override
	public List<product> findbynameproduct(String name) {
		
		return rp.findByPnameLike(name);
	}

   //Show All Product
	@Override
	public List<product> showallproductadmin() {
		
		return rp.findAll();
	}

   //Edit Product
	@Override
	public List<product> updateproduct(String name) {
		
		return rp.findByPnameLike(name);
	}


	//Remove Product
	@Override
	public void deleteproduct(int id) {
		
		rp.deleteById(id);
		
	}


	//Show Agro To Farmers
	@Override
	public List<agroEntity> showagrofarmer() {
		// TODO Auto-generated method stub
		return ra.findAll();
	}

    //Avoid Dublicate Entry
	@Override
	public agroEntity checkemailagro(String email) {
		
		return ra.findByEmail(email);
	}


	


	


	






	


	

	


	

	
}
