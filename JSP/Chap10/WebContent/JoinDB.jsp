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
		String name = request.getParameter("name");
		String password = request.getParameter("password");	
		String gender = request.getParameter("gender");
		String id = request.getParameter("id");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String passwordChk = request.getParameter("paswwordChk");
	%>
		
	<%
		if(!password.equals(passwordChk)){
			response.sendRedirect("http://localhost8080/Chap10/JoinPasswordErr.jsp");
		}
	%>
	
	<%
		Connection conn = null;
		PreparedStatement pstmt = null;
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
		pstmt = conn.prepareStatement("insert into member (id, password, name, gender, address, phone, email)"+
				"VALUES(?,?,?,?,?,?,?)");	
		
		pstmt.setString(1, id);  
		pstmt.setString(2, password);
		pstmt.setString(3, name);
		pstmt.setString(4, gender);
		pstmt.setString(5, address);
		pstmt.setString(6, phone);
		pstmt.setString(7, email);
		}catch(SQLException e){
			e.printStackTrace();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(pstmt != null) try {pstmt.close();} catch(SQLException e){e.printStackTrace();}   
			if(conn != null) try {conn.close();} catch(SQLException e){e.printStackTrace();}
		}
		response.sendRedirect("http://localhost8080/Chap10/Login.jsp");	
	%>

	
</body>
</html>