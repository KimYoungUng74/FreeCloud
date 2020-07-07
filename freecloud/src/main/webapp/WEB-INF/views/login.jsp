<!doctype html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<html>
<head>
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
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>

<!-- My Script -->
<script>
	function idDialog() {
		$("#idDialog").dialog("open");
	}
</script>
<script type="text/javascript">
	$(function() {
		//아이디 찾기
		$('#SEEK_ID').click(function() {
			
			$.ajax({
				type : "POST",
				url : "seekId",
				data : {
					"name" : $('.seekid #USER_NAME').val(),
					"email" : $('.seekid #USER_EMAIL').val()
				},
				success : function(data) { //data : seekId에서 넘겨준 결과값(id)
					alert(data);
				}
			})
		})

	});
	
	$(function() {
		//비밀번호 찾기
		$('#SEEK_PW').click(function() {
			
			$.ajax({
				type : "POST",
				url : "seekPw",
				data : {
					"id" : $('.seekpw #USER_ID').val(),
 					"name" : $('.seekpw #USER_NAME').val(),
					"email" : $('.seekpw #USER_EMAIL').val()
				},
				success : function(data) { //data : seekPw에서 넘겨준 결과값(pw)
					alert(data);
				}
			})
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
	<c:if test="${msg == 'failure'}">
		<script>
			alert("아이디나 비밀번호를 확인하세요");
		</script>
	</c:if>
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
										<a href="projectSearch.do">프로젝트</a>
									</h4>
									<ul class="sub-menu">
										<li><a href="projectReg.do">프로젝트 등록</a></li>
										<li><a href="projectSearch.do">프로젝트 찾기</a></li>
									</ul></li>
								<li><h4>
										<a href="freelancerSearch.do">프리랜서 찾기</a>
									</h4></li>
								<li><h4>
										<a href="boardList.do">정보구름</a>
									</h4><ul class="sub-menu">
                              <li><a href="boardReg.do">게시글 등록</a></li>
                              <li><a href="boardList.do">게시글 목록</a></li>
                           </ul></li>
								<li><h4>
										<a href="about.do">서비스 안내</a>
									</h4>
									<ul class="sub-menu">
										<li><a href="useProject.do">프로젝트 이용방법</a></li>
										<li><a href="useFreelancer.do">프리랜서 이용방법</a></li>
										<li><a href="useProjectSerch.do">프로젝트 찾기</a></li>
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
							<ul id="nav">
								<li><h4>
										<a href="projectSearch.do">프로젝트</a>
									</h4>
									<ul class="sub-menu">
										<li><a href="projectReg.do">프로젝트 등록</a></li>
										<li><a href="projectSearch.do">프로젝트 찾기</a></li>
									</ul></li>
								<li><h4>
										<a href="freelancerSearch.do">프리랜서 찾기</a>
									</h4></li>
								<li><h4>
										<a href="boardList.do">정보구름</a>
									</h4><ul class="sub-menu">
                              <li><a href="boardReg.do">게시글 등록</a></li>
                              <li><a href="boardList.do">게시글 목록</a></li>
                           </ul></li>
								<li><h4>
										<a href="about.do">서비스 안내</a>
									</h4>
									<ul class="sub-menu">
										<li><a href="useProject.do">프로젝트 이용방법</a></li>
										<li><a href="useFreelancer.do">프리랜서 이용방법</a></li>
										<li><a href="useProjectSerch.do">프로젝트 찾기</a></li>
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
						data-wow-delay=".2s">
						<div class="counter-info">
							<span class="fcount"> <span class="counter">${regProject}</span>
							</span>
							<h3>프로젝트 수</h3>
						</div>
					</div>
				</div>
				<div class="col-md-2 col-sm-3 col-xs-6">
					<div class="single-counter wow" data-wow-duration="1.5s"
						data-wow-delay=".2s">
						<div class="counter-info">
							<span class="fcount"> <span class="counter">${regFree}</span>명
							</span>
							<h3>프리랜서 수</h3>
						</div>
					</div>
				</div>
				<div class="col-md-5 col-sm-3 col-xs-6">
					<div class="single-counter wow" data-wow-duration="1.5s"
						data-wow-delay=".2s">
						<div class="counter-info">
							<span class="fcount"> <span class="counter">${edPrice}</span>원
							</span>
							<h3>완료 금액</h3>
						</div>
					</div>
				</div>
				<div class="col-md-2 col-sm-3 col-xs-6">
					<div class="single-counter wow" data-wow-duration="1.5s"
						data-wow-delay=".2s">
						<div class="counter-info">
							<span class="fcount"> <span class="counter">${allUser}</span>명
							</span>
							<h3>회원 수</h3>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Counter Area End -->
	<!-- Breadcrumbs Area Start -->
	<!-- Loging Area Start -->
	<div class="login-account section-padding">
		<div class="container">
			<div class="row">
				<div>
					<form action="loginCheck.do" class="create-account-form"
						method="post">
						<h2 class="heading-title">로그인</h2>
						<p>
							<b>아이디</b>
						</p>
						<p class="form-row">
							<input type="text" name="USER_ID" placeholder="ID 입력">
						</p>
						<p>
							<b>비밀번호</b>
						</p>
						<p class="form-row">
							<input type="password" name="USER_PW" placeholder="PW 입력">
						</p>
						<div class="col-md-2 lost-password form-group">
							<a href="#" title="Quick view" data-toggle="modal"
								data-target="#idDialog">아이디 찾기</a>
						</div>
						<div class="col-md-10 lost-password form-group">
							<a href="#" title="Quick view" data-toggle="modal"
								data-target="#pwDialog">비밀번호 찾기</a>
						</div>
						<div class="submit" style="float: center">
							<button name="loginBtn" id="loginBtn" type="submit"
								class="btn-default" style="width: 100%">
								<span> <i class="fa fa-user left"></i> 로그인
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
	<!--Quickview Product Start -->
	<div id="quickview-wrapper">
		<!-- Modal -->
		<div class="modal fade" id="idDialog" tabindex="-1" role="dialog">
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
											<h2 class="heading-title">아이디 찾기</h2>
											
											<p>
												<b>이름</b>
											</p>
											
											<p class="form-row seekid">
												<input type="text" id="USER_NAME" placeholder="이름 입력">
											</p>
											
											<p>
												<b>이메일 주소</b>
											</p>
											
											<p class="form-row seekid">
												<input type="email" id="USER_EMAIL" placeholder="이메일 입력">
											</p>
											
											<div class="submit" style="float: center">
												<button name="SEEK_ID" id="SEEK_ID"
													class="btn-default" style="width: 100%">
													<span> <i class="fa fa-user left"></i> 아이디 찾기
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
											<h2 class="heading-title">비밀번호 찾기</h2>
											<p>
												<b>아이디</b>
											</p>
											<p class="form-row seekpw">
												<input type="text" id="USER_ID" placeholder="아이디 입력">
											</p>
											<p>
												<b>이름</b>
											</p>
											
											<p class="form-row seekpw">
												<input type="text" id="USER_NAME" placeholder="이름 입력">
											</p>
											
											<p>
												<b>이메일 주소</b>
											</p>
											
											<p class="form-row seekpw">
												<input type="email" id="USER_EMAIL" placeholder="이메일 입력">
											</p>

											<div class="submit" style="float: center">
												<button name="SEEK_PW" id="SEEK_PW"
													class="btn-default" style="width: 100%">
													<span> <i class="fa fa-user left"></i> 비밀번호 찾기
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