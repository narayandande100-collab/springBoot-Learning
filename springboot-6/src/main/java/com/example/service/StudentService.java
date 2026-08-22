package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;

import com.example.entity.Student;
import com.example.repo.StudentRepo;

@Service
public class StudentService {
	
	@Autowired
	StudentRepo repository;
	
	public List< Student > getAll() {
		List< Student > students = repository.findAll();
		return students;
	}
	
	
	
	
	public String saveStudent(Student student)
	{
	    // Course Duration

	    if (student.getCourse().equals("full stack java developer"))
	    {
	        student.setCourseDuration("6 Month");
	    }
	    else if (student.getCourse().equals("core java and advanced java"))
	    {
	        student.setCourseDuration("3 Month");
	    }
	    else if (student.getCourse().equals("python with backend django"))
	    {
	        student.setCourseDuration("4 Month");
	    }
	    else if (student.getCourse().equals("data analyst and Machine learning"))
	    {
	        student.setCourseDuration("6 Month");
	    }

	    repository.save(student);
		
	    return "Student saved successfully!";
	}
	

}
