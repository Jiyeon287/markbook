<%@ page contentType = "text/html;charset=utf-8" %>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>MARKBOOK : 로그인</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath }/resources/assets/img/icon/favicon.png">

	<!-- CSS here -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/owl.carousel.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/slicknav.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/animate.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/price_rangs.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/magnific-popup.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/fontawesome-all.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/themify-icons.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/slick.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/nice-select.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/style.css">
</head>
<body>

    <main class="login-bg">
        <!-- login Area Start -->
        <div class="login-form-area">
            <div class="login-form">
                <!-- Login Heading -->
                <div class="login-heading">
                    <span>Login</span>
                    <p>Enter Login details to get access</p>
                </div>
                <!-- Single Input Fields -->
                <form method="post" action="/markbook/mk_member/login" name="loginFr" onsubmit="return loginChk();">
	                <div class="input-box">
	                    <div class="single-input-fields">
	                        <label>ID</label>
	                        <input type="text" placeholder="아이디" name="m_id">
	                    </div>
	                    <div class="single-input-fields">
	                        <label>Password</label>
	                        <input type="password" placeholder="비밀번호" name="m_pw">
	                    </div>
	                    <div class="single-input-fields login-check">
	                        <input type="hidden" id="fruit1" name="keep-log">
	                        <label for="fruit1">&nbsp;</label>
	                    <a href="#" class="f-right">Forgot Password?</a>
	                    </div>
	                    <!-- social login -->
		                <div style="text-align:center; padding-top:50px;">
		                	<img src="${pageContext.request.contextPath }/resources/assets/img/social/google.png" style="margin-bottom:10px; cursor:pointer;"/><br>
		                	<img src="${pageContext.request.contextPath }/resources/assets/img/social/kakao.png" style="margin-bottom:10px; cursor:pointer;"/><br>
		                	<img src="${pageContext.request.contextPath }/resources/assets/img/social/naver.png" style="cursor:pointer;"/>
		                </div>
	                </div>
	                
	                <!-- form Footer -->
	                <div class="login-footer">
	                    <p>Don't have an account? <a href="/markbook/mk_member/join">Sign Up</a>  here</p>
	                    <button class="submit-btn3">Login</button>
	                </div>
                </form>
            </div>
        </div>
        <!-- login Area End -->
    </main>

    <!-- JS here -->
    <!-- Jquery, Popper, Bootstrap -->
    <script src="${pageContext.request.contextPath }/resources/assets/js/vendor/modernizr-3.5.0.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/popper.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/bootstrap.min.js"></script>

    <!-- Slick-slider , Owl-Carousel ,slick-nav -->
    <script src="${pageContext.request.contextPath }/resources/assets/js/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/slick.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/jquery.slicknav.min.js"></script>

    <!--wow , counter , waypoint, Nice-select -->
    <script src="${pageContext.request.contextPath }/resources/assets/js/wow.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/jquery.magnific-popup.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/jquery.nice-select.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/jquery.counterup.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/waypoints.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/price_rangs.js"></script>

    <!-- contact js -->
    <script src="${pageContext.request.contextPath }/resources/assets/js/contact.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/jquery.form.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/jquery.validate.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/mail-script.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/jquery.ajaxchimp.min.js"></script>

    <!--  Plugins, main-Jquery -->	
    <script src="${pageContext.request.contextPath }/resources//assets/js/plugins.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/main.js"></script>
    
    <!-- 유효성 검사 -->
    <script src="${pageContext.request.contextPath }/resources//assets/js/member.js"></script>
    </body>
</html>