package com.example.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.entity.Student;
import com.example.repo.StudentRepo;
import com.example.service.StudentService;

@Controller
public class StudentController {
	
	@Autowired
	StudentService service;

    @GetMapping({"student-enrollment-form"})
    public String enrollmentForm(Model model) {

        Student s1 = new Student();

        model.addAttribute("Student", s1);

        return "student-enrollment-form";
    }
    
    @GetMapping({"/","home"})
    public String homePage() {
    	     return "home";
    }
    
    
    @GetMapping("/Student-list")
    public String getAllStudent(Model model) {
    	
    	    List<Student> students = service.getAll();
    	    model.addAttribute("students",students);
    	    
    	    return "Student-list";
    	
    }
   
    

    

    @PostMapping("/save")
    public String saveStudent(Student student, Model model) {
    	
        System.err.println(student);
        
        String msg = service.saveStudent(student);

        model.addAttribute("msg", msg);
        model.addAttribute("Student", new Student());

        return "student-enrollment-form";
    }
}