<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <title>Notice List</title>
</head>
<body>
    <h2>Notice List</h2>
    <table border="1">
        <tr>
            <th>Bno</th>
            <th>Title</th>
            <th>Author</th>
            <th>View Count</th>
            <th>Resdate</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="notice" items="${noticeList}">
            <tr>
                <td>${notice.bno}</td>
                <td><a href="${pageContext.request.contextPath}/notice/get?bno=${notice.bno}">${notice.title}</a></td>
                <td>${notice.author}</td>
                <td>${notice.vcnt}</td>
                <td>${notice.resdate}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/notice/edit?bno=${notice.bno}">Edit</a>
                    <a href="${pageContext.request.contextPath}/notice/delete?bno=${notice.bno}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <a href="${pageContext.request.contextPath}/notice/insert">Insert Notice</a>
</body>
</html>