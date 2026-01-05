<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="exception_error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exception</title>
</head>
<body>
	<%
		Double x = Double.parseDouble(request.getParameter("num1"));
		Double y = Double.parseDouble(request.getParameter("num2"));
		
		Double result = x / y;
		
		out.println(result);
	%>
</body>
</html>