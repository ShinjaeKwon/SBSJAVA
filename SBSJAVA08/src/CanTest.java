
public class CanTest {

	public static void main(String[] args) {
//		abstract 클래스는 객체로 만들수 없다 -> 인스턴스화 불가능
//		EmptyCan emptyCan = new  EmptyCan(); //사용불가
		
		EmptyCan can = new BeerCan();
		can.printContent();
		can.printName();
//		can.sayHello();  //사용불가
		
		BeerCan blackBeerCan = new BeerCan();
		blackBeerCan.printContent();
		blackBeerCan.printName();
		blackBeerCan.sayHello();
		
		
		
	}

}
