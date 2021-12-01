<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">



<%@ include file="header.jsp"%>
<div class="content">
	<div class="py-4 px-3 px-md-4">


		<div class="card">
			<div class="card-body">
				<div class="col-xl-12">
					<div class="border-bottom pb-3 mb-6">
						<h2 class="h4">
							BOOK REGISTER <a class="anchorjs-link" href="#form-controls"
								aria-label="Anchor" data-anchorjs-icon="#"></a>
						</h2>
						<div class="tab-content bg-lighter" id="pills-tabContent-2">
							<div class="tab-pane fade p-4 show active" id="pills-result-2"
								role="tabpanel" aria-labelledby="pills-result-tab-2">

								<form action="bookList" method="post" name="bookList">

									<div class="form-group">									
										<strong class="d-block mb-1">제목</strong> <input type="text" class="form-control" id="exampleFormControlInput1">
									</div>
									<div class="form-group">									
										<strong class="d-block mb-1">책이름</strong> <input type="text" class="form-control" id="exampleFormControlInput1">
									</div>
									<div class="form-group">									
										<strong class="d-block mb-1">작가명</strong> <input type="text" class="form-control" id="exampleFormControlInput1">
									</div>
									<div class="form-group">									
										<strong class="d-block mb-1">ISBN</strong> <input type="text" class="form-control" id="exampleFormControlInput1">
									</div>
									<div class="form-group">									
										<strong class="d-block mb-1">출판사</strong> <input type="text" class="form-control" id="exampleFormControlInput1">
									</div>
									<div class="form-group">									
										<strong class="d-block mb-1">가격</strong> <input type="text" class="form-control" id="exampleFormControlInput1">
									</div>
									<div class="form-group">									
										<strong class="d-block mb-1">가격</strong> <input type="text" class="form-control" id="exampleFormControlInput1">
									</div>
                                   <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>

									

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