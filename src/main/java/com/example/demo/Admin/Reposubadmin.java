package com.example.demo.Admin;

import org.springframework.data.jpa.repository.JpaRepository;

public interface Reposubadmin extends JpaRepository<subadmin_Entity, Integer>
{

	//Login Subadmin
	 subadmin_Entity findByNameAndPassword(String name,String password);
}
