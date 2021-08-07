package gugudan;

public class GuGudanHw {

	public int[] evenGugu(int num){
		int[] result = new int[9];
		for(int i=0; i<9 ; i++){
			result[i] = num * (i+1);
		}		
		return result;
	}
	
	
	public int[] oddGugu(int num){
		int[] result = new int[9];
		int i=0;
		while(i<9){
			result[i] = num * (i+1);
			i++;
		}		
		return result;
	}

	
	
	public void printGugu(int[] gugudanArr){
		for(int i = gugudanArr.length-1 ; i>=0 ; i--){
			if(i % 2 == 0)
				System.out.println(
						"gugudanArr[" + i + "] : " + gugudanArr[i]
				);
		}
	}

}
