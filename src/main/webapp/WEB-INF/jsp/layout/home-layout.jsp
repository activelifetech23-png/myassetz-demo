<!doctype html>
<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html lang="en">
   <head>
      <meta charset="UTF-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <meta http-equiv="X-UA-Compatible" content="ie=edge" />
      <meta name="description" content="MC Financial Services">
      <link href="/images/favicon/mcfavicon.png" rel="icon">
      <title>MC Financial Services</title>
      <link rel="stylesheet"
         href="https://fonts.googleapis.com/css2?family=Quicksand:wght@400;500;600;700&family=Roboto:wght@400;700&display=swap">
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css">
      <link rel="stylesheet" href="/css/libraries.css">
       <link rel="stylesheet" href="/vendors/rangeslider/css/ion.rangeSlider.css"/>
	  <link rel="stylesheet" href="/vendors/rangeslider/css/ion.rangeSlider.skinModern.css"/> 
	  <link rel="stylesheet" href="/vendors/sweetalert/sweetalert.css">
      <link rel="stylesheet" href="/css/style.css">
      
       <script src="/js/jquery-3.5.1.min.js"></script>
	   <script src="/js/plugins.js"></script>
	   <script src="/js/main.js"></script>
	   <script src="/vendors/rangeslider/js/ion.rangeSlider.min.js"/></script> 
	   <script src="/vendors/sweetalert/sweetalert.min.js"></script>
   </head>
   <body>
     <div class="wrapper">
     	  <div class="preloader">
		      <div class="loading"><span></span><span></span><span></span><span></span></div>
		  </div><!-- /.preloader -->
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
      </div>
     
   </body>
</html>