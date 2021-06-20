
public class ReturnTest {

	public static void main(String[] args) {
			
		PrimitiveReturn pReturn = new PrimitiveReturn();
		int testResult = pReturn.add(10, 3);
		System.out.println("pReturn.result : "+ pReturn.result);
		System.out.println("testResult : "+testResult);
		
		testResult = 20;
		System.out.println("변경 후 pReturn.result : "+ pReturn.result);
		System.out.println("변경 후 testResult : "+testResult);
		
		System.out.println("################################################");
		
		ReferenceReturn rReturn = new ReferenceReturn();
		int[] testResultArr = rReturn.makeArr(10, 3);  //한 공간을 같이 가리키고 있는 상태
		
		//makeArr() 메서드안에서 생성한 result 객체를 리턴
		
		
		System.out.println("rReturn.result[0] : "+ rReturn.result[0]);
		System.out.println("testResultArr[0] : "+testResultArr[0]);
		testResultArr[0] = 30;
		System.out.println("변경 후 rReturn.result[0] : "+ rReturn.result[0]);   //값 복사
		System.out.println("변경 후 testResultArr[0] : "+testResultArr[0]); 
		
		
	}

}
