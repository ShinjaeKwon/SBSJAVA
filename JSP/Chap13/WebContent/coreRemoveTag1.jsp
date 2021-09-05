<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="name" value="이지훈(session scopre)" scope="session"/>
<c:set var="name" value="이지훈(page scopre)" scope="page"/>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>remove 태그 실행전</h2><hr>
	name(session) : <c:out value="${sessionScope.name}"/><br>
	name(page) : <c:out value="${pageScope.name}"/><hr>
	<h2>remove 태그 실행 후 (session 영역) <c:remove var="name" scope="session"/></h2><hr>
	name(session) : <c:out value="${sessionScope.name}"/><br>
	name(page) : <c:out value="${pageScope.name}"/><hr>
	<h2>remove 태그 실행 (영역 지정없음) <c:remove var="name"/></h2><hr>
	name(session) : <c:out value="${sessionScope.name}"/><br>
	name(page) : <c:out value="${pageScope.name}"/><hr>
	

</body>
</html>