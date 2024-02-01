package com.example.demo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RepofarmerTrainingEntity extends JpaRepository<Training_Farmer, Integer>


{
	//Farmer Training Report by date
	
	List<Training_Farmer> findByFdateBetween(java.util.Date startdate,java.util.Date enddate);
	
	List<Training_Farmer> findByFemailLike(String email);

}
