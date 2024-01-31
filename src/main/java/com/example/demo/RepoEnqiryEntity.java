package com.example.demo;

import java.sql.*;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
@Repository
public interface RepoEnqiryEntity extends JpaRepository<enquiry_Entity, Integer>
{


 
	//Enqiry Report
	List<enquiry_Entity> findByDateoutBetween(java.util.Date startdate, java.util.Date enddate);
	
	List<enquiry_Entity> findByFemailLike(String email);
}
