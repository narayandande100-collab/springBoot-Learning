package MyPackage;


public class Main {

    public static void main(String[] args) {
    	System.out.println("System is Started");
    	
    	//MyInterf i = () -> System.out.println("I am Narayan");
    	//i.sayHello();
    	
    	/*SumInter x = (int a,int b) -> {
    		return a+b;
    	};*/
    	
    	//SumInter x = (int a,int b) -> a+b;
    	SumInter x = (a,b) -> a+b;
    	System.out.println(x.sum(2,3));
    	
    	
    	lengthInterface y = str -> str.length();
    	System.out.println(y.StringLength("NARAYAN"));

    }
}
