
public class OpTest3 {

	public static void main(String[] args) {
		
		int num1 =10;
		int num2 = 3;
		
		//비교 연산자는
		//값이 대소비교 혹은 등가비교(같은지 다른지)를 비교하기 위해 사용
		//이 연산자의 결과는 항상 true / false로 나타난다.
		System.out.println(num1 > num2);
		System.out.println(num1 >= num2);
		System.out.println(num1 < num2);
		System.out.println(num1 <= num2);
		System.out.println(num1 == num2);
		System.out.println(num1 != num2);

		boolean myBool =(num1 > num2);
		System.out.println(myBool);
	}

}
