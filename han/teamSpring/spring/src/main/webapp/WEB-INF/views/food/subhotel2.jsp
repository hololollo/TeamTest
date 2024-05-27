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
        body { width:100%; height: auto; } 
        ul {list-style:none;}
        a{text-decoration: none;}
 

      .food_header{ width: 1980px; height: 500px; margin: 0px auto; background-image:url(${hpath}/resources/img/img6.jpg);
      background-size: cover; /* Ensure the image covers the entire header */
      background-position: center; /* Center the image */
      background-repeat: no-repeat; /* Prevent the image from repeating */}

      .layout{width: 1260px; height: 1200px; margin: 0px auto; position: relative;}

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


        /*그외*/


/*메뉴바 밑 사진 바탕*/
.top_wrap {
  width:100vw;
}
/*메뉴바 밑 사진*/
.top_wrap img{
  width:100%;
  height:400px;
  margin: 0 auto;
}

/*메인목록 바탕*/


/*음식점_숙박업체 목록*/
.layout .fh { 
  position:relative; 
  width: 1200px; 
  margin: 0 auto;
  height:800px; 
}

.layout .fh .search{
  float:right;
}

.layout .fh .search:after{
  clear:both;
}

.layout .fh [type=text] {
  float:right;
  position:relative;
  line-height: 18px;
  text-align: center;
}
.layout .fh [type=button] {
  position:absolute;
}

.layout .fh:after {
  clear:both;
}


.layout .fh li { 
    box-sizing: border-box; 
    position:absolute; 
    z-index:5; 
  }
.layout .fh li .box { 
    width: 100%; height:100%; 
    background-color: rgba(109, 107, 100, 0.5); 
    color:#000;
    border-radius: 10px;
    text-align: center;
    box-shadow: 0px 2px 8px rgba(0,0,0,0.2);
}
.layout .fh li .box p{
  font-weight: bold; 
  text-align: center;
  line-height: 40px;
}
.layout .fh li .box span{ 
  color:blue;
}

  .box1 { width: 320px; height: 300px;}
  .box1:hover{transform: scale(95%); /*transform: translateY(-50%);*/ cursor:pointer; }
  .box2 { width: 320px; height:300px; }
  .box2:hover{ transform: scale(95%); cursor:pointer; }
  #item1 { top: 100px; left: 60px;}
  #item1 img{ margin-top:20px; width:280px; height: 200px; border-radius: 30px; }
  #item2 { top:100px; left:440px;}
  #item2 img{ margin-top:20px; width:280px; height: 200px; border-radius: 30px; }
  #item3 { top:100px; right:60px;}
  #item3 img{ margin-top:20px; width:280px; height: 200px; border-radius: 30px; }
  #item4 { top:460px; left:60px;}
  #item4 img{ margin-top:20px; width:280px; height: 200px; border-radius: 30px; }
  #item5 { top:460px; left:440px;}
  #item5 img{ margin-top:20px; width:280px; height: 200px; border-radius: 30px; }
  #item6 { top:460px; right:60px;}
  #item6 img{ margin-top:20px; width:280px; height: 200px; border-radius: 30px; }

/*라마다 호텔 상세페이지*/
.layout .ramada { 
  position:relative; 
  width: 1200px; 
  margin: 0 auto;
  height:800px; 
}

  .contents_title{padding-top: 5px; font-weight:bold; font-size:20px; margin:20px 20px auto;}
  .contents_hr{
    margin:20px 20px auto;
    border: 0;
    height: 3px;
    background: #ccc;
  }
  .explain_table{display:flex; width:1000px; height:300px; margin-left:150px;}
  .explain_table img{
    margin-top:50px;
    width:350px; height:250px;
  }
  .table1{
    width:500px;
    height:300px;
    padding-top:50px;
    margin-left:120px;
  }
  .table1 tbody{
    height:200px;
    text-align:center;
  }
  .table1 tbody tr th {
    width:120px;
  }
  .table1 tbody tr th td{
    text-align:center;
  }

  .table2{
    width:1000px;
    display:block;
  }
  .table2 .contents_title{
    margin-top:30px;
    margin-left:50px;
  }
  .table2 p {
    margin-left:80px;
    margin-bottom:30px;
  }

  .map{
    width:1000px;
  }
  .map .contents_title {
    margin-top:20px;
    margin-left:50px;
    margin-bottom:10px;
  }
  .map_contents{
    margin-left:150px;
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
    line-height: 70px;
    font-weight:bold;
    color:rgba(252, 94, 3, 0.9);
    font-size: 30px;
  }
  #text1 ul li{
    font-size:24px;
  }



    </style>
</head>
<body>
 <%@ include file="../header.jsp" %>
    <header class="food_header"></header>
    <main class="layout">
      <div class="breadcrumb">
        <p>
          <a href="${hpath }">홈</a><span><a href="${hpath }/food/fmain.do">숙박/음식점</a></span><span><a href="${hpath }/food/hotel.do">숙박정보</a></span><span>상세보기</span>
        </p>
      </div>
      <h3 class="contents_title">썬라이즈 호텔 </h3>
      <br>
      <hr class="contents_hr">
        <div class="explain_table">
          <img src="${hpath }/resources/img/image-hotel/sunrisehotel.jpg" alt="썬라이즈 호텔">
            <table class="table1">
              <tbody>
                <tr>
                  <th>분 류</th>
                  <td> 호텔 </td>
                </tr>
                <tr>
                  <th>규모</th>
                  <td>438실 규모 
                     </td>
                </tr>
                <tr>
                  <th>개관일</th>
                  <td>2019.11.18</td>
                </tr>
                <tr>
                  <th>소재지</th>
                  <td>강원도 속초시 청초호반로 291</td>
                </tr>
                <tr>
                  <th>연락처</th>
                  <td>033-800-8888</td>
                </tr>
                <tr>
                  <th>시설사용요금</th>
                  <td><a href="http://sunrisehotel.co.kr/" alt="홈페이지" target="_blank">홈페이지 참조</a></td>
                </tr>
              </tbody>
            </table>
        </div>
        <hr class="contents_hr">
        <div class="table2">
          <h4 class="contents_title"> 주요특징 </h4>
          <br>
          <p>속초에 자리한 썬라이즈 호텔 속초에서 머물러보세요.  </p>
           <p> 숙소는 설악워터피아에서 5.8km, 속초문화회관에서 2.4km 거리에 있습니다.  </p>
           <p> 숙소는 속초해수욕장에서 2.9km, 등대 해변에서 3km, 대포항에서 5.5km 거리에 있습니다. </p>
           <p> 레스토랑에서 미국식 요리를 즐길 수 있으며, 무료 전용 주차장을 이용하실 수 있습니다. </p>
        </div>
        <hr class="contents_hr">
        <div class="map">
          <h4 class="contents_title">위치 정보</h4>
            <div class="map_contents">
          <!--구글 지도-->
          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d671.9406071793578!2d128.58866257657!3d38.20170290301279!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x5fd8bb7f8073d671%3A0x8578175664ce05cb!2z7I2s65287J207KaI7Zi47YWUIOyGjey0iA!5e0!3m2!1sko!2skr!4v1716121933065!5m2!1sko!2skr" 
            width="800" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
          </div>
        </div>
      </main>
      <footer>        
<%@ include file="../footer.jsp" %>
</footer>
</body>
</html>