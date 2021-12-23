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

.mmbox{
width: 90%;
margin-left: 5%;
}
.ssbox{
margin-left: 30%;
}
</style>
<script type="text/javascript">



function fun23(num){

    var pop = window.open("./request_adminpopup?r_num="+num,"신청결과","width=600,height=600, scrollbars=yes, resizable=yes"); 
//     alert(document.RForm.booook.value);

    pop.focus();
    
    }


function btn23(){

   
var searchType = document.getElementsByName("searchType")[0].value;
var keyword =  document.getElementsByName("keyword")[0].value;
 
 location.href = "./request_list?pgnum=1" + "&searchType=" + searchType + "&keyword=" + keyword;
};


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
                        <div class="h3 mb-0">요청게시판 </div>
                    </div>
<!----------------------------------------- 검색창--------------------------------------------------->
<div class="tab-content bg-lighter" id="pills-tabContent-7-3">
                                    <div class="tab-pane fade p-4 show active" id="pills-result-7-3" role="tabpanel" aria-labelledby="pills-result-tab-7-3">
 <div>
 <table class="mmbox">
<tr>
<td style="width:20%; ">
 <select class="form-control" id="exampleFormControlSelect1" name="searchType">

                                                    <option value="r_name" <c:if test="${page.searchType eq 'r_name'}">selected</c:if>>책이름</option>
                                                    <option value="r_title" <c:if test="${page.searchType eq 'r_title'}">selected</c:if>>제목</option>
                                                    <option value="r_id"<c:if test="${page.searchType eq 'r_id'}">selected</c:if>>id</option>
                                                </select>
                                                
                                                </td>
                                                <td  style="width:50%; ">
                                        <div class="input-group">
                                            <div class="input-group-append">
                                            
                                                <i class="gd-search icon-text icon-text-sm" onclick="btn23()"></i>
                                            </div>
                                            <input class="form-control form-control-icon-text" placeholder="Search" type="text" name="keyword" value=${page.keyword}>
                                        </div>
                           
                                    <div class="tab-pane fade" id="pills-html-7-3" role="tabpanel" aria-labelledby="pills-html-tab-7-3" >
                                    </div>
                                    </td>
                                    </tr>
                                            </table>
                                            </div>
                                            <br>
</div>
</div>
<br>

<!----------------------------------------- 검색창--------------------------------------------------->
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
                                <th class="font-weight-semi-bold border-top-0 py-2">
                                <select class="form-control" id="exampleFormControlSelect1">
                                <option>상태</option>
                                <option>신청중</option>
                                <option>처리중</option>
                                <option>취소됨</option>
                                <option>완료됨</option>
                                </select>
                                </th>
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
                                    		<c:when test="${list.r_result == 3 }"> <span class="badge badge-pill badge-light" onclick="fun23(${list.r_num })" style="cursor:pointer;">완료됨</span></c:when>
                                    </c:choose>
                                    
                                    
                              
                                </td>
                            </tr>
                            </c:forEach>
                       
                            </tbody>
                        </table>
                        
  <nav class="d-flex ml-md-auto d-print-none" aria-label="Pagination">
 <ul class="pagination justify-content-end font-weight-semi-bold mb-0">	
 			<li class="page-item">					                       
<c:if test="${page.prev}">
  <a href="./request_list?pgnum=${page.startPageNum - 1}${page.searchTypeKeyword}" id="datatablePaginationPrev" class="page-link" aria-label="Previous">
  <i class="gd-angle-left icon-text icon-text-xs d-inline-block"></i></a> 
  
</c:if>

<c:forEach begin="${page.startPageNum}" end="${page.endPageNum}" var="num">

 <li class="page-item d-none d-md-block">
  <c:if test="${select != num}">
   <a href="./request_list?pgnum=${num}${page.searchTypeKeyword}" id="datatablePagination1" class="page-link">${num}</a>
  </c:if>    
  </li>
  
  <li class="page-item d-none d-md-block">
  <c:if test="${select == num}">
   <b id="datatablePagination2" class="page-link">${num}</b>   
  </c:if>
   </li> 
   

</c:forEach>

<c:if test="${page.next}">
<li class="page-item">
 <a href="./request_list?pgnum=${page.endPageNum + 1}${page.searchTypeKeyword}" id="datatablePaginationNext"class="page-link active"aria-label="Next">
 <i class="gd-angle-right icon-text icon-text-xs d-inline-block"></i></a>
 </li>
</c:if>

                  </li>
                  </ul>
                  </nav>
                        
                        </div>
                        </div>
                        </div>
                        </div>
                        </div>
                        
                        
                        
                        



<%@ include file="footer.jsp"%>
</html>
