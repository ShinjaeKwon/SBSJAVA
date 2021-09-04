<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setAttribute("dataname", "request Attribute");
	application.setAttribute("dataname", "application Attribute");
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>request 내장 객체의 dataname 속성값 : </h3>
	[<%=request.getAttribute("dataname") %>]<hr>
	<h3>application 내장 객체의 dataname 속성값 : </h3>
	[<%=application.getAttribute("dataname") %>]<hr>
	<h3>EL에서 출력되는 dataname 의 값</h3>
	[${dataname }]<hr>
	<h3>EL에서 출력되는 request JSP 내장객체의 dataname의 값</h3>
	[${requestScope.dataname }]<hr>
	<h3>EL에서 출력되는 application JSP 내장객체의 dataname의 값</h3>
	[${applicationScope.dataname }]
</body>
</html>