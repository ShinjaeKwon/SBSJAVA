
public class PopQuiz {

	public static void main(String[] args) {
		int sum = 0;
		for(int i =0 ; i<10; i++){
			if(i%2 ==0) continue;
			if(i ==6)break;
			sum +=i;
		}
		System.out.println("ÃÖÁ¾ sum : "+sum);

	}

}
