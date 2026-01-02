<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="<%= request.getContextPath() %>/fileuploadProcess" method="post" enctype="multipart/form-data">
		<p>파일 : <input type="file" name="uploadFile" multiple="multiple"></p>
		<button type="submit">파일 업로드</button>
	</form>
</body>
</html>