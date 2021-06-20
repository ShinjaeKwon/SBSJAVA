
public class GugudanHw {
	//짝수단 (2단, 4단, 6단, 8단)의 배열 제작
	int[] evenGugu(int num){
		
		int result[] = new int[9];
		for(int i=0; i<result.length; i++){
			result[i] = num * (i+2);
		}
		
		return result;
	}
	
	//홀수단(3단, 5단, 7단, 9단)의 배열 제작
	int[] oddGugu(int num){
		int result[] = new int[9];
		int i=0;
		while(i<result.length){
			result[i] = num * (i+1);
			i++;
		}
		return result;
	}
	
	//만들어진 구구단 배열 출력
	void printGugu(int[] gugudanArr){
		for(int i = 0; i<gugudanArr.length;i++){
			if(i%2 ==0 ) System.out.println(gugudanArr[i]);
		}
	}
}
