package com.example.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import lombok.Data;
import jakarta.persistence.GenerationType;

@Entity(name = "Student")
@Data
public class Student {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	private String Name;
	
	@Column(unique = true)
	private String email;
	
	private String Address;
	
	private String Qulification;
	
	private String Gender;
	
	private String Course;
	
	private String Timing;
	
	private String MobNo;
	
	

}
