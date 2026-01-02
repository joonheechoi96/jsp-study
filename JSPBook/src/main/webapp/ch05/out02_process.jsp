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
		String userId = request.getParameter("id");
		String userPw = request.getParameter("passwd");
	%>
	<p>아이디:<% out.print(userId); %></p>
	<p>비밀번호:<% out.print(userPw); %> </p>
	
	<p>아이디: <%= userId %></p>
	<p>비밀번호: <%= userPw %></p>
	
	<!-- EL 표현 언어 사용 시 -->
	<p>아이디: ${param.id}</p>
	<p>비밀번호: ${param.passwd}</p>	
</body>
</html>