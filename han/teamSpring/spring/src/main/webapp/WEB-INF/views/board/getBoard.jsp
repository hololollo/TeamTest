<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <title>Board Details</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet"/>
     <style>
     .breadcrumb { clear:both; border-bottom:2px solid #777; 
      padding-top: 24px; padding-bottom: 24px; text-align: right; 
      box-sizing:border-box;  padding-right: 40px;   }
      .breadcrumb p * { padding:0px 7px; color:#333; font-weight:bold; }
      .breadcrumb p a:after { content:">"; padding-left: 14px; }
    
    .header{ width: 1980px; height: 600px; margin: 0px auto;  background-image:url(${path}/resources/img/notiheader.jpg);
      background-size: cover; /* Ensure the image covers the entire header */
      background-position: center; /* Center the image */
      background-repeat: no-repeat; /* Prevent the image from repeating */}
    </style>
</head>
<body>
<%@ include file="/WEB-INF/views/header.jsp" %> 
 <header class="header">

    </header>
    <div class="container">
        <h2 class="my-4">Board 상세보기</h2>
        <c:if test="${not empty sid}">
            <p>Welcome, ${sid}!</p>
        </c:if>
        <table class="table table-bordered">
            <tr>
                <th>No</th>
                <td>${board.no}</td>
            </tr>
            <tr>
                <th>Title</th>
                <td>${board.title}</td>
            </tr>
            <tr>
                <th>Author</th>
                <td>${board.author}</td>
            </tr>
            <tr>
                <th>Content</th>
                <td>${board.content}</td>
            </tr>
            <tr>
                <th>File</th>
                <td>
                    <c:if test="${not empty board.datafile}">
                        <a href="${path}/board/downloadFile/${board.datafile}" download="${board.datafile}">${board.datafile} Download</a>
                    </c:if>
                </td>
            </tr>
            <tr>
                <th>Date</th>
                <td>${board.resdate}</td>
            </tr>
            <tr>
                <th>Visited</th>
                <td>${board.visited}</td>
            </tr>
        </table>
        <br/>
        <a class="btn btn-secondary" href="${path}/board/boardList.do">돌아가기</a>
        <c:if test="${sid == board.author || sid == 'admin'}">
            <a class="btn btn-warning" href="${path}/board/upBoard.do?no=${board.no}">Edit</a>
            <a class="btn btn-danger" href="${path}/board/delBoard.do?no=${board.no}">Delete</a>
        </c:if>
    </div>
    <%@ include file="/WEB-INF/views/footer.jsp" %> 
</body>
</html>
