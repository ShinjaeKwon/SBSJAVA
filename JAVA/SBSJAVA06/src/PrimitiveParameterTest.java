public class PrimitiveParameterTest {
	
	public static void main(String[] args) {
		
		Data myData = new Data();
		myData.num = 10;
		
		System.out.println("main() 안의 myData.num : " + myData.num); // 10
		
		PrimitiveParameterTest.change(myData.num);
		System.out.println("change() 사용 후 main() 안의 myData.num : " + myData.num); // 10
	}
	
	public static void change (int localNum) {
		                       	// localNum = myData.num
								// localNum = 10
		localNum = 1000;
		System.out.println("change() 내부 localNum : " + localNum); // 1000
	}
}