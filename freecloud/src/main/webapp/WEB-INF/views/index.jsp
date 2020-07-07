<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<html>
<head>
    
    
    <title>Hello World</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>

    <!-- CSS -->
    <link rel="stylesheet"
	href="<c:url value='resources/css/style.css'/>">
    

    <!-- JavaScript -->
    <link rel="stylesheet"
	href="<c:url value='resources/js/bootstrap.min.css'/>">

    <!-- Font -->
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:700,900" rel="stylesheet">

    <link rel="stylesheet"
	href="<c:url value='resources/css/bootstrap.min.css'/>">

</head>
<body>
  <!-- 
  <header class="blog-header py-3">
    <div class="row flex-nowrap justify-content-between align-items-center">
      <div class="col-4 pt-1">
        <a class="text-muted" href="#">Subscribe</a>
      </div>
      <div class="col-4 text-center">
        <a class="blog-header-logo text-dark" href="#">Large</a>
      </div>
      <div class="col-4 d-flex justify-content-end align-items-center">
        <a class="text-muted" href="#" aria-label="Search">
          <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="mx-3" role="img" viewBox="0 0 24 24" focusable="false"><title>Search</title><circle cx="10.5" cy="10.5" r="7.5"></circle><path d="M21 21l-5.2-5.2"></path></svg>
        </a>
        <a class="btn btn-sm btn-outline-secondary" href="#">Sign up</a>
      </div>
    </div>
  </header>

  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">
      <img src="Images/Logo_icon.png" width="30" height="30" alt="" loading="lazy">
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
  
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link" href="#">메인 <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">사용방법</a>
        </li>
        <!-- 
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Dropdown
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="#">Action</a>
            <a class="dropdown-item" href="#">Another action</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">Something else here</a>
          </div>
        </li>
      -->
      <!--
        <li class="nav-item">
          <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
        </li>
        
      </ul>

      <form class="form-inline my-2 my-lg-0">
        <div class="dropdown">
          <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Dropdown button
          </button>
          <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
            <a class="dropdown-item" href="#">로그인</a>
            <a class="dropdown-item" href="#">회원가입</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">아이디/비밀번호 찾기</a>
          </div>
        </div>
      </form>
    </div>
  </nav>

    <div class="container">
      <div class="content1">
        <img class="logoIm" src="Images/Logo1.png">
      </div>
    </div>

  -->
  <div class="container">
    <!-- Header-->
    <header class="blog-header py-3">
      <div class="row flex-nowrap justify-content-between align-items-center">
        <div class="col-4 pt-1">
          <a class="navbar-brand" href="#">
            <img src="Images/Logo_icon.png" width="30" height="30" alt="" loading="lazy">
          </a>
        </div>
        <div class="col-4 text-center">
          <a class="blog-header-logo text-dark" href="#"><h3>Community Collection</h3></a>
        </div>
        <div class="col-4 d-flex justify-content-end align-items-center">
          
          <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Sign Up
          </button>
          <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
            <a class="dropdown-item" href="#">로그인</a>
            <a class="dropdown-item" href="#">회원가입</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">아이디/비밀번호 찾기</a>
          </div>
        </div>
        
      </div>
    </header>
    <hr>
    
    <!-- Nav -->
    <div class="nav-scroller py-1 mb-2">
      <nav class="nav d-flex justify-content-between">
        <a class="p-2 text-muted" href="#">사이트 소개</a>
        <a class="p-2 text-muted" href="#">이용방법</a>
        <a class="p-2 text-muted" href="#">사이트 등록</a>
        <a class="p-2 text-muted" href="#">게시글 모아보기</a>     
        <a class="p-2 text-muted" href="#">FAQ</a>
        
      </nav>
    </div>
  
    <!-- Content1 -->
    <div class="jumbotron p-4 p-md-5 text-white rounded bg-dark">
      <div class="col-md-6 px-0">
        <h1 class="display-4 font-italic">Community Collection?</h1>
        <p class="lead my-3">자신의 취향에 맞는 사이트들을 종합하여 <br>자신만의 사이트 컬렉션을 만들어보세요!</p>
        <p class="lead mb-0"><a href="#" class="text-white font-weight-bold">이용방법 보러가기</a></p>
      </div>
    </div>
  
    <!-- Content2 -->
    <div class="row mb-2">
      <div class="col-md-6">
        <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
          <div class="col p-4 d-flex flex-column position-static">
            <strong class="d-inline-block mb-2 text-primary">사이트 등록</strong>
            <h3 class="mb-0">원하는 사이트를 <br>등록하세요!</h3>
            <div class="mb-1 text-muted"><hr></div>
            <p class="card-text mb-auto">자신이 원하는 사이트들을 등록하여 <br>한 곳으로 모아보세요!</p>
            <a href="#" class="stretched-link">사이트 등록하기</a>
          </div>
          <div class="col-auto d-none d-lg-block">
            <svg class="bd-placeholder-img cImag1" width="200" height="250" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" 
            aria-label="Placeholder: Thumbnail" style="background-image: url(Images/cursor1.png); background-size: cover;"> 
              
              <title>Placeholder</title>
              <rect width="100%" height="100%" fill="url(Iamges/cursor1.png)"></rect>
              
            </svg>
          </div>
        </div>
      </div>
      <div class="col-md-6">
        <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
          <div class="col p-4 d-flex flex-column position-static">
            <strong class="d-inline-block mb-2 text-success">게시글 모아보기</strong>
            <h3 class="mb-0">등록한 사이트의 <br>게시글을 보러가요!</h3>
            <div class="mb-1 text-muted"><hr></div>
            <p class="mb-auto">자신의 등록한 사이트의 게시글들을 <br> 한 곳에 모아서 보세요!</p>
            <a href="#" class="text-success stretched-link">게시글 보러가기</a>
          </div>
          <div class="col-auto d-none d-lg-block">
            <svg class="bd-placeholder-img" width="200" height="250" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" 
            aria-label="Placeholder: Thumbnail" style="background-image: url(Images/view1.png); background-size: cover;">
              <title>Placeholder</title>
              <rect width="100%" height="100%" fill="url(Iamges/view1.png)"></rect>
              
            </svg>
          </div>
        </div>
      </div>

      <div class="col-md-6">
        <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
          <strong class="d-inline-block mb-2 text-primary">&nbsp;&nbsp;최신 이슈 모음 미리보기</strong>
            <table class="table" style="text-align: center;">
              <thead>
                <tr>
                  <th scope="col" colspan="4" style="background-color: #007bff; color: cornsilk;"></th>
                  
                </tr>
              </thead>
              <tbody>
                <tr>
                  <th scope="row" colspan="1">1</th>
                  <th scope="row" colspan="3">게시글1</th>
                  
                </tr>
                <tr>
                  <th scope="row" colspan="1">2</th>
                  <th scope="row" colspan="3">게시글2</th>
                </tr>

                <tr>
                  <th scope="row" colspan="1">3</th>
                  <th scope="row" colspan="3">게시글3</th>
            
                </tr>
                <tr>
                  <th scope="row" colspan="1">4</th>
                  <th scope="row" colspan="3">게시글4</th>
                  
                </tr>
                <tr>
                  <th scope="row" colspan="1">5</th>
                  <th scope="row" colspan="3">게시글5</th>
                </tr>

                <tr>
                  <th scope="row" colspan="1">6</th>
                  <th scope="row" colspan="3">게시글6</th>
            
                </tr>
              </tbody>
            </table>
            <a href="#" class="stretched-link">더보러가기</a>
        </div>
      </div>
      <div class="col-md-6">
        <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
          <strong class="d-inline-block mb-2 text-success">&nbsp;&nbsp;커뮤니티 별 인기글 미리보기</strong>
            <table class="table" style="text-align: center;">
              <thead>
                <tr>
                  <th scope="col" colspan="4" style="background-color: #28a745; color: cornsilk;"></th>
                  
                </tr>
              </thead>
              <tbody>
                <tr>
                  <th scope="row" colspan="1">1</th>
                  <th scope="row" colspan="3">게시글1</th>
                  
                </tr>
                <tr>
                  <th scope="row" colspan="1">2</th>
                  <th scope="row" colspan="3">게시글2</th>
                </tr>

                <tr>
                  <th scope="row" colspan="1">3</th>
                  <th scope="row" colspan="3">게시글3</th>
            
                </tr>
                <tr>
                  <th scope="row" colspan="1">4</th>
                  <th scope="row" colspan="3">게시글4</th>
                  
                </tr>
                <tr>
                  <th scope="row" colspan="1">5</th>
                  <th scope="row" colspan="3">게시글5</th>
                </tr>

                <tr>
                  <th scope="row" colspan="1">6</th>
                  <th scope="row" colspan="3">게시글6</th>
            
                </tr>
              </tbody>
            </table>
            <a href="#" class="text-success stretched-link">더보러가기</a>
        </div>
      </div>
    </div>

    <!-- Content3 -->

  </div>

  <!-- footer -->

  <!-- Footer -->
<footer class="page-footer font-small unique-color-dark">

  <div style="background-color: #343a40;;">
    <div class="container">

      <!-- Grid row-->
      <div class="row py-4 d-flex align-items-center">

        <!-- Grid column -->
        <div class="col-md-6 col-lg-5 text-center text-md-left mb-4 mb-md-0">
          
        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-md-6 col-lg-7 text-center text-md-right">

          <!-- Facebook -->
          <a class="fb-ic">
            <i class="fab fa-facebook-f white-text mr-4"> </i>
          </a>
          <!-- Twitter -->
          <a class="tw-ic">
            <i class="fab fa-twitter white-text mr-4"> </i>
          </a>
          <!-- Google +-->
          <a class="gplus-ic">
            <i class="fab fa-google-plus-g white-text mr-4"> </i>
          </a>
          <!--Linkedin -->
          <a class="li-ic">
            <i class="fab fa-linkedin-in white-text mr-4"> </i>
          </a>
          <!--Instagram-->
          <a class="ins-ic">
            <i class="fab fa-instagram white-text"> </i>
          </a>

        </div>
        <!-- Grid column -->

      </div>
      <!-- Grid row-->

    </div>
  </div>

  <!-- Footer Links -->
  <div class="container text-center text-md-left mt-5">

    <!-- Grid row -->
    <div class="row mt-3">

      <!-- Grid column -->
      <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">

        <!-- Content -->
        <h6 class="text-uppercase font-weight-bold">COMPANY NAME</h6>
        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
        <p>(주)Community Collection <br> CEO : Tae Kyung Kim</p>

      </div>
      <!-- Grid column -->

      <!-- Grid column -->
      <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">

        <!-- Links -->
        <h6 class="text-uppercase font-weight-bold">INTRODUCE</h6>
        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
        <p>
          <a href="#!">사이트 소개</a>
        </p>
        <p>
          <a href="#!">찾아오시는 길</a>
        </p>
        

      </div>
      <!-- Grid column -->

      <!-- Grid column -->
      <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">

        <!-- Links -->
        <h6 class="text-uppercase font-weight-bold">Useful links</h6>
        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
        <p>
          <a href="#!">개인정보 처리방침</a>
        </p>
        <p>
          <a href="#!">FAQ</a>
        </p>

        <p>
          <a href="#!">고객센터</a>
        </p>

      </div>
      <!-- Grid column -->

      <!-- Grid column -->
      <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">

        <!-- Links -->
        <h6 class="text-uppercase font-weight-bold">Contact</h6>
        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
        <p>
          <i class="fas fa-home mr-3"></i> Seoul, KR</p>
        <p>
          <i class="fas fa-envelope mr-3"></i> tk941012@naver.com</p>
        <p>
          <i class="fas fa-phone mr-3"></i> + 01 010 8860 2167</p>
       

      </div>
      <!-- Grid column -->

    </div>
    <!-- Grid row -->

  </div>
  <!-- Footer Links -->

  <!-- Copyright -->
  <div class="footer-copyright text-center py-3">© 2020 Copyright:
    <a href="https://mdbootstrap.com/"> commu.com</a>
  </div>
  <!-- Copyright -->

</footer>
<!-- Footer -->

  <!-- JQ -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>