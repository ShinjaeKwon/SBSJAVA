import java.awt.Event;
import java.awt.print.Printable;


public class GugudanHwTest {

	public static void main(String[] args) {
		
		GugudanHw myGugudanHw = new GugudanHw();
		
		int result[];
		//2�ܺ��� 9�ܱ��� ���� ���
		for(int i=0; i<8; i++){
			
			//������ �ܼ��� ¦���̸�
			if((i+2)%2 == 0){
				result =myGugudanHw.evenGugu(i+2);
				
			}
			
			//������ �ܼ��� Ȧ�����̸�
			else{
				result = myGugudanHw.oddGugu(i+2);
			}
			myGugudanHw.printGugu(result);
			System.out.println("#####################");
		}

	}

}
