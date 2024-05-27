<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <title>Update Board</title>
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
        <h2 class="my-4">Update Board</h2>
        <form action="${path}/board/upProBoard.do" method="post" enctype="multipart/form-data">
            <input type="hidden" name="no" value="${board.no}"/>
            <div class="form-group">
                <label for="title">Title</label>
                <input type="text" class="form-control" id="title" name="title" value="${board.title}" required/>
            </div>
            <div class="form-group">
                <label for="author">Author</label>
                <input type="text" class="form-control" id="author" name="author" value="${board.author}" required/>
            </div>
            <div class="form-group">
                <label for="content">Content</label>
                <textarea class="form-control" id="content" name="content" required>${board.content}</textarea>
            </div>
            <div class="form-group">
                <label for="datafile">File</label>
                <input type="file" class="form-control-file" id="datafile" name="datafile"/>
                <c:if test="${not empty board.datafile}">
                    <p>Current File: <a href="${path}/board/downloadFile/${board.datafile}" download="${board.datafile}">${board.datafile}</a></p>
                </c:if>
            </div>
            <button type="submit" class="btn btn-primary">수정하기</button>
        </form>
        <br/>
        <a class="btn btn-secondary" href="${path}/board/boardList.do">돌아가기</a>
    </div>
	<%@ include file="/WEB-INF/views/footer.jsp" %> 
</body>
</html>
