<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<style>
 html, button { 
     font-size: 16px; 
} 
 button { 
    margin: 0; 
    padding: 0; 
    border: 0; 
         background: none;  
} 
body {
    margin: 0; 
}
.title-wrap {
    display: table;
    position: relative;
    width:100vw;
    height:150px;
    font-size: 40px;
}


.title {
    display: table-cell;
    text-align: center;
    vertical-align: middle;
    font-weight: bold;
}

.question-wrap {
    display: table;
    position: relative;
    width:100vw;
    height:100px;
    font-size: 25px;  
}

.question {
    display:table-cell;
    vertical-align:middle;
    text-align: center;
    padding-left: 20px;
}

.answer-wrap {
    position: relative;
    width:100vw;
    height:100%;
}

.answer {
    padding: 10px;
    font-weight: bold;
    text-align: center;
    vertical-align: middle;
}
.bottom {
    position: fixed;
    bottom: 0;
    width: 100%;
}

.controller-wrap {
    display: table;
    position: relative;
    width:100vw;
    height:70px;
}

.prev-btn {
    width:50%;
    height: 100%;
    display: table-cell;
    vertical-align:middle;
    text-align:center;
    font-size: 1.2em;
    font-weight: bold;
    background:#f62c2c61;  
}

.next-btn {
    width:50%;
    height: 100%;
    display: table-cell;
    vertical-align:middle;
    text-align:center;
    font-size: 1.2em;
    font-weight: bold;
    background:#FF1616;  
}
/*   #main::after {   */
/*       content: "";   */
/*       position: absolute;   */
/*       left: 0;   */
/*       top: 0;   */
/*       width: 100%;   */
/*       height:100%;   */
/*       opacity: 0.1;   */
/*       z-index: -1;   */
/*   }   */

/*  .prev-btn::after {  */
/*      content: "";  */
/*      position: absolute;  */
/*      left: 0;  */
/*      top: 0;  */
/*      width: 50%;  */
/*      height:100%;  */

/*      opacity: 0.1;  */
/*      z-index: -1;  */
/*  }  */

/*  .next-btn::after {  */
/*      content: "";  */
/*      position: absolute;  */
/*      right: 0;  */
/*      top: 0;  */
/*      width: 50%;  */
/*      height:100%;  */
/*      background:#FF1616;  */
/*      opacity: 0.1;  */
/*      z-index: -1;  */
/*  }  */
</style>
<meta charset="UTF-8" name="viewport" content="initial-scale=1.0, width=device-width">
<title>심리테스트에 따른 추천도서</title>
</head>
<body>
<div id="test">
            <div id="main">
                <div class="title-wrap">
                    <div class="title">
                        심리테스트에 따른 추천도서
                    </div>
                </div>

                <div class="question-wrap">
                    <div class="question">
                        <!-- 질문 -->
                        Q1. 이번에 읽고 싶은 장르는?
                    </div>
                </div>
                <div class="answer-wrap">
                <div class="answer">
                <input type="radio" name="answer" value="novel"> 소설 <br><br><br>
                <input type="radio" name="answer" value="essay"> 에세이 <br><br><br>
                <input type="radio" name="answer" value="economy">경제/경영 <br><br><br>
                    </div>
                </div>
                <div class="bottom">
                    <div class="controller-wrap">
                        <button class='prev-btn'>이전</button>
                        <button class='next-btn'>다음</button>
                    </div>
                </div>
            </div>
        </div>
</body>
<%-- <%@ include file="../include/footer.jsp" %> --%>
</html>
