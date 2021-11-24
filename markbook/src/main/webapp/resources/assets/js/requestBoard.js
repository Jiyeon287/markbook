
 
 function check() {
	// 유효성 검사
	if(document.RForm.r_title.value == "") {
		alert("글제목을 입력하세요");
		RequestForm.r_title.focus();
		return false;
}

if(document.RForm.r_category.value =="0"){
	alret("카테고리를 선택하세요.");
	return false;
	
}

}