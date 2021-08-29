<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
		String move = request.getParameter("move");
		
	
		if(move.equals("forward")){
	%>	
		<h3>페이지 흐름제어 방식을 지정합니다.</h3>
		이동 방식을 GET 방식으로 지정합니다. 파라미터 이름은 "move"입니다. <br>
		파라미터의 값은 각각 아래와 같이 지정합니다.<hr>
		포워드 : "forward"
		인클루드 : "include"
		<hr>
		<jsp:forward page="PageMovingForward.jsp">
			<jsp:param value="forward태그의 파라미터1" name="param1"/>
			<jsp:param value="forward태그의 파라미터2" name="param2"/>
		</jsp:forward>
	<% 
		}else if(move.equals("include")){
	%>
		<h3>페이지 흐름제어 방식을 지정합니다.</h3>
		이동 방식을 GET 방식으로 지정합니다. 파라미터 이름은 "move"입니다. <br>
		파라미터의 값은 각각 아래와 같이 지정합니다.<hr>
		포워드 : "forward"
		인클루드 : "include"
		<hr>
		<jsp:include page="PageMovingForward.jsp">
			<jsp:param value="include태그의 파라미터1" name="param1"/>
			<jsp:param value="include 태그의 파라미터2" name="param2"/>
		</jsp:include>
	<%
		}
	%>
	<h3>PageMoving.jsp 페이지의 마지막입니다.</h3>
</body>
</html>