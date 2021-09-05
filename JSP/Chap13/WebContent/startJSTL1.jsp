<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% out.print("Hello, Scriptlet"); %> <br>
	<table border="1">
	<%
		for(int i=1; i<=5; i++){
	%>
		<tr>
			<td><%=i %></td>
		</tr>
	<%
		}
	%>
	</table>
</body>
</html>