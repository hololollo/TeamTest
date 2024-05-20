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
<link rel="stylesheet" href="./subfoodhotel.css">
</head>
<body>
 <div class="layout">
    <header>header
      <div class="top_wrap"><img src="./img/img6.jpg" alt="헤드이미지"></div>
    </header>
    <aside>aside
      <nav id="side">
        <ul class="menu">
            <li>
                <a href="" class="dp1">관광명소</a>
                <ul class="sub">
                    <li><a href="" class="dp2">산림</a></li>
                    <li><a href="" class="dp2">해안</a></li>
                    <li><a href="" class="dp2">놀거리</a></li>
                    <li><a href="" class="dp2">볼거리</a></li>
                </ul>
            </li>
            <li>
                <a href="" class="dp1">문화/예술</a>
                <ul class="sub">
                    <li><a href="" class="dp2">문화재</a></li>
                    <li><a href="" class="dp2">박물관/전시</a></li>
                    <li><a href="" class="dp2">이달의공연</a></li>
                    <li><a href="" class="dp2">추가할거있음</a></li>
                </ul>
            </li>
            <li>
                <a href="./" class="dp1">숙박/음식점</a>
                <ul class="sub">
                    <li><a href="" class="dp2">먹거리</a></li>
                    <li><a href="" class="dp2">전통시장</a></li>
                    <li><a href="" class="dp2">숙박정보</a></li>
                </ul>
            </li>
        </ul>
      </nav>
    </aside>
    <main>
      <div class="breadcrumb">
        <p>
          <a href="">홈</a><span><a href="page1.html">숙박/음식점</a></span><span><a href="page3.html">숙박정보</a></span><span>상세보기</span>
        </p>
      </div>
      <h3 class="contents_title">켄싱턴 리조트 </h3>
      <br>
      <hr class="contents_hr">
        <div class="explain_table">
          <img src="./image-hotel/kensington.jpg" alt="켄싱턴 리조트">
            <table class="table1">
              <tbody>
                <tr>
                  <th>분 류</th>
                  <td> 리조트 </td>
                </tr>
                <tr>
                  <th>규모</th>
                  <td>총 144실 규모 
                     </td>
                </tr>
                <tr>
                  <th>개관일</th>
                  <td>2020년</td>
                </tr>
                <tr>
                  <th>소재지</th>
                  <td>강원도 고성군 토성면 신평골길 8-25</td>
                </tr>
                <tr>
                  <th>연락처</th>
                  <td>033-633-0100</td>
                </tr>
                <tr>
                  <th>시설사용요금</th>
                  <td><a href="https://www.hanwharesort.co.kr/irsweb/resort3/netIndex_.do" alt="홈페이지" target="_blank">홈페이지 참조</a></td>
                </tr>
              </tbody>
            </table>
        </div>
        <hr class="contents_hr">
        <div class="table2">
          <h4 class="contents_title"> 주요특징 </h4>
          <br>
          <p>주차 및 Wi-Fi가 항상 무료로 제공되므로 언제든지 차량을 입출차할 수 있으며 연락을 취하실 수 있습니다.  </p>
           <p> 속초의 토성면에 위치한 본 숙소는 속초 내의 관광 명소와 가깝습니다.  </p>
           <p> 떠나기 전 유명한 설악산 국립 공원을/를 방문해 보세요. 거리는 6.1km입니다. </p>
           <p> 본 고급 숙소는 보다 훌륭하고 기억에 남는 숙박을 제공하기 위해 레스토랑을 갖추고 있습니다. </p>
        </div>
        <hr class="contents_hr">
        <div class="map">
          <h4 class="contents_title">위치 정보</h4>
            <div class="map_contents">
          <!--구글 지도-->
          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d50157.76323683444!2d128.4425175758301!3d38.2131422036946!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x5fd897d40c213603%3A0x913915ffb694be01!2z7LyE7Iux7YS066as7KGw7Yq4IOyEpOyVheuwuOumrA!5e0!3m2!1sko!2skr!4v1716129374869!5m2!1sko!2skr" 
             width="800" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
        <hr class="contents_hr">
      </main>
      <footer>        
        <br>
        <hr>
        <div class="fc_wrap" >
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
      </footer><a href =""><img src="./img/footerlogo.png" alt="속초속촉로고"  class="logo"> </a>
      </div>
</body>
</html>