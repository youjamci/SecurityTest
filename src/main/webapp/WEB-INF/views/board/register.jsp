<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board Register</title>
</head>
<body>
	<h3>Board Register : access to member</h3>
	
	<!-- 사용자 정보 -->
	<p>principal : <sec:authentication property="principal"/></p>
	<p>member : <sec:authentication property="principal.member"/></p>
	<p>사용자 아이디 : <sec:authentication property="principal.member.userId"/></p>
	<p>사용자 비밀번호 : <sec:authentication property="principal.member.userPw"/></p>
	<p>사용자 이름 : <sec:authentication property="principal.member.userName"/></p>
	<p>사용자 권한 리스트: <sec:authentication property="principal.member.authList"/></p>
	
	<p>
		<sec:authorize access="hasRole('ROLE_MEMBER')">
			역할명은 회원입니다!
		</sec:authorize>
		<sec:authorize access="hasRole('ROLE_ADMIN')">
			역할명은 관리자입니다!
		</sec:authorize>
	</p>
	
	<a href="/board/list">목록</a>
	<a href="/">Home</a>
</body>
</html>