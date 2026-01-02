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
		// 폼(입력양식)에서 입력한 한글을 처리하도록 문자 인코딩 설정
		request.setCharacterEncoding("UTF-8"); // 톰캣10+ 생략 가능
		String id = request.getParameter("id");
		String password = request.getParameter("password");
	%>
	<p>아이디: <%= id %></p>
	<p>비밀번호: <%= password %></p>
	
	<!-- EL 사용시 -->
	
	<p>아이디: ${param.id}</p>
	<p>비밀번호: ${param.password}</p>
</body>
</html>