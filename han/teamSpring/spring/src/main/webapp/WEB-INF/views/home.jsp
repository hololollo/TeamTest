<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path1" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" >
    <link rel="stylesheet" href="${path1}/resources/css/commen.css">
    <link rel="stylesheet" href="${path1}/resources/css/fonts.css">
	<title>Home(index.html)</title> 
	<!-- {path1}/resources/img/footer_logo.png -->
</head>
<body>
    <%@ include file="header.jsp" %>
    <main id="contents" class="clr-fix">
        <figure id="vs">
                <ul class="img_box">
                    <li class="item1">
                       <img src="${path1}/resources/img/back01.jpg" alt="배너1">
                    </li>
                    <li class="item2">
                        <img src="${path1}/resources/img/back02.jpg" alt="배너2">
                    </li>
                    <li class="item3">
                        <img src="${path1}/resources/img/back03.png" alt="배너3">
                    </li>
                    <li class="item4">
                        <img src="${path1}/resources/img/back04.png" alt="배너4">
                    </li>
                </ul>
         </figure>
        <script src="${path1}/resources/js/jquery-1.12.3.js"></script>
        <script src="${path1}/resources/js/main.js"></script>
    </main>
    <%@ include file="footer.jsp" %>
</body>
</html>