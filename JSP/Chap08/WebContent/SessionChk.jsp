<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>session 내장객체를 이용한 로그인/로그아웃 구현</title>
</head>
<body>
	로그인되었습니다.환영합니다. <hr>
	<h3>현재 접속하신 ID는 [<%=session.getAttribute("ID") %>]입니다.</h3><hr>
	<h3>현재 세션 아이디는 [<%=session.getId() %>]입니다.</h3>
	<table>
		<tr>
			<td>
				<form action="http://localhost:8080/Chap08/SessionLogin.jsp" method="post">
					<input type="submit" value="첫 화면으로">				
				</form>
			</td>
			<td>
				<form action="http://localhost:8080/Chap08/SessionQuit.jsp" method="post">
					<input type="submit" value="로그아웃">
				</form>
			</td>
		</tr>
	</table>
</body>
</html>