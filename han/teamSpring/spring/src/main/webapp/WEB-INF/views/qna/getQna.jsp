<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <title>Qna Details</title>
</head>
<body>
    <h2>Qna Details</h2>
    <table border="1">
        <tr>
            <th>No</th>
            <td>${qna.no}</td>
        </tr>
        <tr>
            <th>Plevel</th>
            <td>${qna.plevel}</td>
        </tr>
        <tr>
            <th>Parno</th>
            <td>${qna.parno}</td>
        </tr>
        <tr>
            <th>Title</th>
            <td>${qna.title}</td>
        </tr>
        <tr>
            <th>Content</th>
            <td>${qna.content}</td>
        </tr>
        <tr>
            <th>Regdate</th>
            <td>${qna.resdate}</td>
        </tr>
        <tr>
            <th>Visited</th>
            <td>${qna.visited}</td>
        </tr>
        <tr>
            <th>Author ID</th>
            <td>${qna.aid}</td>
        </tr>
    </table>
    <a href="${pageContext.request.contextPath}/qna/edit?no=${qna.no}">Edit</a>
    <a href="${pageContext.request.contextPath}/qna/delete?no=${qna.no}">Delete</a>
    <a href="${pageContext.request.contextPath}/qna/list">Back to List</a>
</body>
</html>