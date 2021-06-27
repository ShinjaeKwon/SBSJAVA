import gugudan.*;

public class GugudanHwTest {

	public static void main(String[] args) {
		
		GugudanHwChild gugudan = new GugudanHwChild();
		
		int result[];
		for(int i=2; i<10;i++){
			if(i%2 == 0){
				result = gugudan.evenGugu(i);
			}else{
				result =gugudan.oddGugu(i);
			}
			gugudan.printGugu(result);
		}
		
		
	}

}
