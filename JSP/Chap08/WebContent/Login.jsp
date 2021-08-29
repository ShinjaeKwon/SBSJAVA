<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>쿠키를 이용한 세션관리</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies(); //쿠키를 받아온다.
		String rememberId = null;
		String id = null;
		String pw = null;
		
		if(cookies != null && cookies.length >0){ //쿠키가 존재한다면 
			for(int i=0; i<cookies.length; i++){
				if(cookies[i].getValue().equals("keep")){
					rememberId = cookies[i].getValue(); //rememberId의 이름을 가진 쿠키가 keep의 값을 가지고 있다면 
					//rememberId에 "keep"을 넣어준다. 
				}
				if(cookies[i].getName().equals("id")){ //id의 이름을 가진 쿠키가 존재한다면 (아이디 기억을 활성화 한 상태)
					//그 id의 이름의 쿠키의 값을 id에 넣어준다.
					id=cookies[i].getValue();
				}
				if(cookies[i].getName().equals("pw")){
					pw=cookies[i].getValue();
				}
			}
		}
	%>

	아이디와 비밀번호를 입력하십시오.<hr>
	<form action="Logined.jsp" method="post">
		<table border="1">
			<tr>
				<td align="center">아이디</td>
				<td><input type="text" name="id" value="<%=(id == null ? "" : id ) %>"></td>
			</tr>
			<tr>
				<td align="center">비밀번호</td>
				<td><input type="password" name="pw" value="<%=(pw == null ? "" : pw) %>"></td>
			</tr>
			<tr>
				<td colspan="2" align="right">
					<input type="checkbox" name="rememberId" value="keep" <%=(rememberId== null) ? "" : "checked=\"checked\""%> />아이디/비밀번호 저장
				</td>
			<tr>
			<tr>
				<td colspan="2" align="right">
					<input type="submit" value="로그인">
				</td>
			</tr>
		</table>
	</form>
	
	
	
	

</body>
</html>