//Ŭ������ ũ�� �����͸� �����ϱ����� ���� ������ ����� �����ϱ����� ����� ������ �޼��� ����
public class Tv {
	String color;	//TV�� ����
	boolean power;	//TV�� ��������
	int channel;	//TV�� ä��
	
	//TV�� ����� ����ϴ� ��ɾ� ���� -> �޼���
	void power(){ 	//TV�� ������ Ű�ų� ���� ����(�������� ���� ��ư)
		power = !power;
	}
	
	void channelUp(){
		channel++;
	}
	void channelDown(){
		channel--;
	}
	
}
