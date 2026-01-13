<%@page import="java.util.Date"%>
<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Include Tag</title>
</head>
<body>
		<!-- param 액션 태그로 아이디와 이름 전달하기 -->
	<h3>param 액션 태그</h3>
	<jsp:include page="param02_data.jsp">
		<jsp:param value="오늘의 날짜와 시각" name="title"/>
		<jsp:param value="<%= new Date() %>" name="date"/>
	</jsp:include>
	
	<!-- 사용 예: 공통 헤더/푸터에 동적 타이틀, 사용자명 전달(~님 환영합니다!) -->
</body>
</html>