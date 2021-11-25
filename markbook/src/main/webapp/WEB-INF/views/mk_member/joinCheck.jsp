<%@ page contentType = "text/html;charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>MARKBOOK : 회원가입</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath }/resources/assets/img/icon/favicon.png">

	<!-- CSS here -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/style.css">
</head>
<body>
    <!-- header end -->
    <main class="login-bg">
        <!-- Register Area Start -->
        <div class="register-form-area">
            <div class="register-form text-center">
                <!-- Login Heading -->
                <div class="register-heading">
                    <span>개인정보수집동의</span>
                </div>
                <!-- Single Input Fields -->
                <div class="input-box">
	               	<div style="overflow:auto; white-space:nowrap; overflow-y:scroll;
    				width:650px; height:250px; border:1px solid rgb(117,117,117); font-size:17px; margin-left:55px;">
	               	  MarkBook은 개인정보보호법 제30조에 따라 서비스 이용을 위한 아래 개인정보 수집.이용 동의를 받습니다.<br><br>
	                  1. 개인정보의 처리목적<br>
	                  MarkBook은 다음의 목적을 위하여 개인정보를 처리하고 있으며, 다음의 목적 이외로는 이용하지 않습니다.<br>
	                  ① 이용자 식별 및 본인여부 확인<br>
	                  ② 목적 계약 이행을 위한 연락민원 등 고객 고충 처리<br>
	                  ③ 만14세 미만 아동인지 확인<br><br>
	                  2. 개인정보 수집항목<br>
					  이름, 주소, 휴대폰번호, 주민등록번호, 이메일<br><br>
	                  3. 개인정보의 처리 및 보유기간<br>
					  회원탈퇴시 즉시 삭제
	               	</div>
	               	<div style="text-align:center; margin-top:15px;">
               			<input type="checkbox" onclick="location.href='/markbook/mk_member/join'"> 동의합니다
               		</div>
               	</div>
	        </div>
        </div>
    </main>
    </body>
</html>