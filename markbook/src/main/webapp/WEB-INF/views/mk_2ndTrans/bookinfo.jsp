<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>

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

<main>
    <!--  services-area start-->
    <div class="services-area2">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="row">
                        <div class="col-xl-12">
                            <!-- Single -->
                            <div class="single-services d-flex align-items-center mb-0">
                                <div class="features-img">
                                    <img src="${pageContext.request.contextPath}/resources/upload/${bvo.b2_image}" alt="">
                                </div>
                                <div class="features-caption">
                                    <h3>${bvo.b2_name }</h3>
                                    <p>By ${bvo.b2_writer }</p>
                                    <div class="price">
                                        <span>${bvo.b2_price } 원</span>
                                    </div>
                                    <div class="review">
                                        <div class="rating">
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star-half-alt"></i>
                                        </div>
                                        <p>(120 Review)</p>
                                    </div>
                                    <a href="#" class="white-btn mr-10">장바구니</a>
                                    <a href="${pageContext.request.contextPath}/mk_2ndTrans/bookmodify?b2_num=${bvo.b2_num }" class="white-btn mr-10">상품수정</a>
                                    <a href="#" class="border-btn share-btn"><i class="fas fa-share-alt"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- services-area End-->
    <!--Books review Start -->
    <section class="our-client section-padding best-selling">
        <div class="container">
            <div class="row">
                <div class="offset-xl-1 col-xl-10">
                    <div class="nav-button f-left">
                        <!--Nav Button  -->
                        <nav>
                            <div class="nav nav-tabs " id="nav-tab" role="tablist">
                                <a class="nav-link active" id="nav-one-tab" data-bs-toggle="tab" href="#nav-one" role="tab" aria-controls="nav-one" aria-selected="true">상품정보</a>
                                <a class="nav-link" id="nav-two-tab" data-bs-toggle="tab" href="#nav-two" role="tab" aria-controls="nav-two" aria-selected="false">책내용</a>
                            </div>
                        </nav>
                        <!--End Nav Button  -->
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <!-- Nav Card -->
            <div class="tab-content" id="nav-tabContent">
                <div class="tab-pane fade active show" id="nav-one" role="tabpanel" aria-labelledby="nav-one-tab">
                    <!-- Tab 1 -->  
                    <div class="row">
                        <div class="offset-xl-1 col-lg-9">
                            <p>판매자 아이디: ${bvo.seller_m_num }</p>
                            <p>카테고리: ${bvo.b2_category }</p>
                            <p>작가: ${bvo.b2_writer }</p>
                            <p>출판사: ${bvo.b2_publisher }</p>
                            <p>상품상태: ${bvo.b2_sell }</p>
                         </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="nav-two" role="tabpanel" aria-labelledby="nav-two-tab">
                    <!-- Tab 2 -->
                    <div class="row">
                        <div class="offset-xl-1 col-lg-9">
                        <p>${bvo.b2_content }</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
       <!-- button -->
		<div class="row">
			<div class="col-xl-12">
				<div class="more-btn text-center mt-15">
					<a href="booklist" class="border-btn border-btn2 more-btn2">목록으로</a>
				</div>
			</div>
		</div>
    </section>
    <!-- Books review End -->
</main>



<%@ include file="../include/footer.jsp"%>

<!-- 등록 유효성 체크 -->
<script src="${pageContext.request.contextPath }/resources/assets/js/2ndbookregister.js"></script>

