<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="bean" class="ch04.com.dao.GuGuDan" />
	
	<%
		int num = 5;
	%>
	<%=num + "단 출력" + "<br>" %>
	<% 
	for(int i = 1; i <= 9; i++) {
	%>	
	
	<%= num + " x " + i + " = " + bean.process(num, i) + "<br>" %>
		
	<%
	}%>	
	
</body>
</html>