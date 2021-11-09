<%@ page contentType = "text/html;charset=utf-8" %>
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
    <!-- header end -->
    <main class="login-bg">
        <!-- Register Area Start -->
        <div class="register-form-area">
            <div class="register-form text-center">
                <!-- Login Heading -->
                <div class="register-heading">
                    <span>Sign Up</span>
                    <p>Create your account to get full access</p>
                </div>
                <!-- Single Input Fields -->
                
                <div class="input-box">
                    <div class="single-input-fields">
                        <input type="text" placeholder="아이디">
                    </div>
                    <div class="single-input-fields">
                        <input type="password" placeholder="비밀번호">
                    </div>
                    <div class="single-input-fields">
                        <input type="password" placeholder="비밀번호 확인">
                    </div>
                     <div class="single-input-fields">
                        <input type="text" placeholder="이름">
                    </div>
                    <div class="form-floating mb-3">
					 	<input type="text" class="form-control" id="floatingInput" placeholder="주민등록번호" style="float:left; width:50%;"> 
						<input type="password" class="form-control" id="floatingPassword" style="width:50%;">
					</div>
                    <div class="single-input-fields">
                    	<table style="width:100%">
                    		<tr>
                    			<td style="width:50%">
		                        	<input type="email" placeholder="이메일 주소를 입력하세요" style="">
		                        </td>
		                        <td style="width:50%">
				                    <select style="display:none;">
				                    	<option>선택하세요</option>
				                        <option>naver.com</option>
				                        <option>daum.net</option>
				                        <option>gmail.com</option>
				                    </select>
				                    <div class="nice-select" tabindex="0" style="">
					                    <span class="current">선택하세요</span>
					                    <ul class="list">
						                    <li data-value="선택하세요" class="option selected focus">선택하세요</li>
						                    <li data-value="naver.com" class="option">naver.com</li>
						                    <li data-value="daum.net" class="option">daum.net</li>
						                    <li data-value="gmail.com" class="option">gmail.com</li>
					                    </ul>
				                    </div>
			                    </td>
		                    </tr>
	                    </table>
                    </div>
                    <!-- 주소 -->
                    <div class="single-input-fields">
                        <input type="password" placeholder="나머지 주소">
                    </div>
                </div>
                <!-- form Footer -->
                <div class="register-footer">
                    <p> Already have an account? <a href="login.html"> Login</a> here</p>
                    <button class="submit-btn3">Sign Up</button>
                </div>
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
    </body>
</html>