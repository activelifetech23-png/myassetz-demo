<!doctype html>
<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html lang="en">
   <head>
	<!-- Meta Tags -->
	<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
	<meta name="description" content="Myassetz" />
	<meta name="keywords" content="advisor,corporate,business,accountant,consulting,finance,financial,insurance,trading" />
	<meta name="author" content="Advisorkhoj" />
	
	<!-- Page Title -->
	<title>Myassetz</title>
	
	<!-- Favicon and Touch Icons -->
	<link href="/images/logo/fav.png" rel="shortcut icon" type="image/png">
	<!-- Stylesheet -->
	<link href="/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="/css/jquery-ui.min.css" rel="stylesheet" type="text/css">
	<link href="/css/animate.css" rel="stylesheet" type="text/css">
	<link href="/css/css-plugin-collections.css" rel="stylesheet"/>
	<!-- CSS | menuzord megamenu skins -->
	<link id="menuzord-menu-skins" href="/css/menuzord-skins/menuzord-boxed.css" rel="stylesheet"/>
	<!-- CSS | Main style file -->
	<link href="/css/style-main.css" rel="stylesheet" type="text/css">
	<!-- CSS | Preloader Styles -->
	<link href="/css/preloader.css" rel="stylesheet" type="text/css">
	<!-- CSS | Custom Margin Padding Collection -->
	<link href="/css/custom-bootstrap-margin-padding.css" rel="stylesheet" type="text/css">
	<!-- CSS | Responsive media queries -->
	<link href="/css/responsive.css" rel="stylesheet" type="text/css">
	<!-- CSS | Style css. This is the file where you can place your own custom css code. Just uncomment it and use it. -->
	<!-- <link href="css/style.css" rel="stylesheet" type="text/css"> -->
	
	<!-- Font Awesome CDN -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>

	
	
	<!-- Revolution Slider 5.x CSS settings -->
	<link  href="/js/revolution-slider/css/settings.css" rel="stylesheet" type="text/css"/>
	<link  href="/js/revolution-slider/css/layers.css" rel="stylesheet" type="text/css"/>
	<link  href="/js/revolution-slider/css/navigation.css" rel="stylesheet" type="text/css"/>
	<link rel="stylesheet" href="/vendors/sweetalert/sweetalert.css">
	
	<!-- CSS | Theme Color -->
	<link href="/css/colors/theme-skin-color-set1.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="/vendors/datatables/jquery.dataTables.min.css">
	
	<!-- external javascripts -->
	<script src="/js/jquery-2.2.4.min.js"></script>
	<script src="/js/jquery-ui.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<!-- JS | jquery plugin collection for this theme -->
	<script src="/js/jquery-plugin-collection.js"></script>
	
	<!-- Revolution Slider 5.x SCRIPTS -->
	<script src="/js/revolution-slider/js/jquery.themepunch.tools.min.js"></script>
	<script src="/js/revolution-slider/js/jquery.themepunch.revolution.min.js"></script>
	
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	
	<link rel="stylesheet" href="/vendors/bootstrap-slider/slider.css">
	<link rel="stylesheet" href="/vendors/rangeslider/css/ion.rangeSlider.css"/>
	<link rel="stylesheet" href="/vendors/rangeslider/css/ion.rangeSlider.skinModern.css"/> 
	
	
	<script src="/vendors/bootstrap-slider/bootstrap-slider.min.js"></script>
	<script src="/vendors/rangeslider/js/ion.rangeSlider.min.js"/></script> 
	<script src="/vendors/sweetalert/sweetalert.min.js"></script>
	<script src="/vendors/datatables/jquery.dataTables.min.js"></script>
	
	 <script src="/js/highstock.js"></script>
	<script src="/js/bootstrap3-typeahead.min.js"></script>
	  
	</head>
   <body>
   
<div class="body-overlay"></div>
<div id="side-panel" class="dark layer-overlay overlay-white-8" data-bg-img="images/bg/bg1.jpg">
  <div class="side-panel-wrap">
    <div id="side-panel-trigger-close" class="side-panel-trigger"><a href="#"><i class="icon_close font-30"></i></a></div>
    <div class="side-panel-widget">
      <div class="widget">
        <a href="javascript:void(0)"><img alt="logo" src="images/logo-wide.png"></a>
        <p class="mt-20"></p>
      </div>
      <div class="widget">
        <h5 class="widget-title">Useful Links</h5>
        <nav>
          <ul class="nav nav-list">
            <li><a href="#">Home</a></li>
            <li><a href="#">Services</a></li>
            <li><a class="tree-toggler nav-header">Pages <i class="fa fa-angle-down"></i></a>
              <ul class="nav nav-list tree">
                <li><a href="#">About</a></li>
                <li><a href="#">Terms</a></li>
                <li><a href="#">FAQ</a></li>
              </ul>
            </li>
            <li><a href="#">Contact</a></li>
          </ul>
        </nav>
      </div>

      <div class="widget">
        <h5 class="widget-title">Contact Info</h5>
        <ul>
          <li class="font-14 mb-5"><i class="fa fa-phone text-theme-colored"></i> <a href="#" class="text-gray">(+01) – 234 567 890</a> </li>
          <li class="font-14 mb-5"><i class="fa fa-globe text-theme-colored"></i> <a class="text-gray" href="#">www.yourdomain.com</a></li>
          <li class="font-14 mb-5"><i class="fa fa-envelope-o text-theme-colored"></i> <a href="#" class="text-gray">contact@yourdomain.com</a> </li>
        </ul>
      </div>
      <div class="widget">
        <ul class="styled-icons icon-dark icon-theme-colored icon-sm">
          <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
          <li><a href="#"><i class="fa fa-facebook"></i></a></li>
          <li><a href="#"><i class="fa fa-twitter"></i></a></li>
        </ul>
      </div>
      <p>Copyright &copy;2017 ThemeMascot</p>
    </div>
  </div>
</div>
   
     <div id="wrapper" class="clearfix">
		  <!-- preloader -->
		  <div id="preloader">
		    <div id="spinner">
		      <div class="preloader-dot-loading">
		        <div class="cssload-loading"><i></i><i></i><i></i><i></i></div>
		      </div>
		    </div>
		    <div id="disable-preloader" class="btn btn-default btn-sm">Disable Preloader</div>
		  </div> 
	      <jsp:include page="header.jsp"></jsp:include>
	      <c:choose>
	         <c:when test="${not empty jsp}">
	            <jsp:include page="${jsp}"></jsp:include>
	         </c:when>
	         <c:otherwise>
	            <jsp:include page="error.jsp"></jsp:include>
	         </c:otherwise>
	      </c:choose>
	      <jsp:include page="footer.jsp"></jsp:include>
	      <a class="scrollToTop" href="#"><i class="fa fa-angle-up"></i></a>
      </div>
	  <!-- end wrapper -->

		<!-- Footer Scripts --> 
		<!-- JS | Custom script for all pages --> 
		<script src="/js/custom.js"></script>
	 
   </body>
</html>