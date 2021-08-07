
public class BreakTest01 {

	public static void main(String[] args) {
		int sum = 0;
		
		for(int i = 0; i<50; i++){
			System.out.println("현재 sum:"+ sum+", 현재 i:"+i);
			if(sum >10) break;
			sum += i;
		}
		System.out.println("프로그램 실행 종료");
	}

}
