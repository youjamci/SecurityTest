<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Custom Login Form</title>
</head>
<body>
	<h1>Login</h1>
	<h2><c:out value="${error }"/></h2> <!-- 에러 발생 시, 출력할 메세지 -->
	<h2><c:out value="${logout }"/></h2> <!-- 로그아웃시, 출력할 메세지 -->
	
	<form method="post" action="/login"><!-- action="/login"는 변하지 않음 -->
		username : <input type="text" name="username" value=""/><br>
		password : <input type="text" name="password" value=""/><br><!-- 무조건 username과 password로 설정해야 함  + csrf -->
		<input type="checkbox" name="remember-me"/> Remember Me
		<input type="submit" value="로그인"/>
		<sec:csrfInput/> <!-- 이거 제대로 설정 안 하면 crud 제대로 안 됨 -->
	</form>
</body>
</html>