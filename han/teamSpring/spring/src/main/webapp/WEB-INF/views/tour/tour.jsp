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
    <%@ include file="../header.jsp" %>
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
                            <p class="tourpagecopy">Check out all of these gorgeous mountain trips with beautiful views of, you guessed it, the mountains</p>
                            <button class="tourpagebtn">산림 더보기</button>
                        </div>
                    </div>
                    <div class="tourpagecard">
                        <div class="tourpagecontent">
                            <h2 class="tourpagetitle">속초 해변가</h2>
                            <p class="tourpagecopy">Plan your next beach trip with these fabulous destinations</p>
                            <button class="tourpagebtn">해양 더보기</button>
                        </div>
                    </div>
                    <div class="tourpagecard">
                        <div class="tourpagecontent">
                            <h2 class="tourpagetitle">속초 놀거리</h2>
                            <p class="tourpagecopy">It's the desert you've always dreamed of asdfasdfasdfasdf</p>
                            <button class="tourpagebtn">놀거리 더보기</button>
                        </div>
                    </div>
                    <div class="tourpagecard">
                        <div class="tourpagecontent">
                            <h2 class="tourpagetitle">속초 볼거리</h2>
                            <p class="tourpagecopy">Seriously, straight up, just blast off into outer space today</p>
                            <button class="tourpagebtn">볼거리 더보기</button>
                        </div>
                    </div>
                </main>
            </div>
        </section>
        <section class="page" id="page2">
            <div class="page_wrap">
                <section id="pattern" class="pattern">
                    <ul class="tourpage2grid">
                        <li>
                            <div>
                                <a href="#"><img src="${path}/resources/img/back01.jpg" alt="back01"></a>
                            </div>
                        </li>
                        <li>
                            <div>
                                <a href="#"><img src="${path}/resources/img/back02.jpg" alt="back02"></a>
                            </div>
                        </li>
                        <li>
                            <div>
                                <a href="#"><img src="${path}/resources/img/back03.jpg" alt="back03"></a>
                            </div>
                        </li>
                        <li>
                            <div>
                                <a href="#"><img src="${path}/resources/img/back04.jpg" alt="back04"></a>
                            </div>
                        </li>
                        <li class="wide">
                            <div>
                                <a href="#"><img src="${path}/resources/img/back05.jpg" alt="back05"></a>
                            </div>
                        </li>
                        <li class="wide">
                            <div>
                                <a href="#"><img src="${path}/resources/img/back01.jpg" alt="back01"></a>
                            </div>
                        </li>
                        <li>
                            <div>
                                <a href="#"><img src="${path}/resources/img/back02.jpg" alt="back02"></a>
                            </div>
                        </li>
                        <li>
                            <div>
                                <a href="#"><img src="${path}/resources/img/back03.jpg" alt="back03"></a>
                            </div>
                        </li>
                        <li>
                            <div>
                                <a href="#"><img src="${path}/resources/img/back04.jpg" alt="back04"></a>
                            </div>
                        </li>
                        <li>
                            <div>
                                <a href="#"><img src="${path}/resources/img/back04.jpg" alt="back05"></a>
                            </div>
                        </li>
                    </ul>
                </section>
            </div>
        </section>
    </main>
    <%@ include file="../footer.jsp" %>
</body>
</html>

