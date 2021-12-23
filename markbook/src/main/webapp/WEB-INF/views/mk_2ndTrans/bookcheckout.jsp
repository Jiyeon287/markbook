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
                        <h2>Billing Details</h2>
                        <div class="col-md-12 form-group p_star">
                        </div>
                        <form action="" method="post" id="bookcheckout" name="bookcheckout">
                            <input type="hidden" value="${OrderInfo.b2_num }" name="order_b2_num">
                            <input type="hidden" value="${memberInfo.m_id }" name="order_id">
                           	<div class="creat_account">
                                    <h6>Recipient</h6>
                            </div>
                            <div class="col-md-12 form-group p_star">
                                <input type="text" class="form-control" placeholder="Name" 
                                	   id="order_name" name="order_name" value="${memberInfo.m_name }">
                            </div>
                            <div class="creat_account">
                                    <h6>Phone number</h6>
                            </div>
                            <div class="col-md-6 form-group p_star">
                                <input type="text" class="form-control" placeholder="Phone number" 
                                		id="order_phone" name="order_phone" value="${memberInfo.m_phone }">
                            </div>
                            <div class="creat_account">
                                    <h6>Address</h6>
                            </div>
                            <div class="col-md-12 form-group p_star">
                                <input type="text" class="form-control" placeholder="address1" 
                                id="order_addr1" name="order_addr1" value="${memberInfo.m_addr1 }">
                            </div>
                            <div class="col-md-12 form-group p_star">
                                <input type="text" class="form-control" placeholder="address2"  
                                id="order_addr2" name="order_addr2" value="${memberInfo.m_addr2 }">
                            </div>
                            <div class="col-md-12 form-group">
                                <div class="creat_account">
                                    <h2>Shipping Details</h2>
                                </div>
                        		<div class="col-md-12 form-group p_star">
                        		</div>
                        		<div class="creat_account">
                                    <h6>Shipping Request</h6>
                            	</div>
                                <textarea class="form-control" rows="1" name="order_msg" id="order_msg"></textarea>
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
                                <input type="checkbox" id="selector" name="selector">
                                <label for="f-option8">I’ve read and accept the  <a href="#">terms &amp; conditions*</a> </label>
                            </div>
                            <button class="btn w-100" onclick="Checkout()">Proceed to Checkout </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--End Checkout Area -->

</main>

<script>
//서브밋 함수
function Checkout() {
		
	if ($("#order_name").val() == "") {
		alert("이름을 입력해 주세요");
		$("#order_name").focus();
		return false;
	} else if ($("#order_phone").val() == "") {
		alert("전화번호를 입력해 주세요");
		$("#order_phone").focus();
		return false;
	} else if ($("#order_addr1").val() == "") {
		alert("기본주소를 입력해 주세요");
		$("#order_addr1").focus();
		return false;
	} else if ($("#order_addr2").val() == "") {
		alert("상세주소를 입력해 주세요");
		$("#order_addr2").focus();
		return false;
	} else if ($("#order_msg").val() == "") {
		alert("주문메세지를 입력해 주세요");
		$("#order_msg").focus();
		return false;
	} else if ($("#selector").val() == "") {
		alert("주문 조건에 동의해 주세요");
		$("#selector").focus();
		return false;
	} else{
		alert("주문에 성공했습니다.");
		document.bookcheckout.submit();
	} 
	
} // 주문등록 유효성 검사 끝

</script>
	

<%@ include file="../include/footer.jsp"%>