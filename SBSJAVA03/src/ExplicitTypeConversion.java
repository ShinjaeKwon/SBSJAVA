
public class ExplicitTypeConversion {

	public static void main(String[] args) {
//		int myInt =100;
//		System.out.println(myInt);
////		byte myByte =myInt; //int 타입이 더 큰 타입이므로, 더 작은 타입의 byte 변수에 막 넣을수 없다.
//		byte myByte =(byte)myInt; //괄호를 사용해서, 앞에 변경될 타입을 어거지로 적어놓는다(명시해둔다).
//		System.out.println(myByte);
		double doubleNum = 3.14159265358979323846;
		System.out.println("double : "+doubleNum);
		
		float floatNum =(float) doubleNum;
		System.out.println("float : "+floatNum);
		
		long longNum = (long)floatNum;
		System.out.println("long : "+longNum);
		
		int intNum = (int) longNum;
		System.out.println("int : "+intNum);
		
		short shortNum= (short) intNum;
		System.out.println("short : "+ shortNum);
		
		byte byteNum =(byte) shortNum;
		System.out.println("byte : "+ byteNum);
	
	}

}

