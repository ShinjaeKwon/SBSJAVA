import gugudan.GuGudanHw;
import gugudan.GuGudanStorage;
public class GugudanHwAccessTest {

	public static void main(String[] args) {
		
		GuGudanHw myGugudanHw = new GuGudanHw();
		GuGudanStorage myGuguStrg = new GuGudanStorage();

		for(int i=2 ; i<=9 ; i++){
			if(i%2 == 0){
				// myGuguStrg.gugudanArr = myGugudanHw.evenGugu(i);
				myGuguStrg.setGugudanArr(myGugudanHw.evenGugu(i));
			}else{
				myGuguStrg.setGugudanArr(myGugudanHw.oddGugu(i));
			}
			//myGugudanHw.printGugu(myGuguStrg.gugudanArr);
			myGugudanHw.printGugu(myGuguStrg.getGugudanArr());
		}

	}

}
