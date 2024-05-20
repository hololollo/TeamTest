<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    
    <link rel="stylesheet" href="${path}/footer.css">
    <link rel="stylesheet" href="${path}/member/footer.css">
    

    
    <style>
        * { margin: 0; padding: 0; }
        body { width:100%; height: auto; }
        header { width: 1930px; height: 600px; background-image: url(${path}/img/login.png); margin: 0px auto; background-size: cover; background-position: center; background-repeat: no-repeat; }
        .login_contents { width: 1290px; height: 600px; margin: 0 auto; }
        .login_wrap { width: 650px; height: 400px; margin: 75px auto; border: 1px solid gray; border-radius: 5px; text-align: center; }
        .login_wrap h1 { margin-top: 2rem; }
        input[type=text] { width: 400px; height: 40px; margin-top: 25px; border: 1px solid gray; border-radius: 3px; padding-left: 1rem; }
        input[type=password] { width: 400px; height: 40px; margin-top: 25px; border: 1px solid gray; border-radius: 3px; padding-left: 1rem; }
        input[type=submit] { width: 417px; height: 40px; margin-top: 25px; font-weight: bold; font-size: 20px; }
    </style>
</head>
<body>
    <header></header>
    <div class="login_contents">
        <div class="login_wrap">
            <h1>Log-in</h1>
            <form action="${path}/member/loginPro.do" method="post">
                <input type="text" id="loginId" name="userid" class="loginId" placeholder="아이디" required>
                <input type="password" id="loginPw" name="password" class="loginId" placeholder="패스워드" required>
                <input type="submit" id="login" class="button" value="로그인">
            </form>
            <br>
            <a href="#">아이디찾기 ㅣ</a>
            <a href="#">비밀번호찾기 ㅣ</a>
            <a href="${path}/member/join.do">회원가입</a>
        </div>
    </div>
    <footer>
        <br>
        <hr>
        <div class="fc_wrap">
            <a href=""><img src="${path}/img/footer_logo.png" alt="속초속촉로고" class="logo"></a>
            <nav class="foot_menu">
                <ul>
                    <li><a href="#">회원약관</a></li>
                    <li><a href="#">개인정보처리방침</a></li>
                    <li><a href="#">오시는길</a></li>
                </ul>
            </nav>
            <div class="copyright">
                <p class="addr"> [24826] 강원특별자치도 속초시 중앙로 183 속초시문화관광, 대표전화 : 033-639-2114 | FAX : 033-639-2330 (평일 주간/야간 당직실, 공휴일)</p>
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
                function locate() {
                    var sel = document.getElementById("sel");
                    if (sel.value != "") {
                        window.open(sel.value);
                    }
                }
            </script>
        </div>
    </footer>
</body>
</html>
<!--  
	<div>
		<form action="${path1 }/member/loginPro.do" method="post" name="loginForm">
                <div class="table_form_wrap">
                    <table class="table_form">
                        <tbody>
                        <tr>
                            <th><label for="id">아이디</label></th>
                            <td><input type="text" name="id" id="id" size="100" class="single100" placeholder="아이디 입력" required>
                                <!--  pattern="^[a-z0-9]+$" 
                            </td>
                        </tr>
                        <tr>
                            <th><label for="pw">비밀번호</label></th>
                            <td><input type="password" name="pw" id="pw"  class="single100" placeholder="비밀번호 입력" required>
                                <!--  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"  
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <input type="submit" class="button" value="로그인">
                                <input type="reset" class="button" value="취소">
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </form>
            <script>
                function loginFaiure() {
                    alert("로그인 실패");
                }
            </script>
	</div>
	<ul>	
		<li><a href="${path1 }/member/agree.do">회원가입</a></li> 
		<!-- 로그인 -> 회원약관 -> 회원가입으로 넘어가도록 
	</ul>
<footer id="footer">

</footer>	
	
</body>
</html>
-->