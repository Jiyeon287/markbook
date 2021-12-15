<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>
.dropdown.dropdown-lg .dropdown-menu {
    margin-top: -1px;
    padding: 6px 20px;
}
.input-group-btn .btn-group {
    display: flex !important;
}
.btn-group .btn {
    border-radius: 0;
    margin-left: -1px;
}
.btn-group .btn:last-child {
    border-top-right-radius: 4px;
    border-bottom-right-radius: 4px;
}
.btn-group .form-horizontal .btn[type="submit"] {
  border-top-left-radius: 4px;
  border-bottom-left-radius: 4px;
}
.form-horizontal .form-group {
    margin-left: 0;
    margin-right: 0;
}
.form-group .form-control:last-child {
    border-top-left-radius: 4px;
    border-bottom-left-radius: 4px;
}

@media screen and (min-width: 768px) {
    #adv-search {
        width: 500px;
        margin: 0 auto;
    }
    .dropdown.dropdown-lg {
        position: static !important;
    }
    .dropdown.dropdown-lg .dropdown-menu {
        min-width: 500px;
    }
}

</style>
<script type="text/javascript">



function fun23(num){

    var pop = window.open("./request_adminpopup?r_num="+num,"신청결과","width=600,height=600, scrollbars=yes, resizable=yes"); 
//     alert(document.RForm.booook.value);

    pop.focus();
    
    }



</script>

<%@ include file="header.jsp"%>

<div class="content">
        <div class="py-4 px-3 px-md-4">
            <div class="card mb-3 mb-md-4">

                <div class="card-body">
                    <!-- Breadcrumb -->
                    <nav class="d-none d-md-block" aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="#"></a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">All Users</li>
                        </ol>
                    </nav>
                    <!-- End Breadcrumb -->

                    <div class="mb-3 mb-md-4 d-flex justify-content-between">
                        <div class="h3 mb-0">요청게시판</div>
                    </div>


                    <!-- Users -->
                    <div class="table-responsive-xl">
                        <table class="table text-nowrap mb-0">
                            <thead>
                            <tr>
                                <th class="font-weight-semi-bold border-top-0 py-2">No</th>
                                <th class="font-weight-semi-bold border-top-0 py-2">Name</th>
                                <th class="font-weight-semi-bold border-top-0 py-2">Book title</th>
                                <th class="font-weight-semi-bold border-top-0 py-2">ID</th>
                                <th class="font-weight-semi-bold border-top-0 py-2">Date</th>
                                <th class="font-weight-semi-bold border-top-0 py-2">Status</th>
                            </tr>
                            </thead>
                            <tbody>
             <c:forEach items="${list}" var="list">
                            <tr>
                                <td class="py-3">${list.r_num }</td>
                                <td class="align-middle py-3">
                                    <div class="d-flex align-items-center">
       
                                        <a href="./request_detail?r_num=${list.r_num }">${list.r_title }</a>
                                    </div>
                                </td>
                                <td class="py-3">${list.r_name }</td>
                                <td class="py-3">${list.r_id_num }</td>
                                <td class="py-3">${list.r_upload_date}</td>

                                <td class="py-3">
                         <c:choose >
                                    		<c:when test="${list.r_result == 0}"> <span class="badge badge-pill badge-success" onclick="fun23(${list.r_num })" style="cursor:pointer;">신청중</span></c:when>
                                    		<c:when test="${list.r_result == 1 }"> <span class="badge badge-pill badge-info" onclick="fun23(${list.r_num })" style="cursor:pointer;">처리중</span></c:when>
                                    		<c:when test="${list.r_result == 2 }"> <span class="badge badge-pill badge-danger" onclick="fun23(${list.r_num })" style="cursor:pointer;">취소됨</span></c:when>
                                    		<c:when test="${list.r_result == 3 }"> <span class="badge badge-pill badge-light" onclick="fun23(${list.r_num })" style="cursor:pointer;">완료</span></c:when>
                                    </c:choose>
                                    
                                    
                              
                                </td>
                            </tr>
                            </c:forEach>
                       
                            </tbody>
                        </table>
                        
                            <nav class="d-flex ml-md-auto d-print-none" aria-label="Pagination">
                            <ul class="pagination justify-content-end font-weight-semi-bold mb-0">
<c:if test="${page.prev}">
 <span>[ <a href="/board/listPage?num=${page.startPageNum - 1}">이전</a> ]</span>
</c:if>

<c:forEach begin="${page.startPageNum}" end="${page.endPageNum}" var="num">
 <span>
 
  <c:if test="${select != num}">
   <a href="/board/listPage?num=${num}">${num}</a>
  </c:if>    
  
  <c:if test="${select == num}">
   <b>${num}</b>
  </c:if>
    
 </span>
</c:forEach>

<c:if test="${page.next}">
 <span>[ <a href="/board/listPage?num=${page.endPageNum + 1}">다음</a> ]</span>
</c:if>
                        </ul>
                        </nav>
                        
                        
                        
                        
                        
                        
                        
                        
                    
                    </div>
                    </div>
                    </div>
                    </div>
                    </head>


<%@ include file="footer.jsp"%>
</html>
