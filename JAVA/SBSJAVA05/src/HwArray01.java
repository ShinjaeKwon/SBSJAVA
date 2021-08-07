
public class HwArray01 {

	public static void main(String[] args) {
		
		int [][] gugudan = new int[8][9];
		for(int i=0;i<8;i++){
			for(int j=0; j<9; j++){
				gugudan[i][j]= (i+2)*(j+1);
			}
		}
		for(int i=0;i<8;i++){
			for(int j=0; j<9; j++){
				System.out.println((i+2)+" X "+(j+1)+" = "+gugudan[i][j] );
			}
		}
		
		System.out.println("###################################");

		for(int i=7;i>=0;i--){
			for(int j=8; j>=0; j--){
				System.out.println((i+2)+" X "+(j+1)+" = "+gugudan[i][j] );
				
			}
		}
		
	}

}
