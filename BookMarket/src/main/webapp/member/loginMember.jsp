<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
	
	<!-- 부트스트랩 연결 -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="container py-4">
		<!-- 헤더(메뉴) 영역 -->
		<%@ include file="/menu.jsp" %>

		<!-- 중간 타이틀 영역 -->
		    <jsp:include page="/title.jsp">
		    	<jsp:param value="회원 로그인" name="title"/>
		    	<jsp:param value="Membership Login" name="sub"/>
		    </jsp:include>

		
		<!-- 본문 영역 -->
    <div class="row align-items-md-stretch text-center">
			<c:choose>
      	<c:when test="${msg == '0'}">
        	<h2 class="alert alert-danger">회원 정보가 수정되었습니다.</h2>
      	</c:when>
        <c:when test="${msg == '1'}">
        	<h2 class="alert alert-danger">회원 가입을 축하드립니다.</h2>
        </c:when>
        <c:when test="${msg == '2'}">
	        <h2 class="alert alert-danger">
	        	${sessionScope.loginId}님 환영합니다. <!-- session.getAttribute("loginId"); 와 동일 -->
	        </h2>
        </c:when>
        <c:otherwise>
        	<h2 class="alert alert-danger">회원 정보가 삭제되었습니다.</h2>
        </c:otherwise>
    	</c:choose>
 		</div>

		<!-- 푸터(바닥글) 영역 -->
		<%@ include file="/footer.jsp" %>
  </div>
</body>
</html>