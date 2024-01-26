package com.example.demo.Agroagency;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RepositoryAgro extends JpaRepository<agroEntity, Integer>
{
	
	//Custom method For Cheking Login
	 agroEntity findByEmailAndPassword(String email,String password);
	 
	 //Avoid Dublicate Email
	 agroEntity findByEmail(String email);
 
	 //Save prodcut Details 
	 void save(product p1);
	
	 //Check by Status Pending or Approved 
	 List<agroEntity> findByStatus(String status);
	
	 //Serach
	 List<agroEntity> findByNameLike(String name);
	
	
	
	

}
