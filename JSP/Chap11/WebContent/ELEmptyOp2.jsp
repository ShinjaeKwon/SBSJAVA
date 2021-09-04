<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>${empty param.id ? "방문자" : param.id}님 환영합니다.</h3>
	<h3>${empty sessionScope.loginId ? "Guest" : sessionScope.loginId}님 환영합니다.</h3>
	
	<input type="text" name="id" value="${empty param.id ? '손님' : param.id}">
</body>
</html>