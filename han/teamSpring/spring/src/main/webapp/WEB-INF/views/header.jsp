<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="hpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>header</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
   <link rel="stylesheet" href="${hpath}/resources/css/header.css"/>
    <script>
        window.addEventListener("scroll",function(){
            var scrollposition = window.scrollY;
            if(scrollposition > 1){
                document.getElementById("gnb").style.display = "none";
                document.getElementById("gnb2").style.display = "block";
            } else {
                document.getElementById("gnb").style.display = "block";
                document.getElementById("gnb2").style.display = "none";
            }
        })
    </script>
</head>
<body>
    <header class="hd clr-fix">
        <div class="hd_wrap clr-fix">
            <nav id="gnb" class="clr-fix">
                <ul class="menu clr-fix">
                    <li class="item0">
                       <a class="dp1" href="${hpath}/home.do"><img class="banner clr-fix" src="${hpath}/resources/img/footerlogo.png" alt="배너"></a>
                       <ul class="sub">
                            <li><a href="" class="dp2">&ensp;</a></li>
                            <li><a href="" class="dp2">&ensp;</a></li>
                            <li><a href="" class="dp2">&ensp;</a></li>
                        </ul>
                      </li>
                    <li class="item1">
                        <a href="${hpath}/tour/introsite.do" class="dp1">사이트소개</a>
                        <ul class="sub">
                            <li><a href="${hpath}/tour/introsite.do" class="dp2">사이트소개</a></li>
                            <li><a href="${hpath}/tour/introsokcho.do" class="dp2">속초소개</a></li>
                            <li><a href="${hpath}/member/agree2.do" class="dp2">개인정보처리방침</a></li>
                        </ul>
                    </li>
                    <li class="item2">
                        <a href="${hpath}/tour/tour.do" class="dp1">속초관광명소</a>
                        <ul class="sub">
                            <li><a href="${hpath}/tour/toursub1_1.do" class="dp2">속초 축제</a></li>
                            <li><a href="${hpath}/tour/toursub3_1.do" class="dp2">속초 산림</a></li>
                            <li><a href="${hpath}/tour/toursub2_1.do" class="dp2">속초 해변</a></li>
                        </ul>
                    </li>
                    <li class="item3">
                        <a href="${hpath}/look/art.do" class="dp1">문화예술</a>
                        <ul class="sub">
                            <li><a href="${hpath}/look/art.do" class="dp2">공연.예술</a></li>
                            <li><a href="${hpath}/look/museum.do" class="dp2">박물관</a></li>
                           <li><a href="${hpath}/look/treasure.do" class="dp2">문화재</a></li>
                        </ul>
                    </li>
                    <li class="item4">
                        <a href="${hpath}/food/fmain.do" class="dp1">숙박/음식점</a>
                        <ul class="sub">
                            <li><a href="${hpath}/food/food.do" class="dp2">음식</a></li>
                            <li><a href="${hpath}/food/hotel.do" class="dp2">숙박</a></li>
                            <li><a href="${hpath}/food/market.do" class="dp2">시장</a></li>
                        </ul>
                    </li>
                    <li class="item4">
                        <a href="" class="dp1">참여공간</a>
                        <ul class="sub">
                            <li><a href="${hpath}/notice/noticeList.do" class="dp2">공지사항</a></li>
                            <li><a href="${hpath}/qna/qnaList.do" class="dp2">묻고 답하기</a></li>
                            <li><a href="${hpath}/board/boardList.do" class="dp2">자료실</a></li>
                        </ul>
                    </li>
                      <li>
                        <c:choose>
                            <c:when test="${not empty sid}">
                                <a href="${hpath}/member/logout.do" class="dp1">로그아웃</a>
                                <ul class="sub">
                                    <li><a href="${hpath}/member/myInfo.do" class="dp2">마이페이지</a></li>
                                    <c:if test="${sid == 'admin'}">
                                        <li><a href="${hpath}/admin/memberList.do" class="dp2">관리자페이지</a></li>
                                    </c:if>
                                    <li><a href="" class="dp2">&ensp;</a></li>
                                </ul>
                            </c:when>
                            <c:otherwise>
                                <a href="${hpath}/member/login.do" class="dp1">로그인</a>
                            </c:otherwise>
                        </c:choose>
                    </li>
                </ul>
            </nav>
        </div>              
        <div class="hd_wrap clr-fix">
            <nav id="gnb2" class="clr-fix">
                <ul class="menu clr-fix">
                    <li class="item0">
                       <a class="dp1" href="${hpath}/home.do"><img class="banner clr-fix" src="${hpath}/resources/img/darklogo.png" alt="배너"></a>
                       <ul class="sub">
                            <li><a href="" class="dp2">&ensp;</a></li>
                            <li><a href="" class="dp2">&ensp;</a></li>
                            <li><a href="" class="dp2">&ensp;</a></li>
                        </ul>
                      </li>                 
                    <li id="dp1li" class="item1">
                        <a href="${hpath}/tour/introsite.do" class="dp1">사이트소개</a>
                        <ul class="sub">
                          <li><a href="${hpath}/tour/introsite.do" class="dp2">사이트소개</a></li>
                            <li><a href="${hpath}/tour/introsokcho.do" class="dp2">속초소개</a></li>
                            <li><a href="${hpath}/member/agree2.do" class="dp2">개인정보처리방침</a></li>
                        </ul>
                    </li>
                    <li id="dp1li" class="item2">
                        <a href="${hpath}/tour/tour.do" class="dp1">관광명소</a>
                        <ul class="sub">
                            <li><a href="${hpath}/tour/toursub1_1.do" class="dp2">속초 축제</a></li>
                            <li><a href="${hpath}/tour/toursub3_1.do" class="dp2">속초 산림</a></li>
                            <li><a href="${hpath}/tour/toursub2_1.do" class="dp2">속초 해변</a></li>
                        </ul>
                    </li>
                    <li id="dp1li" class="item3">
                        <a href="${hpath}/look/art.do" class="dp1">문화예술</a>
                        <ul class="sub">
                           <li><a href="${hpath}/look/art.do" class="dp2">공연.예술</a></li>
                            <li><a href="${hpath}/look/museum.do" class="dp2">박물관</a></li>
                           <li><a href="${hpath}/look/treasure.do" class="dp2">문화재</a></li>
                        </ul>
                    </li>
                    <li id="dp1li" class="item4">
                       <a href="${hpath}/food/fmain.do" class="dp1">숙박/음식점</a>
                        <ul class="sub">
                            <li><a href="${hpath}/food/food.do" class="dp2">음식</a></li>
                            <li><a href="${hpath}/food/hotel.do" class="dp2">숙박</a></li>
                            <li><a href="${hpath}/food/market.do" class="dp2">시장</a></li>
                        </ul>
                    </li>
                    <li id="dp1li" class="item4">
                        <a href="" class="dp1">참여공간</a>
                        <ul class="sub">
                            <li><a href="${hpath}/notice/noticeList.do" class="dp2">공지사항</a></li>
                            <li><a href="${hpath}/qna/qnaList.do" class="dp2">묻고 답하기</a></li>
                            <li><a href="${hpath}/board/boardList.do" class="dp2">자료실</a></li>
                        </ul>
                    </li>
                    <li>
                        <c:choose>
                            <c:when test="${not empty sid}">
                                <a href="${hpath}/member/logout.do" class="dp1">로그아웃</a>
                                <ul class="sub">
                                    <li><a href="${hpath}/member/myInfo.do" class="dp2">마이페이지</a></li>
                                    <c:if test="${sid == 'admin'}">
                                        <li><a href="${hpath}/admin/memberList.do" class="dp2">관리자페이지</a></li>
                                    </c:if>
                                    <li><a href="" class="dp2">&ensp;</a></li>
                                </ul>
                            </c:when>
                            <c:otherwise>
                                <a href="${hpath}/member/login.do" class="dp1">로그인</a>
                            </c:otherwise>
                        </c:choose>
                    </li>
                </ul>
            </nav>
        </div>
    </header>
        <div id="">
            <!-- login 할 경우 로그아웃으로 변경 -->
            <c:if test="${not empty sid}">
            </c:if>
            <c:if test="${empty sid}">
                <!-- <h2 style="text-align:center;">모든 서비스를 활용시 로그인 요망</h2> --> <!--   -->
            </c:if>
        </div>
    </main>
</body>
</html>