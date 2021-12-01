<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>

<div class="content">
	<div class="py-4 px-3 px-md-4">

	<div class="row">
                <div class="col-12">
                    <div class="card mb-3 mb-md-4">
                        <div class="card-header">
                            <h5 class="font-weight-semi-bold mb-0">BOOK LIST</h5>
                        </div>

                        <div class="card-body pt-0">
                            <div class="table-responsive-xl">
                                <table class="table text-nowrap mb-0">
                                    <thead>
                                    <tr>
                                        <th class="font-weight-semi-bold border-top-0 py-2">#</th>
                                        <th class="font-weight-semi-bold border-top-0 py-2">name</th>
                                        <th class="font-weight-semi-bold border-top-0 py-2">category</th>
                                        <th class="font-weight-semi-bold border-top-0 py-2">writer</th>
                                        <th class="font-weight-semi-bold border-top-0 py-2">Status</th>
                                        <th class="font-weight-semi-bold border-top-0 py-2">Actions</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="bvo" items="${bookRegister }">
                                    <p><c:out value="${bvo.b_num}" /></p>
                                    

                                   
                                    <tr>
                                        <td class="py-3">${bvo.b_num}</td>
                                        <td class="py-3">
                                            <!-- <div class="text-muted">Acme Inc.</div> -->
                                            <div>${bvo.b_name }</div>
                                            <div class="book-img">
												<img src="${pageContext.request.contextPath }/resources/grains-master/public/img/book.PNG" alt="Graindashboard" style="width: 55px; height: 55px;"></a>
											</div>
                                        </td>
                                        <td class="py-3">${bvo.b_category }</td>
                                        <td class="py-3">${bvo.b_writer }</td>
                                        <td class="py-3">
                                            <span class="badge badge-pill badge-warning">OK</span>
                                        </td>
                                        <td class="py-3">
                                            <div class="position-relative">
                                                <a id="dropDown16Invoker" class="link-dark d-flex" href="#" aria-controls="dropDown16" aria-haspopup="true" aria-expanded="false" data-unfold-target="#dropDown16" data-unfold-event="click" data-unfold-type="css-animation" data-unfold-duration="300" data-unfold-animation-in="fadeIn" data-unfold-animation-out="fadeOut">
                                                    <i class="gd-more-alt icon-text"></i>
                                                </a>

                                                <ul id="dropDown16" class="unfold unfold-light unfold-top unfold-right position-absolute py-3 mt-1 unfold-css-animation unfold-hidden fadeOut" aria-labelledby="dropDown16Invoker" style="min-width: 150px; animation-duration: 300ms; right: 0px;">
                                                    <li class="unfold-item">
                                                        <a class="unfold-link media align-items-center text-nowrap" href="#">
                                                            <i class="gd-pencil unfold-item-icon mr-3"></i>
                                                            <span class="media-body">Edit</span>
                                                        </a>
                                                    </li>
                                                    <li class="unfold-item">
                                                        <a class="unfold-link media align-items-center text-nowrap" href="#">
                                                            <i class="gd-close unfold-item-icon mr-3"></i>
                                                            <span class="media-body">Delete</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                   
                                  
                                  
                                  
                                  
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
		
		
		
		
		
		
		<%@ include file="footer.jsp"%>
	</div>
</div>




