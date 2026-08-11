package com.dande;

public class Test {
	
	public static void main(String[] args) {
		
		
		paymentService obj = new paymentService();
		obj.service = new creditCardPayment();
		//obj.payment1 = new creditCardPayment();
		obj.dopayment(2000);
	}

}
