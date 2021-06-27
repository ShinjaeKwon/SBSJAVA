
public class GugudanHw {
	
	int[] evenGugu(int num){
		
		int result[] = new int[9];
		for(int i=0; i<result.length; i++){
			result[i] = num * (i+1);
		}
		
		return result;
	}
	
	
	int[] oddGugu(int num){
		int result[] = new int[9];
		int i=0;
		while(i<result.length){
			result[i] = num * (i+1);
			i++;
		}
		return result;
	}
	
	
	void printGugu(int[] gugudanArr){
		for(int i = gugudanArr.length; i>0;i--){
			if(i%2 == 0) System.out.println("gugudanArr[ "+i+" ] : "+gugudanArr[i]);
		}
	}
}
