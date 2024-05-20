<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <title>Edit Qna</title>
</head>
<body>
    <h2>Edit Qna</h2>
    <form action="${pageContext.request.contextPath}/qna/editQna.do" method="post">
        <input type="hidden" name="no" value="${qna.no}">
        <label for="plevel">Plevel:</label>
        <input type="number" id="plevel" name="plevel" value="${qna.plevel}" required><br>
        <label for="parno">Parno:</label>
        <input type="number" id="parno" name="parno" value="${qna.parno}" required><br>
        <label for="title">Title:</label>
        <input type="text" id="title" name="title" value="${qna.title}" required><br>
        <label for="content">Content:</label>
        <textarea id="content" name="content" required>${qna.content}</textarea><br>
        <label for="aid">Author ID:</label>
        <input type="text" id="aid" name="aid" value="${qna.aid}" required><br>
        <button type="submit">Submit</button>
    </form>
</body>
</html>