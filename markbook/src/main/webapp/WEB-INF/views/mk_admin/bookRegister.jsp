<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<form>
    <div class="form-group">
      <label for="exampleFormControlInput1">책이름</label>
      <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
    </div>
    <form>
    <div class="form-group">
      <label for="exampleFormControlFile1">사진</label>
      <input type="file" class="form-control-file" id="exampleFormControlFile1">
    </div>
  </form>
    <div class="form-group">
      <label for="exampleFormControlTextarea1">책내용</label>
      <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
    </div>
    <div class="form-group">
      <label for="exampleFormControlTextarea1">작가</label>
      <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
    </div>
    <div class="form-group">
      <label for="exampleFormControlTextarea1">출판사</label>
      <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
    </div>
    <div class="form-group">
      <label for="exampleFormControlSelect1">대출횟수</label>
      <select class="form-control" id="exampleFormControlSelect1">
        <option>1</option>
        <option>2</option>
        <option>3</option>
        <option>4</option>
        <option>5</option>
      </select>
    </div>
    <div class="form-group">
      <label for="exampleFormControlSelect2">현재수량</label>
      <select multiple class="form-control" id="exampleFormControlSelect2">
        <option>1</option>
        <option>2</option>
        <option>3</option>
        <option>4</option>
        <option>5</option>
      </select>
    </div>
   
   
  </form>





<%@ include file="footer.jsp" %>