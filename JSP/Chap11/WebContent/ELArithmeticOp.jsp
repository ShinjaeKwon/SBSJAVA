<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>param1+param2</h3> ${param.param1 + param.param2}<hr>
	
	<h3>param1-param2</h3> ${param.param1 - param.param2}<hr>
	
	<h3>param1/param2</h3> ${param.param1 / param.param2}<hr>
	
	<h3>param1*param2</h3> ${param.param1 * param.param2}<hr>
	
	<h3>param1%param2</h3> ${param.param1 % param.param2}<hr>
	
	<h3>param1modparam2</h3> ${ param.param1 mod param.param2}<hr>
	
	
</body>
</html>