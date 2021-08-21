<%@ page language="java" contentType="text/html; charset=UTF-8"  isErrorPage="true"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>에러 처리 페이지</title>
</head>
<body>

	getMessage() 메서드 실행<p>
	<%=exception.getMessage() %> <hr>
	
	toString() 메서드 실행<p>
	<%=exception.toString() %> <hr>
	
	printStackTrace() 메서드 실행<p>
	<%exception.printStackTrace(); %> <hr>
	

</body>
</html>