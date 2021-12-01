<%@ page contentType = "text/html;charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>MARKBOOK : 아이디찾기</title>
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
    
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/join.css">
</head>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<body>
    <!-- header end -->
    <main class="login-bg">
        <!-- Register Area Start -->
        <div class="register-form-area">
            <div class="register-form text-center">
                <!-- Login Heading -->
                <div class="register-heading">
                    <span>비밀번호 찾기</span>
                </div>
                <!-- Single Input Fields -->
                <form method="post" name="joinFr" action="/markbook/mk_member/join" onsubmit="return inpChk()">
                	<input type="hidden" id="isCheck" name="isCheck" value="0"/>
	                <div class="input-box">
	                     <div class="single-input-fields">
	                     	아이디<br>
	                        <input type="text" placeholder="아이디" name="m_id">
	                    </div>
						<div class="single-input-fields">
							<table style="width:100%">
								<tr>
									<td>
										<input type="text" placeholder="이메일" name="m_email">
									</td>
									<td>
										<input type="password" name="m_idnum2">
									</td>
								</tr>
							</table>
						</div>
	                </div>
	                <!-- form Footer -->	
	                <div class="register-footer">
	                    <p> Did you find your ID? <a href="/markbook/mk_member/login"> Login</a> here</p>
	                    <button class="submit-btn3">Find ID</button>
	                </div>
                </form>
            </div>
        </div>
        <!-- Register Area End -->
    </main>

    <!-- JS here -->
    <!-- Jquery, Popper, Bootstrap -->
    <script src="${pageContext.request.contextPath }/resources//assets/js/vendor/modernizr-3.5.0.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources//assets/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources//assets/js/popper.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources//assets/js/bootstrap.min.js"></script>

    <!-- Slick-slider , Owl-Carousel ,slick-nav -->
    <script src="${pageContext.request.contextPath }/resources//assets/js/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources//assets/js/slick.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources//assets/js/jquery.slicknav.min.js"></script>

    <!--wow , counter , waypoint, Nice-select -->
    <script src="${pageContext.request.contextPath }/resources//assets/js/wow.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources//assets/js/jquery.magnific-popup.js"></script>
    <script src="${pageContext.request.contextPath }/resources//assets/js/jquery.nice-select.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources//assets/js/jquery.counterup.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources//assets/js/waypoints.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources//assets/js/price_rangs.js"></script>

    <!-- contact js -->
    <script src="${pageContext.request.contextPath }/resources//assets/js/contact.js"></script>
    <script src="${pageContext.request.contextPath }/resources//assets/js/jquery.form.js"></script>
    <script src="${pageContext.request.contextPath }/resources//assets/js/jquery.validate.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources//assets/js/mail-script.js"></script>
    <script src="${pageContext.request.contextPath }/resources//assets/js/jquery.ajaxchimp.min.js"></script>

    <!--  Plugins, main-Jquery -->	
    <script src="${pageContext.request.contextPath }/resources//assets/js/plugins.js"></script>
    <script src="${pageContext.request.contextPath }/resources//assets/js/main.js"></script>
    
    <!-- 유효성 검사 -->
    <script src="${pageContext.request.contextPath }/resources//assets/js/member.js"></script>
    </body>
</html>