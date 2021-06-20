
public class GugudanHw {
	//¦���� (2��, 4��, 6��, 8��)�� �迭 ����
	int[] evenGugu(int num){
		
		int result[] = new int[9];
		for(int i=0; i<result.length; i++){
			result[i] = num * (i+2);
		}
		
		return result;
	}
	
	//Ȧ����(3��, 5��, 7��, 9��)�� �迭 ����
	int[] oddGugu(int num){
		int result[] = new int[9];
		int i=0;
		while(i<result.length){
			result[i] = num * (i+1);
			i++;
		}
		return result;
	}
	
	//������� ������ �迭 ���
	void printGugu(int[] gugudanArr){
		for(int i = 0; i<gugudanArr.length;i++){
			if(i%2 ==0 ) System.out.println(gugudanArr[i]);
		}
	}
}
