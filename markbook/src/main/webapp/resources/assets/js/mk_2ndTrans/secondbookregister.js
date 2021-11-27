
/* 중고책 판매등록 입력값 체크*/

function regiChk() {
	
	// 가격 검사	
	if (!(document.bookRegister.b2_price.value >= 0 && document.bookRegister.b2_price.value < 999999)) {
		alert("가격 입력이 올바르지 않습니다. 100만원 이내의 가격을 입력해주세요.");
		return false;
	}

	// 사진 입력 검사
	if (document.bookRegister.b2_image.value == ''){
		alert("사진을 입력해주세요");
		return false;
	}
	
	// 카테고리 검사
	if (document.bookRegister.b2_category.value == ''){
		alert("카테고리를 골라주세요");
		return false;
	}
	
    // 상품 상태 검사
	if (document.bookRegister.b2_status.value == ''){
		alert("상품 상태를 골라주세요");
		return false;
	}

}

/* 중고책 등록 이미지 업로드 */
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