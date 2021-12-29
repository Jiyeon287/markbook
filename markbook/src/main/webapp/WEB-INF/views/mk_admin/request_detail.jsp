<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
#btn{
margin: 20%;
}
</style>

<%@ include file="header.jsp"%>
<script type="text/javascript">
function go() {
	location.href="./request_list?pgnum=${pgnum}&result=${result}";
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
<!-- ㅇㅇㅇ -->
<div class="tab-content bg-lighter" id="pills-tabContent-6">
                                        <div class="tab-pane fade p-4 show active" id="pills-result-6" role="tabpanel" aria-labelledby="pills-result-tab-6">
                                            <table class="table table-bordered">
                                                <thead>
                                                <tr>
                                                    <th scope="col">#</th>
                                                    <th scope="col">First</th>

                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <th scope="row">제목</th>
                                                    <td>${page.r_title}</td>

                                                </tr>
                                                <tr>
                                                    <th scope="row">책이름</th>
                                                    <td>${page.r_name}</td>

                                                </tr>
                                                <tr>
                                                    <th scope="row">작가명</th>
                                                    <td>${page.r_writer}</td>

                                                </tr>
                                                <tr>
                                                    <th scope="row">ISBN</th>
                                                    <td>${page.r_ISBN}</td>

                                                </tr>
                                                <tr>
                                                    <th scope="row">출판사</th>
                                                    <td>${page.r_publisher}</td>

                                                </tr>
                                                <tr>
                                                    <th scope="row">가격</th>
                                                    <td>${page.r_price}</td>

                                                </tr>
                                                <tr>
                                                    <td colspan="2"><b>사유</b><br>${page.r_content }</td>
                               

                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>

							</div>
						</div>
					</div>
<button type="button" class="btn btn-soft-primary mb-3 mr-3" onclick="go();" id="btn3">목록</button>
				</div>
			</div>
		</div>
		<%@ include file="footer.jsp"%>
	</div>
</div>
</html>
