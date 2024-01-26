package com.example.demo;

import java.sql.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RepostudntTrainingEntity extends JpaRepository<Training_Student, Integer>
{
	//Student Training Report by date
	List<Training_Student> findBySdateBetween(java.util.Date startdate,java.util.Date enddate);
}
