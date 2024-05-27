<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="hpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
   <style>
        /*공통*/
        * { margin: 0; padding: 0; }
        body { width:100%; height: auto; list-style:none;} 
        a{text-decoration: none;}
 

      .food_header{ width: 1980px; height: 500px; margin: 0px auto; background-image:url(${hpath}/resources/img/image-sub/sub-market.jpg);
      background-size: cover; /* Ensure the image covers the entire header */
      background-position: center; /* Center the image */
      background-repeat: no-repeat; /* Prevent the image from repeating */}

      .layout{width: 1260px; height: 2300px; margin: 0px auto; background-color:rgba(147, 89, 77, 0.3); border-radius:4px; margin-bottom:10px;}

  	.breadcrumb { 
  clear:both; border-bottom:2px solid #777; 
  padding-top: 24px; padding-bottom: 24px; text-align: right; 
  box-sizing:border-box;  padding-right: 40px;   
	}
.breadcrumb p * { 
  padding:0px 7px; 
  color:#333; 
  font-weight:bold; 
}
.breadcrumb p a:after { 
  content:">"; 
  padding-left: 14px; 
}
  .contents_title{
  display:block;
  padding-top: 5px; padding-left:20px; font-weight:bold; font-size:24px; margin-top:20px; margin-left:30px; }
  .contents_hr{
    margin:20px 20px auto;
    border: 0;
    height: 3px;
    background: #ccc;
  }
  .market_table{
    display:flex;
    width:1100px;
    height:400px;
    padding-top:30px;
    margin-left:20px;
  }

  .market_table img{
    margin-top:10px;
    width:500px; height:350px;
  }

  #text1{
    margin-left:20px;
  }
  #text1 ul {
    width:600px;
    text-align:left;
    line-height: 100px;
    margin-top:30px;
    font-weight:bold;
    color:rgba(252, 94, 3, 0.9);
    font-size: 30px;
  }
  #text1 li{
    font-size:18px;
    font-weight:bold;
  }
.page1{
	display:flex;
	width:1200px;
	margin: 0 auto;
	}
.page1 .market_table {
	width:500px;
	display:block;
	}	
.map_contents{
	margin-left:160px;
	margin-top: 30px;
	margin-bottom:10px; }
	
.page1 #text3{
	    margin-left:20px;
}
.page1 #text3 ul{
    width:600px;
    text-align:left;
    line-height: 100px;
    margin-top:60px;
    font-weight:bold;
    color:rgba(252, 94, 3, 0.9);
    font-size: 30px;
}

.page1 #text3 li{
    font-size:18px;
    font-weight:bold;
}
.page2 {
	width: auto;
	margin: 0 atuo;}
.page2 img{
    margin-left:200px;
    margin-top:10px;
    width:800px; height:350px;
}
  </style>
</head>
<body>
<%@ include file="../header.jsp" %>
    <header class="food_header"></header>
    <div class="breadcrumb">
      <p>
        <a href="${hpath }/home.do">홈</a><span><a href="${hpath }/food/fmain.do">숙박/음식점</a></span><span>음식점 정보</span>
      </p>
    </div>
    <div class="layout">

    	<h3 class="contents_title">속초 중앙시장 </h3>
      <div class="page1">
      <br>
        <div class="market_table">
          <img src="${hpath }/resources/img/image-sub/market1.jpg" alt="중앙시장1"></div>
            <div id="text1">
                  <ul> 1.속초 중앙시장은 가득합니다.</ul>
                  <li> 동해안의 싱싱한 수산물과 특산물 등으로 넘쳐납니다. </li>
                  <li>속초, 고성 여행에 꼭 가봐야하는 필수 관광지, 속초 중앙시장으로 초대합니다.</li>
                  <ul> 2.온갖 먹거리가 가득한 명소</ul>
                  <li>오징어순대, 아바이순대 그리고 속초의 인기절정인 닭강정까지.</li>
                  <li>속초중앙시장에는 동해의 맛집 명소로 매우 유명합니다.</li> 
       		</div>
        </div>
        <div class="page1">
			 <div id="text1">
                  <ul> 3. 실속쇼핑, 풍성한 장바구니, 속초중앙시장</ul>
                  <li> 비싸지 않아요. 저렴하고 양이 많은 전통재래시장.</li>
                  <li>게다가 풍성한 지역 특산물이 가득해서 마트나 백화점 갈 이유가 없답니다.</li>
                  <ul> 4. 깨끗하고 단정한 전통시장</ul>
                  <li>넓은 주차장, 하늘엔 캐노피로 더 없이 편리합니다.</li>
                  <li>새로운 시설을 도입하여 더욱 편안한 장보기가 가능합니다.</li>
				  <li>시장 현대화사업으로 속초중앙시장은 이제 더 완벽해졌습니다.</li> 
       		</div>        
       		<div class="market_table">
       		<img src="${hpath }/resources/img//image-sub/market2.jpg" alt="중앙시장2"></div>
		</div>
		<div class="page1">
     	<br>
        <div class="market_table">
          <img src="${hpath }/resources/img/image-sub/market3.jpg" alt="중앙시장3"></div>
            <div id="text3">
                  <ul> 5. 전국 10대 관광시장으로 선정</ul>
                  <li> 속초중앙시장은 여행하기 알맞은 우리의 전통중앙시장으로 속초, 동해, </li>
                  <li>고성여행의 필수관광지가 되었습니다.</li>
                  <li> 전국각지에서 오시는 수많은 관광객을 맞이하며 기쁜 감동을 드리고 있습니다.</li>
                  <li>지하회센터에서는 활어를 저렴한 가격으로 맛볼수 있구요. 350대가 동시주차</li>
                  <li>가능한 넓은 주차장은 장보실때 주차권만 받으시면 무료로 이용가능합니다.</li>
                  <li>이제 주차걱정은 하지 마시고 편안한 장보기를 시작하세요.</li> 
       		</div>
        </div>
        <hr class="contents_hr">
        <div class="map">
          <h4 class="contents_title">위치 정보(오시는 길)</h4>
           <div class="map_contents">
          <!--구글 지도-->
          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3135.232742677688!2d128.5876332115204!3d38.20449287176301!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x5fd8bc7719944521%3A0x1957812eaa1ab20c!2z7KSR7JWZ7Iuc7J6l!5e0!3m2!1sko!2skr!4v1716132919126!5m2!1sko!2skr" 
            width="900" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
        </div>
        <div class="page2">
        	<img src="${hpath }/resources/img/image-sub/market-guide.png" alt="구경요소">
        </div>
        <hr class="contents_hr">

  </div>  
  <footer>    
<%@ include file="../footer.jsp" %>
</footer>
</body>
</html>