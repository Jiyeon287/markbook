<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<%@ include file="header.jsp"%>
<script type="text/javascript">
function go() {
	location.href="./request_list";
}

</script>

<div class="content">
	<div class="py-4 px-3 px-md-4">


		<div class="card">
			<div class="card-body">
				<div class="col-xl-12">
					<div class="border-bottom pb-3 mb-6">
						<h2 class="h4">
							요청게시판 
			
                         <c:choose >
                                    		<c:when test="${page.r_result == 0}"> <span class="badge badge-pill badge-success">신청중</span></c:when>
                                    		<c:when test="${page.r_result  == 1 }"> <span class="badge badge-pill badge-info">처리중</span></c:when>
                                    		<c:when test="${page.r_result  == 2 }"> <span class="badge badge-pill badge-danger">취소됨</span></c:when>
                                    		<c:when test="${page.r_result  == 3 }"> <span class="badge badge-pill badge-light">완료</span></c:when>
                                    </c:choose>
        
						</h2>
<br>
						<div class="tab-content bg-lighter" id="pills-tabContent-2">
							<div class="tab-pane fade p-4 show active" id="pills-result-2"
								role="tabpanel" aria-labelledby="pills-result-tab-2">

								<form action="" method="post" name="">

									<div class="form-group">				
										<b >제목 </b> ${page.r_title}
<!-- 										<input type="text" class="form-control" id="b_name" name="b_name" value= ${page.r_title} style="width:45%; " readonly="readonly"> -->
									</div>
									
									<div class="form-group" >
										<strong class="d-block mb-1">책 이름</strong> <input type="text"
											class="form-control" id="b_name" name="b_name" value=${page.r_name}  style="width:45%;" readonly="readonly" >
									</div>
									<div class="form-group">
										<!-- <label for="exampleFormControlInput1">책이름</label> -->
										<strong class="d-block mb-1">작가명</strong> <input type="text"
											class="form-control" id="b_name" name="b_name" value= ${page.r_writer} style="width:45%; " readonly="readonly">									
									</div>
									
									<div class="form-group">
										<!-- <label for="exampleFormControlInput1">책이름</label> -->
										<strong class="d-block mb-1">ISBN</strong> <input type="text"
											class="form-control" id="b_name" name="b_name" value= ${page.r_ISBN} style="width:45%; " readonly="readonly">
									</div>
									
									<div class="form-group">
										<!-- <label for="exampleFormControlInput1">책이름</label> -->
										<strong class="d-block mb-1">출판사</strong> <input type="text"
											class="form-control" id="b_name" name="b_name" value=${page.r_publisher} style="width:45%; " readonly="readonly">
									</div>
									
									<div class="form-group">
										<!-- <label for="exampleFormControlInput1">책이름</label> -->
										<strong class="d-block mb-1">가격</strong> <input type="text"
											class="form-control" id="b_name" name="b_name" value= ${page.r_price} style="width:45%; "readonly="readonly">
									</div>
							<strong class="d-block mb-1">사유</strong>		
                         <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" readonly="readonly">${page.r_content }</textarea>
                         
                         


								</form>
							</div>
						</div>
					</div>
<button type="button" class="btn btn-soft-primary mb-3 mr-3" onclick="go();" >목록</button>
				</div>
			</div>
		</div>
		<%@ include file="footer.jsp"%>
	</div>
</div>
</html>
