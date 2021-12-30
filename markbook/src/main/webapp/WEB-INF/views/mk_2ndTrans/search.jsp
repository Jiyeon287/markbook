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
									<h4>Filter by Category</h4>
								</div>
								<label class="container">문학
										<c:choose>
											<c:when test="${keyword == '문학'}">
	  											<input type="checkbox" checked="checked active" onclick="location.href='${pageContext.request.contextPath}/mk_2ndTrans/search?searchOption=b2_category&keyword=문학';">
			 								</c:when>
			 								<c:otherwise>
			 									<input type="checkbox" onclick="location.href='${pageContext.request.contextPath}/mk_2ndTrans/search?searchOption=b2_category&keyword=문학';"> 
			 								</c:otherwise>		
										</c:choose>
									<span class="checkmark"></span>
								</label>
									<label class="container">비문학
										<c:choose>
											<c:when test="${keyword == '비문학'}">
	  											<input type="checkbox" checked="checked active" onclick="location.href='${pageContext.request.contextPath}/mk_2ndTrans/search?searchOption=b2_category&keyword=비문학';">
			 								</c:when>
			 								<c:otherwise>
			 									<input type="checkbox" onclick="location.href='${pageContext.request.contextPath}/mk_2ndTrans/search?searchOption=b2_category&keyword=비문학';"> 
			 								</c:otherwise>		
										</c:choose>
									<span class="checkmark"></span>
								</label>
								<label class="container">자기계발서
										<c:choose>
											<c:when test="${keyword == '자기계발서'}">
	  											<input type="checkbox" checked="checked active" onclick="location.href='${pageContext.request.contextPath}/mk_2ndTrans/search?searchOption=b2_category&keyword=자기계발서';">
			 								</c:when>
			 								<c:otherwise>
			 									<input type="checkbox" onclick="location.href='${pageContext.request.contextPath}/mk_2ndTrans/search?searchOption=b2_category&keyword=자기계발서';"> 
			 								</c:otherwise>		
										</c:choose>
									<span class="checkmark"></span>
								</label>
								<label class="container">수험서
										<c:choose>
											<c:when test="${keyword == '수험서'}">
	  											<input type="checkbox" checked="checked active" onclick="location.href='${pageContext.request.contextPath}/mk_2ndTrans/search?searchOption=b2_category&keyword=수험서';">
			 								</c:when>
			 								<c:otherwise>
			 									<input type="checkbox" onclick="location.href='${pageContext.request.contextPath}/mk_2ndTrans/search?searchOption=b2_category&keyword=수험서';"> 
			 								</c:otherwise>		
										</c:choose>
									<span class="checkmark"></span>
								</label>
								<label class="container">잡지
										<c:choose>
											<c:when test="${keyword == '잡지'}">
	  											<input type="checkbox" checked="checked active" onclick="location.href='${pageContext.request.contextPath}/mk_2ndTrans/search?searchOption=b2_category&keyword=잡지';">
			 								</c:when>
			 								<c:otherwise>
			 									<input type="checkbox" onclick="location.href='${pageContext.request.contextPath}/mk_2ndTrans/search?searchOption=b2_category&keyword=잡지';"> 
			 								</c:otherwise>		
										</c:choose>
									<span class="checkmark"></span>
								</label>
								<label class="container">기타
										<c:choose>
											<c:when test="${keyword == '기타'}">
	  											<input type="checkbox" checked="checked active" onclick="location.href='${pageContext.request.contextPath}/mk_2ndTrans/search?searchOption=b2_category&keyword=기타';">
			 								</c:when>
			 								<c:otherwise>
			 									<input type="checkbox" onclick="location.href='${pageContext.request.contextPath}/mk_2ndTrans/search?searchOption=b2_category&keyword=기타';"> 
			 								</c:otherwise>		
										</c:choose>
									<span class="checkmark"></span>
								</label>
							</div>
							<!-- select-Categories End -->

							<!-- select-Categories start -->
							<div class="select-Categories pb-50">
								<div class="small-tittle mb-20">
									<h4>Filter by BookStatus</h4>
								</div>
								<label class="container">최상 - 거의 새책
										<c:choose>
											<c:when test="${keyword == '최상'}">
	  											<input type="checkbox" checked="checked active" onclick="location.href='${pageContext.request.contextPath}/mk_2ndTrans/search?searchOption=b2_bookstatus&keyword=최상';">
			 								</c:when>
			 								<c:otherwise>
			 									<input type="checkbox" onclick="location.href='${pageContext.request.contextPath}/mk_2ndTrans/search?searchOption=b2_bookstatus&keyword=최상';"> 
			 								</c:otherwise>		
										</c:choose>
									<span class="checkmark"></span>
								</label>
								<label class="container">상
										<c:choose>
											<c:when test="${keyword == '상'}">
	  											<input type="checkbox" checked="checked active" onclick="location.href='${pageContext.request.contextPath}/mk_2ndTrans/search?searchOption=b2_bookstatus&keyword=상';">
			 								</c:when>
			 								<c:otherwise>
			 									<input type="checkbox" onclick="location.href='${pageContext.request.contextPath}/mk_2ndTrans/search?searchOption=b2_bookstatus&keyword=상';"> 
			 								</c:otherwise>		
										</c:choose>
									<span class="checkmark"></span>
								</label>
								<label class="container">중
										<c:choose>
											<c:when test="${keyword == '중'}">
	  											<input type="checkbox" checked="checked active" onclick="location.href='${pageContext.request.contextPath}/mk_2ndTrans/search?searchOption=b2_bookstatus&keyword=중';">
			 								</c:when>
			 								<c:otherwise>
			 									<input type="checkbox" onclick="location.href='${pageContext.request.contextPath}/mk_2ndTrans/search?searchOption=b2_bookstatus&keyword=중';"> 
			 								</c:otherwise>		
										</c:choose>
									<span class="checkmark"></span>
								</label>
								<label class="container">하
										<c:choose>
											<c:when test="${keyword == '하'}">
	  											<input type="checkbox" checked="checked active" onclick="location.href='${pageContext.request.contextPath}/mk_2ndTrans/search?searchOption=b2_bookstatus&keyword=하';">
			 								</c:when>
			 								<c:otherwise>
			 									<input type="checkbox" onclick="location.href='${pageContext.request.contextPath}/mk_2ndTrans/search?searchOption=b2_bookstatus&keyword=하';"> 
			 								</c:otherwise>		
										</c:choose>
									<span class="checkmark"></span>
								</label>
							    <label class="container">최하 - 거의 폐지
										<c:choose>
											<c:when test="${keyword == '최하'}">
	  											<input type="checkbox" checked="checked active" onclick="location.href='${pageContext.request.contextPath}/mk_2ndTrans/search?searchOption=b2_bookstatus&keyword=최하';">
			 								</c:when>
			 								<c:otherwise>
			 									<input type="checkbox" onclick="location.href='${pageContext.request.contextPath}/mk_2ndTrans/search?searchOption=b2_bookstatus&keyword=최하';"> 
			 								</c:otherwise>		
										</c:choose>
									<span class="checkmark"></span>
								</label>
							</div>
							<!-- select-Categories End -->
							<!-- select-Categories start -->
							<div class="select-Categories pb-50">
								<div class="small-tittle mb-20">
									<h4>Filter by SalesStatus</h4>
								</div>
							    <label class="container">경매중
										<c:choose>
											<c:when test="${keyword == '0'}">
	  											<input type="checkbox" checked="checked active" onclick="location.href='${pageContext.request.contextPath}/mk_2ndTrans/search?searchOption=b2_sellstatus&keyword=0';">
			 								</c:when>
			 								<c:otherwise>
			 									<input type="checkbox" onclick="location.href='${pageContext.request.contextPath}/mk_2ndTrans/search?searchOption=b2_sellstatus&keyword=0';"> 
			 								</c:otherwise>		
										</c:choose>
									<span class="checkmark"></span>
								</label>
							    <label class="container">판매완료
										<c:choose>
											<c:when test="${keyword == '1'}">
	  											<input type="checkbox" checked="checked active" onclick="location.href='${pageContext.request.contextPath}/mk_2ndTrans/search?searchOption=b2_sellstatus&keyword=1';">
			 								</c:when>
			 								<c:otherwise>
			 									<input type="checkbox" onclick="location.href='${pageContext.request.contextPath}/mk_2ndTrans/search?searchOption=b2_sellstatus&keyword=1';"> 
			 								</c:otherwise>		
										</c:choose>
									<span class="checkmark"></span>
								</label>
								<!-- select-Categories End -->
							</div>
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
										<option>낮은가격순</option>
										<option>높은가격순</option>
										<option>과거등록순</option>
									</select>
									<div class="nice-select" tabindex="0">
										<span class="current">전체글 조회방법</span>
										<ul class="list">
											<li data-value="조회방법" class="option selected">조회방법</li>
											<li data-value="낮은가격순" class="option" onclick="location.href='${pageContext.request.contextPath}/mk_2ndTrans/search?searchOption=lowprice&keyword=a';">낮은가격순</li>
											<li data-value="높은가격순" class="option" onclick="location.href='${pageContext.request.contextPath}/mk_2ndTrans/search?searchOption=highprice&keyword=a';">높은가격순</li>
											<li data-value="최신등록순" class="option" onclick="location.href='${pageContext.request.contextPath}/mk_2ndTrans/search?searchOption=date&keyword=a';">과거등록순</li>
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
												<a href="${pageContext.request.contextPath}/mk_2ndTrans/bookinfo?b2_num=${bvo.b2_num }&pageNum=${pm.cri.pageNum }">
													<img src="${pageContext.request.contextPath}/resources/upload/${bvo.b2_image}"
														 alt="">
												</a>
											</div>
											<div class="properties-caption properties-caption2 text-center">
												<h3>
													<a href="${pageContext.request.contextPath}/mk_2ndTrans/bookinfo?b2_num=${bvo.b2_num }&pageNum=${pm.cri.pageNum }">${bvo.b2_title }</a>
												</h3>
												<p>${bvo.b2_writer }</p>
												<div class="properties-footer">
													<div class="price">
														<a href="${pageContext.request.contextPath}/mk_2ndTrans/bookinfo?b2_num=${bvo.b2_num }&pageNum=${pm.cri.pageNum }">														
															<span> ${bvo.b2_highestprice } 원</span>
														</a>
														<p>${bvo.b2_startdate }</p>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
						<nav class="blog-pagination justify-content-center d-flex">
                            <ul class="pagination">
                            	<!-- 이전  -->
                                <c:if test="${pm.prev }">
	                                <li class="page-item">
	                                    <a href="search?searchOption=${searchOption }&keyword=${keyword }&pageNum=${pm.startPage-1 }" class="page-link">
	                                        <i class="ti-angle-left"></i>
	                                    </a>
	                                </li>
                                </c:if>
                                <!-- 페이지 번호  -->
                                <c:forEach begin="${pm.startPage }" end="${pm.endPage }" var="idx">
                                	<li class="page-item <c:out value="${pm.cri.pageNum == idx? 'class = active ':''}"/>" > 
				                     	<a class="page-link" href="search?searchOption=${searchOption }&keyword=${keyword }&pageNum=${idx }">${idx }</a>
                                	</li>
                                </c:forEach>
                                <!--다음  -->
                                <c:if test="${pm.next && pm.endPage > 0 }">
	                                <li class="page-item">
	                                    <a href="search?searchOption=${searchOption }&keyword=${keyword }&pageNum=${pm.endPage + 1}" class="page-link" aria-label="Next">
	                                        <i class="ti-angle-right"></i>
	                                    </a>
	                                </li>
                                </c:if>
                            </ul>
                        </nav>
						<!-- button -->
						<div class="row">
							<div class="col-xl-12">
								<div class="more-btn text-center mt-50">
									<a href="bookregister" class="border-btn border-btn2 more-btn2">판매등록</a>
									<a href="booklist" class="border-btn border-btn2 more-btn2">전체글보기</a>
								</div>
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
<script
	src="${pageContext.request.contextPath }/resources/assets/js/mk_2ndTrans/booksearch.js"></script>