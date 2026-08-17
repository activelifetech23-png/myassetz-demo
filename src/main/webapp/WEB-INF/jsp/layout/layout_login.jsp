<!doctype html>
<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link href="/images/favicon/mcfavicon.png" rel="icon">
        	<c:choose>
			<c:when test="${page eq 'news-title'}">
			</c:when>
			<c:otherwise>
			<title>Meet Truuegro | Gurgaon Best Financial Planning & Investment Company</title>
			<meta name="description" content="Financial Planning Company, Investment Advisory Firm, Wealth Management, Estate Succession Planning, Risk Management & Real Estate Investments Services."/>
			</c:otherwise>
			</c:choose>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="/css/bootstrap.min.css">
        <link rel="stylesheet" href="/css/font-awesome.min.css">
        <link rel="stylesheet" href="/vendors/flaticon/flaticon.css">
        <link rel="stylesheet" href="/vendors/linearicons/style.css">
        <link rel="stylesheet" href="/vendors/stroke-icon/style.css">
        <link rel="stylesheet" href="/vendors/sweetalert/sweetalert.css">
        <!-- Rev slider css -->
        <link href="/vendors/revolution/css/settings.css" rel="stylesheet">
        <link href="/vendors/revolution/css/layers.css" rel="stylesheet">
        <link href="/vendors/revolution/css/navigation.css" rel="stylesheet">
        <!-- Extra Plugin CSS -->
        <link rel="stylesheet" href="/vendors/nice-selector/css/nice-select.css">
        <link rel="stylesheet" href="/vendors/owl-carousel/assets/owl.carousel.min.css">
        <link href="/vendors/popup/magnific-popup.css" rel="stylesheet">
        <link href="/vendors/nice-selector/css/nice-select.css" rel="stylesheet">
        <link href="/css/jquery.jqGauges.css" rel="stylesheet"/>
        <link rel="stylesheet" href="/vendors/bootstrap-slider/slider.css">
        <link rel="stylesheet" href="/vendors/datatables/jquery.dataTables.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/fixedheader/3.1.7/css/fixedHeader.dataTables.min.css">
        <link href="/vendors/sweetalert/sweetalert.css" rel="stylesheet">
        
        <!-- main css -->
        <link rel="stylesheet" href="/css/style.css">
        <link rel="stylesheet" href="/css/responsive.css">
        <link rel="stylesheet" href="/css/ion.rangeSlider.min.css">
        <link rel="stylesheet" href="/css/bootstrap-datepicker.min.css">
        
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="/js/jquery-3.3.1.min.js"></script>
        <script src="/js/popper.min.js"></script>
        <script src="/js/bootstrap.min.js"></script>
        <script src="/vendors/sweetalert/sweetalert.min.js"></script>
		<script src="/vendors/loadingoverlay/loadingoverlay.js"></script>
		
		<!-- Global site tag (gtag.js) - Google Analytics -->
		<script async src="https://www.googletagmanager.com/gtag/js?id=UA-128426585-1"></script>
		<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());

		gtag('config', 'UA-128426585-1');
		</script>
		
		<!-- <script async>(function(s,u,m,o,j,v){j=u.createElement(m);v=u.getElementsByTagName(m)[0];j.async=1;j.src=o;j.dataset.sumoSiteId='9fab0e010081f2be334ec05128ca3a0e00af8a15b9414e38345304e451702f0b';v.parentNode.insertBefore(j,v)})(window,document,'script','//load.sumo.com/');</script>
		 -->
		<!--Start of Tawk.to Script-->
		<!-- <script type="text/javascript">
		var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
		(function(){
		var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
		s1.async=true;
		s1.src='https://embed.tawk.to/5cb029ccd6e05b735b422dda/default';
		s1.charset='UTF-8';
		s1.setAttribute('crossorigin','*');
		s0.parentNode.insertBefore(s1,s0);
		})();
		</script> -->
		<!--End of Tawk.to Script-->
		
    </head>
    <body>
    <jsp:include page="header.jsp"></jsp:include>
    
    <c:choose>
   		<c:when test="${not empty jsp}">
   			<jsp:include page="${jsp}"></jsp:include>
   		</c:when>
   		<c:otherwise>
   			<jsp:include page="error.jsp"></jsp:include>
   		</c:otherwise>
    </c:choose>
    
  </body>
</html>