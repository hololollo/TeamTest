<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <title>Answer QnA</title>
</head>
<body>
    <h1>Answer QnA</h1>
    <form action="insAnswer.do" method="post">
        <input type="hidden" name="parno" value="${parno}">
        <p>Content: <textarea name="content"></textarea></p>
        <p>Author: <input type="text" name="aid"></p>
        <p><input type="submit" value="Submit"></p>
    </form>
    <a href="${path}/qna/qnalist.do">Back to List</a>
</body>
</html>
