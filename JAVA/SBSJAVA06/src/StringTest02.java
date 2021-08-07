public class StringTest02 {
	public static void main(String[] args) {
		String str = "Hello, World!";		
		System.out.println(str.length());
		//int num = str.length();
		//boolean myBool = str.length() > 0;
		//if(str.length() > 0){}
		
		// substring 부분문자열 구하기 : 원본 문자열에서 일부를 잘라내서 가지고옴 
		String str2 = str.substring(7);	// 7인덱스 이후 글자를 다 짤라와라	
		System.out.println(str2);
		
		String str3 = str.substring(3, 8); // 3인덱스 문자부터, 8인덱스 바로 앞 문자까지 짤라와라
		System.out.println(str3);
		
		
		//  String 변수에는 메모리 주소가 저장되어 있으므로
		//  == 연산자를 통해서 저장된 문자열이 같은지 여부를 검사하는 것은 위험하다.
		
		String str4 = "Hello, World!";
		System.out.println( str == str4 ? "같음" : "다름");
		
		String str5 = new String("Hello, World!");
		System.out.println( str == str5 ? "같음" : "다름");
		
		if(str.equals("Hello, World!"))
			System.out.println("str이 가지고 있는 문자열은 [Hello, World!]문자열과 동일");
		
		if("Hello, World!".equals(str))
			System.out.println("[Hello, World!]문자열은 str이 가지고 있는 문자열과 동일");
		
		if(str.equals(str4))	System.out.println("str과 str4는 동일한 문자열 저장");
		if(str.equals(str5))	System.out.println("str과 str5는 동일한 문자열 저장");
		
		// . . . . 으로 해서 메서드의 리턴되는 데이터로 다시 다른 메서드를 바로 실행하는 방식 -> 메서드 체인 (Method Chain)
		if(str.substring(0, 5).equals("Hello")){
			System.out.println("Hello 문자열만 잘라냈습니다.");
		}
		/*
		str.substring(0, 5)
			.substring(0, 5)
			.substring(0, 5)
			.substring(0, 5)
			.substring(0, 5)
			.substring(0, 5);
			*/
	}
}