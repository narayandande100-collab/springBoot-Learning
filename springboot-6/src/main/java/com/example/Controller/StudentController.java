package com.example.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.entity.Student;
import com.example.repo.StudentRepo;

@Controller
public class StudentController {
	
	 private final StudentRepo studentRepo;

	    public StudentController(StudentRepo studentRepo) {
	        this.studentRepo = studentRepo;
	    }
	
	
	
	

    @GetMapping({"/","enrollment-form"})
    public String enrollmentForm(Model model) {

        Student s1 = new Student();

        model.addAttribute("Student", s1);

        return "student-enrollment-form";
    }

    @PostMapping("/save")
    public String saveStudent(Student student, Model model) {

        System.err.println(student.getName());
        
        

        model.addAttribute("Student", student);

        return "student-enrollment-form";
    }
}