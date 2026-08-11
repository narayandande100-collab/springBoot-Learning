package com.service;

public class car {
	
		IEngine eng;    //dependency injection is null petrol/engine
		  //          this is constructor
		/*public car(IEngine eng) {
			System.out.println("car..1..parameterized constructor");
			this.eng = eng;
		}
		
		public void journey() {
			eng.start();
			System.out.println("happy journey.....");
		}
		*/
		
		public car() {
			System.out.println("car 0 parameterized constructor");
		}
		
		
		//field Injection required SETTER method
		
		public void setEngine(IEngine eng) {
			this.eng = eng;
		}
		public void journey() {
			eng.start();
			System.out.println("happy journey.....");
		}
}
