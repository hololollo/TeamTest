<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path2" value="${pageContext.request.contextPath }" />
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>제목</title>
    <!-- 메타포 -->
    <!-- 바로가기 또는 파비콘 -->
    <!-- 오픈그래프 -->
    <!-- 폰트 로딩 -->
    <!-- 외부 스타일 로딩 -->
    <!-- 외부 js 라이브러리 로딩 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <!-- <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet"> -->
    <link rel="stylesheet" href="${path2 }/css/commen.css">
    <link rel="stylesheet" href="fonts.css">
    <script>
        window.addEventListener("scroll",function(){
        var scrollposition = window.scrollY;
        if(scrollposition > 1){
            document.getElementById("gnb").style.display = "none";
            document.getElementById("gnb2").style.display = "block";
        } else {
            document.getElementById("gnb").style.display = "block";
            document.getElementById("gnb2").style.display = "none";
        }})
    </script>
</head>
<body>
    <header class="hd clr-fix">
        <div class="hd_wrap clr-fix">
            <nav id="gnb2" class="clr-fix">
                <ul class="menu clr-fix">
                   <li ><a class="dp1" href=""><img class="banner clr-fix" src="img/darklogo.png" alt="배너"></a></li>
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
                            <li><a href="" class="dp2">서브01</a></li>
                            <li><a href="" class="dp2">서브02</a></li>
                            <li><a href="" class="dp2">서브03</a></li>
                            <li><a href="" class="dp2">서브04</a></li>
                            <li><a href="" class="dp2">서브05</a></li>
                        </ul>
                    </li>
                    <li>
                        <a class="dp1" href="" class="dp2">로그인</a>
                    </li>
                </ul>
            </nav>
        </div>   

        <div class="hd_wrap clr-fix">
            <nav id="gnb" class="clr-fix">
                <ul class="menu clr-fix">
                   <li ><a class="dp1" href=""><img class="banner clr-fix" src="./img/footerlogo.png" alt="배너"></li></a>
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
                            <li><a href="" class="dp2">서브01</a></li>
                            <li><a href="" class="dp2">서브02</a></li>
                            <li><a href="" class="dp2">서브03</a></li>
                            <li><a href="" class="dp2">서브04</a></li>
                            <li><a href="" class="dp2">서브05</a></li>
                        </ul>
                    </li>
                    <li>
                        <a class="dp1" href="" class="dp2">로그인</a>
                    </li>
                </ul>
            </nav>
        </div>
</header>
<script>
    window.addEventListener("scroll",function(){
    var scrollposition = window.scrollY;
    if(scrollposition > 1){
        document.getElementById("gnb").style.display = "none";
        document.getElementById("gnb2").style.display = "block";
    } else {
        document.getElementById("gnb").style.display = "block";
        document.getElementById("gnb2").style.display = "none";
    }})
</script>
<main id="contents" class="clr-fix">
        <figure id="vs">
                <ul class="img_box">
                    <li class="item1">
                       <img src="/img/back01.jpg" alt="배너1">
                    </li>
                    <li class="item2">
                        <img src="/img/back02.jpg" alt="배너2">
                    </li>
                    <li class="item3">
                        <img src="/img/back03.png" alt="배너3">
                    </li>
                    <li class="item4">
                        <img src="/img/back04.png" alt="배너4">
                    </li>
                </ul>
         </figure>

        <script src="jquery-1.12.3.js"></script>
        <script src="main.js"></script>
   
        <section class="page" id="page1">
            <h2 class="page_title">페이지 제목1</h2>
            <div class="page_wrap">
                1페이지 내용
            </div>
        </section>
        <section class="page" id="page2">
            <h2 class="page_title">페이지 제목2</h2>
            <div class="page_wrap">
                2페이지 내용
            </div>
        </section>
        <section class="page" id="page3">
            <h2 class="page_title">페이지 제목3</h2>
            <div class="page_wrap">
                3페이지 내용
            </div>
        </section>
</main>
<footer id="ft" class="clr-fix">
    <br>
    <hr>
    <div class="fc_wrap">
        <a href =""><img src="./img/footerlogo.png" alt="속초속촉로고"  class="logo"> </a>
        <nav class="foot_menu">
            <ul>
                <li><a href="">회원약관</a></li>
                <li><a href="">개인정보처리방침</a></li>
                <li><a href="">오시는길</a></li>
            </ul>
        </nav>
        <div class="copyright">
            <p class="addr"> [24826] 강원특별자치도 속초시 중앙로 183 속초시문화관광, 대표전화 : 033-639-2114 | FAX : 033-639-2330(평일 주간/야간 당직실, 공휴일)</p>
            <p class="copy">Copyright © Sokchosockchock All Rights Reserved.</p>
        </div>
        <div class="drop">
            <select name="sel" id="sel" onchange="locate()">
                <option value="">해당 관광서</option>
                <option value="https://www.sokcho.go.kr/">속초시청</option>
                <option value="https://www.sokchotour.com/tour">그곳속초(속초관광)</option>
                <option value="http://sokchocf.or.kr/sokchocf">속초문화관광재단</option>
            </select>
        </div>
        <script>
        function locate(){
            var sel = document.getElementById("sel");
            if(sel.value!=""){
                window.open(sel.value);
            }
        }
        </script>
    </div>    
</footer>
</body>
</html>