
public class StringTest02 {

	public static void main(String[] args) {
		String str = "Hello, World!";
		System.out.println(str.length());  //���ڿ��� ���̸� ��ȯ
		
		//substring �κ� ���ڿ� ���ϱ� : ���� ���ڿ����� �Ϻθ� �߶󳻼� ������´�.
		String str2 = str.substring(7);    //substring(index), index��ȣ �����ε��� ���� ���ڿ��� ������ �߶� ����
		System.out.println(str2);
		
		//substring�� �����ε� 
		String str3	= str.substring(3,8);  //substring(index1, index2) , index1��ȣ ���� index2�ٷ� �� ���ڱ��� ���ڿ��� �߶� ����
		System.out.println(str3);
		
		// String �������� �޸� �ּҰ� ����Ǿ� �ִ�.
		// == �����ڸ� ���ؼ� ����� ���ڿ��� ������ ���θ� �˻��ϴ� ���� �����ϴ�.
		String str4 ="Hello, World!";	  //new�� ������� �ʰ� ���ڿ��� ����ҽ� ���� ������ ����Ų��, �� �޸��ּҰ� ����.
		System.out.println(str == str4 ? "����" : "�ٸ�"); //���ڿ����� == �����ڸ� ����, �޸� ������ ������ Ȯ���� boolean�� ��ȯ�Ѵ�.
		
		String str5 = new String("Hello, World!");	//new�����ڸ� �̿��� ���ڿ� ������ ���ڿ��� �����ص� �޸𸮰����� ��������Ƿ�, �޸��� �ּҰ� �ٸ���.
		System.out.println(str == str5 ? "����" : "�ٸ�"); 
		
		if(str.equals("Hello, World!"))  //���ڿ��� �������� �񱳽�, .equals()�� ����Ѵ�. ���� ���ڿ��� ������ ���ٸ�, true�� ��ȯ����
			System.out.println("str�� ������ �ִ� ���ڿ��� [Hello, World!]���ڿ��� ����"); 
		
		if("Hello, World!".equals(str))
			System.out.println("[Hello, World!]���ڿ��� str�� ������ �ִ� ���ڿ��� ����");
		
		if(str.equals(str4)) System.out.println("str�� str4�� ������ ���ڿ� ����");
		if(str.equals(str5)) System.out.println("str�� str5�� ������ ���ڿ� ����");
		
		//.�����ڸ� ����ؼ� �޼����� ���ϵǴ� �����ͷ� �ٽ� �ٸ� �޼��带 �ٷ� �����ϴ� ��� -> �޼��� ü��(Method Chain)
		if(str.substring(0,5).equals("Hello")){
			System.out.println("Hello ���ڿ��� �߶�½��ϴ�.");
		}
	}

}
