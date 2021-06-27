public class ReturnTest {

	public static void main(String[] args) {
		
		PrimitiveReturn pReturn = new PrimitiveReturn();		
		int testResult = pReturn.add(10, 3); // 13
		System.out.println("pReturn.result : " + pReturn.result); // 13
		System.out.println("testResult : " + testResult); // 13
		testResult = 20;
		System.out.println("변경 후 pReturn.result : " + pReturn.result); // 13
		System.out.println("변경 후 testResult : " + testResult); // 20
		
		ReferenceReturn rReturn = new ReferenceReturn();		
		int[] testResultArr = rReturn.makeArr(10, 3);
		//                  = makeArr() 메서드안에서 생성한 result 객체를 리턴받는다.
		//					= 0x100
		
		System.out.println("rReturn.result[0] : " + rReturn.result[0]); // 13
		System.out.println("testResultArr[0] : " + testResultArr[0]); // 13		
		testResultArr[0] = 30;		
		System.out.println("변경 후 rReturn.result[0] : " + rReturn.result[0]); // 30
		System.out.println("변경 후 testResultArr[0] : " + testResultArr[0]); // 30
	}
}