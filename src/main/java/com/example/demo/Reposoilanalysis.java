package com.example.demo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface Reposoilanalysis extends JpaRepository<soilanalysis_Enitty , Integer>
{
	//Soil Report gate by date
	List<soilanalysis_Enitty> findBySdateBetween(java.util.Date startdate,java.util.Date enddate);
	
	List<soilanalysis_Enitty> findBySemailLike(String email);
	
	soilanalysis_Enitty findBySemail(String email);
	
	
}
