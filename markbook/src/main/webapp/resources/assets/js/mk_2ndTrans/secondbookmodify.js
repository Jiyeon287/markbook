
/* 중고책 판매등록 입력값 체크*/

function modiChk() {
	
	// 가격 검사	
	if (!(document.bookModify.b2_startprice.value >= 0 && document.bookModify.b2_startprice.value <= 1000000)) {
		alert("가격 입력이 올바르지 않습니다. 100만원 이내의 가격을 입력해주세요.");
		return false;
	}
	
	// 카테고리 검사
	if (document.bookModify.b2_category.value == ''){
		alert("카테고리를 골라주세요");
		return false;
	}
	
    // 상품 상태 검사
	if (document.bookModify.b2_bookstatus.value == ''){
		alert("상품 상태를 골라주세요");
		return false;
	}

}
