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
		StringBuffer sb = new StringBuffer();
		sb.append(request.getParameter("name") + " ");
		sb.append(request.getParameter("address") + " ");
		sb.append(request.getParameter("email") + " ");
		
		out.print(sb);
	%>
</body>
</html>