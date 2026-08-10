package com.narayan;

public class Student {
	
	 private int id;
	 private String name;
	 private String Address;
	 private String Subjects[];
	 
	 void display() {
		 System.out.println("ID  =" + id );
		 System.out.println("Name ="+ name);
		 System.out.println("address ="+ Address);
		 for(String sub : Subjects) {
			    System.out.println(sub);
	    }
		 
		 System.out.println("________________________________________");
	 }
	 
	 public int getId () {
		 return id;
	 }
	 
	 public void setId(int id) {
		    this.id = id;
	}
	 
	 public String getName() {
		    return name;
		}
	 
	 public void setName(String name) {
		    this.name = name;
		}
	 
	 public void setAddress(String Address) {
		 this.Address = Address;
	 }
	 public String getAddress() {
		 return Address;
	 }
	 
	 public String[] getSubjects() {
		 return Subjects;
	 }
	 
	 public void setSubjects(String Subjects[]) {
		 this.Subjects = Subjects;
	 }

}
