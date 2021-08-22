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
		Cookie[] cookies = request.getCookies(); //쿠키들의 정보를 받아옴 
		String loginStatus = null;
		String rememberId = null;
		String id = null;
		String pw = null;
		
		if(cookies != null && cookies.length > 0){ //쿠기값들이 존재한다면 
			for(int i=0; i<cookies.length; i++){
				if(cookies[i].getName().equals("loginStatus")){ //로그인 상태일때
					loginStatus = cookies[i].getValue();
					cookies[i].setValue("logout"); //로그아웃으로 value값 변경후
					cookies[i].setMaxAge(0); //만료시간을 0으로 해 쿠키 종료
					response.addCookie(cookies[i]); //http헤더 정보에 쿠키값 갱신
				}
				if(cookies[i].getName().equals("rememberId")){ //기억정보가 keep or temp 
					rememberId = cookies[i].getValue(); //값 대입 
				}
				if(cookies[i].getName().equals("id")){ //id값에 
					id = cookies[i].getValue(); //id 정보 대입
				}
				if(cookies[i].getName().equals("pw")){
					pw = cookies[i].getValue();
				}
			}
		}
	%>
	<h3>[<%=id %>]님 정상적으로 로그아웃되었습니다.<br>
	이용해주셔서 감사합니다.</h3>
	
	<%
		//keep이면 id값 그대로 넘김
		if(rememberId != null && rememberId.equals("temp")){ //만약 아이디 기억 체크박스를 체크하지 않았다면 
			if(cookies != null && cookies.length > 0){ //쿠키값이 존재한다면 
				for(int i=0; i<cookies.length; i++){
					if(cookies[i].getName().equals("id")){ 
						cookies[i].setMaxAge(0); //id의 쿠키값을 종료시킴
						response.addCookie(cookies[i]); // 갱신
					}
					if(cookies[i].getName().equals("pw")){
						cookies[i].setMaxAge(0);
						response.addCookie(cookies[i]);
					}
				}
			}
		}
	%>
	<form action="CookieSessionLoginHw3.jsp" method="post">
		<input type="submit" value="로그인 페이지로 이동">
	</form>
	
	
</body>
</html>