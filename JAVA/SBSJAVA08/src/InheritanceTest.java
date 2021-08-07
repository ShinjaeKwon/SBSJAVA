
public class InheritanceTest {

	public static void main(String[] args) {
		Parent myParent = new Parent();
		Child myChild = new Child();
		
		System.out.println("Parent 객체");
		myParent.money = 10000;
		myParent.shopping();
		myParent.working();
		System.out.println("--------------");
//		부모 클래스는 자식 클래스가 직접 정의한 멤버는 사용 불가 
		
		System.out.println("Child 객체");
		myChild.money = 1000;
		myChild.shopping();
		myChild.working();
		myChild.play();
	}

}
