package com.narayan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class welcomeController {
	
	@GetMapping("/welcome")
	public ModelAndView welcome() {
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("welcome");
		
	    String  msg = " welcome...... I am Narayan Dande";
	    String  msg2 = "I have learned Springboot";
	    mav.addObject("messege", msg);
	    mav.addObject("degree", msg2);
		
		return mav;
	}
	
	@GetMapping("/Greet")
	public ModelAndView Greet() {
		ModelAndView mav1 = new ModelAndView();
		mav1.setViewName("Greet");
		return mav1;
		
	}

}
