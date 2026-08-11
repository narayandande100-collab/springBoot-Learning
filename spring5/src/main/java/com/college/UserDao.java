package com.college;

import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.InitializingBean;

public class UserDao implements InitializingBean , DisposableBean {
	
//	public UserDao() {
//		System.out.println("constructor of User Dao class called ");
//	}
	//automatic called this method 
//	public void init(){
//		//10line code
//		System.out.println("getting DB connection ");
//		
//	}
	
	
	public void getData() {
		//10 line code
		System.out.println("getData from db");
		
	}
	
	//automatic called this method 
	public void destroy() {
		//10 line code
		System.out.println("close the connection of db");
		
	}

	@Override
	public void afterPropertiesSet() throws Exception {
		System.out.println("getting DB connection ");
		
	}
	

}
