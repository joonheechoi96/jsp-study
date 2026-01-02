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
	<%
		response.setHeader("Refresh", "5");
		Date now = new Date();
		response.getWriter().println("현재 시간 : " + now);
	%>
	
	<a href="response_data.jsp">Google 홈페이지로 이동하기</a>
</body>
</html>