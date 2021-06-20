//클래스는 크게 데이터를 저장하기위한 변수 영역과 기능을 실행하기위한 명령이 집합인 메서드 영역
public class Tv {
	String color;	//TV의 색상
	boolean power;	//TV의 전원상태
	int channel;	//TV의 채널
	
	//TV의 기능을 담당하는 명령어 집합 -> 메서드
	void power(){ 	//TV의 전원을 키거나 끄는 역할(리모콘의 전원 버튼)
		power = !power;
	}
	
	void channelUp(){
		channel++;
	}
	void channelDown(){
		channel--;
	}
	
}
