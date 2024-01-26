package com.example.demo.Admin;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;



public interface RepoBlog extends JpaRepository<blog, Integer>
{
	
	//Show all Blog To Farmer
	List<blog> findByTitleLike(String title);
	  

}
