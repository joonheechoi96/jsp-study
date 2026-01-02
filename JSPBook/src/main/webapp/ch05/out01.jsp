<%@page import="java.time.LocalDateTime"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- out 내장 객체로 오늘 날짜 및 시각 출력하기 -->
	<%
		out.print("오늘의 날짜 및 시각<br>");
		out.print(Calendar.getInstance().getTime() + "<br>");
		LocalDateTime now = LocalDateTime.now();
		out.print(now + " " + now.getDayOfWeek());
	%>
</body>
</html>