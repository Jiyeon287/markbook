
 
 function check() {
	// 유효성 검사
	if(document.RForm.r_title.value == "") {
		alert("글제목을 입력하세요");
			
		return false;
}


	if(document.RForm.booook.value == "0") {
		alert("책 검색을 해주세요.");
			
		return false;
}
	if(document.RForm.r_content.value == "") {
		alert("사유를 입력해주세요.");
			
		return false;
}


}

    var path = "${pageContext.request.contextPath }";
 
    $(function(){
        $("#resTb tbody").append($("#resInfoTr").html());


    });

//    function OpenPopup(){
//	alert("팝업창 확인");
//        var pop = window.open("book_popup","book_popup","width=1100,height=900, scrollbars=yes, resizable=yes"); 
//        pop.focus();
//    }
