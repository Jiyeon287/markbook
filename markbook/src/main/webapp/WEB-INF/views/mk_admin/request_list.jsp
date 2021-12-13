<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


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
<c:if test="${pageMaker.prev}">
<li class="page-link active">
<a href="./request_list?pgnum=${pageMaker.startPage - 1}${searchTypeKeyword}" >
 <span aria-hidden="true">
       <span class="lnr lnr-chevron-left"></span>
       </span>
       </a> 
       </li>
</c:if>

<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="num">
  <li class="page-item">
 
  <c:if test="${pgnum != num}">
   <a href="./request_list?pgnum=${num}${searchTypeKeyword}"  class="page-link">${num}</a>

  </c:if>    
  </li>
  <c:if test="${pgnum == num}">
   <li class="page-item">
   
   <b>${num}</b>
  </c:if>
    

</c:forEach>
<c:if test="${pageMaker.next}">
<li class="page-item">
<a href="./request_list?pgnum=${pageMaker.endPage + 1}${searchTypeKeyword}" class="page-link" aria-label="Next">
   <span aria-hidden="true">
 <span class="lnr lnr-chevron-right"></span>
 </span>
 </a> 
 </li>
</c:if>
                        </ul>
                        </nav>
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        <div class="card-footer d-block d-md-flex align-items-center d-print-none">
                            <div class="d-flex mb-2 mb-md-0">Showing 1 to 8 of 24 Entries</div>

                            <nav class="d-flex ml-md-auto d-print-none" aria-label="Pagination">
                            <ul class="pagination justify-content-end font-weight-semi-bold mb-0">
                            				<li class="page-item">			
                            					<a id="datatablePaginationPrev" class="page-link" href="#!" aria-label="Previous">
                            					<i class="gd-angle-left icon-text icon-text-xs d-inline-block"></i></a>		
                            							</li><li class="page-item d-none d-md-block"><a id="datatablePaginationPage0" class="page-link active" href="#!" data-dt-page-to="0">1</a></li>
                            							<li class="page-item d-none d-md-block"><a id="datatablePagination1" class="page-link" href="#!" data-dt-page-to="1">2</a></li>
                            							<li class="page-item d-none d-md-block"><a id="datatablePagination2" class="page-link" href="#!" data-dt-page-to="2">3</a></li>
                            							<li class="page-item">				<a id="datatablePaginationNext" class="page-link" href="#!" aria-label="Next">
                            							<i class="gd-angle-right icon-text icon-text-xs d-inline-block"></i></a>
                            		</li>
                        		</ul>
                        		</nav>
                        </div>
                    </div>
                    </div>
                    </div>
                    </div>
                    </div>
                    </head>


<%@ include file="footer.jsp"%>
</html>
