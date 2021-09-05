<%@page import="java.io.FileReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
	<%FileReader reader = new FileReader(application.getRealPath("HelloJSTL.jsp")); %>
<body>
	<pre>
		<c:out value="<%=reader %>" escapeXml="true"/>
	</pre>
</body>
</html>