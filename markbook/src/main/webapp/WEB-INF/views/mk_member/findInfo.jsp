<%@ page contentType = "text/html;charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>MARKBOOK : 회원정보찾기</title>
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
                    <span>Find your ID & PW</span>
                </div>
				<table style="width:100%; text-align:center; padding-top:30px; ">
				<tr>
				<td style="width:50%">
				<div class="button-group-area mt-40">
					<a href="findId" class="genric-btn primary e-large" style="width:35%">아이디 찾기</a>
				</div>
				</td>
				<td style="width:50%">
				<div class="button-group-area mt-40">
					<a href="findPw" class="genric-btn primary e-large" style="width:35%">비밀번호 찾기</a>
				</div>
				</td>
				</tr>
				</table>

            </div>
        </div>
        <!-- Register Area End -->
    </main>
    </body>
</html>