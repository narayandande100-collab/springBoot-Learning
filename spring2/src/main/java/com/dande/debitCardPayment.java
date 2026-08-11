package com.dande;

//dependent class 
public class debitCardPayment implements InterfacePayment{
	
    
	public void pay(int amount) {
		System.out.println("debitcard via payment "+amount);
	}


}
