
public class IfTest01 {

	public static void main(String[] args) {
		
		int num1 = 10;
		int num2 = 3;
		
		//���� if��
		//if�տ� �ִ� (...) ���⿡ true/false ���� �� �ִ� ���ǽ��� �ۼ�
		//���ǽ��� true��� {...} �ڵ尡 ����
		//���ǽ��� false��� {...} �ڵ� �������� �ʴ´�.
		if(num1 > num2){
			System.out.println("num1�� ���� num2���� Ů�ϴ�!");
		}
		System.out.println("���ೡ!");
		//���� : ���� �����ҹ����� �� �ѹ����̶�� {...} �߰�ȣ ���� ����

		//if, else ����
		if(num1 < num2){
			System.out.println("num1�� num2���� �۴�");
		}else{
			System.out.println("num1�� num2���� ���� �ʴ�!");
		}
	}
	
}
