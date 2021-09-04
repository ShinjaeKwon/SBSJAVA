<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
</head>
<body>
	<%
		//if 로그인 실패 쿠기가 존재하면 
	%>
	아이디와 비밀번호가 일치하지 않습니다. 다시 입력하십시오<hr>
	<%
		//if문끝
		//else 로그인 실패 쿠기가 존재하지 않으면 || 처음 로그인이면 
	%>
	아이디와 비밀번호를 입력하십시오.<hr>
	<%
		//else문끝
	%>
	<form action="LoginDB.jsp">
		<table border="2">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td colspan="2" align="right"><input type="checkbox" name="rememberId">아이디 저장</td>
			</tr>
			<tr>
				<td colspan="2" align="right">
				<a href="Join.jsp">[회원가입]</a>
				<input type="submit" value="로그인">		
				</td>
			</tr>		
		</table>
	</form>
	
</body>
</html>