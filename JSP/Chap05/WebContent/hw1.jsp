<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>구구단 출력</title>
</head>
<body>
	<h1>구구단 출력</h1>
	<br>
	<table border="1">
		<tr>
			<%
				for (int i = 2; i < 10; i++) {
			%><td><%=i + "단"%></td>
			<%
				}
			%>
		
		<tr>
			<%
				for (int i = 1; i < 10; i++) {
			%>
		</tr>
		<%
			for (int j = 2; j <= 9; j++) {
		%>
		<td><%=j%>X<%=i%>=<%=j * i%></td>
		<%
			}
		}
		%>
	</table>

</body>
</html>