
public class GugudanHwTest {

	public static void main(String[] args) {
		
		GugudanHw myGugudanHw = new GugudanHw();
		
		int result[];
		
		for(int i=0; i<8; i++){
			
			
			if((i+2)%2 == 0){
				result =myGugudanHw.evenGugu(i+2);
				
			}
			
			
			else{
				result = myGugudanHw.oddGugu(i+2);
			}
			myGugudanHw.printGugu(result);
			System.out.println("#####################");
		}

	}

}
