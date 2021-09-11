<%@page import="model1.StudentBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	StudentBean student = (StudentBean) request.getAttribute("student");
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>학번[<%=student.getStudentId() %>]학생정보</h3>
	<table border="1">
			<tr align="center">
			<td>학생아이디</td>
			<td>학생 이름</td>
			<td>학생 이메일</td>
			<td>학생 전화번호</td>
			<td>학과아이디</td>
		</tr>
		<tr align="center">
			<td><%=student.getStudentId()%></td>
			<td><%=student.getStudentName()%></td>
			<td><%=student.getStudentEmail()%></td>
			<td><%=student.getStudentTel()%></td>
			<td><%=student.getDepartmentId()%></td>
			
		</tr>

	</table>

</body>
</html>