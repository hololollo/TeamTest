<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path1" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
	<title>Home(index.html)</title> 
</head>
<body>
    <%@ include file="header.jsp" %>
    <main>
        <h2>Welcome to the Tourism Website</h2>
        <p>Explore the beautiful attractions of Sokcho.</p>
        <!-- Add main content here -->
    </main>
    <%@ include file="footer.jsp" %>
</body>
</html>