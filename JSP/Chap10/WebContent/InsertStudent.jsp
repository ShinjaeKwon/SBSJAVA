<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JDBC Insert</title>
</head>
<body>
	<%
		//변수 선언
		Connection conn = null;
		Statement stmt  = null;
		int rowNum;
		
		try{
			//JDBC 드라이버 로딩
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("드라이버로딩");
			
			//데이터베이스 접속
			conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/jspbook?characterEncoding=UTF-8&serverTimezone=UTC",
					"jspbook",
					"1234"
					);
			System.out.println("DB접속");
			
			//SQL문을 실행하기 위한 Statement 인스턴스 획득
			stmt = conn.createStatement();
			System.out.println("인스턴스 획득");
			
			//Statement 인스턴스를 통해 실행한 SQL문 실행
			rowNum = stmt.executeUpdate(
					"INSERT INTO STUDENT (STUDENT_ID, STUDENT_NAME, STUDENT_EMAIL, STUDENT_TEL, DEPARTMENT_ID)"+ 
					"VALUES('20140006', '김연아', 'yunakim@eamil.com', '010-0006-0006', 'M001')");
			System.out.println("SQL 실행");
		
			
			out.println(rowNum + "개의 행이 삽입되었습니다."+"<hr>");
		}catch(SQLException e){
			e.printStackTrace();
		}catch(Exception e){
			e.printStackTrace();
			//에러 발생
		}finally{
			//반환 데이터의 사용이 종료되면 close() 메서드를 사용하여 각각의 인스턴스 종료
			if(stmt != null) try{stmt.close();}catch(SQLException e){e.printStackTrace();}
			if(conn != null) try{conn.close();}catch(SQLException e){e.printStackTrace();}
		}
	%>
	<a href="http://localhost:8080/Chap10/FirstJDBC.jsp">결과확인</a>

</body>
</html>