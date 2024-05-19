<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
	<div id="" > <!-- login 할 경우 로그아웃 으로 변경 -->
		<c:if test="${not empty sid }">
		<h2 style="text-align:center;">${sname } 님 환영합니다.</h2>
		</c:if>
		<c:if test="${empty sid }">
		<h2 style="text-align:center;">모든 서비스를 활용시 로그인 요망</h2>
		</c:if>
	</div>
</head>
<body>
	<img alt="" src="${path1 }/img/back01.jpg">
	<%= request.getContextPath() %>
	

</body>
</html>
