<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <title>Edit Notice</title>
</head>
<body>
    <h2>Edit Notice</h2>
    <form action="${pageContext.request.contextPath}/notice/editproNotice.do" method="post">
        <input type="hidden" name="bno" value="${notice.bno}">
        <label for="title">Title:</label>
        <input type="text" id="title" name="title" value="${notice.title}" required><br>
        <label for="content">Content:</label>
        <textarea id="content" name="content" required>${notice.content}</textarea><br>
        <label for="author">Author:</label>
        <input type="text" id="author" name="author" value="${notice.author}" required><br>
        <button type="submit">Submit</button>
    </form>
</body>
</html>
</html>