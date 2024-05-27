<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <title>Board List</title>
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
      .btn btn-success{
      padding-bottom:10px;}
    </style>
</head>
<body>
<%@ include file="/WEB-INF/views/header.jsp" %> 
    <header class="header">

    </header>
    <!-- 
  	     <div class="breadcrumb">
            <p>
                <a href="">홈</a><a href="">커뮤니티</a><span>QNA</span>
            </p>
        </div>
     -->
    
    <div class="container">
    
      <h2 class="my-4">Board List</h2>
        
        <c:if test="${not empty sid}">
            
        </c:if>
        <table class="table table-bordered">
            <thead class="thead-dark">
                <tr>
                    <th>No</th>
                    <th>Title</th>
                    <th>Author</th>
                    <th>Content</th>
                    <th>File</th>
                    <th>Date</th>
                    <th>Visited</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="board" items="${boardList}">
                    <tr>
                        <td>${board.no}</td>
                        <td>${board.title}</td>
                        <td>${board.author}</td>
                        <td>${board.content}</td>
                        <td>
                            <c:if test="${not empty board.datafile}">
                                <a href="${path}/board/downloadFile/${board.datafile}" download="${board.datafile}">${board.datafile} Download</a>
                            </c:if>
                        </td>
                        <td>${board.resdate}</td>
                        <td>${board.visited}</td>
                        <td>
                            <a class="btn btn-primary btn-sm" href="${path}/board/getBoard.do?no=${board.no}">열람하기</a>
                            <c:if test="${sid == board.author || sid == 'admin'}">
					            <a class="btn btn-warning" href="${path}/board/upBoard.do?no=${board.no}">수정</a>
					            <a class="btn btn-danger" href="${path}/board/delBoard.do?no=${board.no}">삭제</a>
       						 </c:if>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <a class="btn btn-success" href="${path}/board/insBoard.do">등록하기</a>
    </div>
    <%@ include file="/WEB-INF/views/footer.jsp" %> 
</body>
</html>