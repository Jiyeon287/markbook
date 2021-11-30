<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<meta charset="UTF-8">
<title>Insert title here</title>

    <input type="text" id="query">
    <button id="search">검색</button>
 
    <div></div>
 <script type="text/javascript">

 
//  var title;
 var publisher;
 var price;
 var authors
 var ISBN;

	function data(a){	
			
            alert(a);
				// 비치희망도서
				if(price){
					window.opener.RForm.r_price.value = price;
// 			  window.opener.document.getElementById('#r_price').value =price;
// 				opener.$('#r_price').attr(price);
// 				opener.$('#r_ISBN').attr("value", isbn);
// 				opener.$('#r_writer').attr("value", author);
// 				opener.$('#r_publisher').attr("value", pub);
// 				pub_date = pub_date.substring(0, 4);
// 				opener.$('#r_Publishing _date').attr("value", pub_date);
// 				opener.$('#r_price').attr("value", price);
		alert("되냐");
				}
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
                    	
                    	
                     	 $("div").append("<a href='\javascript:data("+'한글'+");\'>"+title +"</a>");
                        $("div").append("<strong>출판사:</strong> " + publisher + "<br>");
                        $("div").append("<strong>요약:</strong> " + msg.documents[i].contents + "...<br>");
                        $("div").append("<strong>ISBN:</strong> " + msg.documents[i].isbn + "...<br>");
                        $("div").append("<img src='" + thumbnail + "' /><br>");
                        
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
                        	
                        	
                          	 $("div").append("<h2><a  href=\'javascript:data("+ title +");\'>"+title +"</a></h2>");
                            $("div").append("<strong>출판사:</strong> " + publisher + "<br>");
                            $("div").append("<strong>요약:</strong> " + msg.documents[i].contents + "...<br>");
                            $("div").append("<img src='" + thumbnail + "' /><br>");
                            $("div").append("<img src='" + thumbnail + "' /><br>");
                        }
                    });
 
                }
                
            });
        })
 
        
    </script>
    "<a href="\javascript:data();">"+title+"</a>"
"<a href='\javascript:data("+'한글'+");\'>"+title +"</a>"
</body>
</html>