<!doctype html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<html>
<head>

<script type="text/javascript">
var expanded = false;

function showCheckboxes() {
  var checkboxes = document.getElementById("checkboxes");
  if (!expanded) {
    checkboxes.style.display = "block";
    expanded = true;
  } else {
    checkboxes.style.display = "none";
    expanded = false;
  }
}

function selChange() {
	var sel = document.getElementById('cntPerPage').value;
	location.href="boardList.do?nowPage=${paging.nowPage}&cntPerPage="+sel;
}

</script>


</style>

<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Shop || Witter Multipage Responsive Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="resources/writer/img/favicon.ico">
<!-- Place favicon.ico in the root directory -->
<!-- Google Fonts -->
<link
	href='https://fonts.googleapis.com/css?family=Poppins:400,700,600,500,300'
	rel='stylesheet' type='text/css'>

<!-- all css here1 -->

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

<!-- Custom fonts for this template-->
<!-- <link rel="stylesheet" type="text/css" href=href="<c:url value='"resources/writer2/vendor/fontawesome-free/css/all.min.css"'/>> -->
<!-- <link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet"> -->

<!-- Custom styles for this template-->
<!-- <link rel="stylesheet" href=<c:url value='"resources/writer2/css/sb-admin-2.min.css'/>"> -->


<!-- modernizr css -->
<script
	src="<c:url value='resources/writer/js/vendor/modernizr-2.8.3.min.js'/>"></script>
</head>
<body>
	<c:if test="${msg == 'logout'}">
		<script>
			alert("로그아웃 되었습니다.");
		</script>
	</c:if>

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
										<li><a href="projectReg.do">프로젝트 등록</a></li>
										<li><a href="projectSearch.do">프로젝트 찾기</a></li>
									</ul></li>
								<li><h4>
										<a href="freelancerSearch.do">프리랜서 찾기</a>
									</h4></li>
								<li><h4>
										<a href="index.html">정보구름</a>
									</h4>
									<ul class="sub-menu">
										<li><a href="boardReg.do">게시글 등록</a></li>
										<li><a href="boardList.do">게시글 목록</a></li>
									</ul></li>
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
	<!-- Breadcrumbs Area Start -->
	<!-- Shop Area Start -->
	<div class="shopping-area section-padding">
		<div class="container">
			<div class="row">
				

					<div class="shop-tab-area">
						<div class="shop-tab-list">
							<div class="shop-tab-pill pull-left">
								
							</div>
							<div class="shop-tab-pill pull-right">
								<ul>
									<li class="product-size-deatils">
										<div class="show-label">
											<label>Show : </label> 
											<select id="cntPerPage" name="sel" onchange="selChange()">
											<option value="5"
												<c:if test="${paging.cntPerPage == 5}">selected</c:if>>5</option>
											<option value="10"
												<c:if test="${paging.cntPerPage == 10}">selected</c:if>>10</option>
											<option value="15"
												<c:if test="${paging.cntPerPage == 15}">selected</c:if>>15</option>
											<option value="20"
												<c:if test="${paging.cntPerPage == 20}">selected</c:if>>20</option>
										</select>
										</div>
									</li>
									
									<c:if test="${paging.startPage != 1 }">
										<a href="boardList.do?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}"><i
											class="fa fa-caret-left"></i></a>
									</c:if>
									<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
										<c:choose>
											<c:when test="${p == paging.nowPage }">
												<b><li class="shop-pagination">${p }</li></b>
											</c:when>
											<c:when test="${p != paging.nowPage }">
												<a href="boardList.do?nowPage=${p }&cntPerPage=${paging.cntPerPage}"><li class="shop-pagination">${p }</li></a>
											</c:when>
										</c:choose>
									</c:forEach>
									<c:if test="${paging.endPage != paging.lastPage}">
										<a href="boardList.do?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}"><i
											class="fa fa-caret-right"></i></a>
									</c:if>
								</ul>
							</div>
						</div>
						<div class="tab-content">
						<!-- Grid 형으로 글 목록 출력 -->
						
							
							
						<!-- List 형으로 글 목록 출력 -->
							
						</div>
					</div>
						
						<!-- 테이블 시작 -->
						<div class="table-responsive" id="checkout-review-table-wrapper">
						<br>
						<table class="data-table" id="checkout-review-table">
													<thead>
														<tr>
															<th rowspan="1">번호</th>
															<th rowspan="1">제목</th>
															<th colspan="1">아이디</th>
															<th rowspan="1">분류</th>
															<th colspan="1">게시일</th>
															<th rowspan="1">조회수</th>
														</tr>
													</thead>
													
													<tbody>
														<c:forEach var="lRow" items="${viewAll }">
														<tr>
															<td><h3>${lRow.BBS_IDX }</h3></td>
															<td><h3 class="product-name"><a href="boardView.do?BBS_IDX=${lRow.BBS_IDX }">${lRow.BBS_SUBJECT }</a></h3></td>
															<td><span class="cart-price"><span class="check-price">${lRow.USER_ID }</span></span></td>
															<td>${lRow.BBS_MAIN_KATEGORY }</td>
															<!-- sub total starts here -->
															<td><span class="cart-price"><span class="check-price">${lRow.BBS_REG_DATE }</span></span></td>
															<td>${lRow.BBS_VIEWS }</td>
														</tr>
														
														</c:forEach>
													</tbody>
													
						</table>
												</div>
						<!-- 테이블 끝 -->
					
					<br>
					
				</div>
				<div class="submit" style="display: inline; float: right;">
							
				<button name="pReg" id="pReg" type="button" onclick="location.href ='boardReg.do'"
								class="btn-default" style="width:100%">
				<span> <i class="fa fa-user left"></i> 게시글 등록 하기
				</span>
				</button>
							
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
								<div class="product-images">
									<div class="main-image images">
										<img alt="" src="resources/writer/img/quick-view.jpg">
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
										Morbi ornare lectus quis justo gravida semper. Nulla tellus
										mi, vulputate adipiscing cursus eu, suscipit id nulla.</div>
									<div class="social-sharing">
										<div class="widget widget_socialsharing_widget">
											<h3 class="widget-title-modal">Share this product</h3>
											<ul class="social-icons">
												<li><a target="_blank" title="Facebook" href="#"
													class="facebook social-icon"><i class="fa fa-facebook"></i></a></li>
												<li><a target="_blank" title="Twitter" href="#"
													class="twitter social-icon"><i class="fa fa-twitter"></i></a></li>
												<li><a target="_blank" title="Pinterest" href="#"
													class="pinterest social-icon"><i
														class="fa fa-pinterest"></i></a></li>
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

		<!-- Bootstrap core JavaScript sb-->
		<%-- <script src="<c:url value ='resources/writer2/vendor/jquery/jquery.min.js'/>"></script> --%>
		<%-- <script
			src="<c:url value = 'resources/writer2/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
 --%>
		<!-- Core plugin JavaScript-->
		<%-- <script
			src="<c:url value = 'resources/writer2/vendor/jquery-easing/jquery.easing.min.js'/>"></script> --%>

		<!-- Custom scripts for all pages-->
		<!-- <script src="resources/writer2/js/sb-admin-2.min.js"></script> -->
</html>