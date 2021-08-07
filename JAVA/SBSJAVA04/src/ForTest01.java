
public class ForTest01 {

	public static void main(String[] args) {
		int sum = 0;
//		for(반복기준변수 ; 반복조건식 ; 반복증감식)
//		반복기준 변수 : 반복을 몇번할건지, 어떻게 할건지에 대한 기준이 되는 변수를 선언(for문 안에서만 사용가능)
//		반복조건식 : 현재 반복문에 반복을 계속할지 여부를 결정하기 위한 조건식
//				반복 조건식이 true이면 반복할거고, false면 반복을 즉시 종료
//		반복증감식 : 정해진 반복의 종룔를 향해 나아가는 반복기준변수의 값을 바꿔주는 식
		for(int i=1 ; i<=10 ; i++){
			sum += i;
			System.out.println("현재 sum값 : "+sum);
		}
		System.out.println("##최종 sum값 : "+sum);

	}

}
