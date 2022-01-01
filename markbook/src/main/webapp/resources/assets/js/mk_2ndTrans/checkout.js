
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
	} else{
		alert("주문에 성공했습니다.");
		document.bookcheckout.submit();
	} 
	
} // 주문등록 유효성 검사 끝
	
