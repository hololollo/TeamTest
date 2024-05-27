<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<title>사이트소개(인사말) </title>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<style>
/공통/
* { margin: 0; padding: 0; }
body { width:100%; height: auto; }
ul {list-style:none;}
a{text-decoration: none;}
/*breadcrumb*/
        .breadcrumb { clear:both; border-bottom:2px solid #777;
    padding-top: 24px; padding-bottom: 24px; text-align: right;
    box-sizing:border-box;  padding-right: 40px;   }
    .breadcrumb p * { padding:0px 7px; color:#333; font-weight:bold; }
    .breadcrumb p a:after { content:">"; padding-left: 14px; }


    /*contents*/
    .intro_header{ width: 1980px; height: 600px; margin: 0px auto; background-image:url(${path}/resources/img/sockcho_main.png);
  background-size: cover; /* Ensure the image covers the entire header */
  background-position: center; /* Center the image */
  background-repeat: no-repeat; /* Prevent the image from repeating */}
    .intro_contents{width: 1260px; height: 600px; margin: 0px auto; }


    .textbox {
        max-width: 500px;
        height: 350px;
        margin: auto;

        padding: 20px;
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    .textbox h3 {
        font-size: 1.5em;
        color: #333;
        margin-bottom: 1rem;
    }
    .textbox h4 {
        margin-bottom: 1em;
    }
    .textbox strong {
        font-weight: bold;
        color: #007acc;
    }

</style>
</head>
<body>
<%@ include file="/WEB-INF/views/header.jsp"%>
<header class="intro_header">
</header>
<div class="intro_contents">
    <div class="breadcrumb">
        <p>
            <a href="">홈</a><a href="">커뮤니티</a><span>사이트소개</span>
        </p>
    </div>
    <h1 class="intro_title" style="margin-left:1rem ; margin-top: 2rem;">사이트 소개</h1>

    <div class="inner_contents" style="padding: 2rem 1rem;  display: flex; align-items: center;" >

        <div class="intro_mant"   >
            <div class="textbox"   >
                <h3>안녕하십니까.</h3>
                <h4>저희 <strong>속초속촉</strong>울 방문해 주셔서 진심으로 감사 드립니다.</h4>
                <h4> <strong>속초속촉</strong>은 속초 여행과 관련한 각종 관광명소.볼거리.맛집 등의 제공을 통한 풍성한 여행문화 정책을 위하여 설립.운영하고 있습니다.</h4>
                <h4>본 센터는 여행업체에 대한 현황을 이용자 에게 무상 제공하고 속초지역의 발전을 도모하고 있습니다. </h4>
                <h4>모두 즐거운 속초 여행이 되시길 바라겠습니다. </h4>
                <h2>"Have a wonderful trip to Sokcho" </h2>
            </div>

        </div>
        <img src="${path}/resources/img/notiheader.jpg" width="600px" height="400px" style="float: right; margin-left: 3rem;"></src>
    </div>
</div>
<%@ include file="/WEB-INF/views/footer.jsp"%>
</body>
</html>