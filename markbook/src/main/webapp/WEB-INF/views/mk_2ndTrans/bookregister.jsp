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

	<!-- 책 등록 폼  -->
	<form action="" method="post" id="2ndbookRegister" name="2ndbookRegister">
		<div class="container" style="padding-left: 100px;">
			<div class="row">
				<div class="col-lg-8 col-md-8">
					<div class="single-element-widget mt-30">
						<h2 class="mb-30">Seller id</h2>
						<input type="text" name="m_id" value="${m_id }"
							class="single-input">
					</div>
					<div class="single-element-widget mt-30">
						<h2 class="mb-30">Book Information</h2>
						<div class="mt-10">
							<h4 class="mb-30">Book Title</h4>
							<input type="text" name="b2_name" placeholder="책 제목을 입력해주세요."
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
							<h4 class="mb-15">Book Description</h4>
							<textarea name="b2_content" class="single-textarea"></textarea>
						</div>
						<div class="mt-5" style="padding-bottom: 30px;">
							<h4 class="mb-15">Book Image</h4>
							<input type="file" name="b2_image" id="b2_image">
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 mt-sm-30">
					<div class="single-element-widget mt-30">
						<h3 class="mb-30">Book Category</h3>
						<div class="default-select" id="default-select""="">
							<select name="b2_category" style="display: none;">
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
									<li data-value="문학" class="option selected">문학</li>
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
						<h3 class="mb-30">Book Status</h3>
						<div class="switch-wrap d-flex justify-content-between">
							<p>최상 - 거의 새책</p>
							<div class="primary-checkbox">
								<input type="checkbox" id="default-checkbox"> <label
									for="default-checkbox"></label>
							</div>
						</div>
						<div class="switch-wrap d-flex justify-content-between">
							<p>상</p>
							<div class="primary-checkbox">
								<input type="checkbox" id="1-checkbox"> <label
									for="1-checkbox"></label>
							</div>
						</div>
						<div class="switch-wrap d-flex justify-content-between">
							<p>중</p>
							<div class="primary-checkbox">
								<input type="checkbox" id="2-checkbox"> <label
									for="2-checkbox"></label>
							</div>
						</div>
						<div class="switch-wrap d-flex justify-content-between">
							<p>하</p>
							<div class="primary-checkbox">
								<input type="checkbox" id="3-checkbox"> <label
									for="3-checkbox"></label>
							</div>
						</div>
					</div>
					<div class="mt-5">
							<h3 class="mb-30">Book Publisher</h3>
							<input type="text" name="b2_publisher" placeholder="출판사를 입력해주세요."
								onfocus="this.placeholder = ''"
								onblur="this.placeholder = '출판사를 입력해주세요.'" required=""
								class="single-input">
					</div>
					<div class="mt-10">
							<h3 class="mb-30">Book Price</h3>
							<input type="text" name="b2_price" placeholder="책 가격을 입력해주세요."
								onfocus="this.placeholder = ''"
								onblur="this.placeholder = '책 가격을 입력해주세요.'" required=""
								class="single-input">
					</div>
					<div class="form-group mt-3">
                         <button type="submit" class="button button-contactForm boxed-btn">판매등록</button>
                         <button type="button" id="btntest" name="btntest" class="button">목록으로</button>
                    </div>
				</div>
			</div>
		</div>
	</form>
	<!-- 책 등록 폼  -->
</main>



<%@ include file="../include/footer.jsp"%>

<!-- 등록 유효성 체크 -->
<script
	src="${pageContext.request.contextPath }/resources/assets/js/2ndbookregister.js"></script>
	
	<script type="text/javascript">
	
	
	  /* 중고책 등록 이미지 업로드 */
	$("input[type='file']").on("change", function(){
		
		alert("작동1");
		
		let formData = new FormData();
		let fileInput = $("input[name='b2_image']");
		let fileList = fileInput[0].files;
		let fileObj = fileList[0];
		
		console.log("fileList : " + fileList);
		console.log("fileObj : " + fileObj);
		console.log("fileType(MimeType) : " + fileObj.type);
		
		alert("작동2");
		
		if(!fileCheck(fileObj.name, fileObj.size)){	
			return false;
		}		

		formData.append("b2_image", fileObj);
		
		alert("작동3"+formData);
		
		$.ajax({
				url : '/mk_2nd/imgRegister',
				processData : false,
				contentType : false,
				data : formData,
				type : 'POST',
				dataType : 'json',
				success : function(arg) {
					alert("통신성공");
				},
				error : function(arg) {
					alert("통신실패");
				}
			});
		});

		/* var, method related with attachFile */
		let regex = new RegExp("(.*?)\.(jpg|png)$");
		let maxSize = 1048576; //10MB	

		function fileCheck(fileName, fileSize) {

			if (fileSize >= maxSize) {
				alert("파일 사이즈 초과");
				return false;
			}
			if (!regex.test(fileName)) {
				alert("해당 종류의 파일은 업로드할 수 없습니다.");
				return false;
			}
			return true;
		}

</script>
