
public class StringTest02 {

	public static void main(String[] args) {
		String str = "Hello, World!";
		System.out.println(str.length());  //문자열의 길이를 반환
		
		//substring 부분 문자열 구하기 : 원본 문자열에서 일부를 잘라내서 가지고온다.
		String str2 = str.substring(7);    //substring(index), index번호 다음인덱스 부터 문자열의 끝까지 잘라서 복사
		System.out.println(str2);
		
		//substring의 오버로딩 
		String str3	= str.substring(3,8);  //substring(index1, index2) , index1번호 부터 index2바로 앞 문자까지 문자열의 잘라서 복사
		System.out.println(str3);
		
		// String 변수에는 메모리 주소가 저장되어 있다.
		// == 연산자를 통해서 저장된 문자열이 같은지 여부를 검사하는 것은 위험하다.
		String str4 ="Hello, World!";	  //new를 사용하지 않고 문자열을 사용할시 같은 공간을 가리킨다, 즉 메모리주소가 같다.
		System.out.println(str == str4 ? "같음" : "다름"); //문자열끼리 == 연산자를 사용시, 메모리 공간이 같은지 확인해 boolean을 반환한다.
		
		String str5 = new String("Hello, World!");	//new연산자를 이용해 문자열 생성시 문자열이 동일해도 메모리공간에 만들어지므로, 메모리의 주소가 다르다.
		System.out.println(str == str5 ? "같음" : "다름"); 
		
		if(str.equals("Hello, World!"))  //문자열이 동일한지 비교시, .equals()를 사용한다. 만약 문자열의 내용이 같다면, true를 반환해줌
			System.out.println("str이 가지고 있는 문자열은 [Hello, World!]문자열과 동일"); 
		
		if("Hello, World!".equals(str))
			System.out.println("[Hello, World!]문자열은 str이 가지고 있는 문자열과 동일");
		
		if(str.equals(str4)) System.out.println("str과 str4는 동일한 문자열 저장");
		if(str.equals(str5)) System.out.println("str과 str5는 동일한 문자열 저장");
		
		//.연산자를 사용해서 메서드의 리턴되는 데이터로 다시 다른 메서드를 바로 실행하는 방식 -> 메서드 체인(Method Chain)
		if(str.substring(0,5).equals("Hello")){
			System.out.println("Hello 문자열만 잘라냈습니다.");
		}
	}

}
