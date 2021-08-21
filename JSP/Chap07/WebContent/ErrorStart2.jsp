<%@ page language="java" contentType="text/html; charset=UTF-8" errorPage="ExceptionMethod.jsp"
    pageEncoding="UTF-8"%>
<% String msg = request.getParameter("msg"); %>
<html>
<head>
<title>의도된 에러 페이지</title>
</head>
<body>
	<%
		out.print(msg.length());
	%><br>
	위 코드는 의도된 에러 코드입니다.
	현재 내용은 JSP 페이지 호출시 에러가 발생하여 실행되지 못합니다.
	
</body>
</html>