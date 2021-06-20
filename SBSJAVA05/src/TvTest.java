
public class TvTest {

	public static void main(String[] args) {
		Tv myTv;
		myTv = new Tv();
		
		myTv.power=false;
		myTv.color = "Black";
		myTv.channel =10;
		
		myTv.power();
		System.out.println(myTv.power);
		myTv.channelUp();
		System.out.println(myTv.channel);
		myTv.channelDown();
		System.out.println(myTv.channel);
		
		Tv myTv2 = new Tv();
		

	}

}
