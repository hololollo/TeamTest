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
<title>문화재</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet">     
    <style>
      *{margin:0; padding:0;}
        body,html{width:100%; }
   
        ul {list-style:none;}
        a{text-decoration: none;}
        .headimg{width: 1930px; height: 600px; margin: 0px auto;}
        .treasure1,.treasure2,.treasure3,.treasure4,.treasure5{width: 1290px; height: 1100px; margin: 0 auto;}
        
       tr{line-height: 55px;}
       th{color:navy;}
       .treasure_title{margin-left: 0px; margin-top: 50px; font-weight:bold; font-size: 30px;}
        .treasure hr{height: 2px; background-color: #333; margin-top: 10px; margin-bottom: 10px; }
        .treasure_table{display: flex;  justify-content: center; margin-top: 50px;  }
         .table1{margin-left: 50px;}
        .treasure_contents img { margin-right: 50px;}
        .treasure_contents table {margin-left: 50px; }
        .treasure img{margin-right: 50px;}

        .hd{width: 1920px; height: 600px;  background-image:url(${hpath}/resources/img/보물3신흥사목조지장asda보살삼존상.jpg); margin: 0px auto;}
    
        .ra_item { display:none; }

        .tab_con_box { display:none; clear: both; width: 800px; height: auto px; position: absolute; top:45px; }
        #tab_con_box1{border: 2px solid #333;}
        #tab_con_box2{border: 2px solid #333;}
        #ra1:checked ~ .tab_con_wrap #tab_con_box1 { display:block; }
        #ra2:checked ~ .tab_con_wrap #tab_con_box2 { display:block; }
        #ra3:checked ~ .tab_con_wrap #tab_con_box1 { display:block; }
        #ra4:checked ~ .tab_con_wrap #tab_con_box2 { display:block; }

        #ra5:checked ~ .tab_con_wrap #tab_con_box1 { display:block; }
        #ra6:checked ~ .tab_con_wrap #tab_con_box2 { display:block; }
        #ra7:checked ~ .tab_con_wrap #tab_con_box1 { display:block; }
        #ra8:checked ~ .tab_con_wrap #tab_con_box2 { display:block; }
        #ra9:checked ~ .tab_con_wrap #tab_con_box1 { display:block; }
        #ra10:checked ~ .tab_con_wrap #tab_con_box2 { display:block; }



        
    
        #tab1 { position:relative; width: 600px; height: 350px; 
        clear:both; margin: 50px 0px ;  margin-left: 100px   }
        .btn_box .ra_btn { display:block;  float: left;  width: 120px;  
        height: 40px; line-height: 40px; text-align: center; background-color:lightgray; z-index: 999;
        color:gray;  border: 2px solid #333; border-bottom: 0;}
        #btn2{position: absolute; left: 122px;  top:5px;} 
        #btn1{position: absolute;  top:5px;}
        #ra1:checked ~ .btn_box label:first-child { background-color: white; }
        #ra2:checked ~ .btn_box label:nth-child(2) { background-color: white; }
        #ra3:checked ~ .btn_box label:first-child { background-color: white; }
        #ra4:checked ~ .btn_box label:nth-child(2) { background-color: white; }
        #ra5:checked ~ .btn_box label:first-child { background-color: white; }
        #ra6:checked ~ .btn_box label:nth-child(2) { background-color: white; }
        #ra7:checked ~ .btn_box label:first-child { background-color: white; }
        #ra8:checked ~ .btn_box label:nth-child(2) { background-color: white; }
        #ra9:checked ~ .btn_box label:first-child { background-color: white; }
        #ra10:checked ~ .btn_box label:nth-child(2) { background-color: white; }
        
        .text_wrap{margin: 30px 10px;}
        .text_wrap p {line-height: 1.6;}

        footer a{font-family: "Nanum Gothic", sans-serif; font-weight:500 ;}
        footer p{font-family: "Nanum Gothic", sans-serif; font-size: 13px; }
    </style>
</head>                                                                                                   
<body>
     <%@include file="../header.jsp" %>
    <div class="treasure">
       
        <div class="treasure1">
            <p class="treasure_title">문화재</p>
            <hr>
            <p style="text-align: center;">보물</p>
            <h3 style="text-align: center;">속초 향성사지 삼층석탑 (束草 香城寺址 三層石塔)</h3>
            <p style="text-align: center; color:gray;">Three-story Stone Pagoda at Hyangseongsa Temple Site, Sokcho</p>
            <hr>
            <div class="treasure_table">
                <img src="${hpath}/resources/img/보물1향성사지삼층석탑.png" alt="향성사지삼층석탑" width="620px" height="410px">
                <table class="table1">
                    <tbody>
                        <tr>
                            <th scope="row">분 류</th>
                            <td>유적건조물
                            / 종교신앙
                            / 불교
                            / 탑</td>
                        </tr>
                        <tr>
                            <th scope="row">수량/면적</th>
                            <td>1기</td>
                        </tr>
                        <tr>
                            <th scope="row">지정(등록)일</th>
                            <td>1966.08.25</td>
                        </tr>
                        <tr>
                            <th scope="row">소 재 지</th>
                            <td>강원 속초시 설악동 산24-2번지</td>
                        </tr>
                        <tr>
                            <th scope="row">시 대</th>
                            <td>통일신라시대</td>
                        </tr>
                        <tr>
                            <th scope="row">소유자(소유단체)</th>
                            <td>&nbsp;&nbsp;국유</td>
                        </tr>
                        <tr>
                            <th scope="row">관리자(관리단체)</th>
                            <td>&nbsp;&nbsp;속초시</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        
        <nav id="tab1">
            <div class="tb_wrap">
                <input type="radio" class="ra_item" name="tb_ra1" id="ra1" checked>
                <input type="radio" class="ra_item" name="tb_ra1" id="ra2">
                
                <div class="btn_box">
                    <label for="ra1" class="ra_btn"  id="btn1">안내판</label>
                    <label for="ra2" class="ra_btn"  id="btn2">문화재 설명</label>
                </div>
                <div class="tab_con_wrap">
                    <div class="tab_con_box" id="tab_con_box1">
                        <div class="text_wrap">
                            <h2>속초 향성사지 삼층석탑</h2>
                            <h3>束草 香城寺址 三層石塔</h3>
                            <br>
                            <p>
                                속초 향성사지 삼층석탑은 동해안에서 가장 북쪽에 있는 신라 시대 석탑으로, 높이가 4.3m나 되어 장엄하면서도 간결한 아름다움을 간직하고 있다.
                                향성사는 속초 신흥사의 전신으로 『신흥사사적(神興寺事蹟)』에 따르면 신라 진덕여왕 6년(652)에 승려 자장이 처음 세웠다고 전한다.
                                탑의 맨 위에 놓는 장식인 상륜부(相輪部)가 모두 없어졌지만 전체적으로는 9세기 통일 신라 시대의 전형적인 석탑 양식을 따라 지어졌다. 
                                이중 기단 위에 몸돌을 세 층 쌓아 올렸는데, 몸돌과 지붕돌은 하나의 돌로 만들었다.
                                지붕돌 아래로는 지붕돌받침을 다섯 단으로 조각했고, 몸돌의 각 층에는 양쪽으로 모서리 기둥이 있다. 
                                처음 탑을 해체하여 수리할 때 3층 몸돌 가운데에서 사리를 보관하는 구멍을 찾았는데, 유물은 발견되지 않았다.
                            </p>
                        </div>    
                    </div>
                    <div class="tab_con_box" id="tab_con_box2">
                        <div class="text_wrap">
                            <p>
                                속초 향성사지 삼층석탑은 동해안에서 가장 북쪽에 있는 신라 시대 석탑으로, 높이가 4.3m나 되어 장엄하면서도 간결한 아름다움을 간직하고 있다.
                                향성사는 속초 신흥사의 전신으로 『신흥사사적(神興寺事蹟)』에 따르면 신라 진덕여왕 6년(652)에 승려 자장이 처음 세웠다고 전한다.
                                탑의 맨 위에 놓는 장식인 상륜부(相輪部)가 모두 없어졌지만 전체적으로는 9세기 통일 신라 시대의 전형적인 석탑 양식을 따라 지어졌다. 
                                이중 기단 위에 몸돌을 세 층 쌓아 올렸는데, 몸돌과 지붕돌은 하나의 돌로 만들었다.
                                지붕돌 아래로는 지붕돌받침을 다섯 단으로 조각했고, 몸돌의 각 층에는 양쪽으로 모서리 기둥이 있다. 
                                처음 탑을 해체하여 수리할 때 3층 몸돌 가운데에서 사리를 보관하는 구멍을 찾았는데, 유물은 발견되지 않았다.
                            </p>
                        </div>    
                    </div>
                </div>
            </div>
        </div>    
        <div class="treasure2" >
            <hr>
            <p style="text-align: center;">보물</p>
            <h3 style="text-align: center;">속초 신흥사 목조아미타여래삼존좌상 (束草 新興寺 木造阿彌陀如來三尊坐像)</h3>
            <p style="text-align: center; color:gray;">Wooden Seated Amitabha Buddha Triad of Sinheungsa Temple, Sokcho</p>
            <hr>
            <div class="treasure_table">
                <img src="${hpath}/resources/img/sinheng.jpg" alt="향성사지삼층석탑" width="620px" height="410px">
                <table class="table1">
                    <tbody>
                        <tr>
                            <th scope="row">분 류</th>
                            <td>유물
                            / 불교조각
                            / 목조
                            / 불상</td>
                        </tr>
                        <tr>
                            <th scope="row">수량/면적</th>
                            <td>3구</td>
                        </tr>
                        <tr>
                            <th scope="row">지정(등록)일</th>
                            <td>2011.09.05</td>
                        </tr>
                        <tr>
                            <th scope="row">소 재 지</th>
                            <td>강원 속초시 설악동 170 신흥사 극락보전내</td>
                        </tr>
                        <tr>
                            <th scope="row">시 대</th>
                            <td>1651년</td>
                        </tr>
                        <tr>
                            <th scope="row">소유자(소유단체)</th>
                            <td>&nbsp;&nbsp;신흥사 </td>
                        </tr>
                        <tr>
                            <th scope="row">관리자(관리단체)</th>
                            <td>&nbsp;&nbsp;신흥사 </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <nav id="tab1">
                <div class="tb_wrap">
                    <input type="radio" class="ra_item" name="tb_ra2" id="ra3" checked>
                    <input type="radio" class="ra_item" name="tb_ra2" id="ra4">
                    
                    <div class="btn_box">
                        <label for="ra3" class="ra_btn"  id="btn1">안내판</label>
                        <label for="ra4" class="ra_btn"  id="btn2">문화재 설명</label>
                    </div>
                    <div class="tab_con_wrap">
                        <div class="tab_con_box" id="tab_con_box1">
                            <div class="text_wrap">
                                <h2>속초 신흥사 목조아미타여래 삼존좌상</h2>
                                <h3>束草 新興寺 木造阿彌陀如來三尊坐像</h3>
                                <br>
                                <p>
                                    속초 신흥사 목조아미타여래삼존좌상은 속초 신흥사 극락보전에 모셔져 있는 나무 불상으로, 불상의 배 안에서 발견한 조성발원문에 따르면 조선 효종 2년(1651)에 조각승 무염이 만들었다고 전한다. 
                                    무염은 현진과 함께 17세기 초기·중기를 대표하는 조각승으로, 이 불상은 무염의 작품 세계를 이해하는 데 매우 중요하다. 
                                    안정적으로 자리 잡은 무릎, 당당한 어깨와 균형 잡힌 허리 등을 통해 전체적으로 안정된 비례와 조화로운 형태미를 느낄 수 있다. 
                                    또한 상체의 불필요한 주름들은 과감하게 생략하였지만, 불상의 몸에 옷이 밀착되어 간결하면서도 세련된 형태미를 보여 주는 우리나라 17세기 중엽의 대표적인 불상이다. 
                                    아미타불은 오른손을 들고 왼손을 무릎 위에 내려놓아 손으로 중품중생인(中品中生印)을 표현하고 있다.
                                     중품중생인 손 모양은 고통의 바다에 살고 있는 모든 중생이 올바른 깨달음을 통해 고통이 전혀 없고 즐거움만 있는 극락세계로 다가갈 수 있도록 이끌어 주는 것을 나타낸다.
                            </div>    
                        </div>
                        <div class="tab_con_box" id="tab_con_box2">
                            <div class="text_wrap">
                                <p>
                                    속초 신흥사 목조석가여래삼존좌상은 복장에서 발견된 조성발원문을 통해 1651년이라는 정확한 조성시기와 제작자, 
                                    그리고 제작에 참여한 제작주체를 분명히 하고 있어 17세기 중엽경 불교조각사 연구에 기준이 되는 자료이다.
                                    이 불상을 조각한 무염은 대화사 현진과 함께 17세기 전·중엽 경을 대표하는 화사로 이 작품은 조각승 무염의 작품세계를 시기적으로 이해하는데 매우 중요한 작품이다.
                                    전체적으로 이 삼존불상은 안정적으로 자리 잡은 무릎, 당당한 어깨, 알맞은 허리 등 안정된 비례와 조화로운 형태미를 갖추고 있다. 
                                    또한 상체의 불필요한 주름들은 과감하게 생략하였지만, 불신과 불의가 긴밀하게 밀착·연결되어 간결하면서도 세련된 형태미를 보여 준다. 
                                    이러한 면에서 이 삼존상은 무염의 조각적 역량이 흠뻑 담겨 있는 작품이자 그가 조각한 작품 중 가장 높은 완성도를 보여주는 대표 작품으로 볼 수 있다.
                                </p>
                            </div>    
                        </div>
                    </div>
                </div>
            </nav>
        </div>
        <div class="treasure3" >
            <hr>
            <p style="text-align: center;">보물</p>
            <h3 style="text-align: center;">속초 신흥사 목조지장보살삼존상 (束草 新興寺 木造地藏菩薩三尊像)</h3>
            <p style="text-align: center; color:gray;">Wooden Ksitigarbha Bodhisattva Triad of Sinheungsa Temple, Sokcho</p>
            <hr>
            <div class="treasure_table">
                <img src="${hpath}/resources/img/보물3신흥사목조지장보살삼존상.jpg" alt="보물3호 목조지장보살삼존상" width="620px" height="410px">
                <table class="table1">
                    <tbody>
                        <tr>
                            <th scope="row">분 류</th>
                            <td>유물
                            / 불교조각
                            / 목조
                            / 보살상</td>
                        </tr>
                        <tr>
                            <th scope="row">수량/면적</th>
                            <td>3구</td>
                        </tr>
                        <tr>
                            <th scope="row">지정(등록)일</th>
                            <td>2012.02.22</td>
                        </tr>
                        <tr>
                            <th scope="row">소 재 지</th>
                            <td>강원 속초시 설악동 설악산로 1137-0</td>
                        </tr>
                        <tr>
                            <th scope="row">시 대</th>
                            <td>1651년(효종)</td>
                        </tr>
                        <tr>
                            <th scope="row">소유자(소유단체)</th>
                            <td>&nbsp;&nbsp;신흥사 </td>
                        </tr>
                        <tr>
                            <th scope="row">관리자(관리단체)</th>
                            <td>&nbsp;&nbsp;신흥사 </td>
                        </tr>
                      
                    </tbody>
                </table>
            </div>
            <nav id="tab1">
                <div class="tb_wrap">
                    <input type="radio" class="ra_item" name="tb_ra3" id="ra5" checked>
                    <input type="radio" class="ra_item" name="tb_ra3" id="ra6">
                    
                    <div class="btn_box">
                        <label for="ra5" class="ra_btn"  id="btn1">안내판</label>
                        <label for="ra6" class="ra_btn"  id="btn2">문화재 설명</label>
                    </div>
                    <div class="tab_con_wrap">
                        <div class="tab_con_box" id="tab_con_box1">
                            <div class="text_wrap">
                                <h2>속초 신흥사 목조지장보살삼존상</h2>
                                <h3>束草 新興寺 木造地藏菩薩三尊像</h3>
                                <br>
                                <p>   
                                속초 신흥사 목조지장보살삼존상은 효종 2년(1651)에 만들어진 나무 불상으로, 속초 신흥사 명부전에 모셔져 있다. 
                                가운데에는 지장보살상이 불단 위에 가부좌를 하고 앉아 있으며, 좌우로 도명존자(道明尊者)와 무독귀왕(無毒鬼王)이 두 손을 합장한 채 서 있다. 
                                삼존(三尊)은 모두 온화한 인상으로 단아한 분위기를 자아내며, 안정된 자세로 조형미를 더했다.
                                본존(本尊)인 지장보살상은 높이 99cm, 무릎 폭 75cm이며 머리와 상체･하체의 비례가 안정적이다. 
                                지장보살의 왼쪽에 선 도명존자는 민머리에 두 손을 모았고, 잔잔한 미소를 머금어 온화하고 덕스러운 얼굴이다. 오른쪽의 무독귀왕도 잔잔한 미소를 띠고 있으며 머리에 왕관을 쓰고 두 손을 합장했다. 신체에 비하여 머리가 다소 커 보이지만 같은 시기에 만들어진 다른 보살상보다는 비례가 더 안정적이다.  
                                신흥사 목조지장보살삼존상은 17세기를 대표하는 조각승 무염이 만든 불상으로 세 구 모두 보존 상태가 양호하며 조성 시기, 제작자 등이 명확해 역사적·학술적·예술적 가치가 높다.
                                </p>
                            </div>    
                        </div>
                        <div class="tab_con_box" id="tab_con_box2">
                            <div class="text_wrap">
                                <p>
                                속초 신흥사 목조지장보살삼존상은 복장에서 발견된 축원문 통해 1651년이라는 정확한 조성시기와 제작자 그리고 제작에 참여한 제작 주체를 분명히 하고 있어 17세기 중엽 경
                                불교조각사 연구에 기준이 되는 자료이다. 특히 불상제작에 있어 조성화원(造成畵員)과 화성화원(畵成畵員), 즉 불상의 제작과 개금·개채를 분리해서 작업이 진행되고 있어 
                                당시 불상의 제작과정을 이해하는 데 중요한 정보를 제공한다.
                                이 불상을 만든 무염은 대화사 현진, 청헌 등과 함께 17세기 전·중엽 경을 대표하는 조각승 이다. 이 작품은 조각승 무염의 작품세계와 그의 조각경향이 제자들에게 
                                어떻게 계승되어 가는지를 이해하는데 매우 중요한 작품이다.
                                전체적으로 이 삼존상은 안정적으로 자리 잡은 무릎, 당당한 어깨, 알맞은 허리 등 안정된 비례와 조화로운 형태미를 갖추고 있다. 
                                불신과 불의가 긴밀하게 밀착·연결되어 간결하면서도 세련된 형태미를 보여 준다. 또한 상체는 부드러운 선묘로, 하체는 강직한 선묘로 처리하여 예배자로 하여금 종교적 
                                긴장감을 차츰 고조시키는 효과를 주고 있다. 이러한 면에서 이 삼존상은 무염의 조각적 역량이 가장 잘 담겨 있는 작품이다. 비록 시왕권속들이 남아 있지 않아 완전한 
                                구성체계는 갖추지 못했지만, 높은 종교적 감성과 조각적 완성도를 간직하고 있다.
                                </p>
                            </div>    
                        </div>
                    </div>
                </div>
            </nav>
        </div>
        <div class="treasure5" style=" height: 1150px;">
            <hr>
            <p style="text-align: center;">보물</p>
            <h3 style="text-align: center;">속초 신흥사 극락보전 (束草 新興寺 極樂寶殿)</h3>
            <p style="text-align: center; color:gray;">Geungnakbojeon Hall of Sinheungsa Temple, Sokcho</p>
            <hr>
            <div class="treasure_table">
                <img src="${hpath}/resources/img/보물4신흥사극락보전.JPG" alt="보물3호 목조지장보살삼존상" width="620px" height="410px">
                <table class="table1">
                    <tbody>
                        <tr>
                            <th scope="row">분 류</th>
                            <td>유적건조물
                            / 종교신앙
                            / 불교
                            / 불전</td>
                        </tr>
                        <tr>
                            <th scope="row">수량/면적</th>
                            <td>1동/105,9㎡</td>
                        </tr>
                        <tr>
                            <th scope="row">지정(등록)일</th>
                            <td>2018.06.04</td>
                        </tr>
                        <tr>
                            <th scope="row">소 재 지</th>
                            <td>강원도 속초시 설악산로 1137 (설악동, 신흥사)</td>
                        </tr>
                        <tr>
                            <th scope="row">시 대</th>
                            <td>조선시대</td>
                        </tr>
                        <tr>
                            <th scope="row">소유자(소유단체)</th>
                            <td>&nbsp;&nbsp;신흥사 </td>
                        </tr>
                        <tr>
                            <th scope="row">관리자(관리단체)</th>
                            <td>&nbsp;&nbsp;신흥사 </td>
                        </tr>
                      
                    </tbody>
                </table>
            </div>
            <nav id="tab1">
                <div class="tb_wrap">
                    <input type="radio" class="ra_item" name="tb_ra4" id="ra7" checked>
                    <input type="radio" class="ra_item" name="tb_ra4" id="ra8">
                    
                    <div class="btn_box">
                        <label for="ra7" class="ra_btn"  id="btn1">안내판</label>
                        <label for="ra8" class="ra_btn"  id="btn2">문화재 설명</label>
                    </div>
                    <div class="tab_con_wrap">
                        <div class="tab_con_box" id="tab_con_box1">
                            <div class="text_wrap">
                                <h2>속초 신흥사 극락보전</h2>
                                <h3>束草 新興寺 極樂寶殿</h3>
                                <br>
                                <p>
                                    속초 신흥사 극락보전은 신흥사의 본전(本殿)으로, 조선 인조 25년(1647)에 처음 지어진 이후 영조 25년(1749), 순조 21년(1821)에 크게 수리하여 지금의 모습이 되었다. 
                                    건물은 정면 세 칸, 측면 세 칸으로 되어 있으며, 지붕은 옆에서 볼 때 여덟팔(八) 자 모양을 한 팔작지붕으로, 지붕 처마를 받치는 장식 구조인 포(包)가 기둥 위뿐만 
                                    아니라 기둥 사이에도 있는 다포 양식이다. 왕실에서 죽은 이의 명복을 빌고자 세운, 18~19세기 영동 지방의 중요한 원당사찰로 세부 장식과 공포(栱包) 형식이 우수하고 
                                    기단(基壇)과 계단, 창문 등이 잘 보존되어 있다. 특히, 기단에 조각한 모란과 사자 모양 무늬와 계단 난간 소맷돌의 삼태극, 귀면(鬼面), 용머리 모양 조각들은 다른 
                                    사찰에서는 찾아보기 어렵다.
                                    창문은 솟을빗꽃살* 등 다양하고 화사한 꽃살로 장식했으며 보존 상태도 우수한 편이다. 내부에는 아미타불을 중심으로 좌우에 관세음보살과 대세지보살이 모셔져 있다. 
                                    천장에는 우물 정(井) 자 모양으로 마감한 우물천장과 닫집**, 단청 문양이 온전하게 남아 있다.
                                    신흥사 극락보전은 형태나 구조, 장식들이 예술적으로 뛰어날 뿐 아니라 보존 상태가 좋아 역사적, 건축적, 예술적 가치가 높다.
                                   <br>
                                   * 솟을빗꽃살: 전통 건축에서, 창이나 문의 가로 살과 세로 살을 60도로 교차하여 그 교차점에 수직으로 살을 대고 꽃 모양으로 새긴 것
                                   ** 닫집: 궁전 안의 옥좌 위나 법당의 불좌 위에 만들어 다는 집 모형    
                                </p>
                            </div>    
                        </div>
                        <div class="tab_con_box" id="tab_con_box2">
                            <div class="text_wrap">
                                <p>
                                    극락보전은 18세기 중엽에 중건한 정면 3칸, 측면 3칸의 다포(多包)식 팔작지붕 건물로서, 18~19세기 영동지방의 중요한 왕실 원당사찰로서 세부의장 및 공포형식이 우수하고 
                                    기단과 계단, 창호 등 높은 품격의 요소들을 잘 보존하고 있다. 특히 기단의 모란, 사자 문양과 계단 소맷돌의 삼태극, 용두 문양 조각들은 다른 사찰에서는 찾아보기 
                                    어려운 귀한 사례이다. 이처럼 속초 신흥사 극락보전은 형태, 구조, 장식 측면에서 뛰어날 뿐만 아니라 보존상태 또한 양호하여 국가지정유산(보물)으로 
                                    역사적, 건축적, 예술적 가치가 충분하다.
                                </p>
                            </div>    
                        </div>
                    </div>
                </div>
            </nav>
        </div>
        <div class="treasure5">
            <hr>
            <p style="text-align: center;">보물</p>
            <h3 style="text-align: center;">제진언집 목판 (諸眞言集 木板)</h3>
            <p style="text-align: center; color:gray;">Printing woodblocks for Jejin eonjip</p>
            <hr>
            <div class="treasure_table">
                <img src="${hpath}/resources/img/보물5제진언집목판.jpg" alt="보물5호 제진언집목판" width="620px" height="410px">
                <table class="table1">
                    <tbody>
                        <tr>
                            <th scope="row">분 류</th>
                            <td>기록유산
                            / 서각류
                            / 목판각류
                            / 판목류</td>
                        </tr>
                        <tr>
                            <th scope="row">수량/면적</th>
                            <td>44판</td>
                        </tr>
                        <tr>
                            <th scope="row">지정(등록)일</th>
                            <td>2019.03.06</td>
                        </tr>
                        <tr>
                            <th scope="row">소 재 지</th>
                            <td>강원특별자치도 속초시</td>
                        </tr>
                        <tr>
                            <th scope="row">시 대</th>
                            <td>1658년(효종9)</td>
                        </tr>
                        <tr>
                            <th scope="row">소유자(소유단체)</th>
                            <td>&nbsp;&nbsp;대＊＊＊ </td>
                        </tr>
                        <tr>
                            <th scope="row">관리자(관리단체)</th>
                            <td>&nbsp;&nbsp;대＊＊＊ </td>
                        </tr>
                      
                    </tbody>
                </table>
            </div>
            <nav id="tab1">
                <div class="tb_wrap">
                    <input type="radio" class="ra_item" name="tb_ra5" id="ra9" checked>
                    <input type="radio" class="ra_item" name="tb_ra5" id="ra10">
                    
                    <div class="btn_box">
                        <label for="ra9" class="ra_btn"  id="btn1">안내판</label>
                        <label for="ra10" class="ra_btn"  id="btn2">문화재 설명</label>
                    </div>
                    <div class="tab_con_wrap">
                        <div class="tab_con_box" id="tab_con_box1">
                            <div class="text_wrap">
                                <h2>제진언집 목판</h2>
                                <h3>諸眞言集 木板</h3>
                                <br>
                                <p>

                                    ‘제진언집 목판’은 1658년(효종 9) 강원도 신흥사에서 개판한 목판으로, 『불정심다라니경(佛頂心陀羅尼經)』, 『제진언집목록(諸眞言集目錄)』, 『진언집(眞言集)』등 
                                    3편으로 구성되었다. 처음 판각은 1569년(선조 2)에 안심사(安心寺)에서 이루어졌으나 안심사본 목판은 현재 전하지 않고 있으므로 신흥사 중간 목판이 
                                    국내에서 가장 오래된 판본에 해당한다. 한글, 한자, 범어(梵語)가 함께 기록된 희귀한 사례에 속하며 16～17세기 언어학 및 불교사 연구에 도움이 되는 자료이다. 
                                    또한 신흥사가 동해안 연안과 가까이 인접해 있어 수륙재(水陸齋) 등과 관련된 불교의례가 빈번하게 시행된 사실을 감안할 때 강원특별자치도 지역의 신앙적 특수성과 
                                    지리․문화적인 성격, 그리고 지역 불교의 흐름을 살펴 볼 수 있는 원천자료라는 점에서 의의가 크다.
                                </p>
                            </div>    
                        </div>
                        <div class="tab_con_box" id="tab_con_box2">
                            <div class="text_wrap">
                                <p>
                                    ‘제진언집 목판’은 1658년(효종 9) 강원도 신흥사에서 개판한 목판으로, 『불정심다라니경(佛頂心陀羅尼經)』, 『제진언집목록(諸眞言集目錄)』, 『진언집(眞言集)』등 
                                    3편으로 구성되었다. 처음 판각은 1569년(선조 2)에 안심사(安心寺)에서 이루어졌으나 안심사본 목판은 현재 전하지 않고 있으므로 신흥사 중간 목판이 
                                    국내에서 가장 오래된 판본에 해당한다. 한글, 한자, 범어(梵語)가 함께 기록된 희귀한 사례에 속하며 16～17세기 언어학 및 불교사 연구에 도움이 되는 자료이다. 
                                    또한 신흥사가 동해안 연안과 가까이 인접해 있어 수륙재(水陸齋) 등과 관련된 불교의례가 빈번하게 시행된 사실을 감안할 때 강원특별자치도 지역의 신앙적 특수성과 
                                    지리․문화적인 성격, 그리고 지역 불교의 흐름을 살펴 볼 수 있는 원천자료라는 점에서 의의가 크다.
                                </p>
                            </div>    
                        </div>
                    </div>
                </div>
            </nav>
        </div>
    </div>
        <%@ include file="/WEB-INF/views/footer.jsp" %>   
</body>
</html>
   