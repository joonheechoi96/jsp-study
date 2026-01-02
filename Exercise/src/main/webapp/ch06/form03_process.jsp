<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
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
		String[] values = request.getParameterValues("fruit");
		
		if(values == null) {
			out.println("없음.");
		} else {
		for(String fruit : values) {
			out.println(fruit + " ");
		}
		}
	%>		
		
		
</body>
</html>