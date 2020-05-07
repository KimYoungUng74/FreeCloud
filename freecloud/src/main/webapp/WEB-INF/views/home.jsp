<!doctype html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Home One || Witter Multipage Responsive Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="<c:url value='resources/writer/img/favicon.ico'/>">
<!-- Place favicon.ico in the root directory -->
<!-- Google Fonts -->
<link
	href='https://fonts.googleapis.com/css?family=Poppins:400,700,600,500,300'
	rel='stylesheet' type='text/css'>

<!-- all css here -->
<!-- bootstrap v3.3.6 css -->
<link rel="stylesheet"
	href="<c:url value='resources/writer/css/bootstrap.min.css'/>">
<!-- animate css -->
<link rel="stylesheet"
	href="<c:url value='resources/writer/css/animate.css'/>">
<!-- jquery-ui.min css -->
<link rel="stylesheet"
	href="<c:url value='resources/writer/css/jquery-ui.min.css'/>">
<!-- meanmenu css -->
<link rel="stylesheet"
	href="<c:url value='resources/writer/css/meanmenu.min.css'/>">
<!-- Font-Awesome css -->
<link rel="stylesheet"
	href="<c:url value='resources/writer/css/font-awesome.min.css'/>">
<!-- pe-icon-7-stroke css -->
<link rel="stylesheet"
	href="<c:url value='resources/writer/css/pe-icon-7-stroke.css'/>">
<!-- Flaticon css -->
<link rel="stylesheet"
	href="<c:url value='resources/writer/css/flaticon.css'/>">
<!-- venobox css -->
<link rel="stylesheet"
	href="<c:url value='resources/writer/venobox/venobox.css'/>"
	type="text/css" media="screen" />
<!-- nivo slider css -->
<link rel="stylesheet"
	href="<c:url value='resources/writer/lib/css/nivo-slider.css'/>"
	type="text/css" />
<link rel="stylesheet"
	href="<c:url value='resources/writer/lib/css/preview.css'/>"
	type="text/css" media="screen" />
<!-- owl.carousel css -->
<link rel="stylesheet"
	href="<c:url value='resources/writer/css/owl.carousel.css'/>">
<!-- style css -->
<link rel="stylesheet"
	href="<c:url value='resources/writer/style.css'/>">
<!-- responsive css -->
<link rel="stylesheet"
	href="<c:url value='resources/writer/css/responsive.css'/>">
<!-- modernizr css -->
<script
	src="<c:url value='resources/writer/js/vendor/modernizr-2.8.3.min.js'/>"></script>
</head>
<body>
	<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

	<!-- Add your site or application content here -->
	<!--Header Area Start-->
	<div class="header-area">
		<div class="container">
			<div class="row">
				<div class="col-md-2 col-sm-6 col-xs-6">
					<div class="header-logo">
						<a href="index.html"> <img
							src="<c:url value='resources/writer/img/freeCloud/logo.png'/>"
							alt="">
						</a>
					</div>
				</div>
				<div class="col-md-7 col-sm-12 hidden-sm">
					<div class="mainmenu text-center">
						<nav>
							<ul id="nav">
								<li><h4><a href="index.html">프로젝트</a></h4>
									<ul class="sub-menu">
										<li><a href="about.html">프로젝트 등록</a></li>
										<li><a href="cart.html">프로젝트 찾기</a></li>
									</ul></li>
								<li><h4><a href="shop.html">프리랜서 찾기</a></h4></li>
								<li><h4><a href="shop.html">정보구름</a></h4></li>
								<li><h4><a href="about.html">서비스 안내</a></h4>
									<ul class="sub-menu">
										<li><a href="about.html">프로젝트 이용방법</a></li>
										<li><a href="cart.html">프리랜서 이용방법</a></li>
										<li><a href="cart.html">프로젝트 찾기</a></li>
									</ul></li>
							</ul>
						</nav>
					</div>
				</div>
				<div class="col-md-3 hidden-sm">
					<div class="header-right">
						<ul>
							<li><a href="account.html">로그인<i class="flaticon-people"></i></a>
							</li>
							<li><a href="account.html">회원가입</a></li>
							<%-- <li class="shoping-cart"><a href="#"> <i
									class="flaticon-shop"></i> <span>2</span>
							</a>
								<div class="add-to-cart-product">
									<div class="cart-product">
										<div class="cart-product-image">
											<a href="single-product.html"> <img
												src="<c:url value='resources/writer/img/shop/1.jpg'/> alt="">
											</a>
										</div>
										<div class="cart-product-info">
											<p>
												<span>1</span> x <a href="single-product.html">East of
													eden</a>
											</p>
											<a href="single-product.html">S, Orange</a> <span
												class="cart-price">$ 140.00</span>
										</div>
										<div class="cart-product-remove">
											<i class="fa fa-times"></i>
										</div>
									</div>
									<div class="cart-product">
										<div class="cart-product-image">
											<a href="single-product.html"> <img
												src="<c:url value='resources/writer/img/shop/1.jpg'/>"
												alt="">
											</a>
										</div>
										<div class="cart-product-info">
											<p>
												<span>1</span> x <a href="single-product.html">East of
													eden</a>
											</p>
											<a href="single-product.html">S, Orange</a> <span
												class="cart-price">$ 140.00</span>
										</div>
										<div class="cart-product-remove">
											<i class="fa fa-times"></i>
										</div>
									</div>
									<div class="total-cart-price">
										<div class="cart-product-line fast-line">
											<span>Shipping</span> <span class="free-shiping">$10.50</span>
										</div>
										<div class="cart-product-line">
											<span>Total</span> <span class="total">$ 140.00</span>
										</div>
									</div>
									<div class="cart-checkout">
										<a href="checkout.html"> Check out <i
											class="fa fa-chevron-right"></i>
										</a>
									</div>
								</div></li> --%>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--Header Area End-->
	<!-- Mobile Menu Start -->
	<div class="mobile-menu-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12">
					<div class="mobile-menu">
						<nav id="dropdown">
							<ul>
								<li><a href="index.html"><b>프로젝트</b></a>
									<ul class="sub-menu">
										<li><a href="about.html">프로젝트 등록</a></li>
										<li><a href="cart.html">프로젝트 찾기</a></li>
									</ul></li>
								<li><a href="shop.html">프리랜서 찾기</a></li>
								<li><a href="shop.html">정보구름</a></li>
								<li><a href="about.html">서비스 안내</a>
									<ul class="sub-menu">
										<li><a href="about.html">프로젝트 이용방법</a></li>
										<li><a href="cart.html">프리랜서 이용방법</a></li>
										<li><a href="cart.html">프로젝트 찾기</a></li>
									</ul></li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Mobile Menu End -->
	<!-- Counter Area Start -->
	<div class="counter-area section-padding text-center"
		style="background-color: #a3d4f7">
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-6">
					<div class="single-counter wow" data-wow-duration="1.5s"
						data-wow-delay=".3s">
						<div class="counter-info">
							<span class="fcount"> <span class="counter">3725</span>
							</span>
							<h3>등록된 프로젝트 수</h3>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-6">
					<div class="single-counter wow" data-wow-duration="1.5s"
						data-wow-delay=".3s">
						<div class="counter-info">
							<span class="fcount"> <span class="counter">950</span>
							</span>
							<h3>등록된 프리랜서 수</h3>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-6">
					<div class="single-counter wow" data-wow-duration="1.5s"
						data-wow-delay=".3s">
						<div class="counter-info">
							<span class="fcount"> <span class="counter">2145150</span>원
							</span>
							<h3>완료 금액</h3>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-6">
					<div class="single-counter wow" data-wow-duration="1.5s"
						data-wow-delay=".3s">
						<div class="counter-info">
							<span class="fcount"> <span class="counter">627877</span>
							</span>
							<h3>회원 수</h3>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Counter Area End -->
	<!-- Featured Product Area Start -->
	<div class="featured-product-area section-padding">
		<h2 class="section-title">프로젝트 미리보기</h2>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="tab-menu">
						<!-- Nav tabs -->
						<ul class="nav nav-tabs" role="tablist">
							<li role="presentation" class="first-item active"><a
								href="#arrival" aria-controls="arrival" role="tab"
								data-toggle="tab">디자인</a></li>
							<li role="presentation"><a href="#sale" aria-controls="sale"
								role="tab" data-toggle="tab">IT프로그래밍</a></li>
							<li role="presentation"><a href="#sale" aria-controls="sale"
								role="tab" data-toggle="tab">콘텐츠 제작</a></li>
							<li role="presentation"><a href="#sale" aria-controls="sale"
								role="tab" data-toggle="tab">비즈니스 컨설팅</a></li>
							<li role="presentation"><a href="#sale" aria-controls="sale"
								role="tab" data-toggle="tab">주문제작</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="product-list tab-content">
					<div role="tabpanel" class="tab-pane fade in active" id="arrival">
						<div class="featured-product-list indicator-style">
							<!-- 메뉴 시작-->
							<div class="single-p-banner">
								<div class="col-md-3">
									<div class="single-banner">
										<a href="#" class="single-banner-image-wrapper"> <img
											alt=""
											src="<c:url value='resources/writer/img/freeCloud/올룩꿀룩.png'/>">
										</a>
										<div class="banner-bottom text-center">
											<a href="#">올룩꿀룩 : 중고거래 종합 사이트 제작</a>
										</div>
										<div class="banner-bottom text-center">
											<span class="blog-author">BY:곽지용</span>
											<span class="blog-date">2020년 04년 24일</span>
										</div>
									</div>
								</div>
							</div>
							<!-- 메뉴 끝 -->

							<div class="single-p-banner">
								<div class="col-md-3">
									<div class="single-banner">
										<a href="#" class="single-banner-image-wrapper"> <img
											alt=""
											src="<c:url value='resources/writer/img/freeCloud/올룩꿀룩.png'/>">
										</a>
										<div class="banner-bottom text-center">
											<a href="#">올룩꿀룩 : 중고거래 종합 사이트 제작</a>
										</div>
										<div class="banner-bottom text-center">
											<span class="blog-author">BY:곽지용</span>
											<span class="blog-date">2020년 04년 24일</span>
										</div>
									</div>
								</div>
							</div><div class="single-p-banner">
								<div class="col-md-3">
									<div class="single-banner">
										<a href="#" class="single-banner-image-wrapper"> <img
											alt=""
											src="<c:url value='resources/writer/img/freeCloud/올룩꿀룩.png'/>">
										</a>
										<div class="banner-bottom text-center">
											<a href="#">올룩꿀룩 : 중고거래 종합 사이트 제작</a>
										</div>
										<div class="banner-bottom text-center">
											<span class="blog-author">BY:곽지용</span>
											<span class="blog-date">2020년 04년 24일</span>
										</div>
									</div>
								</div>
							</div><div class="single-p-banner">
								<div class="col-md-3">
									<div class="single-banner">
										<a href="#" class="single-banner-image-wrapper"> <img
											alt=""
											src="<c:url value='resources/writer/img/freeCloud/올룩꿀룩.png'/>">
										</a>
										<div class="banner-bottom text-center">
											<a href="#">올룩꿀룩 : 중고거래 종합 사이트 제작</a>
										</div>
										<div class="banner-bottom text-center">
											<span class="blog-author">BY:곽지용</span>
											<span class="blog-date">2020년 04년 24일</span>
										</div>
									</div>
								</div>
							</div><div class="single-p-banner">
								<div class="col-md-3">
									<div class="single-banner">
										<a href="#" class="single-banner-image-wrapper"> <img
											alt=""
											src="<c:url value='resources/writer/img/freeCloud/올룩꿀룩.png'/>">
										</a>
										<div class="banner-bottom text-center">
											<a href="#">올룩꿀룩 : 중고거래 종합 사이트 제작</a>
										</div>
										<div class="banner-bottom text-center">
											<span class="blog-author">BY:곽지용</span>
											<span class="blog-date">2020년 04년 24일</span>
										</div>
									</div>
								</div>
							</div><div class="single-p-banner">
								<div class="col-md-3">
									<div class="single-banner">
										<a href="#" class="single-banner-image-wrapper"> <img
											alt=""
											src="<c:url value='resources/writer/img/freeCloud/올룩꿀룩.png'/>">
										</a>
										<div class="banner-bottom text-center">
											<a href="#">올룩꿀룩 : 중고거래 종합 사이트 제작</a>
										</div>
										<div class="banner-bottom text-center">
											<span class="blog-author">BY:곽지용</span>
											<span class="blog-date">2020년 04년 24일</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Featured Product Area End -->
	<!-- Testimonial Area Start -->
	<div class="testimonial-area text-center">
		<div class="container">
			<div class="testimonial-title">
				<h2>추천 프리랜서</h2>
				<p>선별된 최고의 프리랜서를 추천합니다.</p>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="testimonial-list">
						<div class="single-testimonial">
							<img
								src="<c:url value='resources/writer/img/freeCloud/profile.jpg'/>"
								alt="">
							<div class="testmonial-info clearfix">
								<p>안녕하십니까 JAVA SpringFrameWork 전문 프리랜서 김영웅입니다. 실력에는 자신있습니다
									언제든지 불러만 주십시오!</p>
								<div class="testimonial-author text-center">
									<h3>김영웅</h3>
									<p>IT프로그래밍</p>
								</div>
							</div>
						</div>
						<div class="single-testimonial">
							<img
								src="<c:url value='resources/writer/img/freeCloud/profile2.jpg'/>"
								alt="">
							<div class="testmonial-info clearfix">
								<p>안녕하십니까 일러스트, 디자인 전문 프리랜서 김용웁입니다. 실력에는 자신있습니다 언제든지 불러만
									주십시오</p>
								<div class="testimonial-author text-center">
									<h3>김용웁</h3>
									<p>디자인</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Testimonial Area End -->

	<div class="featured-product-area section-padding">
		<h2 class="section-title">프리랜서 미리보기</h2>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="tab-menu">
						<!-- Nav tabs -->
						<ul class="nav nav-tabs" role="tablist">
							<li role="presentation" class="first-item active"><a
								href="#arrival" aria-controls="arrival" role="tab"
								data-toggle="tab">디자인</a></li>
							<li role="presentation"><a href="#sale" aria-controls="sale"
								role="tab" data-toggle="tab">IT프로그래밍</a></li>
							<li role="presentation"><a href="#sale" aria-controls="sale"
								role="tab" data-toggle="tab">콘텐츠 제작</a></li>
							<li role="presentation"><a href="#sale" aria-controls="sale"
								role="tab" data-toggle="tab">비즈니스 컨설팅</a></li>
							<li role="presentation"><a href="#sale" aria-controls="sale"
								role="tab" data-toggle="tab">주문제작</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="product-list tab-content">
					<div role="tabpanel" class="tab-pane fade in active" id="arrival">
						<div class="featured-product-list indicator-style">
							<!-- 메뉴 시작-->
							<div class="single-p-banner">
								<div class="col-md-3">
									<div class="single-banner">
										<a href="#" class="single-banner-image-wrapper"> <img
											alt=""
											src="<c:url value='resources/writer/img/freeCloud/profile.jpg'/>">
										</a>
										<div class="banner-bottom text-center">
											<a href="#"><b>김영웅</b></a>
										</div>
										<div class="banner-bottom text-center">
											Java, Spring, Jsp<br>
										</div>
									</div>
								</div>
							</div>
							<!-- 메뉴 끝 -->

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- Footer Area Start -->
	<footer>
		<div class="footer-top-area">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-sm-8">
						<div class="footer-left">
							<div class="col-md-3">
								<a href="home"> <img
									src="<c:url value='resources/writer/img/freeCloud/logo.png'/>"
									alt="">
								</a>
							</div>
							<div class="col-md-9">
							<br>
								<h2 class="footer-title"><p><a href="#">회사소개</a>&nbsp;|&nbsp;<a href="#">이용약관</a>&nbsp;|&nbsp;<a href="#">FAQ</a>&nbsp;|&nbsp;<a href="#">개인정보 처리방침</a></h2> 
							</div>
							<br><br><br><br>
							<p>㈜ Free구름&nbsp;&nbsp;|&nbsp;&nbsp;대표자 : 김영웅&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;사업자등록번호 : 123-12-12345</p>
							<ul class="footer-contact">
								<li><i class="flaticon-location"></i> 14558 경기도 의정부시 서부로 545 융합소프트웨어과 404호
								<li>
								<li><i class="flaticon-web"></i> negahero@freeClude.com</li>
							</ul>
						</div>
					</div>
					<div class="col-md-4 hidden-sm">
						<div class="single-footer">
							<h1 class="footer-title">고객센터</h1>
							<ul class="footer-contact">
								<li><h4> 운영시간 : 평일 09:00 ~ 18:00 </h4></li>
								<li><i class="flaticon-technology"></i> (+800) 123 4567 890
								</li>
								<li><i class="flaticon-web"></i> negahero@freeClude.com</li>
							</ul>
						</div>
					</div>
					
				</div>
			</div>  
		</div>
		<div class="footer-bottom">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<div class="footer-bottom-left pull-left">
							<p>
								Copyright &copy; 2020 <span><a href="#">FreeCloud</a></span>. All
								Right Reserved.
							</p>
						</div>
					</div>
					<div class="col-md-6">
						<div class="footer-bottom-right pull-right">
							<img src="<c:url value='resources/writer/img/paypal.png'/>"
								alt="">
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- Footer Area End -->
	<!--Quickview Product Start -->
	<div id="quickview-wrapper">
		<!-- Modal -->
		<div class="modal fade" id="productModal" tabindex="-1" role="dialog">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="modal-product">
							<div class="product-images">
								<div class="main-image images">
									<img alt="" src="img/quick-view.jpg">
								</div>
							</div>
							<div class="product-info">
								<h1>Frame Princes Cut Diamond</h1>
								<div class="price-box">
									<p class="s-price">
										<span class="special-price"><span class="amount">$280.00</span></span>
									</p>
								</div>
								<a href="product-details.html" class="see-all">See all
									features</a>
								<div class="quick-add-to-cart">
									<form method="post" class="cart">
										<div class="numbers-row">
											<input type="number" id="french-hens" value="3">
										</div>
										<button class="single_add_to_cart_button" type="submit">Add
											to cart</button>
									</form>
								</div>
								<div class="quick-desc">Lorem ipsum dolor sit amet,
									consectetur adipiscing elit. Nam fringilla augue nec est
									tristique auctor. Donec non est at libero vulputate rutrum.
									Morbi ornare lectus quis justo gravida semper. Nulla tellus mi,
									vulputate adipiscing cursus eu, suscipit id nulla.</div>
								<div class="social-sharing">
									<div class="widget widget_socialsharing_widget">
										<h3 class="widget-title-modal">Share this product</h3>
										<ul class="social-icons">
											<li><a target="_blank" title="Facebook" href="#"
												class="facebook social-icon"><i class="fa fa-facebook"></i></a></li>
											<li><a target="_blank" title="Twitter" href="#"
												class="twitter social-icon"><i class="fa fa-twitter"></i></a></li>
											<li><a target="_blank" title="Pinterest" href="#"
												class="pinterest social-icon"><i class="fa fa-pinterest"></i></a></li>
											<li><a target="_blank" title="Google +" href="#"
												class="gplus social-icon"><i class="fa fa-google-plus"></i></a></li>
											<li><a target="_blank" title="LinkedIn" href="#"
												class="linkedin social-icon"><i class="fa fa-linkedin"></i></a></li>
										</ul>
									</div>
								</div>
							</div>
							<!-- .product-info -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--End of Quickview Product-->
	<!-- all js here -->
	<!-- jquery latest version -->
	<script
		src="<c:url value='resources/writer/js/vendor/jquery-1.12.0.min.js'/>"></script>
	<!-- bootstrap js -->
	<script src="<c:url value='resources/writer/js/bootstrap.min.js'/>"></script>
	<!-- owl.carousel js -->
	<script src="<c:url value='resources/writer/js/owl.carousel.min.js'/>"></script>
	<!-- jquery-ui js -->
	<script src="<c:url value='resources/writer/js/jquery-ui.min.js'/>"></script>
	<!-- jquery Counterup js -->
	<script
		src="<c:url value='resources/writer/js/jquery.counterup.min.js'/>"></script>
	<script src="<c:url value='resources/writer/js/waypoints.min.js'/>"></script>
	<!-- jquery countdown js -->
	<script
		src="<c:url value='resources/writer/js/jquery.countdown.min.js'/>"></script>
	<!-- jquery countdown js -->
	<script type="text/javascript"
		src="<c:url value='resources/writer/venobox/venobox.min.js'/>"></script>
	<!-- jquery Meanmenu js -->
	<script src="<c:url value='resources/writer/js/jquery.meanmenu.js'/>"></script>
	<!-- wow js -->
	<script src="<c:url value='resources/writer/js/wow.min.js'/>"></script>
	<script>
		new WOW().init();
	</script>
	<!-- scrollUp JS -->
	<script
		src="<c:url value='resources/writer/js/jquery.scrollUp.min.js'/>"></script>
	<!-- plugins js -->
	<script src="<c:url value='resources/writer/js/plugins.js'/>"></script>
	<!-- Nivo slider js -->
	<script
		src="<c:url value='resources/writer/lib/js/jquery.nivo.slider.js'/>"
		type="text/javascript"></script>
	<script src="<c:url value='resources/writer/lib/home.js'/>"
		type="text/javascript"></script>
	<!-- main js -->
	<script src="<c:url value='resources/writer/js/main.js'/>"></script>
</body>
</html>