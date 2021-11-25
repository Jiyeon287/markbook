
//----------------------------- 회원가입 -----------------------------//
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
	    }
	).open({
		left: (window.screen.width / 2) - (width / 2),
	    top : (window.screen.height / 2) - (height / 2)
	});
}
 
function inpChk() {
	// 유효성 검사
	if(document.joinFr.m_id.value == "") {
		alert("아이디를 입력하세요.");
		return false;
	}
	if(document.joinFr.m_pw.value == "") {
		alert("비밀번호를 입력하세요.");
		return false;
	}
	if(document.joinFr.m_pw_chk.value == "") {
		alert("비밀번호를 입력하세요.");
		return false;
	}
	if(document.joinFr.m_pw.value != document.joinFr.m_pw_chk.value) {
		alert("비밀번호가 다릅니다.");
		return false;
	}
	if(document.joinFr.m_name.value == "") {
		alert("이름을 입력하세요.");
		return false;
	}
	if(document.joinFr.m_idnum1.value == "") {
		alert("주민등록번호를 입력하세요.");
		return false;
	}
	if(document.joinFr.m_idnum2.value == "") {
		alert("주민등록번호를 입력하세요.");
		return false;
	}
	if(document.joinFr.m_idnum1.value.length != 6 || document.joinFr.m_idnum2.value.length != 7) {
		alert("주민등록번호를 확인해 주세요.");
		return false;
	}
	if(document.joinFr.emailAddr.value == "") {
		alert("이메일 주소를 입력하세요.");
		return false;
	}
	if(document.joinFr.emailAddr.value.search("@") > 0) {
		alert("@없이 이메일만 적어주세요.");
		return false;
	}
	if(document.joinFr.domain.value == "none") {
		alert("도메인 주소를 선택하세요.");
		return false;
	}
	if (document.joinFr.m_phone.value == "") {
		alert("휴대폰 번호를 입력하세요.");
		return false;
	}
	if (document.joinFr.m_phone.value.search("-") > 0) {
		alert("-없이 숫자만 입력하세요.");
		return false;
	}
	if(document.joinFr.m_addr1.value == "" || document.joinFr.m_addr2.value == "") {
		alert("주소를 입력하세요.");
		return false;
	}
	if (document.joinFr.isCheck.value == "0") {
		alert("아이디 중복체크를 해주세요.");
		return false;
	}
	if (document.joinFr.isCheck.value == "1") {
		alert("중복된 아이디입니다.");
		return false;
	}
	
	// 이메일 주소 합치기
	var emailAddr = document.joinFr.emailAddr.value;
	var domainAddr = document.joinFr.domain.value;
	var realEmail = emailAddr+"@"+domainAddr;
		
	document.joinFr.m_email.value = realEmail;	
}
function duplicateCheck() {
	
	var id = document.joinFr.m_id.value;
	
	if (id == "") alert("아이디를 입력하세요.");
	else {
		$.ajax({
			url: "/markbook/mk_member/idchk",
			type: "post",
			dataType: "json",
			data: {"m_id" : id},
			success: function(data) {
				if(data > 0) {
					alert("중복된 아이디입니다.");
					$("#isCheck").attr("value","1");
					
				} else if (data == 0) {
					alert("사용 가능한 아이디입니다.");
					$("#isCheck").attr("value","2");
				}
			}
		})
	}
}

$(document).ready(function() {
	$('#addr').click(function() {
		findAddr();
	});
});


//----------------------------- 로그인 -----------------------------//

function loginChk() {
	if (document.loginFr.m_id.value == "") {
		alert("아이디를 입력하세요");
		return false;
	}
	if (document.loginFr.m_pw.value == "") {
		alert("비밀번호를 입력하세요");
		return false;
	}
}



