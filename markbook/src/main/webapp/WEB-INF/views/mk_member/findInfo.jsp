<%@ page contentType = "text/html;charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>MARKBOOK : 회원정보찾기</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath }/resources/assets/img/icon/favicon.png">

	<!-- CSS here -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/style.css">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/member.css">
</head>
<body>
    <!-- header end -->
    <main class="login-bg">
        <!-- Register Area Start -->
        <div class="register-form-area">
            <div class="register-form text-center">
				<table style="width:100%; text-align:center; padding:3em 0 3em 0;">
					<tr>
						<td style="width:50%;">
							<a href="/markbook/mk_member/findId" class="infoBtn" style="padding:2em 4em;">ID</a>
						</td>
						<td style="width:50%;">
							<a href="/markbook/mk_member/findPw" class="infoBtn">Password</a>
						</td>
					</tr>
				</table>

            </div>
        </div>
        <!-- Register Area End -->
    </main>
    </body>
</html>