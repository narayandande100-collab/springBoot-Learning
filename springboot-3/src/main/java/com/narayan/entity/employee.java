package com.narayan.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import jakarta.persistence.Id;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class employee {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String name;
	private String address;
	private String salary;
	private String department;
	
	
//	public employee() {
//		
//	}
	
	public employee(String name,String address,String salary,String department) {
		this.name= name;
		this.address = address;
		this.department = department;
		this.salary = salary;
	}
	
	
	
	
	
	
	
	
	//lam are not working they are not called to TOstring  method inside the @data annotataion
//	 @Override
//	    public String toString() {
//	        return "employee{" +
//	                "id=" + id +
//	                ", name='" + name + '\'' +
//	                ", address='" + address + '\'' +
//	                ", salary='" + salary + '\'' +
//	                ", department='" + department + '\'' +
//	                '}';
//	    }
	 
	 
	 
	 
//	public void setName(String Name) {
//		this.Name= Name;	
//	}
//	public void setAddress(String Address) {
//		this.Address = Address;
//	}
//	public void setDepartment(String salary) {
//		this.department = department;
//	}
//	public void setSalary(String department) {
//		this.salary = salary;
//	}

}
