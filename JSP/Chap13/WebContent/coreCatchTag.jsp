<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
	<c:catch var="reqParameterEx">
		<%
			String strParameter = request.getParameter("NoParameter");
			out.println(strParameter.length());
		%>
	</c:catch>
<body>
	<pre>
		<c:out value="${reqParameterEx }"/>
	</pre>
</body>
</html>