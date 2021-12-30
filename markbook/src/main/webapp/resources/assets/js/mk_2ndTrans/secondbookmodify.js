
/* 중고책 판매수정 입력값 체크*/

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

// 이미지 업데이트
$("input[type='file']").on("change", function() {

	let formData = new FormData();
	let fileInput = $("input[name='b2_image']");
	let fileList = fileInput[0].files;
	let fileObj = fileList[0];

	if (!fileCheck(fileObj.name, fileObj.size)) {
		return false;
	}

	formData.append("b2_image", fileObj);

	$.ajax({
		url: '/markbook/mk_2ndTrans/imgregister',
		processData: false,
		contentType: false,
		data: formData,
		type: 'POST',
		dataType: 'json'
	});
});

/* 사진 업로드 유효성 검사 */
let regex = new RegExp("(.*?)\.(jpg|png|jpeg|JPG)$");
let maxSize = 1048576; //10MB	

function fileCheck(fileName, fileSize) {

	if (fileSize >= maxSize) {
		alert("파일 사이즈 초과");
		return false;
	}
	if (!regex.test(fileName)) {
		alert("해당 종류의 파일은 업로드할 수 없습니다.");
		return false;
	}
	return true;
}


