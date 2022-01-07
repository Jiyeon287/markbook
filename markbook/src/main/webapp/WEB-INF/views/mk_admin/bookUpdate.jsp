<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="header.jsp"%>

<div class="content">
	<div class="py-4 px-3 px-md-4">


		<div class="card">
			<div class="card-body">
				<div class="col-xl-12">
					<div class="border-bottom pb-3 mb-6">
						<h5 class="font-weight-semi-bold mb-0">EDIT</h5>
						<div class="tab-content bg-lighter" id="pills-tabContent-2">
							<div class="tab-pane fade p-4 show active" id="pills-result-2"
								role="tabpanel" aria-labelledby="pills-result-tab-2">

								<form action="" method="post" id="bookUpdate" name="bookUpdate">
									<input type="hidden" name="b_name" value="${bvo.b_name }">

									<div class="form-group">
										<strong class="d-block mb-1">책이름</strong> <input type="text"
											class="form-control" id="b_name" name="b_name"
											value="${bvo.b_name }">
									</div>

									<div>
										<strong class="d-block mb-1">카테고리</strong>
										<!-- <form class="mb-3"> -->
										<div class="form-check position-relative mb-2">
											<input type="radio" class="form-check-input d-none"
												id="customRadioboxes1" name="b_category" value="문학">
											<label class="radio radio-xxs form-check-label ml-1"
												for="customRadioboxes1" data-icon="">문학</label>
										</div>

										<div class="form-check position-relative mb-2">
											<input type="radio" class="form-check-input d-none"
												id="customRadioboxes2" name="b_category" value="비문학">
											<label class="radio radio-xxs form-check-label ml-1"
												for="customRadioboxes2" data-icon="">비문학</label>
										</div>
										<div class="form-check position-relative mb-2">
											<input type="radio" class="form-check-input d-none"
												id="customRadioboxes3" name="b_category" value="자기계발">
											<label class="radio radio-xxs form-check-label ml-1"
												for="customRadioboxes3" data-icon="">자기계발</label>
										</div>
										<div class="form-check position-relative mb-2">
											<input type="radio" class="form-check-input d-none"
												id="customRadioboxes4" name="b_category" value="수험서">
											<label class="radio radio-xxs form-check-label ml-1"
												for="customRadioboxes4" data-icon="">수험서</label>
										</div>
										<div class="form-check position-relative mb-2">
											<input type="radio" class="form-check-input d-none"
												id="customRadioboxes5" name="b_category" value="잡지">
											<label class="radio radio-xxs form-check-label ml-1"
												for="customRadioboxes5" data-icon="">잡지</label>
										</div>
										<div class="form-check position-relative mb-2">
											<input type="radio" class="form-check-input d-none"
												id="customRadioboxes6" name="b_category" value="기타">
											<label class="radio radio-xxs form-check-label ml-1"
												for="customRadioboxes6" data-icon="">기타</label>
										</div>

										<!-- </form> -->
									</div>

									<div class="form-group">
										<strong class="d-block mb-1">이미지</strong> <input type="file"
											class="gd-image" id="exampleFormControlFile1">
									</div>


									<div class="form-group">
										<!-- <label for="exampleFormControlTextarea1">책내용</label> -->
										<strong class="d-block mb-1">책내용</strong>
										<textarea class="form-control" id="b_content" name="b_content"
											rows="2">${bvo.b_content }</textarea>
									</div>
									<div class="form-group">
										<strong class="d-block mb-1">작가</strong>
										<textarea class="form-control" id="b_writer" name="b_writer"
											rows="1">${bvo.b_writer }</textarea>
									</div>
									<div class="form-group">
										<strong class="d-block mb-1">출판사</strong>
										<textarea class="form-control" id="b_publisher"
											name="b_publisher" rows="1">${bvo.b_publisher }</textarea>
									</div>

									<div class="form-group">
										<strong class="d-block mb-1">대출횟수</strong> <select
											class="form-control" id="b_count" name="b_count">
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
											<option>5</option>
										</select>
									</div>
									<div class="form-group">
										<strong class="d-block mb-1">현재수량</strong> <select multiple
											class="form-control" id="b_amount" name="b_amount">
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
											<option>5</option>
										</select>
									</div>


									<div>
										<strong class="d-block mb-1">대출여부</strong>

										<div class="custom-control custom-switch">
											<input type="checkbox" class="custom-control-input"
												id="customSwitch1"> <label
												class="custom-control-label" for="customSwitch1">가능</label>
										</div>
										<div class="custom-control custom-switch">
											<input type="checkbox" class="custom-control-input"
												id="customSwitch2"> <label
												class="custom-control-label" for="customSwitch2">불가</label>
										</div>

										<!-- <div class="form-check position-relative mb-2">
											<input type="checkbox" class="form-check-input d-none"
												id="check1"> <label
												class="checkbox checkbox-xxs form-check-label ml-1"
												for="check1" data-icon="&#xe936">가능</label>
										</div>

										<div class="form-check position-relative mb-2">
											<input type="checkbox" class="form-check-input d-none"
												id="check1"> <label
												class="checkbox checkbox-xxs form-check-label ml-1"
												for="check1" data-icon="&#xe936">불가</label>
										</div> -->
									</div>


									<button type="submit" class="btn btn-warning mb-2 mr-2"
										onclick="location.href='./bookList';">
										<span class="align-middle">수정하기</span> <i
											class="gd-shopping-cart-full icon-text align-middle ml-3"></i>
									</button>


								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="footer.jsp"%>
	</div>
</div>
