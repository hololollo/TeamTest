<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <title>Insert Notice</title>
    <style>
   <style>
        /*공통*/
        * { margin: 0; padding: 0; }
        body { width:100%; height: auto; } 
        ul {list-style:none;}
        a{text-decoration: none;}
 

      .notice_header{ width: 1980px; height: 600px; margin: 0px auto; background-image:url(${path}/resources/img/notiheader.jpg);;
      background-size: cover; /* Ensure the image covers the entire header */
      background-position: center; /* Center the image */
      background-repeat: no-repeat; /* Prevent the image from repeating */}


      /*noti css*/

      .breadcrumb { clear:both; border-bottom:2px solid #777; 
      padding-top: 24px; padding-bottom: 24px; text-align: right; 
      box-sizing:border-box;  padding-right: 40px;   }
      .breadcrumb p * { padding:0px 7px; color:#333; font-weight:bold; }
      .breadcrumb p a:after { content:">"; padding-left: 14px; }

        .insnotice_contents{width: 1260px; height: 650px; margin: 0px auto; position: relative; }
        .page_title{text-align: center; margin-top: 1rem;}
        .ins_notice{width: 750px; height: auto; margin: 2rem auto; margin: 0px auto; margin-top: 2rem; } 
        #title{width: 660px; height: 30px;}
        #content{width: 660px; height: 300px; resize: none; margin-top: 1rem; margin-left: 3.7rem;}
        #author{width: 660px; height: 30px; margin-top: 1rem;}
        
        .btnbox{clear: both; float: right; margin-right: 2.0rem; margin-top: 1rem;} 
        .insnotice_contents button{width: 70px; height: 40px; font: bolder; }
    </style>
</head>
<body>
<%@ include file="/WEB-INF/views/header.jsp" %> 
   <header class="notice_header">

    </header>
    <div class="insnotice_contents">
        <div class="breadcrumb">
            <p> 
                <a href="${path}">홈</a><a href="${path}/notice/noticeList.do">커뮤니티</a><span>공지사항</span>
            </p>
        </div>
        <hr>
        <h2 class="page_title">공지사항 등록</h2>

        <div class="ins_notice">
            <form action="${path}/notice/insertproNotice.do" method="post">
                <label for="title">글제목:</label>
                <input type="text" id="title" name="title" required><br>
                <label for="author">작성자:</label>
                <input type="text" id="author" name="author" required><br>
                <label for="content"></label>
                <textarea id="content" name="content" required placeholder="내용을 입력해주세요"></textarea><br>
               
                <input type="hidden" name="visited" value="0">
                <!-- 
                <input type="hidden" name="resdate" id="resdate">
                 -->
                <div class="btnbox">
                    <button type="submit">등록하기</button>
                    <button type="button"  onclick="history.back()">돌아가기</button>
                </div>
            </form>
    	</div>
    	
    </div>
<%@ include file="/WEB-INF/views/footer.jsp" %>   

</body>
</html>