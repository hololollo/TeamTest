<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>login</title>
</head>
<body>
<header id="header">
</header>
	<div>
		<form action="${path1 }/member/loginPro.do" method="post" name="loginForm">
                <div class="table_form_wrap">
                    <table class="table_form">
                        <tbody>
                        <tr>
                            <th><label for="id">아이디</label></th>
                            <td><input type="text" name="id" id="id" size="100" class="single100" placeholder="아이디 입력" required>
                                <!--  pattern="^[a-z0-9]+$"  -->
                            </td>
                        </tr>
                        <tr>
                            <th><label for="pw">비밀번호</label></th>
                            <td><input type="password" name="pw" id="pw"  class="single100" placeholder="비밀번호 입력" required>
                                <!--  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"  -->
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
		<!-- 로그인 -> 회원약관 -> 회원가입으로 넘어가도록 -->
	</ul>
<footer id="footer">

</footer>	
	
</body>
</html>