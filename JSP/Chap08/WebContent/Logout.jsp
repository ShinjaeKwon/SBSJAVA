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
		Cookie[] cookies = request.getCookies(); //쿠키들의 정보를 받아옴 
		String loginStatus = null;
		String rememberId = null;
		String id = null;
		String pw = null;
		
		if(cookies != null && cookies.length > 0){ //쿠기값들이 존재한다면 
			for(int i=0; i<cookies.length; i++){
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
		session.removeAttribute("ID");
	%>

	안전하게 로그아웃 되었습니다. 이용해주셔서 감사합니다.<hr>
	다시 로그인을 하시려면
	

	<%
		pageContext.include("/Login.jsp");
		
	%>
	<%
		session.invalidate();
	%>
	<hr>
	<form action="Login.jsp" method="post">
		<input type="submit" value="첫화면으로">
	</form>

</body>
</html>