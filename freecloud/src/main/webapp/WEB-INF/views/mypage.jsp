<!doctype html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
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
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(function(){
	//프로필 바꾸기
	    $('#CHANGE').click(function(){
	    	// ajax로 전달할 폼 객체
            var formData = new FormData();
            // 폼 객체에 파일추가, append("변수명", 값)
            formData.append('file', $('#file')[0].files[0]);
            
	        $.ajax({
		     type:"POST",
		     url:"fileUploadAjax.do",
		     data: formData,
		     dataType: "text",
		     processData: false,
             contentType: false,
		     success:function(data){	//data : checkId에서 넘겨준 결과값
		            if($.trim(data)!="Fail"){
		            	var test = "<img alt=\"\"src=\"<c:url value='"+$.trim(data)+"'/>\">";
		            	 $('#profile').html(test);
		               alert($.trim(data));
		           	}else{
		           		alert("실패");
		            }
		         }
		    }) 
	     })
	});
</script>
<script type="text/javascript">

$(function() {
	
	$('#CATAGORY1').change(function() {
		$('#CATAGORY2').children('option').remove();
		if($("#CATAGORY1 option:selected").val() == "") {
			num = new Array("중분류 선택");
			vnum = new Array("");
		} else if($("#CATAGORY1 option:selected").val() == "design"){
			num = new Array("웹", "제품", "프리젠테이션", "인쇄물", "커머스, 쇼핑몰", "로고", "그래픽", "영상", "게임", "기타");
			vnum = new Array("WEB", "PRODUCT", "PRE", "PRINT", "SHOP", "LOGO", "GRAPHIC", "VIDEO", "GAME", "OTHER");
		} else if($("#CATAGORY1 option:selected").val() == "devel"){
			num = new Array("웹", "애플리케이션", "워드프로세스", "퍼블리싱", "일반 소프트웨어", "커머스, 쇼핑몰", "게임", "임베디드", "기타");
			vnum = new Array("WEB", "APP", "WORD", "PUB", "SOFT", "SHOP", "GAME", "IMB", "OTHER");
		}
		
		for(var i=0; i <num.length; i++) {
			$("#CATAGORY2").append("<option value='"+vnum[i]+"'>"+num[i]+"</option>");
		}

		
	})
});
</script>

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
				<div class="col-md-2">
					<div class="header-logo">
						<a href="home.do"> <img
							src="<c:url value='resources/writer/img/freeCloud/logo.png'/>"
							alt="">
						</a>
					</div>
				</div>
				<div class="col-md-7">
					<div class="mainmenu text-center">
						<nav>
							<ul id="nav">
								<li><h4>
										<a href="index.html">프로젝트</a>
									</h4>
									<ul class="sub-menu">
										<li><a href="about.html">프로젝트 등록</a></li>
										<li><a href="cart.html">프로젝트 찾기</a></li>
									</ul></li>
								<li><h4>
										<a href="shop.html">프리랜서 찾기</a>
									</h4></li>
								<li><h4>
										<a href="shop.html">정보구름</a>
									</h4></li>
								<li><h4>
										<a href="about.html">서비스 안내</a>
									</h4>
									<ul class="sub-menu">
										<li><a href="about.html">프로젝트 이용방법</a></li>
										<li><a href="cart.html">프리랜서 이용방법</a></li>
										<li><a href="cart.html">프로젝트 찾기</a></li>
									</ul></li>
							</ul>
						</nav>
					</div>
				</div>
				<div class="col-md-3">
					<div class="header-right text-center">
						<ul>
							<li><c:choose>
									<c:when test="${sessionScope.userId == null}">
										<a href="login.do">로그인<i class="flaticon-people"></i></a>
									</c:when>
									<c:otherwise>

										<a href="mypage.do">마이페이지<i class="flaticon-people"></i></a>
									</c:otherwise>
								</c:choose></li>
							<li><c:choose>
									<c:when test="${sessionScope.userId == null}">
										<a href="signup.do">회원가입</a>
									</c:when>
									<c:otherwise>
										<a href="logout.do">로그아웃</a>
									</c:otherwise>
								</c:choose></li>
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
	<!-- Shop Area Start -->
	<div class="shopping-area section-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-12" style="font-size: 20px">
					<div class="row shop-widget">
						<div class="thumbnail">
							<div class="centered" id="profile">
								<img alt=""
									src="<c:url value='resources/writer/img/freeCloud/올룩꿀룩.png'/>">
							</div>
						</div>
						<div class="basic_btn" style="width: 100%">
							<a href="#" title="Quick view" data-toggle="modal"
								data-target="#pwDialog">이미지 변경</a>
						</div>
						<br>
						<div class="col-md-5">
							<h5>
								<b>정보 공개 여부</b>
							</h5>
						</div>

						<div class="col-md-7"
							style="border: 1px solid #D3D3D3; font-size: 16px;">
							<input type="radio" name="infor" value="true">공개 &nbsp; <input
								type="radio" name="infor" value="false">비공개
						</div>
						<br>
						<hr>
						<div class="button" style="width: 100%">
							<input type="button" style="width: 100%; color: #fff"
								value="내 정보">
						</div>
						<div class="button" style="width: 100%">
							<input type="button" style="width: 100%" value="나의 프로젝트">
						</div>
						<div class="button" style="width: 100%">
							<input type="button" style="width: 100%" value="프로젝트 지원 현황">
						</div>
						<div class="button" style="width: 100%">
							<input type="button" style="width: 100%" value="나의 게시판">
						</div>
					</div>
				</div>
				<div class="col-md-9 col-sm-9 col-xs-12" style="font-size: 20px;">
					<div
						style="width: 100%; height: 100%; border: 1px solid #D3D3D3; padding: 10px;">
						<div class="row">
							<div class="col-md-6">
								<p>
									<label> ID : </label> 꾸꾸까까
								<p>
								<p>
									<label> 지역 : </label> <select>
										<option value="">지역 선택</option>
										<option value="중졸">서울</option>
										<option value="고졸">경기도</option>
										<option value="대졸">강원도</option>
									</select>
								<p>
							</div>
							<div class="col-md-6">
								<p>
									<label> 이름 : </label> 이름
								<p>
								<p>
									<label> 최종학력 : </label> <select>
										<option value="">학력 선택</option>
										<option value="중졸">중졸</option>
										<option value="고졸">고졸</option>
										<option value="대졸">대졸</option>
									</select>
								<p>
							</div>
							<div class="col-md-12">

								<p>
									<label> 이메일 : </label> <input type="email"
										placeholder="freeCloud@free.com">
								<p>
								<p>
									<label> 전화번호 </label>
							</div>
							<div class="col-md-4">
								<input type="text" style="width: 90%;"> &nbsp;&nbsp;-
							</div>
							<div class="col-md-4">
								<input type="text" style="width: 90%;"> &nbsp;&nbsp;-
							</div>
							<div class="col-md-4">
								<input type="text" style="width: 100%;">
							</div>

							<div class="col-md-12">
								<br> <label> 자기소개 </label>

								<textarea rows="8" style="width: 100%; resize: none;"></textarea>
							</div>
							<div class="col-md-8">
								<p>
									<label> 전문분야 : </label> 
									<select id="CATAGORY1">
										<option value="">대분류 선택</option>
										<option value="design">디자인</option>
										<option value="devel">IT프로그래밍</option>
										<option value="콘텐츠 제작">콘텐츠 제작</option>
										<option value="비즈니스 컨설팅">비즈니스 컨설팅</option>
										<option value="주문제작">주문제작</option>
									</select> &nbsp; <select  id="CATAGORY2">
										<option value="">중분류 선택</option>
									</select>
								</p>
							</div>
							<div class="col-md-4">
								<p>
									<label> 경력 : </label> <select>
										<option value="">경력 선택</option>
										<option value="중졸">1년미만</option>
										<option value="고졸">1년</option>
										<option value="대졸">3년</option>
									</select>
								</p>
							</div>
							<div class="col-md-12">
								<p>
									<label> 보유기술 : </label> <input type="text" disabled="disabled">
									<input type="text">
									<button class="basicBtn">등록</button>
								<p />
							</div>
							<div class="col-md-12">
								<label> 포트폴리오 </label>
							</div>
							<div class="col-md-6">
								<p>
									<input class="basicBtn" style="width: 100%" type="file">
								</p>
							</div>
							<div class="col-md-6">
								<p>
									<button class="basicBtn">등록</button>
								</p>
							</div>
							<div class="col-md-12">
								<p>
									<label> 자격증 : </label> <input type="text" disabled="disabled">
									<input type="text">
									<button class="basicBtn">등록</button>
								<p />
							</div>
							<div class="col-md-12">
								<p>
								<div class="button" style="width: 100%">
									<input type="button" style="width: 100%" value="등록 하기">
								</div>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Shop Area End -->
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
								<h2 class="footer-title">
									<p>
										<a href="#">회사소개</a>&nbsp;|&nbsp;<a href="#">이용약관</a>&nbsp;|&nbsp;<a
											href="#">FAQ</a>&nbsp;|&nbsp;<a href="#">개인정보 처리방침</a>
								</h2>
							</div>
							<br> <br> <br> <br>
							<p>㈜ Free구름&nbsp;&nbsp;|&nbsp;&nbsp;대표자 :
								김영웅&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;사업자등록번호 :
								123-12-12345</p>
							<ul class="footer-contact">
								<li><i class="flaticon-location"></i> 14558 경기도 의정부시 서부로
									545 융합소프트웨어과 404호
								<li>
								<li><i class="flaticon-web"></i> negahero@freeClude.com</li>
							</ul>
						</div>
					</div>
					<div class="col-md-4 hidden-sm">
						<div class="single-footer">
							<h1 class="footer-title">고객센터</h1>
							<ul class="footer-contact">
								<li><h4>운영시간 : 평일 09:00 ~ 18:00</h4></li>
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
								Copyright &copy; 2020 <span><a href="#">FreeCloud</a></span>.
								All Right Reserved.
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
							<div class="product-images"></div>
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

		<!-- 이미지 변경 -->
		<div class="modal fade" id="pwDialog" tabindex="-1" role="dialog">
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
							<div class="container">
								<div class="row">
									<div>
											<h2 class="heading-title">이미지 변경</h2>
											<p>
												<b>아이디</b>
											</p>
											<p class="form-row seekpw">
												<input type="file" name="file" id="file"
													placeholder="아이디 입력">
											</p>
											<div class="submit" style="float: center">
												<button name="CHANGE" id="CHANGE" class="btn-default"
													style="width: 100%">
													<span> <i class="fa fa-user left"></i> 이미지 변경
													</span>
												</button>
											</div>
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