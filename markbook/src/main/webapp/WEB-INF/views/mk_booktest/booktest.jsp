<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8" name="viewport" content="initial-scale=1.0, width=device-width">
<title>심리테스트에 따른 추천도서</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/booktest.css">
</head>
<body>
 <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.min.js"></script>
 <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<div id="test">

			<div id="intro" class="intro-wrap">
                <!-- 도입부 -->
                <div class="intro">
                    <div class="intro-story" v-on:click="start">{{intro}}</div>  
                </div>
            </div>
            
            <div id="main">
                <div class="title-wrap">
                    <div class="title">
                        {{title}}
                    </div>
                </div>

                <div class="question-wrap">
                    <div class="question">
                        <!-- 질문 -->
                        {{question[index]}}
                    </div>
                </div>
                <div class="answer-wrap">
                <div class="answer">
                	<div class="answer" v-for="(aVal, aIdx) in answer[index]">
                	<input type="radio" :id="index+'a'+aIdx" :value="aIdx" v-model="selection[index]">
                	<label :for="index+'a'+aIdx">{{aVal}}</label>
                	</div>
                </div>
                </div>
                <div class="bottom">
                    <div class="controller-wrap">
                        <button class='prev-btn' v-on:click="prev">이전</button>
                        <button class='next-btn' v-on:click="next">다음</button>
                    </div>
                </div>
            </div>
            
           <div id="result" class="result-wrap">
                <!-- 결과 -->
                <div class="result">{{result}}</div>
            </div> 
            </div> 
        <script src="${pageContext.request.contextPath }/resources//assets/js/booktest.js"></script>
</body>
<%--  <%@ include file="../include/footer.jsp" %>  --%>
</html>
