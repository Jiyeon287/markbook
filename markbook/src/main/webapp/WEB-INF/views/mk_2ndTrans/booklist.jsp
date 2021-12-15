<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>

<style type="text/css">
.properties-img {
	display: inline-block;
	width: 100%;
	height: 140px;
	overflow: hidden;
	object-fit: cover;
	border-radius: 5px;
	border-color: black;
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
							<h2>Secondhand_book_Deals</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--  Hero area End -->

	<div class="listing-area pt-50 pb-50">
		<div class="container">
			<div class="row">
				<!--? Left content -->
				<div class="col-xl-4 col-lg-4 col-md-6">
					<!-- Job Category Listing start -->
					<div class="category-listing mb-50">
						<!-- single one -->
						<div class="single-listing">
							<!-- select-Categories  -->
							<div class="select-Categories pb-30">
								<div class="small-tittle mb-20">
									<h4>Filter by Genres</h4>
								</div>
								<label class="container">History <input type="checkbox">
									<span class="checkmark"></span>
								</label> <label class="container">Horror - Thriller <input
									type="checkbox" checked="checked active"> <span
									class="checkmark"></span>
								</label> <label class="container">Love Stories <input
									type="checkbox"> <span class="checkmark"></span>
								</label> <label class="container">Science Fiction <input
									type="checkbox"> <span class="checkmark"></span>
								</label> <label class="container">Biography <input
									type="checkbox"> <span class="checkmark"></span>
								</label>
							</div>
							<!-- select-Categories End -->

							<!-- Range Slider Start -->
							<aside
								class="left_widgets p_filter_widgets price_rangs_aside sidebar_box_shadow mb-40">
								<div class="small-tittle">
									<h4>Filter by Price</h4>
								</div>
								<div class="widgets_inner">
									<div class="range_item">
										<span class="irs js-irs-0"><span class="irs"><span
												class="irs-line" tabindex="-1"><span
													class="irs-line-left"></span><span class="irs-line-mid"></span><span
													class="irs-line-right"></span></span><span class="irs-min"
												style="visibility: hidden;">$ 0</span><span class="irs-max"
												style="visibility: visible;">$ 1.000</span><span
												class="irs-from" style="visibility: visible; left: 0%;">$
													0</span><span class="irs-to"
												style="visibility: visible; left: 41.8367%;">$ 500</span><span
												class="irs-single"
												style="visibility: hidden; left: 13.9796%;">$ 0 - $
													500</span></span><span class="irs-grid"></span><span class="irs-bar"
											style="left: 3.06122%; width: 46.9388%;"></span><span
											class="irs-shadow shadow-from" style="display: none;"></span><span
											class="irs-shadow shadow-to" style="display: none;"></span><span
											class="irs-slider from" style="left: 0%;"></span><span
											class="irs-slider to type_last" style="left: 46.9388%;"></span></span><input
											type="text" class="js-range-slider irs-hidden-input" value=""
											readonly="">
										<div class="d-flex align-items-center">

											<div class="price_value d-flex justify-content-center">
												<input type="text" class="js-input-from" id="amount"
													readonly=""> <span>to</span> <input type="text"
													class="js-input-to" id="amount" readonly="">
											</div>
										</div>
									</div>
								</div>
							</aside>
							<!-- range end -->

							<!-- Select City items start -->
							<div class="select-job-items2 mb-30">
								<div class="col-xl-12">
									<select name="select2" style="display: none;">
										<option value="">Filter by Rating</option>
										<option value="">5 Star Rating</option>
										<option value="">4 Star Rating</option>
										<option value="">3 Star Rating</option>
										<option value="">2 Star Rating</option>
										<option value="">1 Star Rating</option>
									</select>
									<div class="nice-select" tabindex="0">
										<span class="current">Filter by Rating</span>
										<ul class="list">
											<li data-value="" class="option selected">Filter by
												Rating</li>
											<li data-value="" class="option">5 Star Rating</li>
											<li data-value="" class="option">4 Star Rating</li>
											<li data-value="" class="option">3 Star Rating</li>
											<li data-value="" class="option">2 Star Rating</li>
											<li data-value="" class="option">1 Star Rating</li>
										</ul>
									</div>
								</div>
							</div>
							<!--  Select City items End-->

							<!-- select-Categories start -->
							<div class="select-Categories pt-100 pb-60">
								<div class="small-tittle mb-20">
									<h4>Filter by Publisher</h4>
								</div>
								<label class="container">Green Publications <input
									type="checkbox"> <span class="checkmark"></span>
								</label> <label class="container">Anondo Publications <input
									type="checkbox" checked="checked active"> <span
									class="checkmark"></span>
								</label> <label class="container">Rinku Publications <input
									type="checkbox"> <span class="checkmark"></span>
								</label> <label class="container">Sheba Publications <input
									type="checkbox"> <span class="checkmark"></span>
								</label> <label class="container">Red Publications <input
									type="checkbox"> <span class="checkmark"></span>
								</label>
							</div>
							<!-- select-Categories End -->
							<!-- select-Categories start -->
							<div class="select-Categories">
								<div class="small-tittle mb-20">
									<h4>Filter by Author Name</h4>
								</div>
								<label class="container">Buster Hyman <input
									type="checkbox"> <span class="checkmark"></span>
								</label> <label class="container">Phil Harmonic <input
									type="checkbox" checked="checked active"> <span
									class="checkmark"></span>
								</label> <label class="container">Cam L. Toe <input
									type="checkbox"> <span class="checkmark"></span>
								</label> <label class="container">Otto Matic <input
									type="checkbox"> <span class="checkmark"></span>
								</label> <label class="container">Juan Annatoo <input
									type="checkbox"> <span class="checkmark"></span>
								</label>
							</div>
							<!-- select-Categories End -->
						</div>
					</div>
					<!-- Job Category Listing End -->
				</div>
				<!--?  Right content -->
				<div class="col-xl-8 col-lg-8 col-md-6">
					<div class="row justify-content-end">
						<div class="col-xl-4">
							<div class="product_page_tittle">
								<div class="short_by">
									<select name="#" id="product_short_list" style="display: none;">
										<option>Browse by popularity</option>
										<option>Name</option>
										<option>NEW</option>
										<option>Old</option>
										<option>Price</option>
									</select>
									<div class="nice-select" tabindex="0">
										<span class="current">Browse by popularity</span>
										<ul class="list">
											<li data-value="Browse by popularity" class="option selected">Browse
												by popularity</li>
											<li data-value="Name" class="option">Name</li>
											<li data-value="NEW" class="option">NEW</li>
											<li data-value="Old" class="option">Old</li>
											<li data-value="Price" class="option">Price</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="best-selling p-0">
						<div class="row">
							<c:forEach var="bvo" items="${bookList }">
								<div class="col-xxl-3 col-xl-4 col-lg-4 col-md-12 col-sm-6">
									<div class="properties pb-30">
										<div class="properties-card">
											<div class="properties-img">
												<a href="${pageContext.request.contextPath}/mk_2ndTrans/bookinfo?b2_num=${bvo.b2_num }"><img src="${pageContext.request.contextPath}/resources/upload/${bvo.b2_image}" alt=""></a>
											</div>
											<div class="properties-caption properties-caption2">
												<h3>
													<a href="${pageContext.request.contextPath}/mk_2ndTrans/bookinfo?b2_num=${bvo.b2_num }">${bvo.b2_name }</a>
												</h3>
												<p>${bvo.b2_writer }</p>
												<div
													class="properties-footer d-flex justify-content-between align-items-center">
													<div class="price">
														<span> ${bvo.b2_price } 원</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

							</c:forEach>

						</div>
						<!-- button -->
						<div class="row">
							<div class="col-xl-12">
								<div class="more-btn text-center mt-15">
									<a href="bookregister" class="border-btn border-btn2 more-btn2">판매등록</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</main>

<%@ include file="../include/footer.jsp"%>

<!-- 자바 스크립트 파일 연결 -->
<%-- <script src="${pageContext.request.contextPath }/resources/assets/js/mk_2ndTrans/secondbooklist.js"></script> --%>