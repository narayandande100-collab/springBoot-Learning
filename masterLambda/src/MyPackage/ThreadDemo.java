package MyPackage;

public class ThreadDemo {
	
	public static void main(String[] args) {
		
		Runnable thread1 = () -> {
			//this is a body of thread stuff
			//stuff
			for(int i=0 ;i<= 10; i++) {
				System.out.println("value of i is "+i);
				try {
					Thread.sleep(2000);
				}catch(InterruptedException e) {
					
					e.printStackTrace();
				}	
			}
		};
		Thread t = new Thread(thread1);
		t.setName("Narayan");
		t.start();
		
		Runnable thread2 = () -> {
			//this is body of thread 2
			for(int i=0;i <= 20;i++ ){
				System.out.println(+i);
				try {
					Thread.sleep(1000);
				}catch(InterruptedException e) {
					
					e.printStackTrace();
				}	
			}
		};
		Thread t1 = new Thread(thread2);
		t1.setName("Dande");
		t1.start();
		
	}
}
