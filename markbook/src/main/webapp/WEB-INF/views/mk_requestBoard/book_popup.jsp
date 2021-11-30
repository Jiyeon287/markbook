<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath }/resources/assets/img/icon/favicon.png">

	<!-- CSS here -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/owl.carousel.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/slicknav.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/animate.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/price_rangs.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/magnific-popup.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/fontawesome-all.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/themify-icons.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/slick.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/nice-select.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/style.css">





<meta charset="UTF-8">
<title>Insert title here</title>



<!-- <div class="blog_right_sidebar"> -->
<!--                         <aside class="single_sidebar_widget search_widget"> -->
                            
<!--                                 <div class="form-group m-0"> -->
<!--                                     <div class="input-group"> -->
<!--                                         <input type="text" class="form-control"  id="query" name="Search"> -->
                               
<!--                                             <button class="boxed-btn2" id="search">Search</button> -->
<!--                                         </div> -->
<!--                                     </div> -->
                               
                           
<!--                         </aside> -->
                  
<!--                     </div> -->

    <input type="text" id="query" name="Search">
    <button id="search">검색</button>nnnn
 
<!--     <div></div> -->
<span></span>


 <script type="text/javascript">

 
//  var title;
 var publisher;
 var price;
 var authors
 var ISBN;

	function data(title,ISBN,publisher,authors,price){	
			

				// 비치희망도서
				
		 window.opener.RForm.r_price.value = price;
		 window.opener.RForm.r_name.value = title;
		 window.opener.RForm.r_ISBN.value = ISBN;
		 window.opener.RForm.r_writer.value = authors;
		 window.opener.RForm.r_publisher.value = publisher;
		 window.opener.document.RForm.booook.value ="1";
		 
// 			  window.opener.document.getElementById('#r_price').value =price;
// 				opener.$('#r_price').attr(price);
// 				opener.$('#r_ISBN').attr("value", isbn);
// 				opener.$('#r_writer').attr("value", author);
// 				opener.$('#r_publisher').attr("value", pub);
// 				pub_date = pub_date.substring(0, 4);
// 				opener.$('#r_Publishing _date').attr("value", pub_date);
// 				opener.$('#r_price').attr("value", price);
// 		alert("되냐");
		
			window.close();

		}
		
 
 </script>
    <script src="https://code.jquery.com/jquery-3.6.0.js"
        integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
 
    <script>
        $(document).ready(function () {
            var pageNum = 1;
 
            $("#search").click(function () {
                $("div").html("");
 
                $.ajax({
                    method: "GET",
                    url: "https://dapi.kakao.com/v3/search/book?target=title",
                    data: { query: $("#query").val(), page: pageNum},
                    headers: {Authorization: "KakaoAK a3c8ac81507b278f06987e14e2f8c821"} // ########부분에 본인의 REST API 키를 넣어주세요.
 
                })
                .done(function (msg) {
                    console.log(msg);
                    
                    for (var i = 0; i < 10; i++){
                
                    	var title =msg.documents[i].title;
                    	var publisher =msg.documents[i].publisher;
                    	var price =msg.documents[i].price;
                    	var authors =msg.documents[i].authors;
                    	var ISBN =msg.documents[i].isbn;
                    	var thumbnail=msg.documents[i].thumbnail;
                    	
//                     	$("div").append('<a href="\javascript:data('+"'"+title +"'"+','+"'"+ISBN +"'"+');\">'+title +"</a>");
                    	$("span").append('<a href="\javascript:data('+"'"+title +"'"+','+"'"+ISBN +"'"+','+"'"+publisher +"'"+','+"'"+authors +"'"+','+"'"+price +"'"+');\">'+ title +"</a>");
                    	
                    	
                        $("span").append("<strong>출판사:</strong> " + publisher + "<br>");
                        $("span").append("<strong>요약:</strong> " + msg.documents[i].contents + "...<br>");
                        $("span").append("<strong>ISBN:</strong> " + msg.documents[i].isbn + "...<br>");
                        $("span").append("<img src='" + thumbnail + "' /><br>");
                        
                    }
                });
            })
 
            $(window).scroll(function(){  
 
                if ( Math.ceil($(window).scrollTop()) + $(window).height() >= $(document).height() ){
                    pageNum++;
 
 
                    $.ajax({
                        method: "GET",
                        url: "https://dapi.kakao.com/v3/search/book?target=title",
                        data: { query: $("#query").val(),  page: pageNum},
                        headers: {Authorization: "KakaoAK a3c8ac81507b278f06987e14e2f8c821"} // ########부분에 본인의 REST API 키를 넣어주세요.
 
                    })
                    .done(function (msg) {
                        console.log(msg);
                        for (var i = 0; i < 10; i++){
                           	var title =msg.documents[i].title;
                        	var publisher =msg.documents[i].publisher;
                        	var price =msg.documents[i].price;
                        	var authors =msg.documents[i].authors;
                        	var ISBN =msg.documents[i].isbn;
                        	var thumbnail=msg.documents[i].thumbnail
                        	
                        	
                          	 $("span").append("<h2><a  href=\'javascript:data("+ title +");\'>"+ title +"</a></h2>");
                            $("span").append("<strong>출판사:</strong> " + publisher + "<br>");
                            $("span").append("<strong>요약:</strong> " + msg.documents[i].contents + "...<br>");
                            $("span").append("<img src='" + thumbnail + "' /><br>");
                            $("span").append("<img src='" + thumbnail + "' /><br>");
                        }
                    });
 
                }
                
            });
        })
 
        
    </script>
f
</body>
</html>