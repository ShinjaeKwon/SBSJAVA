
public class ReferenceReturn {
	int[] result;
	
	int[] makeArr(int num1, int num2){
		result = new int[1];  //0x100
		result[0] = num1 + num2;
		return result;
	}
}
