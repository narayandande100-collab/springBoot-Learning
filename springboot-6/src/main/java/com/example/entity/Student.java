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
	private String name;
	
	@Column(unique = true)
	private String email;
	
	private String address;
	private String qulification;
	private String gender;
	private String course;
	private String timing;
	private String mobNo;
	private String courseDuration;
	
	

}
