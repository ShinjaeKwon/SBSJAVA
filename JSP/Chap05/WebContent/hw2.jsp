<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>홀수 짝수 여부 출력</title>
</head>
<body>
	<h1>1~10 까지 홀수 짝수 여부 출력</h1> <br>
	<table border="1">
	<%
		for(int i=0; i<11; i++){
	%>
		<%if(i%2 == 0){%>
		<tr>
		<td><%=i%></td>
		<td>짝수입니다</td>
		</tr>
	<%}else{%>
		<tr>
		<td><%=i%></td>
		<td>홀수입니다</td>
		</tr>
	<%
	}
		}
	%>
	</table>
	
</body>
</html>