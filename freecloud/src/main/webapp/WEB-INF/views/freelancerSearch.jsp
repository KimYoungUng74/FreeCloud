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
	location.href="freelancerSearch.do?nowPage=${paging.nowPage}&cntPerPage="+sel;
}

// 근무형태 , 카테고리 , 지역 값 넘기기
	function selChckChange() {
		
		var wk = $("input:radio[name='PROJECT_WORKING_KIND']:checked").val();
		var sel = document.getElementById('cntPerPage').value;
		
	    var mkd = new Array();
	    var mkds = new Array();
		var addr = new Array();
	
	    $("input[name='PROJECT_MIDDLE_KATEGORY_D']:checked").each(function() {
	    	mkd.push( $(this).val());	    	
	    })
	    
	    $("input[name='PROJECT_MIDDLE_KATEGORY_DS']:checked").each(function() {
	    	mkds.push( $(this).val());	    	
	    })
	    
	    $("input[name='PROJECT_ADDRESS']:checked").each(function() {
	    	addr.push( $(this).val());	    	
	    })
	  
		location.href="projectSearch.do?nowPage=${paging.nowPage}&cntPerPage="+sel+"&wk="+wk+"&mkd="+mkd+"&mkds="+mkds+"addr="+addr;		
	}


</script>

<style type="text/css">
.wKind {
	font-size: 16px;
	margin-left: 8px;
}

.multiselect {
  width: 200px;
}

.selectBox {
  position: relative;
}

.selectBox select {
  width: 100%;
  font-weight: bold;
}

.overSelect {
  position: absolute;
  left: 0;
  right: 0;
  top: 0;
  bottom: 0;
}

#checkboxes {
  display: none;
  border: 1px #dadada solid;
}

#checkboxes label {
  display: block;
}

#checkboxes label:hover {
  background-color: #1e90ff;
}
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
				<div class="col-md-3 col-sm-3 col-xs-12">
					<div class="shop-widget">
						<div class="shop-widget-top">
							<aside class="widget widget-categories">
								<h2 class="sidebar-title text-center">프리랜서 필터</h2>
								

				<!-- 				<h2 class="sidebar-title">
									<p>&nbsp;&nbsp;<b>선호 프로젝트 형태</b></p>
									<div class="wKind">

										<input type="checkbox" class="chkbox1">
										&nbsp;외주&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
											type="checkbox" class="chkbox1"> 상주

									</div>
								</h2> -->
							</aside>
							<p><b style="font-size: 16px">&nbsp;&nbsp;프리랜서 카테고리</b></p>
							<!-- panel1 -->
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingOne">
									<h4 class="panel-title">
										<a role="button" data-toggle="collapse"
											data-parent="#accordion" href="#collapseOne"
											aria-expanded="true" aria-controls="collapseOne" class="">
											<i class="fa fa-building"></i> <span></span> &nbsp;&nbsp;개발
										</a>
									</h4>
								</div>
								<div id="collapseOne" class="panel-collapse collapse in"
									role="tabpanel" aria-labelledby="headingOne"
									aria-expanded="true" style="">
									<div class="panel-body">
										<div class="row">
											<div class="col-md-8 col-sm-6">

												<li class="listc"><label for="chk1"> <input
														type="checkbox" name="chk1" id="chk1">&nbsp;웹
												</label></li>

												<li class="listc"><label for="chk1"> <input
														type="checkbox" name="chk1" id="chk1">&nbsp;에플리케이션
												</label></li>

												<li class="listc"><label for="chk1"> <input
														type="checkbox" name="chk1" id="chk1">&nbsp;워드프레스
												</label></li>

												<li class="listc"><label for="chk1"> <input
														type="checkbox" name="chk1" id="chk1">&nbsp;퍼블리싱
												</label></li>

												<li class="listc"><label for="chk1"> <input
														type="checkbox" name="chk1" id="chk1">&nbsp;일반 소프트웨어
												</label></li>

												<li class="listc"><label for="chk1"> <input
														type="checkbox" name="chk1" id="chk1">&nbsp;커머스, 쇼핑몰
												</label></li>

												<li class="listc"><label for="chk1"> <input
														type="checkbox" name="chk1" id="chk1">&nbsp;게임
												</label></li>

												<li class="listc"><label for="chk1"> <input
														type="checkbox" name="chk1" id="chk1">&nbsp;임베디드
												</label></li>

												<li class="listc"><label for="chk1"> <input
														type="checkbox" name="chk1" id="chk1">&nbsp;기타
												</label></li>

											</div>

										</div>
									</div>
								</div>
							</div>


							<!-- panel2 -->
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingTwo">
									<h4 class="panel-title">
										<a class="" role="button" data-toggle="collapse"
											data-parent="#accordion" href="#collapseTwo"
											aria-expanded="true" aria-controls="collapseTwo"> <i
											class="fa fa-picture-o"></i> <span></span> &nbsp;&nbsp;디자이너
										</a>
									</h4>
								</div>
								<div id="collapseTwo" class="panel-collapse collapse in"
									role="tabpanel" aria-labelledby="headingTwo"
									aria-expanded="true" style="">
									<div class="panel-body">
										<div class="row">
											<div class="col-md-8 col-sm-6">

												<li class="listc"><label for="chk1"> <input
														type="checkbox" name="chk1" id="chk1">&nbsp;웹
												</label></li>

												<li class="listc"><label for="chk1"> <input
														type="checkbox" name="chk1" id="chk1">&nbsp;제품
												</label></li>

												<li class="listc"><label for="chk1"> <input
														type="checkbox" name="chk1" id="chk1">&nbsp;프레젠테이션
												</label></li>

												<li class="listc"><label for="chk1"> <input
														type="checkbox" name="chk1" id="chk1">&nbsp;인쇄물
												</label></li>

												<li class="listc"><label for="chk1"> <input
														type="checkbox" name="chk1" id="chk1">&nbsp;커머스, 쇼핑몰
												</label></li>

												<li class="listc"><label for="chk1"> <input
														type="checkbox" name="chk1" id="chk1">&nbsp;로고
												</label></li>

												<li class="listc"><label for="chk1"> <input
														type="checkbox" name="chk1" id="chk1">&nbsp;그래픽
												</label></li>

												<li class="listc"><label for="chk1"> <input
														type="checkbox" name="chk1" id="chk1">&nbsp;영상
												</label></li>

												<li class="listc"><label for="chk1"> <input
														type="checkbox" name="chk1" id="chk1">&nbsp;게임
												</label></li>

												<li class="listc"><label for="chk1"> <input
														type="checkbox" name="chk1" id="chk1">&nbsp;기타
												</label></li>

											</div>

										</div>
									</div>
								</div>
							</div>
							
							<!-- panel3 -->
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingFour">
									<h4 class="panel-title">
										<a class="" role="button" data-toggle="collapse"
											data-parent="#accordion" href="#collapseFour"
											aria-expanded="true" aria-controls="collapseFour"> <i
											class="fa fa-child"></i> <span></span> &nbsp;&nbsp;파트너 형태
										</a>
									</h4>
								</div>
								<div id="collapseFour" class="panel-collapse collapse in"
									role="tabpanel" aria-labelledby="headingFour"
									aria-expanded="true" style="">
									<div class="panel-body">
										<div class="row">
											<div class="col-md-8 col-sm-6">

												
												<li class="listc"><label for="chk1"> <input
														type="checkbox" name="chk1" id="chk1">&nbsp;법인사업자
												</label></li>

												<li class="listc"><label for="chk1"> <input
														type="checkbox" name="chk1" id="chk1">&nbsp;개인사업자
												</label></li>

												<li class="listc"><label for="chk1"> <input
														type="checkbox" name="chk1" id="chk1">&nbsp;팀
												</label></li>

												<li class="listc"><label for="chk1"> <input
														type="checkbox" name="chk1" id="chk1">&nbsp;개인
												</label></li>

											</div>

										</div>
									</div>
								</div>
							</div>

							<!-- <ul class="sidebar-menu">
									<li><a href="#"> <i class="nav-item active"></i> <a
											class="nav-link" href="#" data-toggle="collapse"
											data-target="#collapseUtilities" aria-expanded="true"
											aria-controls="collapseUtilities"> <i
												class="fas fa-fw fa-wrench"></i> <span>Utilities</span>
										</a>

											<div id="collapseUtilities" class="collapse show"
												aria-labelledby="headingUtilities"
												data-parent="#accordionSidebar">
												<div class="bg-white py-2 collapse-inner rounded">
													<h6 class="collapse-header">Custom Utilities:</h6>
													<a class="collapse-item" href="utilities-color.html">Colors</a>
													<a class="collapse-item" href="utilities-border.html">Borders</a>
													<a class="collapse-item" href="utilities-animation.html">Animations</a>
													<a class="collapse-item active" href="utilities-other.html">Other</a>
												</div>
											</div>
									</a></li>
									<li class="nav-item active"><a class="nav-link" href="#"
										data-toggle="collapse" data-target="#collapseUtilities"
										aria-expanded="true" aria-controls="collapseUtilities"> <i
											class="fas fa-fw fa-wrench"></i> <span>Utilities</span>
									</a>
										<div id="collapseUtilities" class="collapse show"
											aria-labelledby="headingUtilities"
											data-parent="#accordionSidebar">
											<div class="bg-white py-2 collapse-inner rounded">
												<h6 class="collapse-header">Custom Utilities:</h6>
												<a class="collapse-item" href="utilities-color.html">Colors</a>
												<a class="collapse-item" href="utilities-border.html">Borders</a>
												<a class="collapse-item" href="utilities-animation.html">Animations</a>
												<a class="collapse-item active" href="utilities-other.html">Other</a>
											</div>
										</div></li>
									<li><a href="#"> <i class="fa fa-angle-double-right"></i>
											LIVING ROOMS <span>(4)</span>
									</a></li>
									<li><a href="#"> <i class="fa fa-angle-double-right"></i>
											LAMP <span>(7)</span>
									</a></li>
								</ul> -->

							<!-- </aside> -->
							<!-- <aside class="widget shop-filter">
								<h2 class="sidebar-title text-center">PRICE SLIDER</h2>
								<div class="info-widget">
									<div class="price-filter">
										<div id="slider-range"></div>
										<div class="price-slider-amount">
											<input type="text" id="amount" name="price"
												placeholder="Add Your Price" />
											<div class="widget-buttom">
												<input type="submit" value="Filter" /> <input type="reset"
													value="CLEAR" />
											</div>
										</div>
									</div>
								</div>
							</aside> -->
							<div class="shop-widget-bottom">
								<p><b style="font-size: 16px">&nbsp;&nbsp;근무 위치</b></p>
								<div class="panel panel-default">
									<div class="panel-heading" role="tab" id="headingThree">
										<h4 class="panel-title">
											<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
												<i class="fa fa-globe"></i>
												<span>&nbsp;&nbsp;지역을 선택하세요</span>
											</a>
										</h4>
									</div>
									<div id="collapseThree" class="panel-collapse collapse in"
									role="tabpanel" aria-labelledby="headingTwo"
									aria-expanded="true" style="">
									<div class="panel-body">
										<div class="row">
											<div class="col-md-8 col-sm-6">

												<li class="listc"><label for="chk1"> <input
														type="checkbox" name="chk1" id="chk1">&nbsp;전지역
												</label></li>

												<li class="listc"><label for="chk1"> <input
														type="checkbox" name="chk1" id="chk1">&nbsp;서울특별시
												</label></li>

												<li class="listc"><label for="chk1"> <input
														type="checkbox" name="chk1" id="chk1">&nbsp;경기도
												</label></li>

												<li class="listc"><label for="chk1"> <input
														type="checkbox" name="chk1" id="chk1">&nbsp;인천광역시
												</label></li>

												<li class="listc"><label for="chk1"> <input
														type="checkbox" name="chk1" id="chk1">&nbsp;부산광역시
												</label></li>

												<li class="listc"><label for="chk1"> <input
														type="checkbox" name="chk1" id="chk1">&nbsp;대구광역시
												</label></li>

												<li class="listc"><label for="chk1"> <input
														type="checkbox" name="chk1" id="chk1">&nbsp;광주광역시
												</label></li>

												<li class="listc"><label for="chk1"> <input
														type="checkbox" name="chk1" id="chk1">&nbsp;울산광역시
												</label></li>

												<li class="listc"><label for="chk1"> <input
														type="checkbox" name="chk1" id="chk1">&nbsp;세종특별자치시
												</label></li>

												<li class="listc"><label for="chk1"> <input
														type="checkbox" name="chk1" id="chk1">&nbsp;강원도
												</label></li>
												
												<li class="listc"><label for="chk1"> <input
														type="checkbox" name="chk1" id="chk1">&nbsp;충청북도
												</label></li>
												
												<li class="listc"><label for="chk1"> <input
														type="checkbox" name="chk1" id="chk1">&nbsp;충청남도
												</label></li>
												
												<li class="listc"><label for="chk1"> <input
														type="checkbox" name="chk1" id="chk1">&nbsp;전라북도
												</label></li>
												
												<li class="listc"><label for="chk1"> <input
														type="checkbox" name="chk1" id="chk1">&nbsp;전라남도
												</label></li>
												
												<li class="listc"><label for="chk1"> <input
														type="checkbox" name="chk1" id="chk1">&nbsp;경상북도
												</label></li>
												
												<li class="listc"><label for="chk1"> <input
														type="checkbox" name="chk1" id="chk1">&nbsp;경상남도
												</label></li>
												
												<li class="listc"><label for="chk1"> <input
														type="checkbox" name="chk1" id="chk1">&nbsp;제주특별자치도
												</label></li>

											</div>

										</div>
									</div>
								</div>
								</div>
								</h2>
								
								
						</div>
						
						</div>
						
					</div>
				</div>
				<div class="col-md-9 col-sm-9 col-xs-12">
					<div class="shop-tab-area">
						<div class="shop-tab-list">
							<div class="shop-tab-pill pull-left">
								<ul>
									<li class="active" id="left"><a data-toggle="pill"
										href="#home"><i class="fa fa-th"></i><span>Grid</span></a></li>
									<li><a data-toggle="pill" href="#menu1"><i
											class="fa fa-th-list"></i><span>List</span></a></li>
								</ul>
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
										<a href="freelancerSearch.do?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}"><i
											class="fa fa-caret-left"></i></a>
									</c:if>
									<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
										<c:choose>
											<c:when test="${p == paging.nowPage }">
												<b><li class="shop-pagination">${p }</li></b>
											</c:when>
											<c:when test="${p != paging.nowPage }">
												<a href="freelancerSearch.do?nowPage=${p }&cntPerPage=${paging.cntPerPage}"><li class="shop-pagination">${p }</li></a>
											</c:when>
										</c:choose>
									</c:forEach>
									<c:if test="${paging.endPage != paging.lastPage}">
										<a href="freelancerSearch.do?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}"><i
											class="fa fa-caret-right"></i></a>
									</c:if>
								</ul>
							</div>
						</div>
						<div class="tab-content">
						<!-- Grid 형으로 글 목록 출력 -->
						
							<div class="row tab-pane fade in active" id="home">
								<div class="shop-single-product-area">
									<c:forEach var="gRow" items="${viewAll }">
									<div class="col-md-4 col-sm-6">
										<div class="single-banner">
											<div class="product-wrapper">
												<!-- 클릭하면 해당 프리랜서 상세로 이동 -->
												<a href="#" class="single-banner-image-wrapper"> <img
													alt="" src="resources/writer/img/featured/2.jpg">
													
												</a>
												<!-- <div class="product-description">
													<div class="functional-buttons">
														<a href="#" title="Add to Cart"> <i
															class="fa fa-shopping-cart"></i>
														</a> <a href="#" title="Add to Wishlist"> <i
															class="fa fa-heart-o"></i>
														</a> <a href="#" title="Quick view" data-toggle="modal"
															data-target="#productModal"> <i
															class="fa fa-compress"></i>
														</a>
													</div>
												</div> -->
											</div>
											<div class="banner-bottom text-center">
												<div class="banner-bottom-title">
													<!-- 클릭하면 해당 프리랜서 상세로 이동 -->
													<a href="#">${gRow.USER_ID }</a>
													<c:choose>
															<c:when test="${gRow.FREELANCER_MAIN_KATEGORY eq '개발'}">
																<span class="new-price"><i class="fa fa-building"></i>&nbsp;&nbsp;개발자 (${gRow.FREELANCER_MIDDEL_KATEGORY})</span>
															</c:when>
															
															<c:when test="${gRow.FREELANCER_MAIN_KATEGORY eq '디자인'}">
																<span class="new-price"><i class="fa fa-picture-o"></i>&nbsp;&nbsp;디자이너(${gRow.FREELANCER_MIDDEL_KATEGORY})</span>
															</c:when>
													</c:choose>
												</div>
												<div class="new-price1">
													<i class="fa fa-language"></i>&nbsp;${gRow.FREELANCER_SKILL }
												</div>
											</div>
										</div>
									</div>
									</c:forEach>		
								</div>
							</div>
							
							<!-- List 형으로 글 목록 출력 -->
							<div id="menu1" class="tab-pane fade">
								<div class="row">
								<!-- 글 리스트 시작 -->	
								<c:forEach var="lRow" items="${viewAll }">
										<div class="single-shop-product">
											<div class="col-xs-12 col-sm-5 col-md-4">
												<div class="left-item">
													<a href="single-product.html" title="People of the book">
														<img src="resources/writer/img/featured/2.jpg" alt="">
													</a>
												</div>
											</div>
											<div class="col-xs-12 col-sm-7 col-md-8">
												<div class="deal-product-content">
													<h4>
														<a href="single-product.html" title="">${lRow.USER_ID }</a>
													</h4>
													<div class="product-price">
														<c:choose>
															<c:when test="${lRow.FREELANCER_MAIN_KATEGORY eq '개발'}">
																<span class="new-price"><i class="fa fa-building"></i>&nbsp;&nbsp;개발자(${gRow.FREELANCER_MIDDEL_KATEGORY})</span> <span>|</span>
															</c:when>
															
															<c:when test="${lRow.FREELANCER_MAIN_KATEGORY eq '디자인'}">
															<span class="new-price"><i class="fa fa-picture-o"></i>&nbsp;&nbsp;디자이너(${gRow.FREELANCER_MIDDEL_KATEGORY})</span>	 <span>|</span>
															</c:when>
														</c:choose>
														<!-- fa fa-child => fa fa-language -->
														<span class="new-price1"><i class="fa fa-language"></i>&nbsp;&nbsp;${lRow.FREELANCER_SKILL }</span> <span>|</span>
														<span class="text-light">${lRow.FREELANCER_MIDDEL_KATEGORY }</span> 
														<!-- <span class="old-price">$ 120.00</span> -->
													</div>
													<!-- <div class="list-rating-icon">
														<i class="fa fa-star icolor"></i> <i
															class="fa fa-star icolor"></i> <i
															class="fa fa-star icolor"></i> <i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
													</div> -->
													<p> ${lRow.FREELANCER_ABOUT_ME }</p>
													<div class="availability">
														<span><a href="cart.html">프리랜서 상세 보러가기</a></span>
													</div>
												</div>
											</div>
										</div>
									</c:forEach>
									</div>
								</div>
							</div>
						</div>
					</div>
					<br>
					
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