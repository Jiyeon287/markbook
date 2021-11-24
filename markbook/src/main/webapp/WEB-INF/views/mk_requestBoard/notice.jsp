<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/header.jsp" %>

<!-- css -->

    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/requestBoard.css">



<!-- ================ start banner area ================= -->
<div class="container">
			<div class="row">
				<div class="col-xl-12">
					<div class="slider-area">
						<div class="slider-height2 slider-bg5 d-flex align-items-center justify-content-center">
							<div class="hero-caption hero-caption2">
								<h2>Apply for the desired book</h2>
							</div>
						</div>
					</div>
				</div>
			</div> 
		</div>
<!-- ================ end banner area ================= -->

<!-- ================ start button area ================= -->

<div class="box">
<div class="comment-form">
<div class="middle">
<a href="./notice" class="genric-btn primary e-large">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;희망도서 신청 안내 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>

<a href="./add" class="genric-btn primary-border e-large">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;희망도서 신청 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
</div>
</div>

<!-- ================ end button area ================= -->

<h3>비치희망도서신청 안내</h3>

<br>

<h4>이용대상</h4>
마크북 회원 

<h4>신청방법</h4>
마크북 홈페이지 [※ 공공도서관 통합회원 가입시 만드신 아이디와 비밀번호 사용]
<br>
1인당 10일동안 3권 이내 신청 가능합니다.
<br>
<h4>신청요건</h4>
마크북 회원이며 도서연체로 인한 대출정지가 아닌 회원. 단, 우선대출기간(3일) 내 3회 이상 미수령 시 3개월간 신청제한
<br>
<h4>대출방법</h4>

신청도서 도착 알림(SMS) 받은 후 우선대출 기간(3일) 내 회원카드 본인 소지하여 방문
처리방법 안내 : 홈페이지 '내서재'에서 진행상태 확인 가능
신청중 : 신청자 입력, 담당자 확인중
처리중 : 선정 확정, 구입 예정 (품절·정기구입·소장중 등의 사유로 취소될 수 있음)
취소됨 : 선정 제외, 희망도서명 클릭하면 취소사유 확인 가능
소장도서 : 입수되어 비치됨, 문자알림 서비스 완료
<br>
<h4>비치희망도서 신청 제외도서</h4>
품절 및 절판된 도서소장 도서 및 정리 중인 도서이용자가 입력한 서지정보가 불명확한 경우지나친 고가도서(5만원 이상)3권 이상의 시리즈,
 전집류(정기도서 구입 시 심의)신문,
  잡지 등의 연속간행물개인적인 수험서, 
  자격증, 학습서, 문제집, 참고자료발행년도 5년이상 지난 도서 (단, 컴퓨터도서는 2년)상업적인 영리를 위해 개인이나 단체가 신청한 자료최신판이 소장되어있음에도 구판을 신청한 경우만화(우수 교양만화 예외),
   로맨스, 환타지, 인터넷 소설류 등해외주문도서, 
   원서 등스프링 제본 등 규격 외 판형자료, POD(주문제작)도서특정주제분야, 특정출판사, 
   특정종교 등 집중적으로 신청한 경우어린이 및 청소년에게 유해하다고 판단되는 도서그밖에 도서관 장서로 부적합한 도서
							
<br>
</div>
<%@ include file="../include/footer.jsp" %>