<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>쿠키를 이용한 세션 관리</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies(); //cookieRememberId, cookieId, cookieLoginStatus 쿠키를 받아온다.
		String loginStatus = null;
		String rememberId = null;
		String id = null;
		String pw = null;
		if(cookies != null && cookies.length > 0){ //받아온 쿠키들이 존재하면 
			for(int i=0; i<cookies.length; i++){
				if(cookies[i].getName().equals("loginStatus")){ //loginStatus이름을 가진 쿠키가 존재하면 
					loginStatus = cookies[i].getValue(); //login 상태를 알려주는 "login"변수를 대입
				}
				
				if(cookies[i].getName().equals("rememberId")){ //rememberId이름을 가진 쿠키가 존재하면
					rememberId = cookies[i].getValue(); //keep or temp 값 저장
				}
				
				if(cookies[i].getName().equals("id")){ //id 이름을 가진 쿠기가 존재하면
					id = cookies[i].getValue(); //id값 저장
				}
				
				if(cookies[i].getName().equals("pw")){
					pw = cookies[i].getValue();
				}
			}
		}
	%>
	<%
		if(loginStatus != null && loginStatus.equals("login") && rememberId != null && id!= null && pw != null){
		//로그인상태이고, id값과 rememberId의 값이 존재한다면 
	%>
		<h3>[<%=id %>]님 환영합니다.<br> <!-- 로그인 성공   -->
		로그인 아이디/비밀번호 기억 상태를 [<%=(rememberId.equals("temp")?"유지하지 않음":"유지함") %>]으로 설정하셨습니다.</h3>
		<form action="CookieSessionLogoutHw1.jsp" method="post">
			<input type="submit" value="로그아웃">
		</form>
	<%
		}else{
	%>
		<h3>로그인하지 않으셨거나, 잘못된 접근입니다.<br>
		로그인하여 주시기 바랍니다.	</h3>
		<form action="CookieSessionLoginHw1.jsp" method="post">
			<input type="submit" value="로그인 페이지">
		</form>
	<%
		}
	%>
</body>
</html>