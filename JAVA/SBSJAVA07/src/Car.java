
public class Car {
	String color;	//색상
	String gearType;		//기어의 종류 auto/stick
	int door;  //문 개수
	
	public Car(){
		//this() 현재 클래스에 있는 다른 생성자를 실
		this("White", "auto", 4);
	}
	
	public Car(String color){
		this(color, "auto", 4);
	}
	
	public Car(String color, String gearType , int door){
		this.color = color;
		this.gearType =gearType;
		this.door =door;
	}
	
}
