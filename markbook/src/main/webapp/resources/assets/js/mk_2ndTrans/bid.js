
/* 중고책 입찰 입력값 체크*/

function registerCheck() {

	var bid_price = $("#bid_price").val();
	var b2_price = Number($("#b2_highestprice").val());

	if ($("#bid_price").val() == "") {
		alert("입찰 가격을 입력창에 입력해 주세요");
		$("#bid_price").focus();
		return false;
	} else if (bid_price < b2_price) {
		alert("현재 최고가 보다 높은 입찰 가격을 입력해 주세요");
		$("#bid_price").focus();
		return false;
	} else {
		alert("입찰에 성공했습니다.");
		document.registerform.submit();
	}

}



