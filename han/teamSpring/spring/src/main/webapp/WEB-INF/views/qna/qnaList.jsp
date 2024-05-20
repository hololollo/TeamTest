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
                <td><a href="${path}/qna/getQna.do?no=${qna.no}">${qna.title}</a></td>
                <td>${qna.aid}</td>
                <td>${qna.visited}</td>
                <td>${qna.resdate}</td>
                <td>
                    <a href="${path}/qna/editQna.do?no=${qna.no}">Edit</a>
                    <a href="${path}/qna/deleteQna.do?no=${qna.no}">Delete</a>
                    <a href="${path}/qna/insertAnswerQna.do?parno=${qna.parno}">Answer</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <a href="${path}/qna/insertQna.do">Insert Qna</a>
</body>
</html>