package reference;

public class Main {
	public static void main (String[] args) {
		
		//provider provider1 = () -> {
		//	return new constructor();
		//};
		
		//using Constructor references
		provider provider1 = constructor:: new;
		
		constructor obj = provider1.getConstructor();
		
		obj.display();
	} 

}
