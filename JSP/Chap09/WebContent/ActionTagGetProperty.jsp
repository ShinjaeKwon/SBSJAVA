<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>getProperty 액션태그 사용</title>
</head>
<body>
	<jsp:useBean id="myMember" class="beans.Member"/>
	<jsp:setProperty property="id" name="myMember" value="OKJsp"/>
	<jsp:setProperty property="password" name="myMember" value="OKPassword"/>
	
	ID : <jsp:getProperty property="id" name="myMember"/><br>
	Password : <jsp:getProperty property="password" name="myMember"/><br>
	

</body>
</html>