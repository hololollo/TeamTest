<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sokcho Festivals</title>
    <link rel="stylesheet" href="${path}/resources/css/toursubpage.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <script type="text/javascript" src="http://dmaps.daum.net/map_js_init/v3.js"></script>
    <script type="text/javascript" src="http://s1.daumcdn.net/svc/original/U03/cssjs/jquery/jquery-1.11.0.js"></script>
    <script type="text/javascript" src="http://s1.daumcdn.net/svc/original/U0301/cssjs/JSON-js/fc535e9cc8/json2.min.js"></script>
    <style>
        @charset "utf-8";
        * { margin: 0; padding: 0; }
        body { width:100%; overflow-x:hidden; }
        a { text-decoration: none;}
        .clr-fix { clear:both; }
        .clr-fix:after { content:""; display:block; width:100%; clear:both;}
        .wrap { position:relative; }
        ul {list-style: none;}
        /* header */
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
        /* contents */
        #contents { width: 100%; height:auto;}
        .page { clear:both; width: 100%; height: auto; margin: 0 auto; }
        .page:after { content:""; display:block; width:100%; clear:both; }
        .page_title { text-align: center; padding: 1em; float: left;}
        .page_wrap { clear:both; width: 1280px; margin: 0 auto; }
        #page1 {width: 1280px; background-color: white; z-index: 0; height: auto;}
        #vs { clear:both; width: 1930px; height: 600px; overflow:hidden; position:relative; margin: 0 auto;}
        #vs img { display:block; width: 100%;  height: 100%; position:absolute;  z-index: 0px;}
        /* breadcrumb */
        .breadcrumb { clear:both;  padding-top: 24px; padding-bottom: 24px; text-align: right; box-sizing:border-box;  padding-right: 40px;   }
        .breadcrumb p * { padding:0px 7px; color: #333; font-weight:bold; }
        .breadcrumb p a:after { content:">"; padding-left: 14px; }
        /* sidemenu */
        .sidemenu {float: left; width: 250px; height: 600px; margin: 0 auto; }
        .sidemenuli {width: 250px; height: 60px; margin-top: 20px; border: 2px solid #ccc; text-align: center; line-height: 53px; border-radius: 10px; font-size: x-large; font-weight: 500;} 
        .sidemenuli:hover {background-color: #247bdf;}
        /* festivalinfo */
        .festivalinfo{float: right; width: 900px; height: auto; margin: 0 auto;  margin-right: 65px; margin-top: 20px;} 
        #festivalinfo {width: 100%; height: 500px;}
        .mySlides {width: 100%; height: 100%;}
        /*mapdiv */
        .mapdiv {width: 800px; height: 600px; margin: 0 auto; margin-top: 50px; margin-bottom: 50px;}
        /* textinfo */
        .textinfo {width: 800px; height: auto; border: 1px solid #333; margin: 0 auto; margin-top: 50px; border-radius: 20px;
        text-align: left; line-height: 50px;
        }
    </style>
</head>
<body style="overflow-y:hidden !important">
   <%@ include file="/WEB-INF/views/header.jsp" %> 
    <main id="contents" class="clr-fix">
        <figure id="vs">
            <img class="backimg" src="${path}/resources/img/back01.jpg" alt="배경이미지">
        </figure>
        <section>
            <div class="breadcrumb">
                <p>
                    <a href="${path}/index.jsp">홈</a><a href="${path}/tour.jsp">관광명소</a><span>속초 축제</span>
                </p>
            </div>
        </section>
        <hr>
        <section class="page" id="page1">
            <h2 class="page_title">속초 축제</h2>
            <div class="page_wrap">
                <div class="sidemenu">
                    <ul>
                        <li class="sidemenuli"><a href="${path}/tour/toursub1_1.do" class="sidemenulia">오징어 축제<span class="material-symbols-outlined" style="float: right;">add</span></a></li>
                        <li class="sidemenuli"><a href="${path}/tour/toursub1_2.do" class="sidemenulia">해맞이 축제<span class="material-symbols-outlined" style="float: right;">add</span></a></li>
                        <li class="sidemenuli"><a href="${path}/tour/toursub1_3.do" class="sidemenulia">문화 예술 축제<span class="material-symbols-outlined" style="float: right;">add</span></a></li>
                        <li class="sidemenuli"><a href="${path}/tour/toursub1_4.do" class="sidemenulia">속초 여름 해변 축제<span class="material-symbols-outlined" style="float: right;">add</span></a></li>

                    </ul>
                </div>
                <div class="festivalinfo">
                    <div class="w3-content w3-display-container" id="festivalinfo">
                        <img class="mySlides" src="${path}/resources/img/festival/squid_festival1.png" alt="오징어 축제 이미지">
                        <img class="mySlides" src="${path}/resources/img/festival/squid_festival2.png" alt="오징어 축제 이미지">
                        <img class="mySlides" src="${path}/resources/img/festival/squid_festival3.png" alt="오징어 축제 이미지">
                        <img class="mySlides" src="${path}/resources/img/festival/squid_festival4.png" alt="오징어 축제 이미지">
                        <img class="mySlides" src="${path}/resources/img/festival/squid_festival1.png" alt="오징어 축제 이미지">
                        <img class="mySlides" src="${path}/resources/img/festival/squid_festival2.png" alt="오징어 축제 이미지">
                        <img class="mySlides" src="${path}/resources/img/festival/squid_festival3.png" alt="오징어 축제 이미지">
                        <img class="mySlides" src="${path}/resources/img/festival/squid_festival4.png" alt="오징어 축제 이미지">
                        <button class="w3-button w3-black w3-display-left" onclick="plusDivs(-1)">&#10094;</button>
                        <button class="w3-button w3-black w3-display-right" onclick="plusDivs(1)">&#10095;</button>
                    </div>
                    <!-- 
                           <img class="mySlides" src="${path}/resources/img/sunrise_festival.jpg" alt="해맞이 축제 이미지">
                        <img class="mySlides" src="${path}/resources/img/art_festival.jpg" alt="문화 예술 축제 이미지">
                        <img class="mySlides" src="${path}/resources/img/summer_beach_festival.jpg" alt="속초 여름 해변 축제 이미지">
                        <img class="mySlides" src="${path}/resources/img/spring_flower_festival.jpg" alt="속초 봄꽃 축제 이미지">
                        <img class="mySlides" src="${path}/resources/img/fireworks_festival.jpg" alt="속초 해변 불꽃 축제 이미지">
                        <img class="mySlides" src="${path}/resources/img/international_music_festival.jpg" alt="속초 국제 음악제 이미지">
                        <img class="mySlides" src="${path}/resources/img/seafood_festival.jpg" alt="속초 해산물 축제 이미지">
                     -->
                    <script>
                        var slideIndex = 1;
                        showDivs(slideIndex);
                        function plusDivs(n) {
                            showDivs(slideIndex += n);
                        }
                        function showDivs(n) {
                            var i;
                            var x = document.getElementsByClassName("mySlides");
                            if (n > x.length) {slideIndex = 1}
                            if (n < 1) {slideIndex = x.length}
                            for (i = 0; i < x.length; i++) {
                                x[i].style.display = "none";  
                            }
                            x[slideIndex-1].style.display = "block";  
                        }
                    </script>
                    <div class="textinfo">
                        <p class="textifop"><span class="material-symbols-outlined">map</span> 주소</p>
                        <p>강원도 속초시 중앙로 123</p>
                        <p class="textifop"><span class="material-symbols-outlined">auto_stories</span> 내용</p>
                        <p>속초 오징어 축제는 매년 가을에 열리며, 속초의 특산물인 오징어를 주제로 다양한 체험 프로그램과 공연이 진행됩니다. 해맞이 축제는 새해를 맞이하여 첫 일출을 보기 위해 많은 사람들이 모이며, 다양한 문화 공연과 불꽃놀이가 포함됩니다. 문화 예술 축제는 지역 예술가들이 참여하여 다양한 작품을 선보이고 공연을 펼치는 행사입니다. 속초 여름 해변 축제는 여름철 해변에서 즐길 수 있는 다양한 해양 스포츠와 축제가 열립니다. 속초 봄꽃 축제는 봄에 피는 아름다운 꽃들을 즐길 수 있는 축제입니다. 속초 해변 불꽃 축제는 해변에서 화려한 불꽃놀이를 감상할 수 있는 축제입니다. 속초 국제 음악제는 다양한 장르의 음악 공연이 열리는 축제입니다. 속초 해산물 축제는 속초의 다양한 해산물을 즐길 수 있는 축제입니다.</p>
                    </div>
                    <div class="mapdiv">
                        <div id="map" style="width:800px;height:600px; background:white;"></div>
                        <script>
                            var mapContainer = document.getElementById('map'), 
                                mapOption = { 
                                    center: new daum.maps.LatLng(38.207020, 128.591960), 
                                    level: 3 
                                };
                            var map = new daum.maps.Map(mapContainer, mapOption);
                            var markerPosition  = new daum.maps.LatLng(38.207020, 128.591960); 
                            var marker = new daum.maps.Marker({position: markerPosition});
                            marker.setMap(map);
                            var iwContent = '<div style="padding:5px;">속초 축제 위치 <br><a href="https://map.kakao.com/link/map/속초축제,38.207020,128.591960" style="color:blue" target="_blank">큰지도보기</a></div>', 
                                iwPosition = new daum.maps.LatLng(38.207020, 128.591960); 
                            var infowindow = new daum.maps.InfoWindow({position : iwPosition, content : iwContent });
                            infowindow.open(map, marker);
                        </script>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <%@ include file="/WEB-INF/views/footer.jsp" %>   
</body>
</html>
