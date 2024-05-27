<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원 정보 보기</title>
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <link rel="stylesheet" href="${path1}/resources/css/normalize.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.4.3/css/foundation.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/motion-ui/1.2.3/motion-ui.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.4.3/css/foundation-prototype.min.css">
    <link href='https://cdnjs.cloudflare.com/ajax/libs/foundicons/3.0.0/foundation-icons.css' rel='stylesheet' type='text/css'>
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.4.3/js/foundation.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/motion-ui/1.2.3/motion-ui.min.js"></script>
    <style>
      .headerimg { width: 1930px; height: 600px; background-image: url(${path1}/resources/img/login.png); margin: 0px auto; background-size: cover; background-position: center; background-repeat: no-repeat; }
    </style>
</head>
<body style="overflow-y:hidden !important">
<%@ include file="/WEB-INF/views/header.jsp" %> 
<header id="header">
   
</header>
 <div class="headerimg"></div>

<div class="content" id="con">
    <div class="row column text-center">
        <div class="container">
            <div class="table_form_wrap">
                <table class="table_form">
                    <tbody>
                       <tr>
                           <th>아이디</th>
                           <td>${member.id}</td>
                       </tr>
                       <tr>
                           <th>비밀번호</th>
                           <td>********</td>
                       </tr>
                       <tr>
                           <th>이름</th>
                           <td>${member.name}</td>
                       </tr>
                       <tr>
                           <th>이메일</th>
                           <td>${member.email}</td>
                       </tr>
                       <tr>
                           <th>전화번호</th>
                           <td>${member.tel}</td>
                       </tr>
                       <tr>
                           <th>생년월일</th>
                           <td>${member.birth}</td>
                       </tr>
                       <tr>
                           <th>주소</th>
                           <td>${member.addr}</td>
                       </tr>
                       <tr>
                           <td colspan="2">
                               <c:if test="${not empty member.id }">
                                  <a href="${path1}/member/myUpdate.do" class="button btn-primary">회원 정보수정</a>
                                   <a href="${path1}/member/memberDelete.do?id=${member.id}" class="button btn-primary">회원 탈퇴</a>
                               </c:if>
                               <c:if test="${member.id == 'admin' }">
                                   <a href="${path1}/admin/memberList.do" class="button btn-primary">회원 목록</a>
                               </c:if>
                           </td>
                       </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
 <%@ include file="/WEB-INF/views/footer.jsp" %> 
</body>
</html>