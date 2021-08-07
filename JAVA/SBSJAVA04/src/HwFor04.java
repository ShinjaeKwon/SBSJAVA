
public class HwFor04 {

	public static void main(String[] args) {
		for(int i=1; i<10;i++){
			if(i%2 == 1)continue;
			System.out.println("2 X "+i+" = "+ 2*i);
			if(i==6)break;
		}

	}

}
