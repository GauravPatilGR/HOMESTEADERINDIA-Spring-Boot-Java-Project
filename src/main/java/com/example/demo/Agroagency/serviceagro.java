package com.example.demo.Agroagency;

import java.awt.color.ICC_ColorSpace;
import java.util.List;

public interface serviceagro
{
    //Service for Registration
	void registeragro(agroEntity a1);
	
	//Service for Login
	agroEntity CheckLoginagro(String email,String password);
	
	//Service for Add New Product
	void addnewproduct(product p1);
	
	//Service for Showing all Product at agro Dashboard
	List<product> showallproduct();
	
	List<agroEntity> showagrofarmer();
	
	//Service for Showing all Product at Farmer Page
	List<product> showallproductfarmer();
	
	//Service for Showing all Product at Farmer Page with Search
	List<product> showallpage();
	
	//Service for Search
	List<product> serch(String name,String type);
	
	//Service for Pending  Agroagency
	 List<agroEntity> getPendingAgro();
	 
	//Service for Listed  Agroagency
	 List<agroEntity> getApproveAgro();
	 
	 agroEntity checkemailagro (String email);
	//Service for Approve Agroagency
	List<agroEntity> findbyname(String name);
	
	//Service for Reject Agro Agency
	public void delete(int id);
	
	//Service for Delete Product
	public void deleteproduct(int id);
	
	//Service for Search Prodocu name
	List<product> findbynameproduct(String name);
	
	//Service for Show all Product 
	List<product> showallproductadmin();
	
	//Update product
	List<product> updateproduct(String name);
	

	
	
	
  
	
	
	
	
	
	
	
	
	
	
	
}
