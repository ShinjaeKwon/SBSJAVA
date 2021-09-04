<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String password = request.getParameter("password");	
		String id = request.getParameter("id");
	%>
	
	<%
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
	%>

	<%
		try{
		//JDBC 드라이버 로딩
		Class.forName("com.mysql.cj.jdbc.Driver");
	
		//JDBC URL 및 계정과 비밀번호를 지정하여 Connection 인스턴스를 통해 데이터베이스에 접속
		conn = DriverManager.getConnection(
		"jdbc:mysql://localhost:3306/jspbook?characterEncoding=UTF-8&serverTimezone=UTC",
		"jspbook",
		"1234"
		);
		pstmt = conn.prepareStatement("select * from  member where id=? and password=?");	
		
		pstmt.setString(1, id);  
		pstmt.setString(2, password);
		
		rs = pstmt.executeQuery();
		
		String idChk = rs.getString("id");
		String passwordChk = rs.getString("password");
		
		//로그인 실패 쿠키 생성 -> 
		
		if(idChk == null && passwordChk == null && idChk.equals("") && passwordChk.equals("")){
			response.sendRedirect("http://localhost8080/Chap10/LoginErr.jsp");	
		}
		
		//여기까지 왔으면 로그인 성공 
		//정보를 쿠키로 보내줌? 
		Cookie idCookie = new Cookie("id", rs.getString("id"));
		Cookie nameCookie = new Cookie("name", rs.getString("name"));
		Cookie genderCookie = new Cookie("gender", rs.getString("gender"));
		Cookie addressCookie = new Cookie("address", rs.getString("address"));
		Cookie phoneCookie = new Cookie("phone", rs.getString("phone"));
		Cookie emailCookie = new Cookie("email", rs.getString("email"));
		Cookie loginStatusCookie = new Cookie("status", "login");		
		
		response.addCookie(idCookie);
		response.addCookie(nameCookie);
		response.addCookie(genderCookie);
		response.addCookie(addressCookie);
		response.addCookie(phoneCookie);
		response.addCookie(emailCookie);
		response.addCookie(loginStatusCookie);
	%>
	<% 
		}catch(SQLException e){
			e.printStackTrace();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			
			if(pstmt != null) try {pstmt.close();} catch(SQLException e){e.printStackTrace();}   
			if(conn != null) try {conn.close();} catch(SQLException e){e.printStackTrace();}
			response.sendRedirect("http://localhost8080/Chap10/LoginStatus.jsp");	
		}
		
	%>

	
</body>
</html>