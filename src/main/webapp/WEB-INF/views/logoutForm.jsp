<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logout Form</title>
</head>
<body>
	<h2>Logout Form</h2>
	
	<!-- 
		스프링 시큐리티를 통한 로그인 처리 후, 시큐리티 정보에 등록된 세션 정보를 초기화하여 로그아웃 처리하기 위한 페이지(로그아웃 페이지)
		스프링 시큐리티 설정 파이렝 설정한 invalidate-session은 로그아웃 후에 세션을 무효화한다.
	 -->
	<form action="/logout" method="post">
		<button>로그아웃</button>
		<sec:csrfInput/>
	</form>
</body>
</html>