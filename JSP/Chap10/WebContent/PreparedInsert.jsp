<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JDBC PreparedStatement</title>
</head>
<body>
	<%
		Connection conn = null;
		PreparedStatement pstmt = null;
		int rowNum;
			
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/jspbook?characterEncoding=UTF-8&serverTimezone=UTC",
					"jspbook",
					"1234"
					);
		 	
			pstmt = conn.prepareStatement("INSERT INTO STUDENT (STUDENT_ID, STUDENT_NAME, STUDENT_EMAIL, STUDENT_TEL, DEPARTMENT_ID)"+
			"VALUES(?,?,?,?,?)");
			
			pstmt.setString(1, "20140006");  
			pstmt.setString(2, "김연아");
			pstmt.setString(3, "yunakim@eamil.com");
			pstmt.setString(4, "010-0006-0006");
			pstmt.setString(5, "M001");
			
			rowNum = pstmt.executeUpdate();
			
			out.println(rowNum + "개의 행이 삽입되었습니다. <hr>");
		}catch(SQLException e){
			e.printStackTrace();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(pstmt != null) try {pstmt.close();} catch(SQLException e){e.printStackTrace();}   
			if(conn != null) try {conn.close();} catch(SQLException e){e.printStackTrace();}
			
		}
		
	%>
	<a href="http://localhost:8080/Chap10/FirstJDBC.jsp">결과확인</a>
</body>
</html>