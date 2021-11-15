function findAddr(){
		// 주소 검색
		var width = 500; // 팝업 너비 / 높이
		var height = 600;
		
		new daum.Postcode({
			width: width,
        	height : height,
	        oncomplete: function(data) {
	        	// console.log(data);
	        	
	            var roadAddr = data.roadAddress; // 도로명 주소
	            var jibunAddr = data.jibunAddress; // 지번 주소
	            
	            if(roadAddr != '') document.getElementById("addr").value = roadAddr;
	            else if(jibunAddr != '') document.getElementById("addr").value = jibunAddr;
	        }
	    }).open({
	    	left: (window.screen.width / 2) - (width / 2),
	    	top : (window.screen.height / 2) - (height / 2)
	    });
}
 
 function inpChk() {
	// 유효성 검사
	if(document.joinFr.m_id.value == "") {
		alert("아이디를 입력하세요");
		return false;
	}
	if(document.joinFr.m_pw.value == "") {
		alert("비밀번호를 입력하세요");
		return false;
	}
	if(document.joinFr.m_pw_chk.value == "") {
		alert("비밀번호를 입력하세요");
		return false;
	}
	if(document.joinFr.m_pw.value != document.joinFr.m_pw_chk.value) {
		alert("비밀번호가 다릅니다");
		return false;
	}
	if(document.joinFr.m_name.value == "") {
		alert("이름을 입력하세요");
		return false;
	}
	if(document.joinFr.m_idnum1.value == "") {
		alert("주민등록번호를 입력하세요");
		return false;
	}
	if(document.joinFr.m_idnum2.value == "") {
		alert("주민등록번호를 입력하세요");
		return false;
	}
	if(document.joinFr.m_idnum1.value.length != 6 || document.joinFr.m_idnum2.value.length != 7) {
		alert("주민등록번호를 확인해 주세요");
		return false;
	}
	if(document.joinFr.emailAddr.value == "") {
		alert("이메일 주소를 입력하세요");
		return false;
	}
	if(document.joinFr.emailAddr.value.search("@") > 0) {
		alert("@없이 이메일만 적어주세요");
		return false;
	}
	if(document.joinFr.domain.value == "none") {
		alert("도메인 주소를 선택하세요");
		return false;
	}
	if(document.joinFr.m_addr1.value == "" || document.joinFr.m_addr2.value == "") {
		alert("주소를 입력하세요");
		return false;
	}
	
	var emailAddr = document.joinFr.emailAddr.value;
	var domainAddr = document.joinFr.domain.value;
	var realEmail = emailAddr+"@"+domainAddr;
	
	alert(realEmail);
	
}

$(document).ready(function() {
	$("#in").keyup(function() {
        $("#out").val($(this).val());
    });
    	
	$('#dom').on('change',function() {
		alert(this.value);
	
		$('#out').val(this.value);
		
	});
	
});