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
   <!--   <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"> -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <script type="text/javascript" src="http://dmaps.daum.net/map_js_init/v3.js"></script>
<style>
  /*공통*/
      * { margin: 0; padding: 0; }
        body { width:100%; height: auto; } 
        ul {list-style:none;}
        a{text-decoration: none;}
      /* header  공통*/
      #hd { width: 100%; height: auto; position:relative; border: 1px solid #333; background-color: rgba(99, 96, 53, 0.014);}
      .banner { height: 100%; width: auto;}
      .hd_wrap { clear:both; width: 100%; margin: 0 auto; }
      #gnb {clear: both; width: 100%; position: absolute; z-index: 111;  }
      #gnb > .menu > li  { float:left; width: 14.28571428571429%;  text-align: center; } 
      #gnb a.dp1 { background-color:rgba(16, 29, 99, 0.2); display:block; line-height: 80px; height: 75px;  color:#fff;} 

      #gnb li:hover a.dp1 {background-color: rgba(238, 255, 0, 0.13);}
      #gnb .sub {display: none;}
      #gnb:hover .menu .sub {display: block;}
      #gnb .menu li:hover .sub {background-color: #ccc;}

      #gnb2 {display: none; }
      #gnb2 {clear: both; width: 100%; position: fixed; z-index: 111;}
      #gnb2 > .menu > li  { float:left; width: 14.28571428571429%;  text-align: center; } 
      #gnb2 a.dp1 { background-color:#fff; display:block; line-height: 80px; height: 75px;  color:black;} 

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
        }})
    </script>    

</head>
<body>
    <header class="hd clr-fix">
        <div class="hd_wrap clr-fix">
            <nav id="gnb2" class="clr-fix">
                <ul class="menu clr-fix">
                   <li ><a class="dp1" href=""><img class="banner clr-fix" src="${hpath }/resources/img/darklogo.png"  alt="배너"></a></li>
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
                            <li><a href="${hpath }/look/art.do" class="dp2">예술</a></li>
                            <li><a href="${hpath }/look/museum.do" class="dp2">박물관</a></li>
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
                   <li ><a class="dp1" href=""><img class="banner clr-fix" src="${hpath }/resources/img/footerlogo.png" alt="배너"></li></a>
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
                            <li><a href="${hpath }/look/art.do" class="dp2">예술</a></li>
                            <li><a href="${hpath }/look/museum.do" class="dp2">박물관</a></li>
                            <li><a href="" class="dp2">서브03</a></li>
                        </ul>
                    </li>
                    <li class="item4">
                        <a href="${hpath }/food/fmain.do" class="dp1">숙박/음식점</a>
                        <ul class="sub">
                            <li><a href="${hpath }/food/food.do" class="dp2">음식정보</a></li>
                            <li><a href="${hpath }/food/hotel.do" class="dp2">숙박정보</a></li>
                            <li><a href="${hpath }/food/market.do" class="dp2">중앙시장</a></li>
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

