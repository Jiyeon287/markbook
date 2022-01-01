<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- header 연결  -->
<%@ include file="../include/header.jsp"%>
<!-- css 연결  -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/mk_2ndTrans.css">

<main>
	<!-- Hero area Start-->
	<div class="container">
		<div class="row">
			<div class="col-xl-12">
				<div class="slider-area">
					<div
						class="slider-height2 slider-bg2 d-flex align-items-center justify-content-center">
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
							<div class="features-img" id="bidimg">
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
									<h3>현재 최고가</h3>
								</div>
								<input class="form-control" name="b2_highestprice" id="b2_highestprice" value="${bvo.b2_highestprice }"
									type="text" readonly="readonly">
							</div>
							<div class="form-group">
								<div class="media contact-info media-body">
									<h3>입찰 가격</h3>
								</div>
								<input class="form-control" name="bid_price" id="bid_price"
									type="number">
							</div>
							<div class="form-group mt-5">
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

<!-- footer 연결  -->
<%@ include file="../include/footer.jsp"%>

<!-- 자바 스크립트 파일 연결 -->
<script
	src="${pageContext.request.contextPath }/resources/assets/js/mk_2ndTrans/bid.js"></script>