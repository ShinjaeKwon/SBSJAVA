import java.awt.Event;
import java.awt.print.Printable;


public class GugudanHwTest {

	public static void main(String[] args) {
		
		GugudanHw myGugudanHw = new GugudanHw();
		
		int result[];
		//2단부터 9단까지 만들어서 출력
		for(int i=0; i<8; i++){
			
			//구구단 단수가 짝수이면
			if((i+2)%2 == 0){
				result =myGugudanHw.evenGugu(i+2);
				
			}
			
			//구구단 단수가 홀수단이면
			else{
				result = myGugudanHw.oddGugu(i+2);
			}
			myGugudanHw.printGugu(result);
			System.out.println("#####################");
		}

	}

}
