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
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <script type="text/javascript" src="http://dmaps.daum.net/map_js_init/v3.js"></script>
    <style>
        .material-symbols-outlined {
          font-variation-settings:
          'FILL' 0,
          'wght' 400,
          'GRAD' 0,
          'opsz' 30;
          float: right;
        }
        * { margin: 0; padding: 0; }
        body { width:100%; overflow-x:hidden; }
        a { text-decoration: none;}
        .clr-fix { clear:both; }
        .clr-fix:after { content:""; display:block; width:100%; clear:both;}
        .wrap { position:relative; }
        ul {list-style: none;}
        .hd_wrap {clear: both; width: 100%; position: relative;}
        .banner {width: auto; height: 100%;}
        #gnb {clear: both; width: 100%; position: absolute; z-index: 111;}
        #gnb > .menu > li  { float:left; width: 14.28571428571429%;  text-align: center; } 
        #gnb a.dp1 { background-color:rgba(16, 29, 99, 0.2); display:block; line-height: 50px; height: 50px;  color:#fff;} 
        #gnb a.dp2 {color: white; font-weight: 300px;} 
        #gnb .sub {display: none; line-height: 50px; background-color: rgba(9, 5, 31, 0.562);}
        #gnb:hover .menu .sub {display: block;}
        #gnb .menu li:hover .sub {background-color: #fff; }
        #gnb .menu li:hover a.dp2 {color: black; font-weight: 500px;}
        #gnb2 {display: none; }
        #gnb2 {clear: both; width: 100%; position: fixed; z-index: 111;}
        #gnb2 > .menu > li  { float:left; width: 14.28571428571429%;  text-align: center; } 
        #gnb2 a.dp1 { background-color:#fff; display:block; line-height: 50px; height: 50px;  color:black;} 
        #gnb2 li:hover a.dp1 {background-color: rgba(0, 255, 255, 0.13);}
        #gnb2 .sub {display: none;}
        #gnb2:hover .menu .sub {display: block;}
        #gnb2 .menu li:hover .sub {background-color: #ccc;}
     
    </style>
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
                    <li><a class="dp1" href=""><img class="banner clr-fix" src="https://placehold.it/100x100/333/" alt="배너"></a></li>
                    <li class="item1">
                        <a href="" class="dp1">사이트소개</a>
                        <ul class="sub">
                            <li><a href="" class="dp2">서브01</a></li>
                            <li><a href="" class="dp2">서브02</a></li>
                            <li><a href="" class="dp2">서브03</a></li>
                            <li><a href="" class="dp2">서브04</a></li>
                            <li><a href="" class="dp2">서브05</a></li>
                        </ul>
                    </li>
                    <li class="item2">
                        <a href="" class="dp1">관광명소</a>
                        <ul class="sub">
                            <li><a href="" class="dp2">서브01</a></li>
                            <li><a href="" class="dp2">서브02</a></li>
                            <li><a href="" class="dp2">서브03</a></li>
                            <li><a href="" class="dp2">서브04</a></li>
                            <li><a href="" class="dp2">서브05</a></li>
                        </ul>
                    </li>
                    <li class="item3">
                        <a href="" class="dp1">문화예술</a>
                        <ul class="sub">
                            <li><a href="" class="dp2">서브01</a></li>
                            <li><a href="" class="dp2">서브02</a></li>
                            <li><a href="" class="dp2">서브03</a></li>
                            <li><a href="" class="dp2">서브04</a></li>
                            <li><a href="" class="dp2">서브05</a></li>
                        </ul>
                    </li>
                    <li class="item4">
                        <a href="" class="dp1">숙박/음식점</a>
                        <ul class="sub">
                            <li><a href="" class="dp2">서브01</a></li>
                            <li><a href="" class="dp2">서브02</a></li>
                            <li><a href="" class="dp2">서브03</a></li>
                            <li><a href="" class="dp2">서브04</a></li>
                            <li><a href="" class="dp2">서브05</a></li>
                        </ul>
                    </li>
                    <li class="item4">
                        <a href="" class="dp1">참여공간</a>
                        <ul class="sub">
                            <li><a href="${hpath}/notice/noticeList.jsp" class="dp2">공지사항</a></li>
                            <li><a href="${hpath}/qna/qnaList.jsp" class="dp2">qna</a></li>
                            <li><a href="" class="dp2">서브03</a></li>
                            <li><a href="" class="dp2">서브04</a></li>
                            <li><a href="" class="dp2">서브05</a></li>
                        </ul>
                    </li>
                    <li>
                        <c:choose>
                            <c:when test="${not empty sid}">
                                <a href="${hpath}/member/logout.do" class="dp1">로그아웃</a>
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
                    <li><a class="dp1" href=""><img class="banner clr-fix" src="https://placehold.it/100x100/333/" alt="배너"></a></li>
                    <li id="dp1li" class="item1">
                        <a href="" class="dp1">사이트소개</a>
                        <ul class="sub">
                            <li><a href="" class="dp2">서브01</a></li>
                            <li><a href="" class="dp2">서브02</a></li>
                            <li><a href="" class="dp2">서브03</a></li>
                            <li><a href="" class="dp2">서브04</a></li>
                            <li><a href="" class="dp2">서브05</a></li>
                        </ul>
                    </li>
                    <li id="dp1li" class="item2">
                        <a href="" class="dp1">관광명소</a>
                        <ul class="sub">
                            <li><a href="" class="dp2">서브01</a></li>
                            <li><a href="" class="dp2">서브02</a></li>
                            <li><a href="" class="dp2">서브03</a></li>
                            <li><a href="" class="dp2">서브04</a></li>
                            <li><a href="" class="dp2">서브05</a></li>
                        </ul>
                    </li>
                    <li id="dp1li" class="item3">
                        <a href="" class="dp1">문화예술</a>
                        <ul class="sub">
                            <li><a href="" class="dp2">서브01</a></li>
                            <li><a href="" class="dp2">서브02</a></li>
                            <li><a href="" class="dp2">서브03</a></li>
                            <li><a href="" class="dp2">서브04</a></li>
                            <li><a href="" class="dp2">서브05</a></li>
                        </ul>
                    </li>
                    <li id="dp1li" class="item4">
                        <a href="" class="dp1">숙박/음식점</a>
                        <ul class="sub">
                            <li><a href="" class="dp2">서브01</a></li>
                            <li><a href="" class="dp2">서브02</a></li>
                            <li><a href="" class="dp2">서브03</a></li>
                            <li><a href="" class="dp2">서브04</a></li>
                            <li><a href="" class="dp2">서브05</a></li>
                        </ul>
                    </li>
                    <li id="dp1li" class="item4">
                        <a href="" class="dp1">참여공간</a>
                        <ul class="sub">
                            <li><a href="" class="dp2">서브01</a></li>
                            <li><a href="" class="dp2">서브02</a></li>
                            <li><a href="" class="dp2">서브03</a></li>
                            <li><a href="" class="dp2">서브04</a></li>
                            <li><a href="" class="dp2">서브05</a></li>
                        </ul>
                    </li>
                    <li>
                        <c:choose>
                            <c:when test="${not empty sid}">
                                <a href="${hpath}/member/logout.do" class="dp1">로그아웃</a>
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
                <h2 style="text-align:center;">${sname} 님 환영합니다.</h2>
            </c:if>
            <c:if test="${empty sid}">
                <!-- <h2 style="text-align:center;">모든 서비스를 활용시 로그인 요망</h2> --> <!--   -->
            </c:if>
        </div>
    </main>
</body>
</html>

