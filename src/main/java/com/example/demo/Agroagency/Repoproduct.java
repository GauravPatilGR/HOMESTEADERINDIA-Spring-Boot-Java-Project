package com.example.demo.Agroagency;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface Repoproduct extends JpaRepository<product, Integer>
{
 
	//Search by Name and Type
	List<product> findByPnameOrPtypeLike(String name,String type);
	
	//Search
	List<product> findByPnameLike(String name);
	
	
	
}
