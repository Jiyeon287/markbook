<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<body>
<main class="content">
				<div class="container-fluid p-0">

					<div class="mb-3">
						<h1 class="h3 d-inline align-middle">도서 등록</h1>
					</div>
					<div class="row">
						<div class="col-12 col-lg-6">
							<div class="card">
								<div class="card-header">
									<h5 class="card-title mb-0">책 이름</h5>
								</div>
								<div class="card-body">
									<input type="text" class="form-control" placeholder="이름">
								</div>
								<div class="card-header">
									<h5 class="card-title mb-0">작가</h5>
								</div>
								<div class="card-body">
									<input type="text" class="form-control" placeholder="작가">
								</div>
								<div class="card-header">
									<h5 class="card-title mb-0">출판사</h5>
								</div>
								<div class="card-body">
									<input type="text" class="form-control" placeholder="출판사">
								</div>
							</div>

							

				<div class="card">
								<div class="card-header">
									<h5 class="card-title mb-0">카테고리</h5>
								</div>
								<div class="card-body">
									<div>
			<label class="form-check">
            	<input class="form-check-input" type="radio" value="option1" name="radios-example" checked="">
            	<span class="form-check-label">
              		문학
            	</span>
          	</label>
          	
          	<label class="form-check">
            	<input class="form-check-input" type="radio" value="option1" name="radios-example" checked="">
            	<span class="form-check-label">
              		비문학
            	</span>
          	</label>
          	
          	<label class="form-check">
            	<input class="form-check-input" type="radio" value="option1" name="radios-example" checked="">
            	<span class="form-check-label">
              		자기계발
            	</span>
          	</label>
          	
          	<label class="form-check">
            	<input class="form-check-input" type="radio" value="option1" name="radios-example" checked="">
            	<span class="form-check-label">
              		수험서
            	</span>
          	</label>
          	
          	<label class="form-check">
            	<input class="form-check-input" type="radio" value="option1" name="radios-example" checked="">
            	<span class="form-check-label">
              		잡지
            	</span>
          	</label>
          	
          	<label class="form-check">
            	<input class="form-check-input" type="radio" value="option1" name="radios-example" checked="">
            	<span class="form-check-label">
              		기타
            	</span>
          	</label>
									</div>
								</div>
							</div>

			<div class="card">
								<div class="card-header">
									<h5 class="card-title mb-0">책 내용</h5>
								</div>
								<div class="card-body">
									<textarea class="form-control" rows="2" placeholder="내용"></textarea>
								</div>
							</div>




							

							<div class="card">
								<div class="card-header">
									<h5 class="card-title mb-0">Read only</h5>
								</div>
								<div class="card-body">
									<input class="form-control" type="text" placeholder="Readonly input" readonly="">
								</div>
							</div>
						</div>

						<div class="col-12 col-lg-6">
			<div class="card">
								<div class="card-header">
									<h5 class="card-title mb-0">대출여부</h5>
								</div>
								<div class="card-body">
									<div>
										<label class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="inline-radios-example" value="option1">
            <span class="form-check-label">
              가능
            </span>
          </label>
          <label class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="inline-radios-example" value="option1">
            <span class="form-check-label">
              불가능
            </span>
          </label>
									</div>
								</div>
							</div>
							
							
							<div class="card">
								<div class="card-header">
									<h5 class="card-title mb-0">등록일</h5>
								</div>
								<label><input type="date"></label>
							</div>
							
							<div class="card">
								<div class="card-header">
									<h5 class="card-title mb-0">대출횟수</h5>
								</div>
								<label><input type="number"></label>
							</div>
							
							<div class="card">
								<div class="card-header">
									<h5 class="card-title mb-0">현재수량</h5>
								</div>
								<label><input type="number"></label>
							</div>
							
							

							<div class="card">
								<div class="card-header">
									<h5 class="card-title mb-0">Selects</h5>
								</div>
								<div class="card-body">
									<select class="form-select mb-3">
          <option selected="">Open this select menu</option>
          <option>One</option>
          <option>Two</option>
          <option>Three</option>
        </select>

									<select multiple="" class="form-control">
          <option>One</option>
          <option>Two</option>
          <option>Three</option>
          <option>Four</option>
        </select>
								</div>
							</div>

						</div>
					</div>

				</div>
			</main>
		</body>







<%@ include file="footer.jsp" %>