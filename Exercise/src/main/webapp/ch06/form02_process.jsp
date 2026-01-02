<%@page import="java.util.Enumeration"%>
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
		Enumeration<String> paraNames = request.getParameterNames();
		StringBuffer sb = new StringBuffer();
		while(paraNames.hasMoreElements()) {
			String name = paraNames.nextElement();
			sb.append(name + " : ");
			String output = request.getParameter(name);
			sb.append(output + "<br>");
		}
	%>		
			<%= sb %>
		
</body>
</html>