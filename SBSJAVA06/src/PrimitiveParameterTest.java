
public class PrimitiveParameterTest {

	public static void main(String[] args) {
		Data myData = new Data();
		myData.num = 10;
		System.out.println("main()���� myData.num : "+myData.num );

		PrimitiveParameterTest.change(myData.num);
		System.out.println("change() ��� �� main() ���� myDaya.num : " + myData.num);
	}
	public static void change(int localNum){
		localNum = 1000;
		System.out.println("change() ���� localNum : "+ localNum);
	}

}
