<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>application 내장객체 초기 파라미터 정보</title>
</head>
<body>
	getInitParameter() 메서드 사용 <hr>
	
	<%
		String name= "Hello";
		String value = application.getInitParameter(name);
	%>
	<%= name+" 파라미터의 설정값 : "+value %>

</body>
</html>