package com.narayan.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.narayan.entity.employee;

public interface EmployeeRepository extends JpaRepository< employee, Integer> {
	
	

	List<employee> findByName(String name);

}
