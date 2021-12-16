<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>


<style type="text/css">
.features-img {
	position: relative;
	overflow: hidden;
	width: 800px;
	height: 600px;
	padding-bottom: 50px;
}

.features-img>img {
	object-fit: cover;
	width: 100%;
	height: 100%;
}
</style>

<main>
	<!-- Hero area Start-->
	<div class="container">
		<div class="row">
			<div class="col-xl-12">
				<div class="slider-area">
					<div
						class="slider-height2 slider-bg4 d-flex align-items-center justify-content-center">
						<div class="hero-caption hero-caption2">
							<h2>입찰 등록</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--  Hero area End -->

	<!-- 입찰 등록 폼  -->
	<section class="contact-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="row">
						<div class="col-12">
							<div class="features-img">
								<img
									src="${pageContext.request.contextPath}/resources/upload/${bvo.b2_image}"
									alt="">
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 offset-lg-1">
					<div class="media contact-info">
						<span class="contact-info__icon"><i class="ti-book"></i></span>
						<div class="media-body">
							<h3>${bvo.b2_title }</h3>
							<p>${bvo.b2_writer }</p>
						</div>
					</div>
					<div class="media contact-info">
						<span class="contact-info__icon"><i class="ti-tablet"></i></span>
						<div class="media-body">
							<h3>+1 253 565 2365</h3>
							<p>판매자 연락처</p>
						</div>
					</div>
					<div class="media contact-info">
						<span class="contact-info__icon"><i class="ti-email"></i></span>
						<div class="media-body">
							<h3>github.com/WillHeroes/markbook</h3>
							<p>고객센터</p>
						</div>
					</div>
					<div class="col-12">
						<form class="form-contact contact_form" action="" method="post" name="registerform">
							<div class="form-group">
								<div class="media contact-info media-body">
									<h6>현재 최고가</h6>
								</div>
								<input class="form-control" name="b2_highestprice" id="b2_highestprice" value="${bvo.b2_highestprice }"
									type="text" readonly="readonly">
							</div>
							<div class="form-group">
								<div class="media contact-info media-body">
									<h6>입찰 가격</h6>
								</div>
								<input class="form-control" name="bid_price" id="bid_price"
									type="text" onfocus="this.placeholder = ''"
									onblur="this.placeholder = 'Enter Price'"
									placeholder="Enter Price">
							</div>
							<div class="form-group mt-3">
								<button type="button" onclick="registerCheck();"
									class="button button-contactForm boxed-btn">입찰하기</button>
								<button type="button" onclick="history.back();"
									class="button button-contactForm boxed-btn">이전으로</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- 입찰 등록 폼  -->
</main>

<script>
	//입찰 유효성 검사
	function registerCheck() {
		
		var bid_price = $("#bid_price").val();
		var b2_price = $("#b2_highestprice").val();
		
		alert(bid_price);
		alert(b2_price);

		if ($("#bid_price").val() == "") {
			alert("입찰 가격을 입력해 주세요");
			$("#bid_price").focus();
			return false;
		} else if ($("#bid_price").val() < $("#b2_highestprice").val()) {
			alert("현재 최고가 보다 높은 입찰 가격을 입력해 주세요");
			$("#bid_price").focus();
			return false;
		} else {
			alert("입찰에 성공했습니다.");
			document.registerform.submit();
		}

	} // 입찰 유효성 검사 끝
</script>

<%@ include file="../include/footer.jsp"%>