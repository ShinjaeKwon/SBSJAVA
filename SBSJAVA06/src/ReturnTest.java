
public class ReturnTest {

	public static void main(String[] args) {
			
		PrimitiveReturn pReturn = new PrimitiveReturn();
		int testResult = pReturn.add(10, 3);
		System.out.println("pReturn.result : "+ pReturn.result);
		System.out.println("testResult : "+testResult);
		
		testResult = 20;
		System.out.println("���� �� pReturn.result : "+ pReturn.result);
		System.out.println("���� �� testResult : "+testResult);
		
		System.out.println("################################################");
		
		ReferenceReturn rReturn = new ReferenceReturn();
		int[] testResultArr = rReturn.makeArr(10, 3);  //�� ������ ���� ����Ű�� �ִ� ����
		
		//makeArr() �޼���ȿ��� ������ result ��ü�� ����
		
		
		System.out.println("rReturn.result[0] : "+ rReturn.result[0]);
		System.out.println("testResultArr[0] : "+testResultArr[0]);
		testResultArr[0] = 30;
		System.out.println("���� �� rReturn.result[0] : "+ rReturn.result[0]);   //�� ����
		System.out.println("���� �� testResultArr[0] : "+testResultArr[0]); 
		
		
	}

}
