
public class ImplicitTypeConversion {

	public static void main(String[] args) {
		
//		byte myByte=100;
//		System.out.println(myByte);
//		int myInt =myByte; //100���� byte���� int�� ����ȯ�� �߻��ߴ�!
//		System.out.println(myInt);
		
		byte byteNum = 100;
		System.out.println("byte : "+ byteNum);
		
		short shortNum= (short) byteNum;
		System.out.println("short : "+ shortNum);
		
		int intNum = (int) shortNum;
		System.out.println("int : "+intNum);
		
		long longNum = (long)intNum;
		System.out.println("long : "+longNum);
		
		float floatNum =(float) longNum;
		System.out.println("float : "+floatNum);
		
		double doubleNum = floatNum;
		System.out.println("double : "+doubleNum);

		
	}
	

}
