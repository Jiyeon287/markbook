<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>

<main>
	<!-- Hero area Start-->
	<div class="container">
		<div class="row">
			<div class="col-xl-12">
				<div class="slider-area">
					<div
						class="slider-height2 slider-bg4 d-flex align-items-center justify-content-center">
						<div class="hero-caption hero-caption2">
							<h2>Secondhand_book_Deals</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--  Hero area End -->

	<!-- 판매등록 폼  -->
	<form action="" method="post" id="bookRegister" name="bookRegister"
		onsubmit="return regiChk();">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-4 mt-sm-30">
					<div class="single-element-widget mt-30">
						<h1 class="mb-30">Book Information</h1>
						<div class="mt-10">
							<h4 class="mb-30">Book Title</h4>
							<input type="text" name="b2_title" placeholder="책 제목을 입력해주세요."
								onfocus="this.placeholder = ''"
								onblur="this.placeholder = '책 제목을 입력해주세요.'" required=""
								class="single-input">
						</div>
						<div class="mt-5">
							<h4 class="mb-15">Writer</h4>
							<input type="text" name="b2_writer" placeholder="책 저자를 입력해주세요."
								onfocus="this.placeholder = ''"
								onblur="this.placeholder = '책 저자을 입력해주세요.'" required=""
								class="single-input">
						</div>
						<div class="mt-5">
							<h4 class="mb-30">Book Publisher</h4>
							<input type="text" name="b2_publisher" placeholder="출판사를 입력해주세요."
								onfocus="this.placeholder = ''"
								onblur="this.placeholder = '출판사를 입력해주세요.'" required=""
								class="single-input">
						</div>
						<div class="mt-5" style="padding-bottom: 30px;">
							<h4 class="mb-15">Book Description</h4>
							<textarea name="b2_content" class="single-textarea" required=""></textarea>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 mt-sm-30">
					<div class="mt-5" style="padding-top: 70px;">
						<h4 class="mb-30">Book Image</h4>
						<input type="file" name="b2_image" id="b2_image"
							multiple="multiple">
					</div>
					<div class="single-element-widget mt-30">
						<h4 class="mb-30">Book Category</h4>
						<div class="default-select" id="default-select">
							<select name="b2_category" style="display: none;">
								<option value="">카테고리 선택</option>
								<option value="문학">문학</option>
								<option value="비문학">비문학</option>
								<option value="자기계발서">자기계발서</option>
								<option value="수험서">수험서</option>
								<option value="잡지">잡지</option>
								<option value="기타">기타</option>
							</select>
							<div class="nice-select" tabindex="0">
								<span class="current">카테고리 선택</span>
								<ul class="list">
									<li data-value="" class="option">카테고리 선택</li>
									<li data-value="문학" class="option">문학</li>
									<li data-value="비문학" class="option">비문학</li>
									<li data-value="자기계발서" class="option">자기계발서</li>
									<li data-value="수험서" class="option">수험서</li>
									<li data-value="잡지" class="option">잡지</li>
									<li data-value="기타" class="option">기타</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="single-element-widget mt-30">
						<h4 class="mb-30">Book Status</h4>
						<div class="switch-wrap d-flex justify-content-between">
							<p>최상 - 거의 새책</p>
							<div class="primary-checkbox">
								<input type="radio" id="default-checkbox" value="최상"
									name="b2_bookstatus"> <label for="default-checkbox"></label>
							</div>
						</div>
						<div class="switch-wrap d-flex justify-content-between">
							<p>상</p>
							<div class="primary-checkbox">
								<input type="radio" id="1-checkbox" value="상"
									name="b2_bookstatus"> <label for="1-checkbox"></label>
							</div>
						</div>
						<div class="switch-wrap d-flex justify-content-between">
							<p>중</p>
							<div class="primary-checkbox">
								<input type="radio" id="2-checkbox" value="중"
									name="b2_bookstatus"> <label for="2-checkbox"></label>
							</div>
						</div>
						<div class="switch-wrap d-flex justify-content-between">
							<p>하</p>
							<div class="primary-checkbox">
								<input type="radio" id="3-checkbox" value="하"
									name="b2_bookstatus"> <label for="3-checkbox"></label>
							</div>
						</div>
						<div class="switch-wrap d-flex justify-content-between">
							<p>최하 - 거의 폐지</p>
							<div class="primary-checkbox">
								<input type="radio" id="4-checkbox" value="최하"
									name="b2_bookstatus"> <label for="4-checkbox"></label>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 mt-sm-30">
					<div class="single-element-widget mt-35">
						<h1 class="mb-30">Bid Information</h1>
						<div class="single-element-widget mt-30">
							<h4 class="mb-30">Seller id</h4>
							<input type="text" name="m_id" value="${m_id }"
								class="single-input">
						</div>
						<div class="mt-15">
							<h4 class="mb-30">Book Price</h4>
							<input type="text" name="b2_startprice"
								placeholder="최소가격을 입력해주세요." onfocus="this.placeholder = ''"
								onblur="this.placeholder = '최소가격을 입력해주세요.'" required=""
								class="single-input">
						</div>
						<div class="mt-15">
							<h4 class="mb-30">Start date</h4>
							<input type="date" name="b2_startdate" required="" class="single-input">
						</div>
					    <div class="mt-15">
							<h4 class="mb-30">End date</h4>
							<input type="date" name="b2_enddate" required="" class="single-input">
						</div>
						<div class="form-group mt-5 ml-60">
							<button type="submit" class="button button-contactForm boxed-btn">판매등록</button>
							<button type="button" class="button button-contactForm boxed-btn"
								onclick="location.href='./booklist';">목록으로</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
	<!-- 책 등록 폼  -->
</main>
<%@ include file="../include/footer.jsp"%>

<!-- 자바 스크립트 파일 연결 -->
<script
	src="${pageContext.request.contextPath }/resources/assets/js/mk_2ndTrans/secondbookregister.js"></script>