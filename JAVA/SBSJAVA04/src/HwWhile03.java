
public class HwWhile03 {

	public static void main(String[] args) {
		
		int i= 2;
		int j =1;
		
		while(i<10){
			while(j<10){
				System.out.println(i+" X "+j+" = "+ j*i);
				j++;
			}
			j=1;
			i++;
		}

	}

}
