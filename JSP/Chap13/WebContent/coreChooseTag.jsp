<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="score" value="93"/>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test="${score>=90 }">
		<h3>A학점입니다.</h3>
		</c:when>
		<c:when test="${score>=80 }">
		<h3>B학점입니다.</h3>
		</c:when>
		<c:when test="${score>=70 }">
		<h3>C학점입니다.</h3>
		</c:when>
		<c:when test="${score>=60 }">
		<h3>D학점입니다.</h3>
		</c:when>
		<c:otherwise>
		<h3>F학점입니다.</h3>
		</c:otherwise>
		
	</c:choose>

</body>
</html>