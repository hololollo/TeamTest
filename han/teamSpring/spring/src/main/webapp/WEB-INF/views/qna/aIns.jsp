<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <title>Insert Answer</title>
</head>
<body>
    <h2>Insert Answer</h2>
    <form action="${pageContext.request.contextPath}/qna/insertAnswer" method="post">
        <input type="hidden" name="parno" value="${qna.parno}">
        <label for="title">Title:</label>
        <input type="text" id="title" name="title" required><br>
        <label for="content">Content:</label>
        <textarea id="content" name="content" required></textarea><br>
        <label for="aid">Author ID:</label>
        <input type="text" id="aid" name="aid" required><br>
        <button type="submit">Submit</button>
    </form>
</body>
</html>