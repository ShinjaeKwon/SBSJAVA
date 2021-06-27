public class ReferenceParameterTest {
	
	public static void main(String[] args) {
		Data myData = new Data(); // 0x100
		myData.num = 10;
		
		System.out.println("main() 안의 myData.num : " + myData.num); // 10
		
		ReferenceParameterTest.change(myData);
		System.out.println("change() 사용 후 main() 안의 myData.num : " + myData.num); // 1000
	}
	
	public static void change (Data data) {	
							// Data data = myData
							// Data data = 0x100
		data.num = 1000;
		System.out.println("change() 내부 data.num : " + data.num); // 1000
	}
}