<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>session 내장객체를 이용한 로그인/로그아웃 구현</title>
</head>
<body>
	안전하게 로그아웃되었습니다. 이용해주셔서 감사합니다.<hr>
	다시 로그인하시려면
	<%
		pageContext.include("/SessionLogin.jsp");
	%>
	<hr>
	<form action="http://localhost:8080/Chap08/SessionLogin.jsp" method="post">
		<input type="submit" value="첫화면으로">
	</form> 
</body>
</html>