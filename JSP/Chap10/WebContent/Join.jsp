<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
</head>
<body>
	<form action="JoinDB.jsp" method="post">
		<table>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<td>성별</td>
				<td>
				<select name="gender">
						<option value="man" selected>남자
						<option value="women">여자
				</select>
				</td>
			</tr>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id" /></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="paswword" /></td>
			</tr>
			<tr>
				<td>비밀번호 확인</td>
				<td><input type="password" name="paswwordChk" /></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="adderss" /></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="phone" /></td>
			</tr>
			<tr>
				<td>이메일주소</td>
				<td><input type="text" name="email" /></td>
			</tr>
		</table>
		<hr>
		<input type="submit" value="회원가입완료"/>
	</form>

</body>
</html>