<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>tour</title>
    <link rel="stylesheet" href="${path}/resources/css/tousubpage.css">
    <link rel="stylesheet" href="${path}/resources/css/tourpage1.css">
    <link rel="stylesheet" href="${path}/resources/css/tourpage2.css">
</head>
<body>
   <%@ include file="/WEB-INF/views/header.jsp" %> 
    <main id="contents" class="clr-fix">
        <figure id="vs">
            <img class="backimg" src="${path}/resources/img/back02.jpg" alt="배경이미지">
        </figure>
        <section>
            <div class="breadcrumb">
                <p>
                    <a href="${path}/home.jsp">홈</a><a href="${path}/tour/tour.do">관광명소</a><span>현재 페이지</span>
                </p>
            </div>
        </section>
        <section class="page" id="page1">
            <h2 class="page_title">속초 관광명소</h2>
            <div class="page_wrap">
                <main class="tourpage-content">
                    <div class="tourpagecard">
                        <div class="tourpagecontent">
                            <h2 class="tourpagetitle">속초 산림</h2>
                            <p class="tourpagecopy">속초 산림입니다.</p>
                            <button class="tourpagebtn"><a href="${path}/tour/toursub3_1.do">산림 더보기</a></button>
                        </div>
                    </div>
                    <div class="tourpagecard">
                        <div class="tourpagecontent">
                            <h2 class="tourpagetitle">속초 해변가</h2>
                            <p class="tourpagecopy">속초 해변가입니다</p>
                            <button class="tourpagebtn"><a href="${path}/tour/toursub2_1.do">해양 더보기</a></button>
                        </div>
                    </div>
                    <div class="tourpagecard">
                        <div class="tourpagecontent">
                            <h2 class="tourpagetitle">속초 놀거리</h2>
                            <p class="tourpagecopy">속초 놀거리입니다.</p>
                            <button class="tourpagebtn"><a href="${path}/tour/toursub1_1.do">놀거리 더보기</a></button>
                        </div>
                    </div>
                    <div class="tourpagecard">
                        <div class="tourpagecontent">
                            <h2 class="tourpagetitle">속초 볼거리</h2>
                            <p class="tourpagecopy">속초볼거리입니다.</p>
                            <button class="tourpagebtn"><a href="${path}/tour/toursub1_1.do">볼거리 더보기</a></button>
                        </div>
                    </div>
                </main>
            </div>
        </section>
    </main>
   <%@ include file="/WEB-INF/views/footer.jsp" %>   
</body>
</html>

