<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>쿠키를 이용한 세션</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies(); //이미 저장되어 있는 쿠키가 값을 가져온다.
		String loginStatus = null; 
		String rememberId = null;
		String id = null;
		String pw = null;
		
		if(cookies != null && cookies.length >0){ //쿠키가 존재한다면 
			for(int i=0; i<cookies.length; i++){

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
	<%-- 
		<%=(rememberId== null) ? "" : "checked=\"checked\""%> 
		rememeberId값이 null이면 기존 로그인에서 아이디기억을 체크 안하던가, 처음 로그인한 상태일 것이다.
		이 상태이면 아이디기억 체크박스는 체크가 안되어있는 상태여야 한다.
		만약 전에 쿠키에 아이디기억 정보가 담아서 들어온다면 
		아이디 기억 체크박스를 체크한상태로 만든다.
	--%>
	
	
	<form action="CookieSessionSetHw2.jsp" method="post">
		아이디와 비밀번호를 입력하십시오<hr>
		<table border="1">
			<tr>
				<td align="center">아이디</td>
				<td><input type="text" name="id" value="<%=(id == null ? "" : id ) %>"></td>
			</tr>
			<tr>
				<td align="center">비밀번호</td>
				<td><input type="password" name="pw" value= "<%=(pw == null ? "" : pw) %>"></td>
			</tr>
			<tr>
				<td colspan="2" align="right">
					<input type="radio" name="rememberId" value="no" checked />저장하지 않음
					<input type="radio" name="rememberId" value="keepId"  />아이디만 저장
					<input type="radio" name="rememberId" value="keepBoth" />아이디와 비밀번호 모두 저장
				</td>
			</tr>
			<tr>
				<td colspan="2" align="right"><input type="submit" value="로그인"></td>
			</tr>
			
		</table>
	</form>
</body>
</html>