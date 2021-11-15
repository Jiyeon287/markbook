<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/header.jsp" %>
<style>
.box{
 width:80%;
 margin-left: 10%;
 margin-right: 10%;
}

.button{
margin-left: 45% 
}
</style>

<div class="box">
<div class="comment-form">
 <h4>RequestBoard</h4>
 <form class="form-contact comment_form" action="./add" id="commentForm" method="post">
 <input type="hidden" value="${r_num} " name="r_num">
  <input type="hidden" value="0" name="r_result">
 <div class="col-sm-4">
   <div class="form-group">
      <select name="r_category"  class="form-control"  id="r_category">
                  <option value="0">카테고리</option>
               <option value="novel ">문학</option>
               <option value="Nonnovel"> 비문학</option>
               <option value="Selfdevelopment"> 자기계발</option>
               <option value="study"> 수헙서</option>
               <option value="Magazine"> 잡지</option>
               <option value="other"> 기타</option>
               </select>
               </div>
 </div>

 <div class="col-sm-6">
  <div class="form-group">
   <input class="form-control" name="r_name" type="text" placeholder="책 이름">
 </div>
</div>

<div class="col-sm-6">
  <div class="form-group">
   <input class="form-control" name="r_writer" placeholder="작가이름">
 </div>
</div>

  <div class="row">
   <div class="col-12">
    <div class="form-group">
     <textarea class="form-control w-100" name="r_content" id="comment" cols="30" rows="9" placeholder="Write Comment"></textarea>
   </div>
 </div>
</div>

<div class="form-group">
 <button type="submit" class="button button-contactForm btn_1 boxed-btn">upload</button>
</div>
</form>
</div>
</div>

<%@ include file="../include/footer.jsp" %>
