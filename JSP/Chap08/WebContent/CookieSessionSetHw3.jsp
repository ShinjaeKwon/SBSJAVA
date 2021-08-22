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
		 //이전의 로그인 상태에서 rememberId가 존재하면 null이 아닌 "keep"값이 들어간다.
		String rememberId = request.getParameter("rememberId");
		//로그인 페이지에서 넘어온 id 값이 들어온다.
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		Cookie cookieRememberId; //아이디/비밀번호 기억 여부를위한 쿠키 
		Cookie cookieId; //현재 접속한 아아디를 설정하기 위한 쿠키
		Cookie cookiePw; //현재 접속한 비밀번호를 설정하기 위한 쿠키
		Cookie cookieLoginStatus; //현재 로그인 상태를 지정할 쿠키
		
		if(rememberId != null && rememberId.equals("keep")){ //rememberId의 값이 keep이면 (기억된 상태이면)
			cookieRememberId = new Cookie("rememberId", "keep"); //아이디기억 여부 쿠키의 이름을 rememberId, 값을 keep으로 지정
		}else{ //rememberId의 값이 null이면 
			cookieRememberId = new Cookie("rememberId", "temp"); //rememberId에 값을 temp로 지정
		}
		cookieId = new Cookie("id", id); //cookieId의 쿠키 이름을 id로 지정후, 로그인때 입력한 아이디를 값으로 지정
		cookiePw = new Cookie("pw", pw);
		cookieLoginStatus = new Cookie("loginStatus", "login"); //cookieLoginStatus에 로그인이 된상태를 알리는 쿠키 생성
		 
		//http 헤더에 쿠키 정보들을 추가한다. 
		response.addCookie(cookieRememberId);  //keep or temp
		response.addCookie(cookieId); // id 
		response.addCookie(cookiePw);
		response.addCookie(cookieLoginStatus); //login 상태
		
		out.println(cookieRememberId.getValue()); //keep or temp 출력
		response.sendRedirect("http://localhost:8080/Chap08/CookieSessionChkHw3.jsp"); //chk페이지로 리다이렉트시킴
	%>
	
	
</body>
</html>