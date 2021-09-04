<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보</title>
</head>
<body>
	<%
		String name = null;
		String gender = null;
		String id = null;
		String address = null;
		String phone = null;
		String email = null;
		String status = null;
	%>

	<% //쿠키
		Cookie[] cookies = request.getCookies();
		if(cookies!= null && cookies.length > 0){
			 for(int i=0; i<cookies.length; i++){
				 if(cookies[i].getName().equals("id")){
					 id = cookies[i].getValue();
				 }else if(cookies[i].getName().equals("name")){
					 name = cookies[i].getValue();
				 }else if(cookies[i].getName().equals("gender")){
					 gender = cookies[i].getValue();
				 }else if(cookies[i].getName().equals("address")){
					 address = cookies[i].getValue();
				 }else if(cookies[i].getName().equals("phone")){
					 phone = cookies[i].getValue();
				 }else if(cookies[i].getName().equals("email")){
					 email = cookies[i].getValue();
				 }else if(cookies[i].getName().equals("status")){
					 status = cookies[i].getValue();
				 }
			 }
		}
	%>
	<%
		if(status == null){
			response.sendRedirect("http://localhost8080/Chap10/Login.jsp");
		}
	%>
	<%
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
	%>
	<%
		//JDBC 드라이버 로딩
		Class.forName("com.mysql.cj.jdbc.Driver");
	
		//JDBC URL 및 계정과 비밀번호를 지정하여 Connection 인스턴스를 통해 데이터베이스에 접속
		conn = DriverManager.getConnection(
		"jdbc:mysql://localhost:3306/jspbook?characterEncoding=UTF-8&serverTimezone=UTC",
		"jspbook",
		"1234"
		);
		pstmt = conn.prepareStatement("select * from member where=?");
	
		pstmt.setString(1, id);  
		rs = pstmt.executeQuery();
		
		id = rs.getString("id");
		name = rs.getString("name");
		gender = rs.getString("gender");
		address = rs.getString("address");
		phone = rs.getString("phone");
		email = rs.getString("email");
	
	%>
	<h3>작성하신 내용은 아래와 같습니다.</h3>
	이름 : <%=name %><hr>
	성별 : <%=gender %><hr>
	아이디 : <%=id %><hr>
	주소 : <%=address %><hr>
	전화번호 : <%=phone %><hr>
	이메일 주소 : <%=email %><hr>
	<form action="Login.jsp" method="post">
		<input type="submit" value="로그인화면으로"/> 
	</form>
	<form action="Logout.jsp" method="post">
		<input type="submit" value="로그아웃"/> 
	</form>

</body>
</html>