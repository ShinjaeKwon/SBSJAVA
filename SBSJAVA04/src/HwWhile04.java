
public class HwWhile04 {

	public static void main(String[] args) {
		
		int i=1;
		while(i<10){
			if(i%2==0)
				System.out.println(2+" X "+i+" = "+2*i);
			if(i == 6) break;
			i++;
		}

	}

}
