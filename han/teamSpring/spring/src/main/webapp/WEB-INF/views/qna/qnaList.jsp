<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <title>Qna List</title>
</head>
<body>
    <h2>Qna List</h2>
    <table border="1">
        <tr>
            <th>No</th>
            <th>Title</th>
            <th>Author ID</th>
            <th>Visited</th>
            <th>Regdate</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="qna" items="${qnaList}">
            <tr>
                <td>${qna.no}</td>
                <td><a href="${pageContext.request.contextPath}/qna/get?no=${qna.no}">${qna.title}</a></td>
                <td>${qna.aid}</td>
                <td>${qna.visited}</td>
                <td>${qna.resdate}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/qna/edit?no=${qna.no}">Edit</a>
                    <a href="${pageContext.request.contextPath}/qna/delete?no=${qna.no}">Delete</a>
                    <a href="${pageContext.request.contextPath}/qna/insertAnswer?parno=${qna.parno}">Answer</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <a href="${pageContext.request.contextPath}/qna/insert">Insert Qna</a>
</body>
</html>