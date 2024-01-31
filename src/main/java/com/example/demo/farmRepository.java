package com.example.demo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.Agroagency.product;

@Repository

//Farmer Repository For Hibernate
public interface farmRepository  extends JpaRepository<farmerEntity, Integer>
{
	
	//Login Farmer
	farmerEntity findByEmailAndPassword(String email,String password);
	
	//Avoid Dublicate Email
	farmerEntity findByEmail(String email);
	
	
	//Show Profile
	List<farmerEntity> findByEmailLike(String email);
	
	
	

	//save Farmer Trainin
	void save(Training_Farmer t1);
	
	//save Student Training
	void save(Training_Student t1);

	//save Enqiry 
	void save(enquiry_Entity t3);

	//save Contact 
	void save(contact_Entity t4);
	
	
	
	
	

}
