package com.dande;

//dependent class
public class UPIpayment implements InterfacePayment{
	

	public void pay(int amount) {
		System.out.println("UPI via payment "+amount);
	}


}
