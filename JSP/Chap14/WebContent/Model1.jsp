<%@page import="model1.StudentBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String studentId = request.getParameter("studentId");
	StudentBean studentBean = new StudentBean();
	studentBean.selectStudent(studentId);
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>
		학번{<%=studentId%>}학생 정보
	</h3>
	<table border="1">
		<tr align="center">
			<td>학생아이디</td>
			<td>학생 이름</td>
			<td>학생 이메일</td>
			<td>학생 전화번호</td>
			<td>학과아이디</td>
		</tr>
		<tr align="center">
			<td><%=studentBean.getStudentId()%></td>
			<td><%=studentBean.getStudentName()%></td>
			<td><%=studentBean.getStudentEmail()%></td>
			<td><%=studentBean.getStudentTel()%></td>
			<td><%=studentBean.getDepartmentId()%></td>
			
		</tr>

	</table>

</body>
</html>