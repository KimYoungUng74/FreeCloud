<!doctype html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<html>
<head>
<style type="text/css">
   .chklist { height: 100px; overflow: auto; width: 100px; border: 1px solid #D3D3D3; }
   .chklist { list-style-type: none; padding: 0; overflow-x: hidden; }
   .listc {  padding: 0; }
   .wKind {border: 1px solid #D3D3D3; }
   
 </style>
 
<script type="text/javascript">


	//3자리당 콤마
	
	window.onload = function viewComma() {
		
		var budget = $("#PROJECT_BUDGET").val();
		
		str = String(budget);
		budget = str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');

		
		document.getElementById('PROJECT_BUDGET_COMMA').value = budget;
	}
	
	function comma(str) {
		str = String(str);
		return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
	}
	
	
	//콤마풀기
	function uncomma(str) {
	    str = String(str);
	    return str.replace(/[^\d]+/g, '');
	}
	
	//Input Box에 보여주기 위한 콤마 함수
	function inputNumberFormat(obj) {
		
	    obj.value = comma(uncomma(obj.value));
	}

	
	function fCheck(){		
		alert("프로젝트 신청 완료");
		
	
		document.getElementById('frm').submit();	
		return true;
		
	}
	
	
</script>
 
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Creat An Account || Witter Multipage Responsive Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- favicon -->
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
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
	<c:if test="${msg == 'logout'}">
		<script>
			alert("로그아웃 되었습니다.");
		</script>
	</c:if>

	<%
	if(session.getAttribute("userId")==null) {	
	%>
		<script>
			alert("로그인 하세요..");
			location.href="home.do";
		</script>
	<%
	}
	%>
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
	<!-- Loging Area Start -->

	<!-- <div class="panel-body">
		<div class="row">
			<div class="col-md-12">
				<div class="shop-select">
					<label>Country <span class="required">*</span></label> <select>
						<option value="volvo">Bangladesh</option>
						<option value="saab">Algeria</option>
						<option value="mercedes">Afghanistan</option>
						<option value="audi">Ghana</option>
						<option value="audi2">Albania</option>
						<option value="audi3">Bahrain</option>
						<option value="audi4">Colombia</option>
						<option value="audi5">Dominican Republic</option>
					</select>
				</div>
			</div>
			<div class="col-md-6">
				<p class="form-row">
					<input type="text" placeholder="First Name *">
				</p>
			</div>
			<div class="col-md-6">
				<p class="form-row">
					<input type="text" placeholder="Last Name *">
				</p>
			</div>
			<div class="col-md-12">
				<p class="form-row">
					<input type="text" placeholder="Company Name">
				</p>
			</div>
			<div class="col-md-12">
				<p class="form-row">
					<input type="text" placeholder="Street address">
				</p>
			</div>
			<div class="col-md-12">
				<p class="form-row">
					<input type="text" placeholder="Town / City">
				</p>
			</div>
			<div class="col-md-6">
				<p class="form-row">
					<input type="text" placeholder="State / County *">
				</p>
			</div>
			<div class="col-md-6">
				<p class="form-row">
					<input type="text" placeholder="Postcode / Zip">
				</p>
			</div>
			<div class="col-md-6">
				<p class="form-row">
					<input type="text" placeholder="Email Address *">
				</p>
			</div>
			<div class="col-md-6">
				<p class="form-row">
					<input type="text" placeholder="Phone *">
				</p>
			</div>
			<div class="col-md-12">
				<label class="checbox-info"> <input type="checkbox"
					id="cbox"> Create an account?
				</label>
				<div id="cbox_info">
					<p>Create an account by entering the information below. If you
						are a returning customer please login at the top of the page.</p>
					<p class="form-row form-row-phone">
						<label>Phone<span class="required">*</span></label> <input
							type="text" placeholder="Phone">
					</p>
				</div>
			</div>
		</div>
	</div>-->
	
	<%
		String PROJECT_IDX = request.getParameter("PROJECT_IDX");
		String CLIENT_ID = request.getParameter("USER_ID");
	%>
	<div class="login-account section-padding">
		<div class="container">
			<div class="row">
				<div>
					<form action="projectJoinOk.do" class="create-account-form" id="frm">
						<h2 class="heading-title">프로젝트 상세보기</h2>
						
						<input type="hidden" value=<%=PROJECT_IDX %> id="PROJECT_IDX" name="PROJECT_IDX">
						<input type="hidden" value=<%=CLIENT_ID %> id="CLIENT_ID" name="CLIENT_ID">
						
						<div class="shop-select" style="display: inline; width: 25%;">
							<label><b>카테고리&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></label>
							<select name="PROJECT_MAIN_KETEGORY" id="PROJECT_MAIN_KETEGORY" style="width: 25%" onchange="categoryChange(this)">
								
								<option value="${dto.PROJECT_MAIN_KATEGORY }">${dto.PROJECT_MAIN_KATEGORY }</option>
								
							</select>
						</div>						
						<label for="mainKMessage" id="mainKMessage"></label> 
						
						<div class="shop-select" style="display: inline; width: 25%;">
							<!-- <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;중분류 </label> -->
							<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b> 
							<select name= "PROJECT_MIDDLE_KATEGORY" id="PROJECT_MIDDLE_KATEGORY" style="width: 25%">
								<option value="${dto.PROJECT_MIDDLE_KATEGORY }">${dto.PROJECT_MIDDLE_KATEGORY }</option>
							</select>
	
						</div>
						<label for="middleKMessage" id="middleKMessage"></label> 
						<br>

						<p class="form-row">
							<label for="subMessage" id="subMessage"></label></b> <br>
							<br> <input type="text" name="PROJECT_SUBJECT" id="PROJECT_SUBJECT" placeholder="제목" onkeyup="subCheck()" value="${dto.PROJECT_SUBJECT }" readonly="readonly">
						</p>
						

						<p>
							<b>상세업무</b><label for="conMessage" id="conMessage"></label> 
						</p>

						<p class="form-row order-notes">
							<textarea name="PROJECT_CONTENT" id="PROJECT_CONTENT" placeholder="상세 내용 기입" onkeyup="conCheck()" readonly="readonly">${dto.PROJECT_CONTENT }</textarea>
						</p>


						<div class="col-md-4" style="display: inline; width: 50%;">
							<b>프로젝트 시작일</b> <label for="sdMessage" id="sdMessage"></label> 
							<br>
							<p class="form-row"">

								<input style="display: inline;" type="text" name="PROJECT_START_DATE" id="PROJECT_START_DATE" onkeyup="sdCheck()" value="${dto.PROJECT_START_DATE}" readonly="readonly"
									placeholder="Ex)2020-05-05">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							</p>
						</div>

						<div class="col-md-4" style="display: inline; width: 50%;">
							<p class="shop-select">
								<b>근무 위치</b><br><label for="addMessage" id="addMessage"></label> 
								<br> <select name="PROJECT_ADDRESS" id="PROJECT_ADDRESS" onchange="addCheck(this)">							
									<option value="${dto.PROJECT_ADDRESS }">${dto.PROJECT_ADDRESS }</option>
								</select>
							</p>
						</div>

						<div class="col-md-4" style="display: inline; width: 51%;">
							<b>모집 마감일</b> <label for="edMessage" id="edMessage"></label> 
							<br>
							<p class="form-row"">

								<input style="display: inline;" type="text" name="PROJECT_END_DATE" id="PROJECT_END_DATE" onkeyup="edCheck()" value="${dto.PROJECT_END_DATE }" readonly="readonly"
									placeholder="Ex)2020-05-05">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							</p>
						</div>

						<div class="col-md-4" style="display: inline; width: 30%;">
							<b>근무 형태</b><label for="workMessage" id="workMessage"></label> <br>
							<br>
							<p style="font-size: 23px;" class="wkind">
								<c:choose>
									<c:when test="${dto.PROJECT_WORKING_KIND eq '외주' }">
										&nbsp;&nbsp; <input type="radio" id="WORKING_KIND" name="WORKING_KIND" value="외주" onclick="workCheck()" checked="checked" disabled="true"
										style="width: 18px; height: 18px">&nbsp;&nbsp;외주&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" id="WORKING_KIND" name="WORKING_KIND" onclick="workCheck()" readonly="readonly" disabled="true"
										value="상주 " style="width: 18px; height: 18px">&nbsp;&nbsp;상주
									</c:when>
									
									<c:when test="${dto.PROJECT_WORKING_KIND eq '상주' }">
										&nbsp;&nbsp; <input type="radio" id="WORKING_KIND" name="WORKING_KIND" value="외주" onclick="workCheck()" disabled="true"
										style="width: 18px; height: 18px">&nbsp;&nbsp;외주&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" id="WORKING_KIND" name="WORKING_KIND" onclick="workCheck()" checked="checked" disabled="true"
										value="상주 " style="width: 18px; height: 18px">&nbsp;&nbsp;상주
									</c:when>								
								</c:choose>
							</p>
						</div>

						<div class="col-md-4" style="display: inline; width: 51%;">
							<b>프로젝트 예산</b><label for="budgetMessage" id="budgetMessage"></label> <br>
							<br>
							<p class="form-row"">

								<input style="display: inline;" type="text" name="PROJECT_BUDGET_COMMA" id="PROJECT_BUDGET_COMMA" onkeyup="budCheck();"
									placeholder="예산 입력" readonly="readonly">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="hidden" name="PROJECT_BUDGET" id="PROJECT_BUDGET" value="${dto.PROJECT_BUDGET}">
									
								
							</p>
						</div>

						<div class="col-md-4" style="display: inline; width: 30%;">
							<b>예산 조율 여부</b><br>
							<br>
							<p style="font-size: 23px;" class="cooldi">
								<c:choose>
									<c:when test="${dto.PROJECT_BUDGET_COORDINATION eq 0}">
										&nbsp;&nbsp; <input type="radio" id="PROOJECT_BUDGET_COORDINATION" name="PROOJECT_BUDGET_COORDINATION" value="0" onclick="coorCheck()" checked="checked" disabled="true"
										style="width: 18px; height: 18px">&nbsp;&nbsp;가능&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" id="PROOJECT_BUDGET_COORDINATION" name="PROOJECT_BUDGET_COORDINATION" onclick="coorCheck()" disabled="true"
										value="1" style="width: 18px; height: 18px">&nbsp;&nbsp;불가능
									</c:when>
									
									<c:when test="${dto.PROJECT_BUDGET_COORDINATION eq 1} ">
										&nbsp;&nbsp; <input type="radio" id="PROOJECT_BUDGET_COORDINATION" name="PROOJECT_BUDGET_COORDINATION" value="0" onclick="coorCheck()"  disabled="true"
										style="width: 18px; height: 18px">&nbsp;&nbsp;가능&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" id="PROOJECT_BUDGET_COORDINATION" name="PROOJECT_BUDGET_COORDINATION" onclick="coorCheck()" checked="checked" disabled="true"
										value="1" style="width: 18px; height: 18px">&nbsp;&nbsp;불가능
									</c:when>
								</c:choose>
							</p>
						</div>

						<!-- <div class="col-md-4" style="display: inline; width: 50%;">
							<b>프리랜서 지원현황</b><br><br>
							<ul class="chklist"style="width: 100%">
								<li class="listc"><label for="chk1"><input type="checkbox"
										name="chk1" id="chk1">First</label></li>
								<li class="listc"><label for="chk2"><input type="checkbox"
										name="chk2" id="chk2">Second</label></li>
								<li class="listc"><label for="chk3"><input type="checkbox"
										name="chk3" id="chk3">Third</label></li>
								<li class="listc"><label for="chk4"><input type="checkbox"
										name="chk4" id="chk4">Fourth</label></li>
								<li class="listc"><label for="chk5"><input type="checkbox"
										name="chk5" id="chk5">Fifth</label></li>
								<li class="listc"><label for="chk6"><input type="checkbox"
										name="chk6" id="chk6">Sixth</label></li>
								<li class="listc"><label for="chk7"><input type="checkbox"
										name="chk7" id="chk7">Seventh</label></li>
							</ul>
							<br>
						</div>
						
						<div class="col-md-4" style="display: inline;">
							<br><br>
							<div class="submit">
							<button name="loginBtn" id="loginBtn" type="submit"
								class="btn-default">
								<span> <i class="fa fa-user left"></i> 마감하기
								</span>
							</button>
							</div>
						<br>
						</div> -->
						
						<div class="submit" style="display: inline;">
							
							<button name="pCancle" id="pCancle" type="button"
								class="btn-default" style="width:51%">
								<span> <i class="fa fa-user left"></i> 취소
								</span>
							</button>
							
						</div>
						
						<div class="submit" style="display: inline;">
							
							<button name="pReg" id="pReg" type="button" onclick="fCheck()"
								class="btn-default" style="width:48%">
								<span> <i class="fa fa-user left"></i> 프로젝트 신청하기
								</span>
							</button>
							
						</div>
						

					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- Loging Area End -->
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