<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form</title>
</head>
<body>
	<!-- Quiz: 전송받은 폼 데이터 출력하기 -->
	
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("passwd");
		String name = request.getParameter("name");
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		String gender = request.getParameter("gender");
		String[] hobbies = request.getParameterValues("hobby");
		String greet = request.getParameter("comment");
	%>
	
	<p>아이디: <%=id %></p>
	<p>비밀번호:<%=pw %></p>
	<p>이름:<%=name%></p>
	<p>연락처:<%=phone1%> -<%=phone2%>  -<%=phone3%>  </p>
	<p>성별:<%=gender %></p>
	<p>취미: 
	<%
		if(hobbies != null) {
	 for(String hobby : hobbies) {
		 out.print(hobby + " ");
	 }
		}
	%>
	</p>
	<p>가입인사:<%=greet %></p>
</body>
</html>