
public class TopSecretTest {

	public static void main(String[] args) {
		TopSecret t = new TopSecret();
//		t.secret = 1000;
		t.setSecret(1000);

//		int ss = t.secret;
		int s = t.getSecret();
		
		System.out.println("sė ę°ė : "+ s);
		System.out.println("t.getSecret() : "+t.getSecret());
		
	}

}
