<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>오칙 연산 메서드 사용</title>
</head>
<body>
	<%! 
	int num1 = 10;
	int num2 = 3;
	
	public int add(int a, int b){
		return a+b;
	}
	public int minus(int a, int b){
		return a-b;
	}
	public int multiple(int a, int b){
		return a*b;
	}
	public int devide(int a, int b){
		return a/b;
	}
	public int mod(int a, int b){
		return a%b;
	}
	%>	
	<h1><%=num1%>,<%=num2%>의 오칙 연산 결과</h1>
	<p><%=num1%>과 <%=num2%>의 덧셈 결과는 [<%=add(num1, num2) %>] 입니다. </p>
	<p><%=num1%>과 <%=num2%>의 뺄셈 결과는 [<%=minus(num1, num2) %>] 입니다. </p>
	<p><%=num1%>과 <%=num2%>의 곱셈 결과는 [<%=multiple(num1, num2) %>] 입니다. </p>
	<p><%=num1%>과 <%=num2%>의 나눗셈 결과는 [<%=devide(num1, num2) %>] 입니다. </p>
	<p><%=num1%>과 <%=num2%>의 나머지 연산 결과는 [<%=mod(num1, num2) %>] 입니다. </p>
	

</body>
</html>