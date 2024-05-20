<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <title>Insert Notice</title>
</head>
<body>
    <h2>Insert Notice</h2>
    <form action="${pageContext.request.contextPath}/notice/insert" method="post">
        <label for="title">Title:</label>
        <input type="text" id="title" name="title" required><br>
        <label for="content">Content:</label>
        <textarea id="content" name="content" required></textarea><br>
        <label for="author">Author:</label>
        <input type="text" id="author" name="author" required><br>
        <input type="hidden" name="vcnt" value="0">
        <input type="hidden" name="resdate" value="<%= new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date()) %>">
        <button type="submit">Submit</button>
    </form>
</body>
</html>
</html>