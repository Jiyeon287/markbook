<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<form>
    <div class="form-group">
      <!-- <label for="exampleFormControlInput1">책이름</label> -->
      <strong class="d-block mb-1">책이름</strong>
      <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
    </div>
    
    <!-- <div class="alert alert-primary alert-left-bordered border-primary alert-dismissible d-flex p-3 p-md-4 mb-0 fade show" role="alert">
    <i class="gd-info-alt icon-text mr-2 mt-1" style="margin-top: 2px;"></i> -->

    <div>
      <strong class="d-block mb-1">카테고리</strong>
      <!-- <form class="mb-3"> -->
        <div class="form-check position-relative mb-2">
          <input type="checkbox" class="form-check-input d-none" id="check1">
          <label class="checkbox checkbox-xxs form-check-label ml-1" for="check1" data-icon="&#xe936">문학</label>
        </div>
        <div class="form-check position-relative mb-2">
          <input type="checkbox" class="form-check-input d-none" id="check1">
          <label class="checkbox checkbox-xxs form-check-label ml-1" for="check1" data-icon="&#xe936">비문학</label>
        </div>
        <div class="form-check position-relative mb-2">
          <input type="checkbox" class="form-check-input d-none" id="check1">
          <label class="checkbox checkbox-xxs form-check-label ml-1" for="check1" data-icon="&#xe936">자기계발</label>
        </div>
        <div class="form-check position-relative mb-2">
          <input type="checkbox" class="form-check-input d-none" id="check1">
          <label class="checkbox checkbox-xxs form-check-label ml-1" for="check1" data-icon="&#xe936">수험서</label>
        </div>
        <div class="form-check position-relative mb-2">
          <input type="checkbox" class="form-check-input d-none" id="check1">
          <label class="checkbox checkbox-xxs form-check-label ml-1" for="check1" data-icon="&#xe936">잡지</label>
        </div>
        <div class="form-check position-relative mb-2">
          <input type="checkbox" class="form-check-input d-none" id="check1">
          <label class="checkbox checkbox-xxs form-check-label ml-1" for="check1" data-icon="&#xe936">기타</label>
        </div>
      <!-- </form> -->
    </div>
    
    <div class="form-group">
      <!-- <label for="exampleFormControlFile1">이미지</label> -->
      <strong class="d-block mb-1">이미지</strong>
      <input type="file" class="form-control-file" id="exampleFormControlFile1">
    </div>
  </form>
  
  
    <form>
    <div class="form-group">
      <!-- <label for="exampleFormControlTextarea1">책내용</label> -->
      <strong class="d-block mb-1">책내용</strong>
      <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
    </div>
    <div class="form-group">
      <!-- <label for="exampleFormControlTextarea1">작가</label> -->
      <strong class="d-block mb-1">작가</strong>
      <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
    </div>
    <div class="form-group">
      <!-- <label for="exampleFormControlTextarea1">출판사</label> -->
      <strong class="d-block mb-1">출판사</strong>
      <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
    </div>
  </form>
  
  <form>
    <div class="form-group">
      <!-- <label for="exampleFormControlSelect1">대출횟수</label> -->
      <strong class="d-block mb-1">대출횟수</strong>
      <select class="form-control" id="exampleFormControlSelect1">
        <option>1</option>
        <option>2</option>
        <option>3</option>
        <option>4</option>
        <option>5</option>
      </select>
    </div>
    <div class="form-group">
      <!-- <label for="exampleFormControlSelect2">현재수량</label> -->
      <strong class="d-block mb-1">현재수량</strong>
      <select multiple class="form-control" id="exampleFormControlSelect2">
        <option>1</option>
        <option>2</option>
        <option>3</option>
        <option>4</option>
        <option>5</option>
      </select>
    </div>
    
    
     <div>
      <strong class="d-block mb-1">대출여부</strong>
        <div class="form-check position-relative mb-2">
          <input type="checkbox" class="form-check-input d-none" id="check1">
          <label class="checkbox checkbox-xxs form-check-label ml-1" for="check1" data-icon="&#xe936">가능</label>
        </div>
        
        <div class="form-check position-relative mb-2">
          <input type="checkbox" class="form-check-input d-none" id="check1">
          <label class="checkbox checkbox-xxs form-check-label ml-1" for="check1" data-icon="&#xe936">불가</label>
        </div>
      </form>
    </div>
   
   





<%@ include file="footer.jsp" %>