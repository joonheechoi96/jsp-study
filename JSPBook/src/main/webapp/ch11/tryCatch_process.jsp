<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exception</title>
</head>
<body>
	<%
		try { 
			int x = Integer.parseInt(request.getParameter("num1"));
			int y = Integer.parseInt(request.getParameter("num2"));
		
			int result = x / y;
			out.println(x + " + " + y + " = " + result);
		} catch (NumberFormatException e) {
			// 예외 발생 시 오류 페이지로 이동하도록 작성
			RequestDispatcher dispatcher =  request.getRequestDispatcher("tryCatch_error.jsp");
			dispatcher.forward(request, response);
			
			// 테스트: 리다이렉트 사용 시 데이터 유지 x
			// response.sendRedirect("tryCatch_error.jsp");
		}
	%>
</body>
</html>