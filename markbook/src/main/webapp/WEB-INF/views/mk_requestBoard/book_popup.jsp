<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js" 
integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" 
crossorigin="anonymous"></script>
  
  
  
  
  <script type="text/javascript">
  $(document).ready(function () {
      $("#search").click(function () {
          $.ajax({
  method: "GET",
  url: "https://dapi.kakao.com/v3/search/book?target=title",
  data: { query:$("#bookName").val()},
  headers:{Authorization:" KakaoAK a3c8ac81507b278f06987e14e2f8c821"}
})
  .done(function( msg ) {
	console.log(msg.documents[0].title);
	console.log(msg.documents.length);
	
	
(for var i = 0; i <msg.documents.length; i++) {
	

	$( ".title" ).append(msg.documents[i].title);
	$( ".writer" ).append( msg.documents[i].authors );
	$( ".publisher" ).append(msg.documents[i].publisher);
// 	$( "td" ).append( "<img src='"+msg.documents[0].thumbnail+"'/>" );
}
      });
   });
      
  });

  </script>
  <html><head>
<link rel="stylesheet" type="text/css" href="/rfc3/user/domain/www.suyeong.go.kr~library.80/0/23.css"><!-- base -->
<link rel="stylesheet" type="text/css" href="/rfc3/user/domain/www.suyeong.go.kr~library.80/0/10.css"><!-- style -->
<link rel="stylesheet" type="text/css" href="/rfc3/user/domain/www.suyeong.go.kr~library.80/0/11.css"><!-- common -->
<link rel="stylesheet" type="text/css" href="/rfc3/user/domain/www.suyeong.go.kr~library.80/0/12.css"><!-- board -->
<style>
body{padding:20px}
.page a img{margin-top:13px}
.bbs_ltype tbody tr{cursor: pointer;}
</style>
<script type="text/javascript" src="/rfc3/user/domain/www.suyeong.go.kr~library.80/0/15.js"></script><!-- jquery-2.1.4 -->
<script type="text/javascript">
	function dataTransmission( title, author, pub, isbn, pub_date, price ) {
		var type = "";
		
		if( type == "local" ) {
			// 지역서점 희망대출
			opener.$('#tmpField4').attr("value", title);
			opener.$('#tmpField5').attr("value", author);
			opener.$('#tmpField6').attr("value", pub);
		} else  {
			// 비치희망도서
			opener.$('#r_name').attr("value", title);
			opener.$('#r_ISBN').attr("value", isbn);
			opener.$('#r_writer').attr("value", author);
			opener.$('#r_publisher').attr("value", pub);
			pub_date = pub_date.substring(0, 4);
			opener.$('#r_Publishing _date').attr("value", pub_date);
			opener.$('#r_price').attr("value", price);
		}
		
		window.close();
	}
	
	
	function fn_go_page(pageno){
		var frm = document.searchForm;
		frm.startPage.value = pageno;
		frm.submit();
	}


</script>
</head>
<body>
<div class="boardSearch">
	<fieldset>
		<legend>검색영역</legend>

		<input type="text" name="search_title" id="bookName" title="검색어 입력" value="" placeholder="도서명을 입력하세요.">
		<button id="search">검색</button>
	</fieldset>

</div>

<p class="boardPage">총 : <b>50</b>건, 페이지 : <b>1</b>/5</p>

<table class="bbs_ltype mt10">
	<colgroup>
		<col style="width:5%;">
		<col>
		<col style="width:30%;">
		<col style="width:12%;">
		<col style="width:8%;">
	</colgroup>
	<thead>
		<tr>
		
			<th scope="row">no</th>
			<th scope="row">도서명</th>
			<th scope="row">저자</th>
			<th scope="row">출판사</th>
			<th scope="row">출간일자</th>
		</tr>
	</thead>
	<tbody>

		
		<tr onclick="javascript:dataTransmission( '미움 일기장', '장희정 (지은이), 최정인 (그림)', '스콜라(위즈덤하우스)', '9788962474046', '2013-12-24', '10000' );">
			
			<td > </td>
			<td class="title"> </td>
			<td class="writer"></td>
			<td class="publisher"></td>
			<td>2013-12-24</td>
		</tr>

	</tbody>
</table>



<div class="page">
	<a href="javascript:void(0);" title="현재페이지" class="on">1</a><a href="javascript:fn_go_page(2)" title="2번재 페이지로 이동">2</a><a href="javascript:fn_go_page(3)" title="3번재 페이지로 이동">3</a><a href="javascript:fn_go_page(4)" title="4번재 페이지로 이동">4</a><a href="javascript:fn_go_page(5)" title="5번재 페이지로 이동">5</a> 
</div>


					 
                   


    
                                                                                                                                                                                                              
                             


</body></html>
</head>
  
<body>


<!-- <input id="bookName" value="" type="text"> -->
<!--     <button id="search">검색</button> -->
<p></p>

eeeeeeeee
f
</body>
</html>