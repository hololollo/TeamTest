<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<title>속초소개 </title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>
<link rel="stylesheet" href="${path}/resources/css/carousel_style.css">
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js'></script>
<script type="text/javascript" src="http://dmaps.daum.net/map_js_init/v3.js"></script>
<style>
    /*공통*/
    * { margin: 0; padding: 0; }
    body { width:100%; height: auto; }
    ul {list-style:none;}
    a{text-decoration: none;}

	   .intro_header{ width: 1980px; height: 600px; margin: 0px auto; background-image:url(${path}/resources/img/sockcho_main.png);
  background-size: cover; /* Ensure the image covers the entire header */
  background-position: center; /* Center the image */
  background-repeat: no-repeat; /* Prevent the image from repeating */}
    .intro_contents{width: 1260px; height: 600px; margin: 0px auto; }
        /*breadcrumb*/
        .breadcrumb { clear:both; border-bottom:2px solid #777;
    padding-top: 24px; padding-bottom: 24px; text-align: right;
    box-sizing:border-box;  padding-right: 40px;   }
    .breadcrumb p * { padding:0px 7px; color:#333; font-weight:bold; }
    .breadcrumb p a:after { content:">"; padding-left: 14px; }


       /*breadcrumb*/
       .breadcrumb1 { clear:both; border-bottom:2px solid #777;
    padding-top: 24px; padding-bottom: 24px; text-align: right;
    box-sizing:border-box;  padding-right: 40px;   }
    .breadcrumb1 p * { padding:0px 7px; color:#333; font-weight:bold; }
    .breadcrumb1 p a:after { content:">"; padding-left: 14px; }


    /*contents*/
    .intro_contents{width: 1260px; height: 2100px; margin: 0px auto;  }
    .inner_contents{width: 1060px; height: 2100px; margin: 1rem auto; }
    .intro_contents h1{margin-bottom: 1rem;}

    /*description*/
    .description {
        padding: 20px;
        background-color: #f9f9f9;
        border: 1px solid #ddd;
        margin-top: 20px;
        line-height: 1.6;
    }
    .description h2 {
        margin-bottom: 15px;
    }
    .description p {
        margin-bottom: 10px;
    }

.product-slider { padding: 45px; }

.product-slider #carousel { border: 4px #333; margin: 0; }

.product-slider #thumbcarousel { margin: 12px 0 0; padding: 0 45px; }

.product-slider #thumbcarousel .item { text-align: center; }

.product-slider #thumbcarousel .item .thumb { border: 4px solid #cecece; width: 20%; margin: 0 2%; display: inline-block; vertical-align: middle; cursor: pointer; max-width: 98px; }

.product-slider #thumbcarousel .item .thumb:hover { border-color: #1089c0; }

.product-slider .item img { width: 100%; height: auto; }

.carousel-control { color: #0284b8; text-align: center; text-shadow: none; font-size: 30px; width: 30px; height: 30px; line-height: 20px; top: 23%; }

.carousel-control:hover, .carousel-control:focus, .carousel-control:active { color: #333; }

.carousel-caption, .carousel-control .fa { font: normal normal normal 30px/26px FontAwesome; }
.carousel-control { background-color: rgba(0, 0, 0, 0); bottom: auto; font-size: 20px; left: 0; position: absolute; top: 30%; width: auto; }

.carousel-control.right, .carousel-control.left { background-color: rgba(0, 0, 0, 0); background-image: none; }

</style>

</head>
<body>
<%@ include file="/WEB-INF/views/header.jsp"%>
<header class="intro_header">
</header>
<div class="intro_contents">
    <div class="breadcrumb1">
        <p>
            <a href="">홈</a><a href="">커뮤니티</a><span>속초소개</span>
        </p>
    </div>

    <div class="inner_contents" >
        <h1 class="intro_title" >속초소개</h1>
        <h2>자연과 사람이 어우러진 곳, 속초</h2>
        <div class="product-slider">
            <div id="carousel" class="carousel slide" data-ride="carousel">
              <div class="carousel-inner">
            <div class="item active"> <img src="${path}/resources/img/sockcho_intro1.png" width="900px" height="450px"> </div>
			<div class="item"> <img src="${path}/resources/img/sockcho_intro2.png" width="900px" height="450px"> </div>
			<div class="item"> <img src="${path}/resources/img/sockcho_intro3.png" width="900px" height="450px"> </div>
			<div class="item"> <img src="${path}/resources/img/sockcho_intro4.png" width="900px" height="450px"> </div>
			<div class="item"> <img src="${path}/resources/img/sockcho_intro5.png" width="900px" height="450px"> </div>
              </div>
            </div>
            <div class="clearfix">
              <div id="thumbcarousel" class="carousel slide" data-interval="false" >
                <div class="carousel-inner">
                  <div class="item active">
                    <div data-target="#carousel" data-slide-to="0" class="thumb"><img src="${path}/resources/img/sockcho_intro1.png"></div>
                    <div data-target="#carousel" data-slide-to="1" class="thumb"><img src="${path}/resources/img/sockcho_intro2.png"></div>
                    <div data-target="#carousel" data-slide-to="2" class="thumb"><img src="${path}/resources/img/sockcho_intro3.png"></div>
                    <div data-target="#carousel" data-slide-to="3" class="thumb"><img src="${path}/resources/img/sockcho_intro4.png"></div>
                    <div data-target="#carousel" data-slide-to="4" class="thumb"><img src="${path}/resources/img/sockcho_intro5.png"></div>
                  </div>
                </div>
                <!-- /carousel-inner -->
                <a class="left carousel-control" href="#thumbcarousel" role="button" data-slide="prev"> <i class="fa fa-angle-left" aria-hidden="true"></i> </a> <a class="right carousel-control" href="#thumbcarousel" role="button" data-slide="next"><i class="fa fa-angle-right" aria-hidden="true"></i> </a> </div>
              <!-- /thumbcarousel -->
            </div>
          </div>
        <div class="description">
          <h2>속초의 매력</h2>
          <p>동해와 수려한 설악산이 마주 보며 숨 쉬는 고장, 속초. 설악산과 동해 해변도 충분히 아름답지만, 그것으로 속초의 매력을 다 보았다 말하기엔 아쉬움이 남는다. 속초는 산과 바다 말고도 바닷물과 민물이 섞인 신비로운 석호 영랑호와 청초호도 품은 곳이다. 일찍이 아름다운 자연경관으로 속초는 강원도 여행 성지 중 하나로 자리매김했다. 설악산의 기암괴석이 햇빛을 받아 반짝이는 모습과 잔잔히 너울거리는 동해, 그와 공존하며 바다 가까이 서 있는 영금정을 보면 왜 속초가 여행 성지인지 수긍하게 된다.</p>

          <p>속초에는 사람 이야기도 진하게 묻어 있다. 청초호 하구에 위치한 아바이마을은 한국전쟁 당시 북에서 내려온 피란민들이 꾸린 곳이다. 피란민들은 전쟁이 끝나면 하루빨리 고향으로 돌아가기 위해 비교적 북과 가까운 속초에 자리를 잡았다. 그러고는 고향으로 돌아갈 날을 손꼽아 기다리며 낯선 곳에서 어렵게 삶을 이어 나갔다. 누구인들 전쟁이 이리 오래 지속될 줄 알았을까. 휴전한 지 70년을 바라보는 지금, 아바이마을은 피란민이 아닌 실향민이 된 그들의 그리움이 가득 찬 마을이 되었다. 그리움은 독특한 음식 문화도 낳았다. 함경도 음식이지만 실향민들이 향수를 달래기 위해 만들어 먹기 시작해 속초의 명물이 된 가자미식해와 아바이순대, 함흥 냉면이 그것이다. 북한의 지명 원산에서 이름을 따 ‘원산조선소’란 이름을 가졌던 칠성조선소도 실향의 흔적이다.</p>

          <p>요즘 속초는 트렌디한 도시로 거듭나는 중이다. “사랑? 웃기지 말라 그래. 이제 돈으로 사겠어. 얼마면 돼?”라는 명대사로 지금까지 회자되는 드라마 <가을 동화> 촬영지이자 속초의 ‘근본 여행지’인 아바이마을은 물론, 드라마 <남자 친구> 촬영지 외옹치 바다향기로, 속초의 랜드마크가 된 속초아이 등을 찾는 사람들로 속초는 북적인다. 그뿐이랴, 자연과 사람이 만든 풍경 모두 정다운 이곳에서는 어딜 배경으로 해도 영상미가 넘쳐난다. 속초를 담은 작품을 골랐다.</p>
        </div>
        <h1 class="intro_title" >오시는길</h1>
        <hr>

        <div id="map" style="width:800px;height:600px; background:white; margin: 2rem auto; ">

        </div>
        <script>
          var mapContainer = document.getElementById('map'), // 지도를 표시할 div
              mapOption = {
                  center: new daum.maps.LatLng(38.207426333027726, 128.59043863394137), // 지도의 중심좌표
                  level:7  // 지도의 확대 레벨
              };

          var map = new daum.maps.Map(mapContainer, mapOption);

          // 마커가 표시될 위치입니다
          var markerPosition  = new daum.maps.LatLng(38.207426333027726, 128.59043863394137);

          // 마커를 생성합니다
          var marker = new daum.maps.Marker({
              position: markerPosition
          });

          // 마커가 지도 위에 표시되도록 설정합니다
          marker.setMap(map);

          var iwContent = '<div style="padding:5px;">강원도 속초시 <br><a href="" style="color:blue" target="_blank"></a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
              iwPosition = new daum.maps.LatLng(38.207426333027726, 128.59043863394137); //인포윈도우 표시 위치입니다

          // 인포윈도우를 생성합니다
          var infowindow = new daum.maps.InfoWindow({
              position : iwPosition,
              content : iwContent
          });

          // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
          infowindow.open(map, marker);
          </script>
          <script type="text/javascript" src="<http://m1.daumcdn.net/tiara/js/td.min.js>"></script>
          <script type="text/javascript">
          var _tiq = 'undefined' !== typeof _tiq ? _tiq : [];
              window._tiq = _tiq;
              _tiq.push(['__trackPageview']);
          </script>
    </div>

</div>

<%@ include file="/WEB-INF/views/footer.jsp"%>
</body>
</html>