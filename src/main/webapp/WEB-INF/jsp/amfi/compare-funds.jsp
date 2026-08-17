<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!--================Breadcrumb Area =================-->
        <section class="breadcrumb_area">
        	<div class="breadcrumb_top">
        		<div class="container">
					<h2>Comparision of Funds</h2>
				</div>
        	</div>
        	<div class="breadcrumb_bottom">
        		<div class="container">
					<ul class="nav">
						<li><a href="/">Home</a></li>
						<li><a href="/mutual-funds-research/top-performing-mutual-funds">MFResearch</a></li>
						<li class="active"><a href="/compare-funds">Comparision of Funds</a></li>
					</ul>
				</div>
        	</div>
        </section>
        <!--================End Breadcrumb Area =================-->
        
        <!--================About Us Story Area =================-->
        <section class="about_story_area p_100">
        	<div class="container">
  	  <div class="row">
	  <div class="headerDiv col-md-12">
	  <div class="row">
	 	<div class="col-md-3" style="font-weight: bold;margin-top: 30px;">
	 		<h5 id="schemeLength"> 1-3 OF ${fn:length(schemeMappings)} FUNDS</h5>	 
	 		<div class="compCtrlBtns group" style="margin-top:7px;">
                 <a href="javascript:void(0);" class="previous slick-arrow slick-disabled" onclick="showPrev()"></a>
                 <a href="javascript:void(0);" class="next slick-arrow" onclick="showNext()"></a>
           </div>		
	 	</div>
	 	 <c:forEach items="${schemeMappings}" var="schemeMappings">
	    <div class="col-md-3 ${schemeMappings.scheme_amfi_code}">
		    <table class="table table-header table-colored" style="margin-bottom:0px;">
	 		<tbody>
		 		<tr><td style="height: 55px;">${schemeMappings.scheme_amfi}</td></tr>		
	 		</tbody>
	 		</table>
	 		
	 		<table class="table table-colored" style="margin-bottom:0px;border-collapse: unset;">
	 		<tbody>
	 			<tr>
	 				<td style="text-align:justify;width:45%; border: 0px !important;">
	 					<input class="btn btn-danger investNow" id="compareMFs" value="Invest Online" type="button">
	 				</td>
	 				<td style="border: 0px !important;padding-top:15px;">  
	 					<a style="font-size:12px; font-weight: bold;" href="javascript:void(0);" onclick="removeFund(${schemeMappings.scheme_amfi_code})">Remove</a> 
	 				</td>
	 			</tr>
	 		</tbody>
	 		</table>
	 	</div>
	 	</c:forEach>
	 </div>
	 	 </div>
	 </div>
	 <div class="row">
		 <div class="col-md-12"> 
		 	<h5 class="panel-heading"> Basic Information </h5></div>
	 </div>
	 <div class="row">
 		<div class="col-md-3">
 			<table class="table table-striped tbl_scheme_returns" id="tbl_scheme_returns" style="width: 100%;color:#96a9bb">
 			<thead>
		        <tr><th> Expense Ratio </th></tr>
		        <tr><th> Riskometer </th></tr>	  
		        <tr><th> Min Lumpsum Amount </th></tr>
		        <tr><th> Min SIP Amount </th></tr>		              
	    	</thead>
	    	</table>
	    </div>
	    <c:forEach items="${schemeMappings}" var="schemeMappings">
	    <div class="col-md-3 ${schemeMappings.scheme_amfi_code}">
		    <table class="table tbl_scheme_returns table-colored">
	 		<tbody>
	 			<tr><td><fmt:formatNumber value="${schemeMappings.ter}" maxFractionDigits="2" /></td></tr> 
	 			<tr><td> 
		 			<c:choose>
					    <c:when test="${schemeMappings.riskometer == ''}">
					        -
					    </c:when>    
					    <c:otherwise>
					       ${schemeMappings.riskometer} 
					        
					    </c:otherwise>
					</c:choose>
      			</td></tr>
	 			<tr><td><fmt:formatNumber value="${schemeMappings.sip_minimum_amount}" maxFractionDigits="2" /></td></tr>
	 			<tr><td><fmt:formatNumber value="${schemeMappings.minimum}" maxFractionDigits="2" /></td></tr>		
	 		</tbody>
	 		</table>
	 	</div>
	 	</c:forEach>
	 </div>
	 
	 <div class="row">
		 <div class="col-md-12"> 
		 	<h5 class="panel-heading"> Returns Performance </h5></div>
	 </div>
	 <div class="row">
 		<div class="col-md-3">
 			<table class="table table-striped tbl_scheme_returns" id="tbl_scheme_returns" style="width: 100%;color:#96a9bb">
 			<thead>
		        <tr><th> 3 Months </th></tr>
		        <tr><th> 6 Months </th></tr>
		        <tr><th> 1 Year </th></tr>
		        <tr><th> 3 Years </th></tr>	        
   		        <tr><th> 5 Years </th></tr>
   		        <tr><th> 10 Years </th></tr>
   		        <tr><th> Since Inception </th></tr>	        
	    	</thead>
	    	</table>
	    </div>
	    <c:forEach items="${schemePerformances}" var="schemePerformances">
	    <div class="col-md-3 ${schemePerformances.scheme_amfi_code}">
		    <table class="table tbl_scheme_returns table-colored">
	 		<tbody>
	 			<tr><td>${schemePerformances.returns_abs_3month} </td></tr>
	 			<tr><td>${schemePerformances.returns_abs_6month} </td></tr>
	 			<tr><td>${schemePerformances.returns_abs_1year} </td></tr>
	 			<tr><td>${schemePerformances.returns_cmp_3year} </td></tr>
	 			<tr><td>${schemePerformances.returns_cmp_5year} </td></tr>
	 			<tr><td>${schemePerformances.returns_cmp_10year} </td></tr>
	 			<tr><td>${schemePerformances.returns_cmp_inception} </td></tr>
	 		</tbody>
	 		</table>
	 	</div>
	 	</c:forEach>
	 </div>
	 
	 <div class="row">
		 <div class="col-md-12"> 
		 	<h5 class="panel-heading"> Lump sum returns (100,000)</h5></div>
	 </div>
	 <div class="row">
 		<div class="col-md-3">
 			<table class="table table-striped tbl_scheme_returns" style="width: 100%;color:#96a9bb">
 			<thead>
		        <tr><th> 1 Year </th></tr>
		        <tr><th> 3 Years </th></tr>	        
   		        <tr><th> 5 Years </th></tr>
   		        <tr><th> 10 Years </th></tr>   		             
	    	</thead>
	    	</table>
	    </div>
	    <c:forEach items="${schemePerformances}" var="schemePerformances">
	    <div class="col-md-3 ${schemePerformances.scheme_amfi_code}">
		    <table class="table tbl_scheme_returns table-colored lumpsum_returns_table${schemePerformances.scheme_amfi_code}">
	 		</table>
	 	</div>	 	
	 	</c:forEach>
	 </div>
	 
	 <div class="row">
		 <div class="col-md-12"> 
		 	<h5 class="panel-heading"> SIP returns (10,000) </h5></div>
	 </div>
	 <div class="row">
 		<div class="col-md-3">
 			<table class="table table-striped tbl_scheme_returns" style="width: 100%;color:#96a9bb">
 			<thead>
		        <tr><th> 1 Year </th></tr>
		        <tr><th> 3 Years </th></tr>	        
   		        <tr><th> 5 Years </th></tr>
   		        <tr><th> 10 Years </th></tr>   		             
	    	</thead>
	    	</table>
	    </div>
	    <c:forEach items="${schemePerformances}" var="schemePerformances">
	    <div class="col-md-3 ${schemePerformances.scheme_amfi_code}">
		    <table class="table tbl_scheme_returns table-colored sip_returns_table${schemePerformances.scheme_amfi_code}">	 		
	 		</table>
	 	</div>	 	
	 	</c:forEach>
	 </div>
	 
	 <div class="row">
		 <div class="col-md-12"> 
		 	<h5 class="panel-heading"> Performance Ratios</h5></div>
	 </div>
	  <div class="row">
 		<div class="col-md-3">
 			<table class="table table-striped tbl_scheme_returns" id="tbl_scheme_returns" style="width: 100%;color:#96a9bb">
 			<thead>
		        <tr><th> Alpha </th></tr>
		        <tr><th> Beta </th></tr>
		        <tr><th> Sharpe Ratio </th></tr>
		        <tr><th> Volatility  </th></tr>	        
	    	</thead>
	    	</table>
	    </div>
	    <c:forEach items="${schemeMappings}" var="schemeMappings">
	    <div class="col-md-3 ${schemeMappings.scheme_amfi_code}">
		    <table class="table tbl_scheme_returns table-colored">
	 		<tbody>
	 			<tr><td><fmt:formatNumber value="${schemeMappings.alpha}" maxFractionDigits="3" /></td></tr> 
	 			<tr><td><fmt:formatNumber value="${schemeMappings.beta}" maxFractionDigits="3" /></td></tr> 
	 			<tr><td><fmt:formatNumber value="${schemeMappings.sharpratio}" maxFractionDigits="3" /></td></tr> 
	 			<tr><td><fmt:formatNumber value="${schemeMappings.volatility}" maxFractionDigits="3" /></td></tr> 
	 		</tbody>
	 		</table>
	 	</div>
	 	</c:forEach>
	 </div>
	 
	 <div class="row">
		 <div class="col-md-12"> 
		 	<h5 class="panel-heading">Fund Information</h5></div>
	 </div>
	  <div class="row">
 		<div class="col-md-3">
 			<table class="table table-striped tbl_scheme_returns" id="tbl_scheme_returns" style="width: 100%;color:#96a9bb">
 			<thead>
		        <tr><th style="height:60px;"> Fund Type </th></tr>
		        <tr><th> Fund Size </th></tr>
		        <tr><th class="invObj" style="height:80px;"> Investment Objective </th></tr>
		        <tr><th> Inception Date </th></tr>		        
	    	</thead>
	    	</table>
	    </div>
	    <c:forEach items="${schemeMappings}" var="schemeMappings">
	    <div class="col-md-3 ${schemeMappings.scheme_amfi_code}">
		    <table class="table tbl_scheme_returns table-colored">
	 		<tbody>
 				<tr> <td style="height:60px;"> ${schemeMappings.open_or_closed} </td> </tr>
	 			<tr> <td>Rs. <fmt:formatNumber value="${schemeMappings.scheme_assets}" pattern="#,##,##,##,##0.00" minFractionDigits ="2" /> cr</td> </tr>		 			
	 			<%-- <tr> <td style="height:225px;"> ${schemeMappings.scheme_objective} </td> </tr> --%>	 
	 			<tr> 
	 				<td class="invObj invObjTd${schemeMappings.scheme_amfi_code}" style="height:80px;">
					   <c:if test="${fn:length(schemeMappings.scheme_objective) gt 90}">
	   				     <c:set var = "string2" value = "${fn:substring(schemeMappings.scheme_objective, 0, 90)}" />
					     ${string2} .. <a href="javascript:void(0);" class="showMore${schemeMappings.scheme_amfi_code}" data-obj="${schemeMappings.scheme_objective}" onclick="showMoreContent(${schemeMappings.scheme_amfi_code} )"> more +</a>	
					     <a href="javascript:void(0);" class="showLess showLess${schemeMappings.scheme_amfi_code}" data-obj="${schemeMappings.scheme_objective}" onclick="showLessContent(${schemeMappings.scheme_amfi_code})"> less -</a>					   
						</c:if>
						<c:if test="${fn:length(schemeMappings.scheme_objective) lt 91}">
						   ${schemeMappings.scheme_objective}
						</c:if>
					</td> 				
				</tr>			
	 			<tr> <td> <fmt:formatDate value="${schemeMappings.scheme_inception_date}" pattern="dd MMM yyyy" /> </td> </tr>		 			
	 			
	 		</tbody>
	 		</table>
	 	</div>
	 	</c:forEach>
	 </div>
	 <div class="row">
		 <div class="col-md-12"> <h5 class="panel-heading"> NAV Performance </h5> </div>
     </div>
	 <div class="row" style="margin-bottom: 3%;">
		 <div class="col-md-12">
	            <div class="panel-body padding0 relative text-center" style="height:400px;padding:0px;" id="nav-movement-gth-div">
				  <i id="nav-movement-gth-spinner" class="fa fa-cog fa-spin fa-2x" style="margin-top: 100px;margin-bottom: 100px;"></i>
	              <div id="nav-movement-container" style="min-height:400px;min-width:600px;"></div>              
	           </div>    
	     </div>
	 </div>
	 <input type="hidden" id="schMap" value='${schemeMappingsJson}' />
	 <input type="hidden" id="schPerf" value='${schemePerformancesJson}' />
	 <input type="hidden" id="schPerfLumpMap" value='${schemePerformancesLumpsumsMapJson}' />
	 <input type="hidden" id="schPerfSipMap" value='${schemePerformancesSipsMapJson}' />
	</div>
        </section>
        <!--================End About Us Story Area =================-->
        
        
        <style>
.padding-Bottom10{
	padding-bottom:15px;
}
.form-control {
	height: 30px;
	padding: 0px 12px;
	font-size: 11px;
	color:#000;
}
label {     
    font-weight: 700;
    font-size: 12px;
    color:#000;
}

.table-colored > thead > tr > th {
    background-color: whitesmoke;
    border-color: whitesmoke;
    border-top-color: whitesmoke;
    color: #000;
}
.table-bordered {
    border: none;
}
table.dataTable {
    margin-bottom: 25px !important;
}
.table-bordered > tbody > tr > td, 
.table-bordered > tbody > tr > th, 
.table-bordered > tfoot > tr > td, 
.table-bordered > tfoot > tr > th, 
.table-bordered > thead > tr > td, 
.table-bordered > thead > tr > th {
    border: 0px solid #ddd;
    border-top-width: 1px;
    border-bottom-width: 1px;
    border-left-width: 1px;
    border-top-style: solid;
    border-top-color: rgb(221, 221, 221);
    border-right-color: rgb(221, 221, 221);
    border-bottom-color: rgb(221, 221, 221);
    border-left-color: rgb(221, 221, 221);
}
.tbl_scheme_returns tfoot tr td{
	background-color: #ffd;
	font-weight: bold;
}

.tbl_scheme_returns td{
	font-size:14px !important;
	padding: 9px !important;
	border-bottom: 1px solid #e6e6e6;
	border-top: 0px !important;
	text-align:justify;
}
.tbl_scheme_returns {
	border-collapse: unset !important;
}
.tbl_scheme_returns th {
	border-bottom: 1px solid #e6e6e6 !important;
	border-top: 0px !important;
	vertical-align: top !important;
	font-weight: 600;
	font-size:14px !important;
	border-collapse: unset;	
	padding: 9px !important;
}
.panel-heading {
	background: #eceff3;
    padding: 10px;
    font-weight: bold;
    margin-top: 10px;
    margin-bottom: 5px;
    letter-spacing: 0px !important;
}
.table-header {
	height: 50px !important;	
	text-align: justify;
	font-weight: 700;
	border-collapse: unset;
}
.table-header td{
	font-size:12px !important;
	border: 0px !important;	
}
.headerDiv {
	z-index: 99999;
	background: #eceff3;	
	font-family: "Poppins", sans-serif;
}
.margin-left-class {
	margin-left: 116px;
}
.margin-left-class-remove {
	margin-left: auto;
}
.compCtrlBtns a.previous {
    background-position: -26px 0;
}
.compCtrlBtns a.next {
    background-position: 0 0;
}
.compCtrlBtns a {
    width: 26px;
    height: 26px;
    background-image: url(../img/sliderCtrl.png);
    background-repeat: no-repeat;
    text-indent: -999999px;
    overflow: hidden;
    float: left;
    margin-right: 5px;
}
.compCtrlBtns a.slick-disabled {
    cursor: default;
    opacity: 0.4;
}
.marginTop30{
	margin-top: 30px;
}
.customBackgroundColor{
	background-color: #fff;
}
.body-color {
background-color: #fff !important;
}

</style>

<script>
var schmap = [];
var schperf = [];
var schPerfLumpMap = [];
var schPerfSipMap = [];
var showMoreCount = 0;

$(document).ready(function() {
	$('[data-toggle="tooltip"]').tooltip(); 
	$(".showLess").hide();
	
 	var fixmeTop = $('.headerDiv').offset().top;
	$(window).scroll(function() {                  // assign scroll event listener
		 
	    var currentScroll = $(window).scrollTop(); // get current position
	
	    if (currentScroll >= fixmeTop) {           // apply position: fixed if you
	        $('.headerDiv').css({                      // scroll to that element or below it
	            position: 'fixed',
	            top: '0',
	            left: '0',
	            background: '#eceff3',
 	            margin: '0 auto 0 120'		        
	        });
	    $('.headerDiv').removeClass('margin-left-class-remove');
	    $('.headerDiv').removeClass('col-md-12');
	    $('.headerDiv').addClass('col-md-10');
	    $('.headerDiv').addClass('margin-left-class'); 

	   
	    } else {                                   // apply position: static
	        $('.headerDiv').css({                      // if you scroll above it
	            position: 'static',
	        });
	        $('.headerDiv').removeClass('margin-left-class'); 
	        $('.headerDiv').addClass('margin-left-class-remove'); 
	        $('.headerDiv').removeClass('col-md-10');
		    $('.headerDiv').addClass('col-md-12');
	    }
	
	});
 	
	schmap = JSON.parse($('#schMap').val());
	schperf = JSON.parse($('#schPerf').val());
	schPerfLumpMap = JSON.parse($('#schPerfLumpMap').val());
	schPerfSipMap = JSON.parse($('#schPerfSipMap').val());
	if(schmap.length > 3) {
		$('.'+schmap[3]['scheme_amfi_code']).hide();
		if(schmap.length == 5)
		$('.'+schmap[4]['scheme_amfi_code']).hide();
	} else {
		$('#schemeLength').html(schmap.length+" FUNDS");
		$('.compCtrlBtns').hide();
	}
	populateLumpSumReturns();
	populateSipReturns();
	compareNavPerformance();
     
});

function populateLumpSumReturns() {
	var htmlStr = '';
	var currentValue = [];
	for(var i = 0; i < schperf.length; i++) {
		htmlStr = '';
		if(schPerfLumpMap[schperf[i]['scheme_amfi_code']].length != 4) {
			for(var k=0; k<4; k++){
				currentValue[k] = 0;
			}
			for(var j=0; j < schPerfLumpMap[schperf[i]['scheme_amfi_code']].length; j++) {				
				if(schPerfLumpMap[schperf[i]['scheme_amfi_code']][j]['period'] == 1)
					currentValue[0] = schPerfLumpMap[schperf[i]['scheme_amfi_code']][j]['current_value'];
				if(schPerfLumpMap[schperf[i]['scheme_amfi_code']][j]['period'] == 3)
					currentValue[1] = schPerfLumpMap[schperf[i]['scheme_amfi_code']][j]['current_value'];
				if(schPerfLumpMap[schperf[i]['scheme_amfi_code']][j]['period'] == 5)
					currentValue[2] = schPerfLumpMap[schperf[i]['scheme_amfi_code']][j]['current_value'];
				if(schPerfLumpMap[schperf[i]['scheme_amfi_code']][j]['period'] == 10)
					currentValue[3] = schPerfLumpMap[schperf[i]['scheme_amfi_code']][j]['current_value'];
			}
			for(var j=0; j< 4; j++){
				htmlStr +='<tr><td>Rs. '+currentValue[j].toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")+'</td></tr>';
			}
		} else {
			for(var j=0; j < schPerfLumpMap[schperf[i]['scheme_amfi_code']].length; j++) {				
				htmlStr +='<tr><td>Rs. '+schPerfLumpMap[schperf[i]['scheme_amfi_code']][j]['current_value'].toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")+'</td></tr>';
			}
		}
		$('.lumpsum_returns_table'+schperf[i]['scheme_amfi_code']).html(htmlStr);
	}	
}

function populateSipReturns() {
	var htmlStr = '';
	var currentValue = [];
	for(var i = 0; i < schperf.length; i++) {
		htmlStr = '';
		if(schPerfLumpMap[schperf[i]['scheme_amfi_code']].length != 4) {
			for(var k=0; k<4; k++){
				currentValue[k] = 0;
			}
			for(var j=0; j < schPerfSipMap[schperf[i]['scheme_amfi_code']].length; j++) {				
				if(schPerfSipMap[schperf[i]['scheme_amfi_code']][j]['period'] == 1)
					currentValue[0] = schPerfSipMap[schperf[i]['scheme_amfi_code']][j]['current_value'];
				if(schPerfSipMap[schperf[i]['scheme_amfi_code']][j]['period'] == 3)
					currentValue[1] = schPerfSipMap[schperf[i]['scheme_amfi_code']][j]['current_value'];
				if(schPerfSipMap[schperf[i]['scheme_amfi_code']][j]['period'] == 5)
					currentValue[2] = schPerfSipMap[schperf[i]['scheme_amfi_code']][j]['current_value'];
				if(schPerfSipMap[schperf[i]['scheme_amfi_code']][j]['period'] == 10)
					currentValue[3] = schPerfSipMap[schperf[i]['scheme_amfi_code']][j]['current_value'];
			}
			for(var j=0; j< 4; j++){
				htmlStr +='<tr><td>Rs. '+currentValue[j].toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");+'</td></tr>';				
			}
		} else {
			for(var j=0; j < schPerfSipMap[schperf[i]['scheme_amfi_code']].length; j++) {				
				htmlStr +='<tr><td>Rs. '+schPerfSipMap[schperf[i]['scheme_amfi_code']][j]['current_value'].toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");+'</td></tr>';
			}
		}
		$('.sip_returns_table'+schperf[i]['scheme_amfi_code']).html(htmlStr);
	}	
}

function showPrev() {
	if(schmap.length == 5) {
	if($.trim($('#schemeLength').html()) == "3-5 OF "+schmap.length+" FUNDS") {
		$('#schemeLength').html('2-4 OF '+schmap.length+' FUNDS');
		$('.previous').removeClass('slick-disabled');
		$('.next').removeClass('slick-disabled');
		$('.'+schmap[0]['scheme_amfi_code']).hide();
		$('.'+schmap[1]['scheme_amfi_code']).show();
		$('.'+schmap[2]['scheme_amfi_code']).show();
		$('.'+schmap[3]['scheme_amfi_code']).show();
		if(schmap.length == 5)
		$('.'+schmap[4]['scheme_amfi_code']).hide();				
	} else if ($.trim($('#schemeLength').html()) == "2-4 OF "+schmap.length+" FUNDS") {
		$('#schemeLength').html('1-3 OF '+schmap.length+' FUNDS');
		$('.previous').addClass('slick-disabled');		
		$('.next').removeClass('slick-disabled');	
		$('.'+schmap[0]['scheme_amfi_code']).show();
		$('.'+schmap[1]['scheme_amfi_code']).show();
		$('.'+schmap[2]['scheme_amfi_code']).show();
		$('.'+schmap[3]['scheme_amfi_code']).hide();
		if(schmap.length == 5)
		$('.'+schmap[4]['scheme_amfi_code']).hide();	
	} else {
	 	$('.next').removeAttr('href');
	}
	} else 	if(schmap.length == 4) {
		if ($.trim($('#schemeLength').html()) == "2-4 OF "+schmap.length+" FUNDS") {
			$('#schemeLength').html('1-3 OF '+schmap.length+' FUNDS');
			$('.previous').addClass('slick-disabled');		
			$('.next').removeClass('slick-disabled');	
			$('.'+schmap[0]['scheme_amfi_code']).show();
			$('.'+schmap[1]['scheme_amfi_code']).show();
			$('.'+schmap[2]['scheme_amfi_code']).show();
			$('.'+schmap[3]['scheme_amfi_code']).hide();			
		}
	}
}

function showNext() {
	if(schmap.length == 5) {
		if($.trim($('#schemeLength').html()) == "1-3 OF "+schmap.length+" FUNDS") {
			$('#schemeLength').html('2-4 OF '+schmap.length+' FUNDS');
			$('.previous').removeClass('slick-disabled');
			$('.next').removeClass('slick-disabled');
			$('.'+schmap[0]['scheme_amfi_code']).hide();
			$('.'+schmap[1]['scheme_amfi_code']).show();
			$('.'+schmap[2]['scheme_amfi_code']).show();
			$('.'+schmap[3]['scheme_amfi_code']).show();		
			$('.'+schmap[4]['scheme_amfi_code']).hide();
		} else if ($.trim($('#schemeLength').html()) == "2-4 OF "+schmap.length+" FUNDS") {
			$('#schemeLength').html('3-5 OF '+schmap.length+' FUNDS');
			$('.next').addClass('slick-disabled');
			$('.previous').removeClass('slick-disabled');
			$('.'+schmap[0]['scheme_amfi_code']).hide();
			$('.'+schmap[1]['scheme_amfi_code']).hide();
			$('.'+schmap[2]['scheme_amfi_code']).show();
			$('.'+schmap[3]['scheme_amfi_code']).show();
			$('.'+schmap[4]['scheme_amfi_code']).show();
		} else {
		 	$('.next').removeAttr('href');
		}
	} else if(schmap.length == 4) {
		if($.trim($('#schemeLength').html()) == "1-3 OF "+schmap.length+" FUNDS") {
			$('#schemeLength').html('2-4 OF '+schmap.length+' FUNDS');
			$('.previous').removeClass('slick-disabled');
			$('.next').addClass('slick-disabled');
			$('.'+schmap[0]['scheme_amfi_code']).hide();
			$('.'+schmap[1]['scheme_amfi_code']).show();
			$('.'+schmap[2]['scheme_amfi_code']).show();
			$('.'+schmap[3]['scheme_amfi_code']).show();		
		} else {
		 	$('.next').removeAttr('href');
		}
	}
}

function removeFund(amfiCode) {
	var idsToCompare = [];	
	if(schperf.length == 2) {
		swal({title:"",text:"Atleast 2 funds needed for comparison"});
 		return;
	}
	for (var i = 0; i < schperf.length; i++) {
        var cur = schperf[i];
        if (cur.scheme_amfi_code == amfiCode) {
        	schperf.splice(i, 1);
            break;
        }
    }
	for (var i = 0; i < schperf.length; i++) {        
        idsToCompare.push(schperf[i].scheme_amfi);
    }
	top.location = "/mutual-funds-research/compare-funds?idsToCompare="+idsToCompare;
}

function compareNavPerformance() {
	var fundBenchNameArray = [];
	var fundBenchArray = [];
	for (var i = 0; i < schmap.length; i++) {        
		fundBenchNameArray.push(schmap[i].scheme_amfi);
		fundBenchArray.push(encodeURIComponent(schmap[i].scheme_amfi));
    }
	var seriesOptions = [],
    seriesCounter = 0,
    names = fundBenchArray,
    // create the chart when all data is loaded
    createChart = function () {

        $('#nav-movement-container').highcharts('StockChart', {
        	colors: ['#FE581E','#2B3292','#000000','#194d30','#8B0045','#ff0000','#804000','#000066','#00ff00','#0A9BF5','#999999','#3b0066'],
            rangeSelector: {
                selected: 4,
                buttons: [{
                    type: 'month',
                    count: 1,
                    text: '1m'
                }, {
                    type: 'month',
                    count: 3,
                    text: '3m'
                }, {
                    type: 'month',
                    count: 6,
                    text: '6m'
                }, {
                    type: 'ytd',
                    text: 'YTD'
                }, {
                    type: 'year',
                    count: 1,
                    text: '1y'
                }, {
                    type: 'year',
                    count: 3,
                    text: '3y'
                },{
                    type: 'year',
                    count: 5,
                    text: '5y'
                }, {
                    type: 'all',
                    text: 'All'
                }]
            },
            yAxis: {
                labels: {
                    formatter: function () {
                        return (this.value > 0 ? ' + ' : '') + this.value + '%';
                    }
                },
                plotLines: [{
                    value: 0,
                    width: 2,
                    color: 'silver'
                }]
            },
            credits: {
	        	enabled : true,
                text: "meetTruuegro.com",
                href: "https://www.meetTruuegro.com/",
                style: {
                	cursor: 'pointer',
                	color: '#264998',
                	fontSize: '10px'
                }
	        },
	        legend: {
             	 enabled: true
           },
            plotOptions: {
                series: {
                    compare: 'percent'
                }
            },
            tooltip: {
                pointFormat: '<span style="color:{series.color}">{series.name}</span>: <b>{point.y}</b> ({point.change}%)<br/>',
                valueDecimals: 2
            },
            chart: {
                events: {
                	load: function(event) {
                        $("#nav-movement-gth-spinner").addClass("hidden");
                	}
                },
            },
            series: seriesOptions
        });
    };

	$.each(names, function (i, name) {
	
	    $.getJSON('/mutual-funds-research/getCompleteNavReportForFundOverview?scheme_amfi_name=' + name.toLowerCase(),    function (data) {
	    	
			if(data == "" || data == null || data.length < 5)
			{
				data = [];
			}
			
			seriesOptions[i] = {
	            name: fundBenchNameArray[i],
	            data: data
	        };
	
	        // As we're loading the data asynchronously, we don't know what order it will arrive. So
	        // we keep a counter and create the chart when all the data is loaded.
	        seriesCounter += 1;
	
	        if (seriesCounter === names.length) {
	            createChart();
	        }
		        
	    });
	});	
}
var length400 = false;
var length300 = false;

function showMoreContent(scheme_amfi_code) {
	showMoreCount++;
	$(".showMore"+scheme_amfi_code).hide();	
	var objContent = $(".showMore"+scheme_amfi_code).attr('data-obj');
	if(objContent.length > 400) {
		$(".invObj").css({height: "260px"});
		length400 = true;
	} else if (objContent.length > 300 && length400 == false) {
		$(".invObj").css({height: "200px"});
		length300 = true;
	} else if (objContent.length > 150 && length400 == false && length300 == false ) {
		$(".invObj").css({height: "150px"});
	} else if (objContent.length < 150 && length400 == false && length300 == false) {
		$(".invObj").css({height: "100px"});
	}
	$(".invObjTd"+scheme_amfi_code).html($(".showMore"+scheme_amfi_code).attr('data-obj') +
			'<a href="javascript:void(0);" class="showLess showLess'+scheme_amfi_code+'"' +
			'data-obj="'+$(".showMore"+scheme_amfi_code).attr('data-obj')+'" onclick="showLessContent('+scheme_amfi_code+')"> less -</a>');	
}
function showLessContent(scheme_amfi_code) {
	showMoreCount--;
	$(".showLess"+scheme_amfi_code).hide();
	if(showMoreCount == 0) {
		$(".invObj").css({height: "80px"});
		length400 = false;
		length300 = false;
	}
	/* var objContent = $(".showMore"+scheme_amfi_code).attr('data-obj');
	if(objContent.length > 400) {		
		length400 = false;
	} else if (objContent.length > 300) {		
		length300 = false;
	} */
	var htmlStr = $(".showLess"+scheme_amfi_code).attr('data-obj').substring(0,90);
	$(".invObjTd"+scheme_amfi_code).html(htmlStr + '..' +
			 '<a href="javascript:void(0);" class="showMore'+scheme_amfi_code+'"' + 
			 'data-obj="'+$(".showLess"+scheme_amfi_code).attr('data-obj')+'" onclick="showMoreContent('+scheme_amfi_code+')"> more +</a>');
}
</script>