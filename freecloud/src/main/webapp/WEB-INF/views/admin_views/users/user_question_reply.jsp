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
	$(function() {
		//프로필 바꾸기
		$('#CHANGE')
				.click(
						function() {
							// ajax로 전달할 폼 객체
							var formData = new FormData();
							// 폼 객체에 파일추가, append("변수명", 값)
							formData.append('file', $('#file')[0].files[0]);
							formData.append('originalProfile', $(
									'#originalProfile').val());
							$
									.ajax({
										type : "POST",
										url : "fileUploadAjax.do",
										data : formData,
										dataType : "text",
										processData : false,
										contentType : false,
										success : function(data) { //data : checkId에서 넘겨준 결과값
											if ($.trim(data) != "Fail") {
												var test = "<img alt=\"\"src=\"<c:url value='http://localhost:8181/img/profile/"
														+ $.trim(data)
														+ "'/>\">";
												$('#profile').html(test);
												$('#profileClose').click();

											} else {
												alert("실패");
											}
										}
									})
						})

		// 비밀번호 확인				
		$(function() {
			//비밀번호 확인
			$('#myPass').click(function() {

				$.ajax({
					type : "POST",
					url : "checkMyPass.do",
					data : {
						"pw" : $('#myPassCheck').val()
					},
					success : function(data) { //data : seekPw에서 넘겨준 결과값(pw)
						if (data == "Not_Match") {
							alert("비밀번호가 일치하지 않습니다.");
						} else {
							$('#infoForm').submit();
						}
					}
				})
			})

		});

		// 포트폴리오 전송
		$('#portfolioBtn')
				.click(
						function() {
							// ajax로 전달할 폼 객체
							var formData = new FormData();
							// 폼 객체에 파일추가, append("변수명", 값)
							formData.append('portfolio',
									$('#myPortfolio')[0].files[0]);

							$
									.ajax({
										type : "POST",
										url : "myPortfolioUploadAjax.do",
										data : formData,
										dataType : "text",
										processData : false,
										contentType : false,
										success : function(data) { //data : checkId에서 넘겨준 결과값
											if ($.trim(data) != "Fail") {
												var idx = data.indexOf("_") + 1;
												var test = "<div><a href='${path}/upload/displayFile?fileName="
														+ data
														+ "'>"
														+ data.substr(idx)
														+ "</a><span data-src="+data+">[삭제]</span></div>";
												$('#portfolio').html(test);
											} else {
												alert("실패");
											}
										}
									})
						})

		$("#portfolio").on("click", "span", function(event) {
			var that = $(this); // 여기서 this는 클릭한 span태그
			$.ajax({
				url : "myPortfolioDeleteAjax.do",
				type : "post",
				// data: "fileName="+$(this).attr("date-src") = {fileName:$(this).attr("data-src")}
				// 태그.attr("속성")
				data : {
					fileName : $(this).attr("data-src")
				}, // json방식
				dataType : "text",
				success : function(result) {
					if (result == "deleted") {
						// 클릭한 span태그가 속한 div를 제거
						that.parent("div").remove();
					}
				}
			});
		})
	});
</script>
<script type="text/javascript">
	$(function() {

		$('#CATAGORY1')
				.change(
						function() {
							$('#CATAGORY2').children('option').remove();
							if ($("#CATAGORY1 option:selected").val() == "") {
								num = new Array("중분류 선택");
								vnum = new Array("");
							} else if ($("#CATAGORY1 option:selected").val() == "design") {
								num = new Array("웹", "제품", "프리젠테이션", "인쇄물",
										"커머스, 쇼핑몰", "로고", "그래픽", "영상", "게임",
										"기타");
								vnum = new Array("WEB", "PRODUCT", "PRE",
										"PRINT", "SHOP", "LOGO", "GRAPHIC",
										"VIDEO", "GAME", "OTHER");
							} else if ($("#CATAGORY1 option:selected").val() == "devel") {
								num = new Array("웹", "애플리케이션", "워드프로세스",
										"퍼블리싱", "일반 소프트웨어", "커머스, 쇼핑몰", "게임",
										"임베디드", "기타");
								vnum = new Array("WEB", "APP", "WORD", "PUB",
										"SOFT", "SHOP", "GAME", "IMB", "OTHER");
							}

							for (var i = 0; i < num.length; i++) {
								$("#CATAGORY2").append(
										"<option value='"+vnum[i]+"'>" + num[i]
												+ "</option>");
							}
						})

		$('#skillBtn').click(
				function() {
					if ($('#mySkill').val() == "") {
						$('#mySkill').val($('#skillInput').val());
					} else {
						var oldMySkill = $('#mySkill').val();
						var newMySkill = oldMySkill.split(',');
						for ( var i in newMySkill) {
							if ($('#skillInput').val() == newMySkill[i]) {
								alert("이미 등록된 보유기술입니다.");
								return;
							}
						}
						$('#mySkill').val(
								$('#mySkill').val() + ","
										+ $('#skillInput').val());
						$('#skillInput').val("");
					}
				})

		$('#skillDeleteBtn').click(
				function() {
					if ($('#mySkill').val() == "") {
						alert("제거할 보유기술이 없습니다.");
					} else {
						var oldMySkill = $('#mySkill').val();
						var newMySkill = oldMySkill.split(',');
						$('#mySkill').val("");
						for ( var i in newMySkill) {
							if ($('#skillInput').val() == newMySkill[i]) {
								continue;
							} else {
								if ($('#mySkill').val() == "") {
									$('#mySkill').val(newMySkill[i]);
								} else {
									$('#mySkill').val(
											$('#mySkill').val() + ","
													+ newMySkill[i]);
								}

							}
						}
						$('#skillInput').val("");
					}
				})
		$('#licenseBtn').click(
				function() {
					if ($('#myLicense').val() == ""
							&& !($('#licenseInput').val() == "")) {
						$('#myLicense').val($('#licenseInput').val());
					} else {

						var oldMySkill = $('#myLicense').val();
						var newMySkill = oldMySkill.split(',');
						for ( var i in newMySkill) {
							if ($('#licenseInput').val() == newMySkill[i]) {
								alert("이미 등록된 자격증입니다.");
								return;
							}
						}
						$('#myLicense').val(
								$('#myLicense').val() + ","
										+ $('#licenseInput').val());
						$('#licenseInput').val("");
					}
				})
		$('#licenseDeleteBtn').click(
				function() {
					if ($('#myLicense').val() == "") {
						alert("제거할 자격증이 없습니다.");
					} else {
						var oldMyLicense = $('#myLicense').val();
						var newMyLicense = oldMyLicense.split(',');
						$('#myLicense').val("");
						for ( var i in newMyLicense) {
							if ($('#licenseInput').val() == newMyLicense[i]) {
								continue;
							} else {
								if ($('#myLicense').val() == "") {
									$('#myLicense').val(newMyLicense[i]);
								} else {
									$('#myLicense').val(
											$('#myLicense').val() + ","
													+ newMyLicense[i]);
								}

							}
						}
						$('#licenseInput').val("");
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
						<nav id="dropdown">
							<ul id="nav">
								<li><h4>
										<a href="projectSearch.do">회원 관리</a>
									</h4>
									<ul class="sub-menu">
										<li><a href="projectReg.do">회원정보 관리</a></li>
										<li><a href="projectSearch.do">문의내역 관리</a></li>
										<li><a href="projectSearch.do">제재내역 관리</a></li>
									</ul></li>
								<li><h4>
										<a href="projectSearch.do">수익 관리</a>
									</h4>
									<ul class="sub-menu">
										<li><a href="projectReg.do">중개수수료 관리</a></li>
										<li><a href="projectSearch.do">프리미엄등급 구독료 관리</a></li>
									</ul></li>
								<li><h4>
										<a href="boardList.do">게시판 관리</a>
									</h4>
								<li><h4>
										<a href="about.do">통계 안내</a>
									</h4>
									<ul class="sub-menu">
										<li><a href="useProject.do">회원 수 통계</a></li>
										<li><a href="useFreelancer.do">프로젝트 통계</a></li>
										<li><a href="useProjectSerch.do">수익 통계</a></li>
									</ul></li>
							</ul>
						</nav>
					</div>
				</div>
				<div class="col-md-3">
					<br> <input type="text" placeholder="검색어를 입력하세요">
					<button name="submitcreate" id="submitcreate" type="submit"
						class="btn-default">
						<span> <i class="fa fa-search left"></i>

						</span>
					</button>

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
									</h4>
									<ul class="sub-menu">
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
	<!-- Shop Area Start -->
	<div class="shopping-area section-padding">
		<div class="container">
			<div class="row">
				<div>
					<form action="boardRegOk.do" class="create-account-form" method="post" id="frm">
						<h2 class="heading-title">답변 등록</h2>
						
						<div class="shop-select" style="display: inline; width: 25%;">
							<label><b>카테고리&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></label>
							<select name="BBS_MAIN_KATEGORY" id="BBS_MAIN_KATEGORY" style="width: 25%">
								<option hidden="" value="none">분류</option>
								<option value="오류">오류</option>
								<option value="버그">버그</option>
								<option value="기타">기타</option>
							</select>
						</div>		
						
						<p class="form-row">
							<b>제목</b><b></b><label for="subMessage" id="subMessage"></label> <br>
							<br> <input type="text" name="BBS_SUBJECT" id="BBS_SUBJECT" placeholder="제목" onkeyup="subCheck()">
						</p>

						<p>
							<b>내용</b><label for="conMessage" id="conMessage"></label> 
						</p>

						<p class="form-row order-notes">
							<textarea name="BBS_CONTENT" id="BBS_CONTENT" placeholder="상세 내용" onkeyup="conCheck()"></textarea>
						</p>
						
						<p>
							<b>답변</b><label for="conMessage" id="conMessage"></label> 
						</p>

						<p class="form-row order-notes">
							<textarea name="BBS_CONTENT" id="BBS_CONTENT" placeholder="답변 내용" onkeyup="conCheck()"></textarea>
						</p>
					
						<br>					
						<div class="submit" style="display: inline;">
							
							<button name="pCancle" id="pCancle" type="button" class="btn-default" style="width:51%">
								<span> <i class="fa fa-user left"></i> 취소
								</span>
							</button>
							
						</div>
						
						<div class="submit" style="display: inline;">
							
							<button name="pReg" id="pReg" type="button" onclick="fCheck()" class="btn-default" style="width:48%">
								<span> <i class="fa fa-user left"></i> 등록
								</span>
							</button>
							
						</div>
						

					</form>
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

		<!-- 비밀번호 확인 -->

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
										<h2 class="heading-title">비밀번호 확인</h2>

										<p>
											<b>비밀번호 확인</b>
										</p>

										<p class="form-row seekid">
											<input type="password" id="myPassCheck">
										</p>

										<div class="submit" style="float: center">
											<button name="myPass" id="myPass" class="btn-default"
												style="width: 100%">
												<span> <i class="fa fa-user left"></i> 확인
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
		<!-- 비밀번호 확인 -->

		<!-- 이미지 변경 -->
		<div class="modal fade" id="pwDialog" tabindex="-1" role="dialog">
			<div class="modal-dialog" id="profileChange" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" id="profileClose"
							data-dismiss="modal" aria-label="Close">
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
											<b>이미지파일</b>
										</p>
										<p class="form-row seekpw">
											<input type="file" name="file" id="file" placeholder="아이디 입력">
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
		<!-- 이미지 변경 -->


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