<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>아이디, 비밀번호 정보</h4>
	<%
		String userInfo = request.getQueryString();
	%>
	<p><%= userInfo %></p>
</body>
</html>