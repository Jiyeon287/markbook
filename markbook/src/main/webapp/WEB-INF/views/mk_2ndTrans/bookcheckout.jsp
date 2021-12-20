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
                            <h2>Check Out</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div> 
    </div>
    <!--  Hero area End -->

    <!--? Checkout Area Start-->
    <section class="checkout_area section-padding">
        <div class="container">
            <div class="billing_details">
                <div class="row">
                    <div class="col-lg-8">
                        <h3>Billing Details</h3>
                        <form class="row contact_form" action="#" method="post" novalidate="novalidate">
                            <div class="col-md-12 form-group p_star">
                                <input type="text" class="form-control" placeholder="Name" 
                                	   id="m_name" name="m_name" value="${memberInfo.m_name }">
                            </div>
                            <div class="col-md-6 form-group p_star">
                                <input type="text" class="form-control" placeholder="Phone number" 
                                		id="number" name="number" value="${memberInfo.m_phone }">
                            </div>
                            <div class="col-md-12 form-group p_star">
                                <input type="text" class="form-control" placeholder="address1" 
                                id="add1" name="add1" value="${memberInfo.m_addr1 }">
                            </div>
                            <div class="col-md-12 form-group p_star">
                                <input type="text" class="form-control" placeholder="address2"  
                                id="add2" name="add2" value="${memberInfo.m_addr2 }">
                            </div>
                            <div class="col-md-12 form-group">
                                <div class="creat_account">
                                    <h3>Shipping Details</h3>
                                </div>
                                <textarea class="form-control" style="resize: none;" name="message" id="message" rows="100" placeholder="배송 요청사항"></textarea>
                            </div>
                        </form>
                    </div>
                    <div class="col-lg-4">
                        <div class="order_box">
                            <h2>Your Order</h2>
                            <ul class="list">
                                <li>
                                    <a href="#">Product<span>Price</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#"> ${OrderInfo.b2_title } 
                                        <span class="last">₩ ${OrderInfo.b2_highestprice }</span>
                                    </a>
                                </li>
                            </ul>
                            <ul class="list list_2">
                                <li>
                                    <a href="#">Total<span>₩ ${OrderInfo.b2_highestprice }</span>
                                    </a>
                                </li>
                            </ul>
                            <div class="payment_item">
                                <div class="radion_btn">
                                    <input type="radio" id="f-option5" name="selector">
                                    <label for="f-option5">Check payments</label>
                                    <div class="check"></div>
                                </div>
                                <p> Please send a check to Store Name, Store Street, Store Town, Store State / County, Store Postcode. </p>
                            </div>
                            <div class="payment_item active">
                                <div class="radion_btn">
                                    <input type="radio" id="f-option6" name="selector">
                                    <label for="f-option6">Paypal </label>
                                    <img src="assets/img/gallery/card.jpg" alt="">
                                    <div class="check"></div>
                                </div>
                                <p> Please send a check to Store Name, Store Street, Store Town, Store State / County, Store Postcode. </p>
                            </div>
                            <div class="creat_account checkout-cap">
                                <input type="checkbox" id="f-option8" name="selector">
                                <label for="f-option8">I’ve read and accept the  <a href="#">terms &amp; conditions*</a> </label>
                            </div>
                            <a class="btn w-100" href="#">Proceed to Paypal</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--End Checkout Area -->

</main>
	

<%@ include file="../include/footer.jsp"%>