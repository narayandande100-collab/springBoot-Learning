package com.narayan;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;

import com.narayan.repository.EmployeeRepository;
import com.narayan.entity.*;

@SpringBootApplication
public class Springboot3Application implements CommandLineRunner{

	public static void main(String[] args) {
		SpringApplication.run(Springboot3Application.class, args);
	}
	
	@Autowired
	EmployeeRepository employeeRepository;

	@Override
	public void run(String... args) throws Exception {
		
		//employeeRepository.deleteAll();
//		List<employee> employees = Arrays.asList(
//
//				 new employee("Atharv", "Pune", "500.00", "IT"),
//				    new employee("Rahul", "Mumbai", "550.00", "HR"),
//				    new employee("Sneha", "Nashik", "480.00", "SALES"),
//				    new employee("Priya", "Pune", "620.00", "FINANCE"),
//				    new employee("Rohit", "Nagpur", "450.00", "IT"),
//
//				    new employee("Amit", "Pune", "580.00", "IT"),
//				    new employee("Neha", "Mumbai", "520.00", "HR"),
//				    new employee("Akash", "Nashik", "610.00", "SALES"),
//				    new employee("Pooja", "Pune", "670.00", "FINANCE"),
//				    new employee("Vishal", "Nagpur", "490.00", "IT"),
//
//				    new employee("Snehal", "Pune", "540.00", "HR"),
//				    new employee("Kunal", "Mumbai", "630.00", "IT"),
//				    new employee("Riya", "Nashik", "510.00", "SALES"),
//				    new employee("Saurabh", "Pune", "720.00", "FINANCE"),
//				    new employee("Nikhil", "Nagpur", "460.00", "IT"),
//
//				    new employee("Sakshi", "Pune", "590.00", "HR"),
//				    new employee("Pratik", "Mumbai", "680.00", "IT"),
//				    new employee("Komal", "Nashik", "530.00", "SALES"),
//				    new employee("Manish", "Pune", "750.00", "FINANCE"),
//				    new employee("Tejas", "Nagpur", "470.00", "IT"),
//
//				    new employee("Aishwarya", "Pune", "560.00", "HR"),
//				    new employee("Yash", "Mumbai", "640.00", "IT"),
//				    new employee("Pallavi", "Nashik", "500.00", "SALES"),
//				    new employee("Sachin", "Pune", "690.00", "FINANCE"),
//				    new employee("Omkar", "Nagpur", "480.00", "IT"),
//
//				    new employee("Kiran", "Pune", "570.00", "HR"),
//				    new employee("Abhishek", "Mumbai", "660.00", "IT"),
//				    new employee("Mitali", "Nashik", "520.00", "SALES"),
//				    new employee("Ganesh", "Pune", "710.00", "FINANCE"),
//				    new employee("Harsh", "Nagpur", "495.00", "IT")
//			    
//			);
//
//			employeeRepository.saveAll(employees);
			
			
		
		
		
		List<employee> findByName = employeeRepository.findByName("Atharv");
		findByName.forEach(i-> System.err.println(i));
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
			// sorting
			Sort descending = Sort.by("name").ascending();	
			
			employeeRepository.findAll(descending).forEach(i-> System.err.println(i));
			
			
			
			
			//pagination
			PageRequest request = PageRequest.of(0,10);
			Page<employee> page = employeeRepository.findAll(request);
			
			List<employee> content = page.getContent();
			content.forEach(i -> System.err.println(i));
			
			
			//filteration
			employee e = new employee();
			e.setDepartment("IT");
			
			Example<employee> of = Example.of(e);
			
			List<employee> all = employeeRepository.findAll(of);
			all.forEach(i-> System.err.println(i));
			
		
	}
}
