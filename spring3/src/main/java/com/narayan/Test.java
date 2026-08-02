package com.narayan;

import javax.management.InvalidApplicationException;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test {
	public static void main (String[] args) {
	
	     ApplicationContext context = new ClassPathXmlApplicationContext("narayan.xml");
	     
	    // car car1 = context.getBean(car.class);
	    // System.out.println(car1.hashCode());   //proof off object is created
	    // car1.journey();
	     
	    // car car2 = context.getBean(car.class);
	    // System.out.println(car1.hashCode());  //proof off object is created
	    // car2.journey();
	     
	     Student s1 =(Student)context.getBean("s1");
	     s1.display();
	     
	     Student s2 =(Student)context.getBean("s2");
	     s2.display();
	     
	     Student s3 =(Student)context.getBean("s3");
	     s3.display();
	    // car car1 = (car)context.getBean("c1");
	    // System.out.println(car1.hashCode());
	     
	    // car car2 = (car)context.getBean("c1");
	    // System.out.println(car2.hashCode());
	     
	     
	     
	     //hashcode is different means separeate object is created
	     
	}
}
