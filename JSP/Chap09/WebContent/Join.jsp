<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
</head>
<body>
	<jsp:useBean id="member" class="beans.Join"/>
	<jsp:setProperty property="name" name="member" param="name"/>
	<jsp:setProperty property="id" name="member" param="id" />
	<jsp:setProperty property="address" name="member" param="address"/>
	<jsp:setProperty property="tel" name="member" param="phone"/>
	<jsp:setProperty property="email" name="member" param="email"/>
	
	<%
	request.setCharacterEncoding("utf-8");
	String gender = request.getParameter("gender");
	String[] hobby = request.getParameterValues("hobby");
	
	%>

	<h1>작성하신 내용은 아래와 같습니다.</h1>
	이름 : <jsp:getProperty property="name" name="member"/><hr>
	성별 : <%=gender %>
	아이디 : <jsp:getProperty property="id" name="member"/><hr>
	주소 : <jsp:getProperty property="address" name="member"/><hr>
	전화번호 : <jsp:getProperty property="tel" name="member"/><hr>
	이메일 주소 : <jsp:getProperty property="name" name="member"/><hr>
	취미 : 
	<table border="1">
	 	<%
		if(hobby  == null){
			out.print("[선택하신 취미가 없습니다]");
		}else {
		  for(int i=0; i<hobby.length; i++){
			  %><tr><td><%=hobby[i]%></td></tr><% 
		  }
		}
		%> 
	</table>

</body>
</html>