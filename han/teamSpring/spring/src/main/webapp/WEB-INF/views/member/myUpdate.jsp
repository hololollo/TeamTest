<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원 정보 수정</title>
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <link rel="stylesheet" href="${path1}/resources/css/normalize.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.4.3/css/foundation.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/motion-ui/1.2.3/motion-ui.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.4.3/css/foundation-prototype.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/foundicons/3.0.0/foundation-icons.css" rel="stylesheet" type="text/css">
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.4.3/js/foundation.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/motion-ui/1.2.3/motion-ui.min.js"></script>
    <style>
      .headerimg { width: 1930px; height: 600px; background-image: url(${path1}/resources/img/login.png); margin: 0px auto; background-size: cover; background-position: center; background-repeat: no-repeat; }
    </style>
</head>
<body style="overflow-y:hidden !important">
<%@ include file="/WEB-INF/views/header.jsp" %> 
 <div class="headerimg"></div>

<div class="content" id="con">
    <div class="row column text-center">
        <div class="container">
            <c:if test="${sid=='admin'}">
                <h2 class="page_tit">회원 정보 수정</h2>
            </c:if>
            <c:if test="${sid!='admin'}">
                <h2 class="page_tit">마이 페이지</h2>
            </c:if>
            <hr>
            <form action="${path1}/member/myUpdatePro.do" method="post" onsubmit="return updateCheck(this)">
                <div class="table_form_wrap">
                    <table class="table_form">
                        <tbody>
                        <tr>
                            <th><label for="id">아이디</label></th>
                            <td><input type="text" name="id" id="id" size="100" class="single100" value="${member.id}" readonly required></td>
                        </tr>
                        <tr>
                            <th><label for="pw">비밀번호</label></th>
                            <td><input type="password" name="pw" id="pw" class="single100" value="" pattern="(?=.*\d)(?=.*[a-z]).{4,}" >
                                <p>(최소 4자리이상, 숫자, 영문 소문자 포함되어야 함)</p>
                            </td>
                        </tr>
                        <tr>
                            <th><label for="pw2">비밀번호 확인</label></th>
                            <td><input type="password" name="pw2" id="pw2" class="single100" value="" ></td>
                        </tr>
                        <tr>
                            <th><label for="name">이름</label></th>
                            <td><input type="text" name="name" id="name" class="single100" value="${member.name}" ></td>
                        </tr>
                        
                        <tr>
                            <th><label for="email">email</label></th>
                            <td><input type="email" name="email" id="email" class="single100" value="${member.email}" ></td>
                        </tr>
                        <tr>
                            <th><label for="tel">tel</label></th>
                            <td><input type="tel" name="tel" id="tel" class="single100" value="${member.tel}" ></td>
                        </tr>
                        
                        <tr>
                            <th><label for="birth">생년월일</label></th>
                            <td><input type="text" name="birth" id="birth" class="single100" value="${member.birth}" placeholder="YYYY-MM-DD" ></td>
                        </tr>
                        <tr>
                            <th><label for="gender">성별</label></th>
                            <td>
                                <input type="radio" name="gender" id="genderM" value="M" <c:if test="${member.gender == 'M'}">checked</c:if>> 남성
                                <input type="radio" name="gender" id="genderF" value="F" <c:if test="${member.gender == 'F'}">checked</c:if>> 여성
                            </td>
                        </tr>
                        <tr>
                            <th><label for="postcode">우편번호</label></th>
                            <td><input type="text" name="postcode" id="postcode" class="single100" value="${member.postcode}" ></td>
                        </tr>
                        <tr>
                            <th><label for="addr1">기본 주소</label></th>
                            <td><input type="text" name="addr1" id="addr1" class="single100" value="${addr1}" ></td>
                        </tr>
                        <tr>
                            <th><label for="addr2">상세 주소</label></th>
                            <td><input type="text" name="addr2" id="addr2" class="single100" value="${addr2}"></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <input type="submit" class="button btn-primary" value="회원정보수정">
                                <a href="${path1}/member/myInfo.do" class="button btn-primary">취소</a>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </form>
            <script>
                function updateCheck(f){
                    if(f.pw.value != f.pw2.value){
                        alert("비밀번호와 비밀번호 확인이 서로 다릅니다.");
                        return false;
                    }
                    return true;
                }
            </script>
            <script>
                function findAddr() {
                    new daum.Postcode({
                        oncomplete: function(data) {
                            console.log(data);
                            var roadAddr = data.roadAddress;
                            var jibunAddr = data.jibunAddress;
                            document.getElementById("postcode").value = data.zonecode;
                            if(roadAddr !== '') {
                                document.getElementById("addr1").value = roadAddr;
                            } else if(jibunAddr !== ''){
                                document.getElementById("addr1").value = jibunAddr;
                            }
                        }
                    }).open();
                }
            </script>
            <c:if test="${empty member}">
                <script>
                    alert("로그인 후 이용 가능합니다.");
                    location.href = "${path1}/member/login.do";
                </script>
            </c:if>
        </div>
    </div>
</div>
 <%@ include file="/WEB-INF/views/footer.jsp" %> 
</body>
</html>