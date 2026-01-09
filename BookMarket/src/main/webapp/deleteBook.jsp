<%@page import="java.sql.SQLException"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.BookRepository"%>
<%@page import="dto.Book"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>도서 삭제</title>
</head>
<body>
	<!-- 도서 삭제 페이지 만들기 -->
	<%@ include file="dbconn.jsp" %>
	<%
		String id = request.getParameter("id");
		
		try {
			String sql= "DELETE FROM book WHERE b_id = ?";
			pstmt = conn.prepareStatement(sql); 
			pstmt.setString(1, id);
			int result = pstmt.executeUpdate();
			if (result == 0) {
				out.println("일치하는 도서가 없습니다.");
			} else {
				response.sendRedirect("editBook.jsp?edit=delete");
			}
		} 
			catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null) pstmt.close();
			if (conn != null) conn.close();
		}
		
		
		%>
</body>
</html>