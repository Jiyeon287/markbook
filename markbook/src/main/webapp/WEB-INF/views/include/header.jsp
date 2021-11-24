<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>MarkBook</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
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
    
    <header>
        <div class="header-area">
         <div class="main-header ">
             <div class="header-top ">
                <div class="container">
                   <div class="row">
                    <div class="col-xl-12">
                        <div class="d-flex justify-content-between align-items-center flex-sm">
                            <div class="header-info-left d-flex align-items-center">
                                <!-- logo -->
                                <div class="logo">
                                    <a href="index.html"><img src="${pageContext.request.contextPath }/resources/assets/img/logo/logo.png" alt=""></a>
                                </div>
                                <!-- Search Box -->
                                <form action="#" class="form-box">
                                    <input type="text" name="Search" placeholder="Search book by author or publisher">
                                    <div class="search-icon">
                                        <i class="ti-search"></i>
                                    </div>
                                </form>
                            </div>
                            <div class="header-info-right d-flex align-items-center">
                                <ul>                                   
                                    <li><a href="#">FAQ</a></li>
                                    <li><a href="#">Track Order</a></li>
                                    <li class="shopping-card">
                                        <a href="cart.html"><img src="${pageContext.request.contextPath }/resources/assets/img/icon/cart.svg" alt=""></a>
                                    </li>
                                    <li><a href="login.html" class="btn header-btn">Sign in</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="header-bottom  header-sticky">
         <div class="container">
             <div class="row align-items-center">
                <div class="col-xl-12">
                    <!-- logo 2 -->
                    <div class="logo2">
                        <a href="index.html"><img src="${pageContext.request.contextPath }/resources/assets/img/logo/logo.png" alt=""></a>
                    </div>
                    <!-- Main-menu -->
                    <div class="main-menu text-center d-none d-lg-block">
                        <nav>                                                
                            <ul id="navigation">    
                                <li><a href="index.html">Home</a></li>
                                <li><a href="categories.html">Categories</a></li>
                                <li><a href="about.html">About</a></li>
                                <li><a href="#">Pages</a>
                                    <ul class="submenu">
                                        <li><a href="login.html">login</a></li>
                                        <li><a href="cart.html">Cart</a></li>
                                        <li><a href="checkout.html">Checkout</a></li>
                                        <li><a href="book-details.html">book Details</a></li>
                                        <li><a href="blog_details.html">Blog Details</a></li>
                                        <li><a href="elements.html">Element</a></li>
                                    </ul>
                                </li>
                                <li><a href="blog.html">Blog</a></li>
                                <li><a href="contact.html">Contect</a></li>
                            </ul>
                        </nav>
                    </div>
                </div> 
                <!-- Mobile Menu -->
                <div class="col-xl-12">
                    <div class="mobile_menu d-block d-lg-none"><div class="slicknav_menu"><a href="#" aria-haspopup="true" role="button" tabindex="0" class="slicknav_btn slicknav_collapsed"><span class="slicknav_menutxt">MENU</span><span class="slicknav_icon"><span class="slicknav_icon-bar"></span><span class="slicknav_icon-bar"></span><span class="slicknav_icon-bar"></span></span></a><ul class="slicknav_nav slicknav_hidden" aria-hidden="true" role="menu" style="display: none;">    
                                <li><a href="index.html" role="menuitem" tabindex="-1">Home</a></li>
                                <li><a href="categories.html" role="menuitem" tabindex="-1">Categories</a></li>
                                <li><a href="about.html" role="menuitem" tabindex="-1">About</a></li>
                                <li class="slicknav_collapsed slicknav_parent"><a href="#" role="menuitem" aria-haspopup="true" tabindex="-1" class="slicknav_item slicknav_row"><a href="#" tabindex="-1">Pages</a>
                                    <span class="slicknav_arrow">+</span></a><ul class="submenu slicknav_hidden" role="menu" aria-hidden="true" style="display: none;">
                                        <li><a href="login.html" role="menuitem" tabindex="-1">login</a></li>
                                        <li><a href="cart.html" role="menuitem" tabindex="-1">Cart</a></li>
                                        <li><a href="checkout.html" role="menuitem" tabindex="-1">Checkout</a></li>
                                        <li><a href="book-details.html" role="menuitem" tabindex="-1">book Details</a></li>
                                        <li><a href="blog_details.html" role="menuitem" tabindex="-1">Blog Details</a></li>
                                        <li><a href="elements.html" role="menuitem" tabindex="-1">Element</a></li>
                                    </ul>
                                </li>
                                <li><a href="blog.html" role="menuitem" tabindex="-1">Blog</a></li>
                                <li><a href="contact.html" role="menuitem" tabindex="-1">Contect</a></li>
                            </ul></div></div>
                </div>
            </div>
        </div>                         
    </div>
</div>

</div>
</header>
	
</head>

<body>
