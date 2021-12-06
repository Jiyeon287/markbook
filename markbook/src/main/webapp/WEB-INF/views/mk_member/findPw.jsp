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
<script>
//이메일 합치기
var emailAddr = document.findPW.emailAddr.value;
var domainAddr = document.findPW.domain.value;
var realEmail = emailAddr+"@"+domainAddr;
	
document.joinFr.m_email.value = realEmail;

//유효성검사 + id 존재여부
function inpChk() {
	
	var id = document.findPW.m_id.value;
	
	if(id == "") {
		alert("아이디를 입력하세요.");
		return false;
	}
	if(document.findPW.emailAddr.value == "") {
		alert("이메일 주소를 입력하세요.");
		return false;
	}
	if(document.findPW.emailAddr.value.search("@") > 0) {
		alert("@없이 이메일만 적어주세요.");
		return false;
	}
	if(document.findPW.domain.value == "none") {
		alert("도메인 주소를 선택하세요.");
		return false;
	}
	else {
		$.ajax({
			url: "/markbook/mk_member/idchk",
			type: "post",
			dataType: "json",
			data: {"m_id" : id},
			success: function(data) {
				if(data > 0) {
					//아이디 중복 확인
					alert("존재하는 아이디입니다.");
// 					return false;
// 					$("#isCheck").attr("value","2");
					
				} else if (data == 0) {
					// 아이디 중복 안됨 -> 존재하지 않음
					alert("존재하지 않는 아이디입니다.");
// 					$("#isCheck").attr("value","1");
				}
			}
		})
	}
}

</script>
<script>
$(function(){
	$("#findBtn").click(function(){
		$.ajax({
			url : "/member/findpw",
			type : "POST",
			data : {
				id : $("#m_id").val(),
				email : $("#m_email").val()
			},
			success : function(result) {
				alert(result);
			},
		})
	});
})

</script>
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
                <form method="post" name="findPW" action="" onsubmit="return inpChk()">
                	<input type="hidden" id="isCheck" name="isCheck" value="0"/>
	                <div class="input-box">
	                     <div class="single-input-fields">
	                        <input type="text" placeholder="회원가입한 아이디를 입력하세요" name="m_id">
	                    </div>
						<div class="single-input-fields">
							<table style="width:100%">
								<tr>
									<td style="width:50%">
			                        	<input type="text" placeholder="이메일 주소를 입력하세요" name="emailAddr">
			                        </td>
			                        <td style="width:50%">
					                    <select style="display:none;" name="domain">
					                    	<option value="none">선택하세요</option>
					                        <option value="naver.com">@naver.com</option>
					                        <option value="daum.net">@daum.net</option>
					                        <option value="gmail.com">@gmail.com</option>
					                    </select>
					                    	<div class="nice-select" tabindex="0" style="margin-top:8px; border-radius:0px; height:50px; color:rgb(139,139,139)">
						                    <span class="current">선택하세요</span>
						                    <ul class="list">
							                    <li data-value="none" class="option selected focus">선택하세요</li>
							                    <li data-value="naver.com" class="option">@naver.com</li>
							                    <li data-value="daum.net" class="option">@daum.net</li>
							                    <li data-value="gmail.com" class="option">@gmail.com</li>
						                    </ul>
					                    </div>
					                 </td>
								</tr>
							</table>

						</div>
	                </div>
	                <!-- form Footer -->	
	                <div class="register-footer">

	                    <p> Do you find your ID? <a href="/markbook/mk_member/findid"> findID</a> here</p>
	                    <button class="submit-btn3">이메일로 임시 비밀번호 전송하기</button>

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
    
    </body>
</html>