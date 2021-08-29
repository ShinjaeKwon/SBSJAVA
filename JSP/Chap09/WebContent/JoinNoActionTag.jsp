<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="beans.Join" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
</head>
<body>
	
	<jsp:setProperty property="name" name="member" param="name"/>
	<jsp:setProperty property="id" name="member" param="id" />
	<jsp:setProperty property="address" name="member" param="address"/>
	<jsp:setProperty property="tel" name="member" param="phone"/>
	<jsp:setProperty property="email" name="member" param="email"/>
	
	<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String gender = request.getParameter("gender");
	String address= request.getParameter("address");
	String phone= request.getParameter("phone");
	String email= request.getParameter("email");
	String[] hobby = request.getParameterValues("hobby");
	
	Join member = new Join();
	member.setName(name);
	member.setId(id);
	member.setAddress(address);
	member.setTel(phone);
	member.setEmail(email);
	
	%>

	<h1>작성하신 내용은 아래와 같습니다.</h1>
	이름 :	<%=member.getName() %> <hr>
	성별 : <%=gender %> <hr>
	아이디 : <%=member.getId() %><hr>
	주소 : <%=member.getAddress() %><hr>
	전화번호 : <%=member.getTel() %><hr>
	이메일 주소 : <%=member.getEmail() %><hr>
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