package com.dande;

//dependent class
public class creditCardPayment implements InterfacePayment {
	
	public void pay(int amount) {
		System.out.println("credit via payment "+amount);
	}

}
