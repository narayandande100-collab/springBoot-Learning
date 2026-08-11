package com.narayan.dao;

import org.springframework.stereotype.Repository;

@Repository

public class Userdao {
	
	public Userdao() {
		System.out.println("object is create User dao class");
	}
	
	public void getdata() {
		System.out.println("get data method call");
	}

}
