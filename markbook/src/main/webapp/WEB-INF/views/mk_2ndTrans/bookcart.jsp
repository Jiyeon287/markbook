<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>

<main>
    <!-- Hero area Start-->
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="slider-area">
                    <div class="slider-height2 slider-bg5 d-flex align-items-center justify-content-center">
                        <div class="hero-caption hero-caption2">
                            <h2>Cart</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div> 
    </div>
    <!--  Hero area End -->
    <!--================Cart Area =================-->
    <section class="cart_area section-padding">
        <div class="container">
            <div class="cart_inner">
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">Product</th>
                                <th scope="col">Price</th>
                                <th scope="col">Quantity</th>
                                <th scope="col">Total</th>
                            </tr>
                        </thead>
                        <c:forEach var="cvo" items="${cartList }">
                        <tbody>
                            <tr>
                                <td>
                                    <div class="media">
                                        <div class="d-flex">
                                            <img src="${pageContext.request.contextPath}/resources/upload/${cvo.b2_image}" alt="">
                                        </div>
                                        <div class="media-body">
                                            <p>${cvo.b2_title }</p>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <h5>${cvo.b2_highestprice }</h5>
                                </td>
                                <td>
                                    <div class="product_count">
                                        <span class="input-number-decrement"> <i class="ti-minus"></i></span>
                                        <input class="input-number" type="text" value="1" min="0" max="10">
                                        <span class="input-number-increment"> <i class="ti-plus"></i></span>
                                    </div>
                                </td>
                                <td>
                                    <h5>${cvo.b2_highestprice }</h5>
                                </td>
                                <td>
                                     <a class="btn checkout_btn" href="/markbook/mk_2ndTrans/bookcheckout">checkout</a>
                                </td>
                            </tr>
                            </c:forEach>
                            <tr>
                                <td></td>
                                <td></td>
                                <td>
                                    <h5>Subtotal</h5>
                                </td>
                                <td>
                                    <h5>$2160.00</h5>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="checkout_btn_inner float-right">
                        <a class="btn" href="/markbook/mk_2ndTrans/booklist">Continue Shopping</a>
                        <a class="btn checkout_btn" href="/markbook/mk_2ndTrans/bookcheckout">Proceed to checkout</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================End Cart Area =================-->
</main>
	

<%@ include file="../include/footer.jsp"%>