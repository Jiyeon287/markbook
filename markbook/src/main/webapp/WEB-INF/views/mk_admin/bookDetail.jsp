<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ include file="header.jsp"%>

<div class="content">
	<div class="py-4 px-3 px-md-4">


		<div class="card">
			<div class="card-body">
				<div class="col-xl-12">
					<div class="border-bottom pb-3 mb-6">
						<h2 class="h4">
							상세페이지 <a class="anchorjs-link" href="#form-controls"
								aria-label="Anchor" data-anchorjs-icon="#"></a>
						</h2>
						<div class="tab-content bg-lighter" id="pills-tabContent-2">
							<div class="tab-pane fade p-4 show active" id="pills-result-2"
								role="tabpanel" aria-labelledby="pills-result-tab-2">

								<form action="" method="post" name="">

									<div class="form-group">
										<!-- <label for="exampleFormControlInput1">책이름</label> -->
										<strong class="d-block mb-1">책이름</strong> <input type="text"
											class="form-control" id="b_name" name="b_name" value=${mk_bookVO.b_name }>
									</div>
									


									<div class="form-group">
										<!-- <label for="exampleFormControlFile1">이미지</label> -->
										<strong class="d-block mb-1">이미지</strong> 
										<input type="file" class="gd-image" id="exampleFormControlFile1">
									</div>





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