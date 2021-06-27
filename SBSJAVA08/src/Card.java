
public class Card {
	final int NUMBER;  //상수지만 선언과 함께 초기화 하지 않고
	final String KIND; 	//생성자에서 단 한번 초기화 할 수 있다.
	static int width = 100;
	static int heigh = 250;
	
	Card(String kind, int num){
		KIND = kind;
		NUMBER = num;
	}
	
	Card(){
		this("HEART", 1);
	}
	
	public String toString(){
		return ""+ KIND + " "+NUMBER;
	}
}
