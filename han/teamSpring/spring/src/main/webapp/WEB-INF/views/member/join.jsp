<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        * { margin: 0; padding: 0; }
        body { width:100%; height: auto; } 
        header{width: 1290px; height: 600px;}
        .join_contents{width: 1290px; height: auto; margin: 0 auto; border: 1px solid #333;}
        .join_wrap{width: 800px; height: 1300px; margin: 2rem auto; border: 1px solid red;}
        .input {width: 400px; height: auto; margin: 0px auto; margin-top: 3rem; position: relative;} /* 기존 너비 수정 */
        .join_wrap h3 { color: grey; position: absolute; top: -1.5rem; left: 0; } /* h3 위치 조정 */
        .input input[type="text"] { width: 350px; /* 너비 조절 */height: 40px; /* 높이 조절 */ border: 1px solid gray; border-radius: 3px;
        margin-top: 1rem; padding-left: 1rem;} 
        .input .usergender{ width: 364px; /* 너비 조절 */height: 40px; /* 높이 조절 */ border: 1px solid gray; border-radius: 3px;
        margin-top: 1rem; padding-left: 1rem; color: gray;} 

        .usermonth,.userday {width:118px ; height: 42px; border: 1px solid gray; border-radius: 3px;
        margin-top: 1rem; padding-left:1rem; color: gray;}
        .input.birth input { width: 100px;} /* 생년월일 부분 너비 조절 */
        .input.birth input:last-child { margin-right: 0; } /* 마지막 입력 박스에는 마진 없도록 설정 */

       .input input[type="button"]{width: 150px; height: 40px; position: absolute; top: 16px; right: -130px; }
    </style>
</head>
<body>
    <header>

    </header>
    <!-- sql하고 구문일치시키려고 id name 이름 변경합니다. -->
    <div class="join_contents">
        <div class="join_wrap">
      		<form name="joinform" id="joinform" action="${path1 }/member/joinPro.do" method="post" 
      		onsubmit="return joinCheck(this)">
            <div class="input id">
                <h3 class="">아이디</h3>
                <input type="text" id="id" class="id" placeholder="아이디" pattern="^[a-z0-9]{5,12}" maxlength="12" required >
                <input type="button" id="idbtn" class="button" onclick="idCheck()" value="아이디 중복확인" >
           	    <input type="hidden" name="idck" id="idck" value="no"/>
                     <c:if test="${empty qid }">
                     <p id="msg" style="padding-left:0.5rem">아직 아이디 중복 체크를 하지 않으셨습니다.</p>
                     </c:if>
                     <c:if test="${not empty qid }">
                     <p id="msg" style="padding-left:0.5rem">아이디 중복 체크후 수정하였습니다.</p>
                     </c:if>
            </div>
            <div class="input cfpw">
                <h3 class="">비밀번호</h3>
                <input type="text" id="pw" class="pw" placeholder="비밀번호">
            </div>
            <div class="input cfpw">
                <h3 class="">비밀번호확인</h3>
                <input type="text" id="usercfpw" class="usecfpw" placeholder="비밀번호확인">
            </div>
            <div class="input name">
                <h3 class="">이름</h3>
                <input type="text" id="name" class="name" placeholder="이름" >
            </div>
            <div class="input birth">
                <h3 class="">생년월일</h3>
                <input type="text" id="year" class="year" placeholder="년(4자)" >
                <select class="usermonth">
                    <option value="선택">월</option>
                    <option value="1월">1월</option>
                    <option value="2월">2월</option>
                    <option value="3월">3월</option>
                    <option value="4월">4월</option>
                    <option value="5월">5월</option>
                    <option value="6월">6월</option>
                    <option value="7월">7월</option>
                    <option value="8월">8월</option>
                    <option value="9월">9월</option>
                    <option value="10월">10월</option>
                    <option value="11월">11월</option>
                    <option value="12월">12월</option>
                </select>
                
                <select class="userday">
                    <option value="1">일</option>
                    <option value="1">1일</option>
                    <option value="1">1일</option>
                    <option value="2">2일</option>
                    <option value="3">3일</option>
                    <option value="4">4일</option>
                    <option value="5">5일</option>
                    <option value="6">6일</option>
                    <option value="7">7일</option>
                    <option value="8">8일</option>
                    <option value="9">9일</option>
                    <option value="10">10일</option>
                    <option value="11">11일</option>
                    <option value="12">12일</option>
                    <option value="13">13일</option>
                    <option value="14">14일</option>
                    <option value="15">15일</option>
                    <option value="16">16일</option>
                    <option value="17">17일</option>
                    <option value="18">18일</option>
                    <option value="19">19일</option>
                    <option value="20">20일</option>
                    <option value="21">21일</option>
                    <option value="22">22일</option>
                    <option value="23">23일</option>
                    <option value="24">24일</option>
                    <option value="25">25일</option>
                    <option value="26">26일</option>
                    <option value="27">27일</option>
                    <option value="28">28일</option>
                    <option value="29">29일</option>
                    <option value="30">30일</option>
                    <option value="31">31일</option>
                    
                </select>

            </div>

            <div class="input gender">
                <h3 class="">성별</h3>
                <select class="usergender" id="gender-list">
                    <option value="선택">선택하세요</option>
                    <option value="남">남</option>
                    <option value="여">여</option>
                </select>
            </div>


            <div class="input addr">
                <h3 class="">자택주소</h3>
                <input type="text" id="postcode" class="postcode" placeholder="우편번호" readonly>
                <input type="button" id="pcodebtn" class="button" onclick="execDaumPostcode()" value="우편번호 찾기" readonly>
                <input type="text" id="roadaddr1" class="roadaddr1" placeholder="도로명주소" readonly >
                <input type="text" id="roadaddr2" class="roadaddr2" placeholder="이하 주소입력" >
            </div>
            <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
            <script>
                function execDaumPostcode() {
                    new daum.Postcode({
                        oncomplete: function(data) {
                            // 팝업을 통한 검색 결과 항목 클릭 시 실행
                            var addr = ''; // 주소_결과값이 없을 경우 공백 
                            var extraAddr = ''; // 참고항목
            
                            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                            if (data.userSelectedType === 'R') { // 도로명 주소를 선택
                                addr = data.roadAddress;
                            } else { // 지번 주소를 선택
                                addr = data.jibunAddress;
                            }
            
                            if(data.userSelectedType === 'R'){
                                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                                    extraAddr += data.bname;
                                }
                                if(data.buildingName !== '' && data.apartment === 'Y'){
                                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                                }
                                if(extraAddr !== ''){
                                    extraAddr = ' (' + extraAddr + ')';
                                }
                            } else {
                                document.getElementById("UserAdd1").value = '';
                            }
            
                            // 선택된 우편번호와 주소 정보를 input 박스에 넣는다.
                            document.getElementById('postcode').value = data.zonecode;
                            document.getElementById("roadaddr1").value = addr;
                            document.getElementById("roadaddr1").value += extraAddr;
                            document.getElementById("roadaddr2").focus(); // 우편번호 + 주소 입력이 완료되었음으로 상세주소로 포커스 이동
                        }
                    }).open();
                }
            </script>
            <input type="submit" class="submit success button" value="회원 가입" >
            <input type="reset" class="reset button" value="취소" >
        </div>
    </div>
    
    </form>
    <script>
            function idCheck(){
                if($("#id").val()==""){
                    alert("아이디를 입력하지 않으셨습니다.");
                    $("#id").focus();
                    return;
                }
                var params = {	id : $("#id").val()	} //전송되어질 데이터를 객체로 묶음
                $.ajax({
                    url:"${path1 }/member/idCheck.do",	//아이디가 전송되어질 곳
                    type:"post",		//전송방식
                    dataType:"json",	//데이터 반환 방식
                    data:params,		//전송방식이 post인 경우 객체로 묶어서 전송
                    success:function(result){
                        console.log(result.result);
                        var idChk = result.result;	//true 또는 false를 받음
                        if(idChk==false){	//사용할 수 없는 아이디
                            $("#idck").val("no");
                            $("#msg").html("<strong style='color:red'>기존에 사용되고 있는 아이디 입니다. 다시 입력하시기 바랍니다.</strong>");
                            $("#id").focus();
                        } else if(idChk==true){	//사용 가능한 아이디
                            $("#idck").val("yes");
                            $("#msg").html("<strong style='color:blue'>사용가능한 아이디 입니다.</strong>");
                        } else if(idck==""){
                            $("#msg").html("<strong>아이디가 확인되지 않았습니다. 다시 시도해주시기 바랍니다.</strong>");
                        }
                    }
                });
            }
            
            </script>
</body>
</html>