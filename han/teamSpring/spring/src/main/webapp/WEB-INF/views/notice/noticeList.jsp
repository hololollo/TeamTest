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
                <td><a href="${pageContext.request.contextPath}/notice/getNotice.do?bno=${notice.bno}">${notice.title}</a></td>
                <td>${notice.author}</td>
                <td>${notice.vcnt}</td>
                <td>${notice.resdate}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/notice/editNotice.do?bno=${notice.bno}">Edit</a>
                    <a href="${pageContext.request.contextPath}/notice/deleteNotice.do?bno=${notice.bno}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <a href="${pageContext.request.contextPath}/notice/insertNotice.do">Insert Notice</a>
</body>
</html>