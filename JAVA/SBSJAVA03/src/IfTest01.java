
public class IfTest01 {

	public static void main(String[] args) {
		
		int num1 = 10;
		int num2 = 3;
		
		//단일 if문
		//if앞에 있는 (...) 여기에 true/false 나올 수 있는 조건식을 작성
		//조건식이 true라면 {...} 코드가 실행
		//조건식이 false라면 {...} 코드 실행하지 않는다.
		if(num1 > num2){
			System.out.println("num1의 값이 num2보다 큽니다!");
		}
		System.out.println("실행끝!");
		//참고 : 만약 실행할문장이 단 한문장이라면 {...} 중괄호 생략 가능

		//if, else 구문
		if(num1 < num2){
			System.out.println("num1은 num2보다 작다");
		}else{
			System.out.println("num1은 num2보다 작지 않다!");
		}
	}
	
}
