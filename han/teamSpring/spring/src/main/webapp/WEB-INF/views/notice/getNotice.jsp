<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>공지사항 상세보기</title>
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <style>
        /*공통*/
        * { margin: 0; padding: 0; }
        body { width:100%; height: auto; } 
        ul {list-style:none;}
        a{text-decoration: none;}
 

      .notice_header{ width: 1980px; height: 600px; margin: 0px auto; background-image:url(${path}/resources/img/notiheader.jpg);
      background-size: cover; /* Ensure the image covers the entire header */
      background-position: center; /* Center the image */
      background-repeat: no-repeat; /* Prevent the image from repeating */}


      /*noti css*/

      .breadcrumb { clear:both; border-bottom:2px solid #777; 
      padding-top: 24px; padding-bottom: 24px; text-align: right; 
      box-sizing:border-box;  padding-right: 40px;   }
      .breadcrumb p * { padding:0px 7px; color:#333; font-weight:bold; }
      .breadcrumb p a:after { content:">"; padding-left: 14px; }

        .notice_contents{width: 1260px; height: 1000px; margin: 0px auto; position: relative;}
        .page_title{text-align: center; margin-top: 1rem;}
        .view_notice{width: 1060px; height: 900px; margin: 2rem auto; } 

        .view_notice .titlebox{border-radius: 1px; width: 1060px; height: 30px; background-color: #F2F2F2; padding-top: 10px; padding-left: 1rem; }
        .view_notice .textbox{border-radius: 1px; width: 1060px; height: 300px; background-color: #F2F2F2; padding-top: 10px; padding-left: 1rem;}
        .view_notice h3{margin-top: 1rem;}
        .btn_wrap{display: flex; float: right; margin-top: 1.5rem;}
        button[type=button]{width: 70px; height: 40px; border-radius: 3px; color: bl; font-weight: bold;}
        .back_btn{background-color: rgb(173, 216, 230);}
        .del_btn{background-color: rgb(240, 128, 128); margin-left: 1rem;}
        .adit_btn{background-color: rgb(152, 251, 152); margin-left: 1rem;}

    </style>
</head>
<body>
   <%@ include file="/WEB-INF/views/header.jsp"%>
    <header class="notice_header">

    </header>
    <div class="notice_contents">
        <div class="breadcrumb">
            <p>
                <a href="${path}">홈</a><a href="${path}/notice/noticeList.do">커뮤니티</a><span>공지사항</span>
            </p>
        </div>
        <hr>
        <h2 class="page_title">공지사항 상세보기</h2>
        <div class="view_notice">
            <h3>글번호</h3>
            <div class="titlebox">${notice.title}</div>
            <h3>제목</h3>
            <div class="titlebox">${notice.content}</div>
            <h3>작성자</h3>
            <div class="titlebox">${notice.author}</div>
            <h3>작성일</h3>
            <div class="titlebox">${notice.resdate}</div>
            <h3>조회수</h3>
            <div class="titlebox">${notice.visited}</div>
            <h3>글내용</h3>
            <div class="textbox">${notice.content}</div>

            <!--
            <c:if test="${sid == 'admin'}">
                <a href="${path}/notice/editNotice.do?bno=${notice.bno}">Edit</a>
                <a href="${path}/notice/deleteNotice.do?bno=${notice.bno}">Delete</a>
            </c:if>
                <a href="${path}/notice/noticeList.do">Back to List</a>   
            -->
            <div class="btn_wrap">
                <button type="button" class="back_btn" onclick="history.back()">돌아가기</button>
                <c:if test="${sid == 'admin'}">
                    <button type="button" class="adit_btn" onclick="goToPage('${path}/notice/editNotice.do?bno=${notice.bno}')">글수정</button>
                    <button type="button" class="del_btn"  onclick="goToPage('${path}/notice/deleteNotice.do?bno=${notice.bno}')">글삭제</button>
                </c:if>
            </div>
            <script>
                function goToPage(url) {
                    location.href = url;
                }
            </script>
        </div>
    </div>
    <%@ include file="/WEB-INF/views/footer.jsp" %>   
</body>
</html>