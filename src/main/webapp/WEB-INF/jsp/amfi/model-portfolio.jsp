<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<style>
.col
{
ms-flex-preferred-size: 0 !important;
    flex-basis: 0 !important;
    -ms-flex-positive: 1 !important;
    flex-grow: 1 !important;
    max-width: 100% !important;
    }
.carousel-nav {
    width: 100% !important;
    border-bottom: 1px solid #ccc !important;
    margin-bottom: 40px !important;
}
.carousel-nav a {
    color: #999;
    padding: 20px;
    text-align: center;
    display: inline-block;
}
  
.carousel-nav a.active {
    color: #000 !important;
}
.carousel-nav a.active {
    color: #529100 !important;
}
.carousel-nav a.active:before {
    content: "";
    bottom: -1px;
    left: 0;
    right: 0;
    position: absolute;
    border-bottom: 3px solid #529100;
}
.owl-carousel .owl-stage-outer
{
	height: auto !important;
}
.carousel-nav button.active {
  	color: #20C4B7 !important;
	border-bottom-style: solid;
    border-bottom-color: #20C4B7;
}
.carousel-nav button {
    color: #999;
    padding: 20px;
    text-align: center;
    display: inline-block;
}
.business-contact-area-five .business-contact-bg {
    max-width: 1140px !important; 
    margin: auto;
}
@media (max-width: 576px){
.d-flex {
   
    display: contents !important;
}
}
.btn {
	height: 50px;
}
.mf-research-table thead {
    background: #97e1e9;
}
</style>
<script>
var risk = "Aggressive";

$(document).ready(function(){
	
	$("#btnMain").trigger("click");	
	
	risk = '${risk}';
	
	if(risk != "")
	{	
		if(risk == "Conservative")
		{
			$('.shorting-menu button:last-child').click();
			
		}else if(risk == "Moderately Conservative")
		{
			$('.shorting-menu button:nth-child(4)').click();
			
		}else if(risk == "Moderate")
		{
			$('.shorting-menu button:nth-child(3)').click();
			
		}else if(risk == "Moderately Aggressive")
		{
			$('.shorting-menu button:nth-child(2)').click();
		}else
		{
			$('.shorting-menu button:first-child').click();
		}
	}else
	{
		risk = "Aggressive";
		$('.shorting-menu button:first-child').click();
		$('.agg').hide();
		$('.mod_agg').hide();
		$('.mod').hide();
		$('.mod_con').hide();
		$('.con').hide();
		$('.agg').show();
	}
	
	$('button.filter').click(function(){
		$('.filter').removeClass('active');
		$('.agg').hide();
		$('.mod_agg').hide();
		$('.mod').hide();
		$('.mod_con').hide();
		$('.con').hide();
		if($(this).data('filter') == '.agg') {
			$('.agg').show();
			$(this).addClass('active');
		}
		if($(this).data('filter') == '.mod_agg') {
			$('.mod_agg').show();
			$(this).addClass('active');
		}
		if($(this).data('filter') == '.mod') {
			$('.mod').show();
			$(this).addClass('active');
		}
		if($(this).data('filter') == '.mod_con') {
			$('.mod_con').show();
			$(this).addClass('active');
		}
		if($(this).data('filter') == '.con') {
			$('.con').show();
			$(this).addClass('active');
		}
	})
	
	$(function() {

		var owl = $('.owl-1');
	    owl.owlCarousel({
	        loop:false,
	        margin:0,
	        nav:false,
	        dots: false,
	        items: 1,
	        smartSpeed: 1000,
	        autoplay: false,
	        navText: ['<span class="icon-keyboard_arrow_left">', '<span class="icon-keyboard_arrow_right">']
	    });

	    var carousel_nav_a = $('.carousel-nav a');

	    carousel_nav_a.each(function(slide_index){
	        var $this = $(this);
	        $this.attr('data-num', slide_index);
	        $this.click(function(e) {
	            owl.trigger('to.owl.carousel',[slide_index,1500]);
	            e.preventDefault();
	        })
	    })

	    owl.on('changed.owl.carousel', function(event) {
	        carousel_nav_a.removeClass('active');
	        $(".carousel-nav a[data-num="+event.item.index+"]").addClass('active');
	    })		
	})	
	
});

function closeModal(){
	   $('#model_portfolio_model').modal('toggle');
	}
	
function numbersWithComma(x)
{
    x = x.toString();
    var afterPoint = '';
    if(x.indexOf('.') > 0)
       afterPoint = x.substring(x.indexOf('.'),x.length);
    x = Math.floor(x);
    x = x.toString();
    var lastThree = x.substring(x.length-3);
    var otherNumbers = x.substring(0,x.length-3);
    if(otherNumbers != '')
        lastThree = ',' + lastThree;
    var res = otherNumbers.replace(/\B(?=(\d{2})+(?!\d))/g, ",") + lastThree + afterPoint;
    return res;
}
function showPortfolioReturns(risk_profile)
{
	risk = risk_profile;
	
	if(risk_profile == "Aggressive")
	{
		$(".span_risk_profile_name").html("Aggressive = Equity Funds 70% | Balanced Fund 30%");
	}
	if(risk_profile == "Moderately Aggressive")
	{
		$(".span_risk_profile_name").html("Moderately Aggressive = Equity Funds 60% | Balanced Fund 40%");
	}
	if(risk_profile == "Moderate")
	{
		$(".span_risk_profile_name").html("Moderate = Equity Funds 40% | Balanced Funds 50% | Equity Savings Fund 10%");
	}
	if(risk_profile == "Moderately Conservative")
	{
		$(".span_risk_profile_name").html("Moderately Conservative = Balanced Funds 70% | Equity Savings Fund 30%");
	}
	if(risk_profile == "Conservative")
	{
		$(".span_risk_profile_name").html("Conservative = Income Funds 50% | Hybrid Debt Funds (MIP) 30% | Equity Savings Fund 20%");
	}
	
	$.ajaxSetup({async:false});
    $.post("/mutual-funds-research/getModelPortfolioReturns", {risk_profile : "" + risk_profile + ""}, function(data)
    {
		var result = $.trim(data);
		var obj = jQuery.parseJSON(result);	
		 if(obj != null)	   
		 {
			 $(".span_returns_1year").html(obj.returns_1year);
			 $(".span_1year_current_value").html(numbersWithComma(obj.lumpsum_1year_current_value));
			 
			 $(".span_returns_3year").html(obj.returns_3year);
			 $(".span_3year_current_value").html(numbersWithComma(obj.lumpsum_3year_current_value));
			 
			 $(".span_returns_5year").html(obj.returns_5year);
			 $(".span_5year_current_value").html(numbersWithComma(obj.lumpsum_5year_current_value));
			 
			 $("#model_portfolio_model").modal('show');
		 }

    }, "text");
}

function redirectLumpsumInvest(amc, scheme)
{
	var accountmap = '${accountMap}';
	if(accountmap != null && accountmap != "")
	{
		top.location = "http://mfportfolio.countonace.com/nse/nse-lumpsum-investment?amc="+encodeURIComponent(amc)+"&scheme="+encodeURIComponent(scheme);
	}else
	{
		top.location = "http://mfportfolio.countonace.com?amc="+encodeURIComponent(amc)+"&scheme="+encodeURIComponent(scheme)+"&type=Lumpsum";
	}
}
function redirectBulkLumpsumInvest()
{
	var risk_profile = risk;
	
	var accountmap = '${accountMap}';
	if(accountmap != null && accountmap != "")
	{
		top.location = "http://mfportfolio.countonace.com/nse/model-portfolio-investment?risk_profile="+risk_profile;
	}else
	{
		top.location = "http://mfportfolio.countonace.com?risk_profile="+risk_profile;
	}
}

</script>

    <!-- ========================
       page title 
    =========================== -->
    <section class="page-title page-title-layout5">
      <div class="bg-img"><img src="/images/backgrounds/6.jpg" alt="background"></div>
      <div class="container">
        <div class="row">
          <div class="col-12">
            <h1 class="pagetitle__heading">Model Portfolio</h1>
            <nav>
              <ol class="breadcrumb mb-0">
                <li class="breadcrumb-item"><a href="/">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Model Portfolio</li>
              </ol>
            </nav>
          </div><!-- /.col-12 -->
        </div><!-- /.row -->
      </div><!-- /.container -->
    </section><!-- /.page-title -->

<!-- End Business Contact Area -->
<div class="business-contact-area-five pt-4 pb-4 mt-30">
	<div class="container">
		<div class="business-contact-bg">
			<div class="row">
				<div class="col-lg-12 col-md-12 card shadow">
					<div class="portfolio-wraps pt-3 pb-3">
						<div class="row">
							<div class="col-lg-12">
							  
							 	<div class="d-flex carousel-nav">
									<button id="btnMain" class="filter col active" data-filter=".agg" style="background: white; color: #20C4B7;">Aggressive</button>
									<button class="filter col" data-filter=".mod_agg" style="background: white; color: #20C4B7;">Moderately Aggressive</button>
									<button class="filter col" data-filter=".mod" style="background: white; color: #20C4B7;">Moderate</button>
									<button class="filter col" data-filter=".mod_con" style="background: white; color: #20C4B7;">Moderately Conservative</button>
									<button class="filter col" data-filter=".con" style="background: white; color: #20C4B7;">Conservative</button>
								</div> 
							</div>
						</div>
						<div class="shorting">
							<div class="row">
								<c:forEach items="${diversified_list}" var="schemePerformances" varStatus="status" begin="0" end="1">
									<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12 mix agg mb-2">
										<div class="card border-0">
											<div class="card-body">
												<div class="row mb-2">
													<div class="col-lg-1 col-md-1 col-xs-2 col-sm-1 pr-0">
														<img alt="" src="${schemePerformances.logo}" class="rounded float-left amc-img">
													</div>
													<div class="col-lg-8 col-md-8 col-xs-8 col-sm-8 p-0 m-0">
														<p class="text-left portfolio-p mb-0"><a href="/mutual-funds-research/scheme/${schemePerformances.scheme_amfi}" class="text-primary">${schemePerformances.scheme_amfi}</a> </p>
														<small class="text-left pull-left">${schemePerformances.scheme_category}</small>
													</div>
													<div class="col-lg-3 col-md-3 col-xs-2 col-sm-2">
														<a class="btn btn__secondary btn__rounded btnCol pull-right" href="javascript:;" onclick="redirectLumpsumInvest('${schemePerformances.scheme_company}','${schemePerformances.scheme_amfi}')">Invest Now</a>
													</div>	
												</div>
												<table class="table table-bordered table-striped mf-research-table counton-table">
													<thead class="model-tb-body">
														<tr>
															<th></th>
															<th>1 Yr Return</th>
															<th>3 Yrs Return</th>
															<th>5 Yrs Return</th>
															<th>10 Yrs Return</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td style="text-align: left;">Annualized Return (%)</td>
															<td><c:out value="${schemePerformances.returns_abs_1year eq 0 ? '-': schemePerformances.returns_abs_1year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_3year eq 0 ? '-': schemePerformances.returns_cmp_3year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_5year eq 0 ? '-': schemePerformances.returns_cmp_5year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_10year eq 0 ? '-': schemePerformances.returns_cmp_10year}"></c:out></td>
														</tr>
														<tr>
															<td style="text-align: left;">Value of Rs.1 Lakh Invested</td>
															<td>
											   				   <c:choose>
												   				   <c:when test="${schemePerformances.returns_abs_1year eq 0}">
												   				   		-
												   				   </c:when>
												   				   <c:otherwise>
												   				   		<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_1year_current_value}" />
												   				   </c:otherwise>
											   				   </c:choose>
											   				</td>
															<td>
															   <c:choose>
												   				   <c:when test="${schemePerformances.returns_cmp_3year eq 0}">
																		-
												   				   </c:when>
												   				   <c:otherwise>
												   				   		<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_3year_current_value}" />
												   				   </c:otherwise>
											   				   </c:choose>
											   				</td>
															<td>
																<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_5year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_5year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>   				   
											   				</td>
															<td>
												   				<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_10year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_10year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</c:forEach>
								<c:forEach items="${mid_cap_list}" var="schemePerformances" varStatus="status" begin="0" end="1">
									<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12 mix agg mb-2">
										<div class="card border-0">
											<div class="card-body">
												<div class="row mb-2">
													<div class="col-lg-1 col-md-1 col-xs-2 col-sm-1 pr-0">
														<img alt="" src="${schemePerformances.logo}" class="rounded float-left amc-img">
													</div>
													<div class="col-lg-8 col-md-8 col-xs-8 col-sm-8 p-0 m-0">
														<p class="text-left portfolio-p mb-0"><a href="/mutual-funds-research/scheme/${schemePerformances.scheme_amfi}" class="text-primary">${schemePerformances.scheme_amfi}</a> </p>
														<small class="text-left pull-left">${schemePerformances.scheme_category}</small>
													</div>
													<div class="col-lg-3 col-md-3 col-xs-2 col-sm-2">
														<a class="btn btn__secondary btn__rounded btnCol pull-right" href="javascript:;" onclick="redirectLumpsumInvest('${schemePerformances.scheme_company}','${schemePerformances.scheme_amfi}')">Invest Now</a>
													</div>	
												</div>
												<table class="table table-bordered table-striped mf-research-table counton-table">
													<thead class="model-tb-body">
														<tr>
															<th></th>
															<th>1 Yr Return</th>
															<th>3 Yrs Return</th>
															<th>5 Yrs Return</th>
															<th>10 Yrs Return</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td style="text-align: left;">Annualized Return (%)</td>
															<td><c:out value="${schemePerformances.returns_abs_1year eq 0 ? '-': schemePerformances.returns_abs_1year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_3year eq 0 ? '-': schemePerformances.returns_cmp_3year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_5year eq 0 ? '-': schemePerformances.returns_cmp_5year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_10year eq 0 ? '-': schemePerformances.returns_cmp_10year}"></c:out></td>
														</tr>
														<tr>
															<td style="text-align: left;">Value of Rs.1 Lakh Invested</td>
															<td>
											   				   <c:choose>
												   				   <c:when test="${schemePerformances.returns_abs_1year eq 0}">
												   				   		-
												   				   </c:when>
												   				   <c:otherwise>
												   				   		<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_1year_current_value}" />
												   				   </c:otherwise>
											   				   </c:choose>
											   				</td>
															<td>
															   <c:choose>
												   				   <c:when test="${schemePerformances.returns_cmp_3year eq 0}">
																		-
												   				   </c:when>
												   				   <c:otherwise>
												   				   		<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_3year_current_value}" />
												   				   </c:otherwise>
											   				   </c:choose>
											   				</td>
															<td>
																<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_5year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_5year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>   				   
											   				</td>
															<td>
												   				<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_10year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_10year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</c:forEach>
								<c:forEach items="${large_cap_list}" var="schemePerformances" varStatus="status" begin="0" end="0">
									<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12 mix agg mb-2">
										<div class="card border-0">
											<div class="card-body">
												<div class="row mb-2">
													<div class="col-lg-1 col-md-1 col-xs-2 col-sm-1 pr-0">
														<img alt="" src="${schemePerformances.logo}" class="rounded float-left amc-img">
													</div>
													<div class="col-lg-8 col-md-8 col-xs-8 col-sm-8 p-0 m-0">
														<p class="text-left portfolio-p mb-0"><a href="/mutual-funds-research/scheme/${schemePerformances.scheme_amfi}" class="text-primary">${schemePerformances.scheme_amfi}</a> </p>
														<small class="text-left pull-left">${schemePerformances.scheme_category}</small>
													</div>
													<div class="col-lg-3 col-md-3 col-xs-2 col-sm-2">
														<a class="btn btn__secondary btn__rounded btnCol pull-right" href="javascript:;" onclick="redirectLumpsumInvest('${schemePerformances.scheme_company}','${schemePerformances.scheme_amfi}')">Invest Now</a>
													</div>	
												</div>
												<table class="table table-bordered table-striped mf-research-table counton-table">
													<thead class="model-tb-body">
														<tr>
															<th></th>
															<th>1 Yr Return</th>
															<th>3 Yrs Return</th>
															<th>5 Yrs Return</th>
															<th>10 Yrs Return</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td style="text-align: left;">Annualized Return (%)</td>
															<td><c:out value="${schemePerformances.returns_abs_1year eq 0 ? '-': schemePerformances.returns_abs_1year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_3year eq 0 ? '-': schemePerformances.returns_cmp_3year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_5year eq 0 ? '-': schemePerformances.returns_cmp_5year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_10year eq 0 ? '-': schemePerformances.returns_cmp_10year}"></c:out></td>
														</tr>
														<tr>
															<td style="text-align: left;">Value of Rs.1 Lakh Invested</td>
															<td>
											   				   <c:choose>
												   				   <c:when test="${schemePerformances.returns_abs_1year eq 0}">
												   				   		-
												   				   </c:when>
												   				   <c:otherwise>
												   				   		<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_1year_current_value}" />
												   				   </c:otherwise>
											   				   </c:choose>
											   				</td>
															<td>
															   <c:choose>
												   				   <c:when test="${schemePerformances.returns_cmp_3year eq 0}">
																		-
												   				   </c:when>
												   				   <c:otherwise>
												   				   		<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_3year_current_value}" />
												   				   </c:otherwise>
											   				   </c:choose>
											   				</td>
															<td>
																<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_5year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_5year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>   				   
											   				</td>
															<td>
												   				<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_10year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_10year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</c:forEach>
								<c:forEach items="${credit_opp_list}" var="schemePerformances" varStatus="status" begin="0" end="0">
									<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12 mix agg mb-2">
										<div class="card border-0">
											<div class="card-body">
												<div class="row mb-2">
													<div class="col-lg-1 col-md-1 col-xs-2 col-sm-1 pr-0">
														<img alt="" src="${schemePerformances.logo}" class="rounded float-left amc-img">
													</div>
													<div class="col-lg-8 col-md-8 col-xs-8 col-sm-8 p-0 m-0">
														<p class="text-left portfolio-p mb-0"><a href="/mutual-funds-research/scheme/${schemePerformances.scheme_amfi}" class="text-primary">${schemePerformances.scheme_amfi}</a> </p>
														<small class="text-left pull-left">${schemePerformances.scheme_category}</small>
													</div>
													<div class="col-lg-3 col-md-3 col-xs-2 col-sm-2">
														<a class="btn btn__secondary btn__rounded btnCol pull-right" href="javascript:;" onclick="redirectLumpsumInvest('${schemePerformances.scheme_company}','${schemePerformances.scheme_amfi}')">Invest Now</a>
													</div>	
												</div>
												<table class="table table-bordered table-striped mf-research-table counton-table">
													<thead class="model-tb-body">
														<tr>
															<th></th>
															<th>1 Yr Return</th>
															<th>3 Yrs Return</th>
															<th>5 Yrs Return</th>
															<th>10 Yrs Return</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td style="text-align: left;">Annualized Return (%)</td>
															<td><c:out value="${schemePerformances.returns_abs_1year eq 0 ? '-': schemePerformances.returns_abs_1year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_3year eq 0 ? '-': schemePerformances.returns_cmp_3year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_5year eq 0 ? '-': schemePerformances.returns_cmp_5year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_10year eq 0 ? '-': schemePerformances.returns_cmp_10year}"></c:out></td>
														</tr>
														<tr>
															<td style="text-align: left;">Value of Rs.1 Lakh Invested</td>
															<td>
											   				   <c:choose>
												   				   <c:when test="${schemePerformances.returns_abs_1year eq 0}">
												   				   		-
												   				   </c:when>
												   				   <c:otherwise>
												   				   		<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_1year_current_value}" />
												   				   </c:otherwise>
											   				   </c:choose>
											   				</td>
															<td>
															   <c:choose>
												   				   <c:when test="${schemePerformances.returns_cmp_3year eq 0}">
																		-
												   				   </c:when>
												   				   <c:otherwise>
												   				   		<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_3year_current_value}" />
												   				   </c:otherwise>
											   				   </c:choose>
											   				</td>
															<td>
																<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_5year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_5year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>   				   
											   				</td>
															<td>
												   				<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_10year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_10year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</c:forEach>
								<c:forEach items="${liquid_list}" var="schemePerformances" varStatus="status" begin="0" end="0">
									<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12 mix agg mb-2">
										<div class="card border-0">
											<div class="card-body">
												<div class="row mb-2">
													<div class="col-lg-1 col-md-1 col-xs-2 col-sm-1 pr-0">
														<img alt="" src="${schemePerformances.logo}" class="rounded float-left amc-img">
													</div>
													<div class="col-lg-8 col-md-8 col-xs-8 col-sm-8 p-0 m-0">
														<p class="text-left portfolio-p mb-0"><a href="/mutual-funds-research/scheme/${schemePerformances.scheme_amfi}" class="text-primary">${schemePerformances.scheme_amfi}</a> </p>
														<small class="text-left pull-left">${schemePerformances.scheme_category}</small>
													</div>
													<div class="col-lg-3 col-md-3 col-xs-2 col-sm-2">
														<a class="btn btn__secondary btn__rounded btnCol pull-right" href="javascript:;" onclick="redirectLumpsumInvest('${schemePerformances.scheme_company}','${schemePerformances.scheme_amfi}')">Invest Now</a>
													</div>	
												</div>
												<table class="table table-bordered table-striped mf-research-table counton-table">
													<thead class="model-tb-body">
														<tr>
															<th></th>
															<th>1 Yr Return</th>
															<th>3 Yrs Return</th>
															<th>5 Yrs Return</th>
															<th>10 Yrs Return</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td style="text-align: left;">Annualized Return (%)</td>
															<td><c:out value="${schemePerformances.returns_abs_1year eq 0 ? '-': schemePerformances.returns_abs_1year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_3year eq 0 ? '-': schemePerformances.returns_cmp_3year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_5year eq 0 ? '-': schemePerformances.returns_cmp_5year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_10year eq 0 ? '-': schemePerformances.returns_cmp_10year}"></c:out></td>
														</tr>
														<tr>
															<td style="text-align: left;">Value of Rs.1 Lakh Invested</td>
															<td>
											   				   <c:choose>
												   				   <c:when test="${schemePerformances.returns_abs_1year eq 0}">
												   				   		-
												   				   </c:when>
												   				   <c:otherwise>
												   				   		<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_1year_current_value}" />
												   				   </c:otherwise>
											   				   </c:choose>
											   				</td>
															<td>
															   <c:choose>
												   				   <c:when test="${schemePerformances.returns_cmp_3year eq 0}">
																		-
												   				   </c:when>
												   				   <c:otherwise>
												   				   		<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_3year_current_value}" />
												   				   </c:otherwise>
											   				   </c:choose>
											   				</td>
															<td>
																<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_5year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_5year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>   				   
											   				</td>
															<td>
												   				<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_10year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_10year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</c:forEach>
								<c:forEach items="${diversified_list}" var="schemePerformances" varStatus="status" begin="0" end="1">
									<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12 mix mod_agg mb-2">
										<div class="card border-0">
											<div class="card-body">
												<div class="row mb-2">
													<div class="col-lg-1 col-md-1 col-xs-2 col-sm-1 pr-0">
														<img alt="" src="${schemePerformances.logo}" class="rounded float-left amc-img">
													</div>
													<div class="col-lg-8 col-md-8 col-xs-8 col-sm-8 p-0 m-0">
														<p class="text-left portfolio-p mb-0"><a href="/mutual-funds-research/scheme/${schemePerformances.scheme_amfi}" class="text-primary">${schemePerformances.scheme_amfi}</a> </p>
														<small class="text-left pull-left">${schemePerformances.scheme_category}</small>
													</div>
													<div class="col-lg-3 col-md-3 col-xs-2 col-sm-2">
														<a class="btn btn__secondary btn__rounded btnCol pull-right" href="javascript:;" onclick="redirectLumpsumInvest('${schemePerformances.scheme_company}','${schemePerformances.scheme_amfi}')">Invest Now</a>
													</div>	
												</div>
												<table class="table table-bordered table-striped mf-research-table counton-table">
													<thead class="model-tb-body">
														<tr>
															<th></th>
															<th>1 Yr Return</th>
															<th>3 Yrs Return</th>
															<th>5 Yrs Return</th>
															<th>10 Yrs Return</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td style="text-align: left;">Annualized Return (%)</td>
															<td><c:out value="${schemePerformances.returns_abs_1year eq 0 ? '-': schemePerformances.returns_abs_1year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_3year eq 0 ? '-': schemePerformances.returns_cmp_3year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_5year eq 0 ? '-': schemePerformances.returns_cmp_5year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_10year eq 0 ? '-': schemePerformances.returns_cmp_10year}"></c:out></td>
														</tr>
														<tr>
															<td style="text-align: left;">Value of Rs.1 Lakh Invested</td>
															<td>
												   				<c:choose>
													   				<c:when test="${schemePerformances.returns_abs_1year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_1year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
															<td>
																<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_3year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_3year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
															<td>
																<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_5year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_5year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>   				   
											   				</td>
															<td>
											   				   <c:choose>
											   				   <c:when test="${schemePerformances.returns_cmp_10year eq 0}">
											   				   -
											   				   </c:when>
											   				   <c:otherwise>
											   				   <fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_10year_current_value}" />
											   				   </c:otherwise>
											   				   </c:choose>
											   				</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</c:forEach>
								<c:forEach items="${large_cap_list}" var="schemePerformances" varStatus="status" begin="0" end="1">
									<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12 mix mod_agg mb-2">
										<div class="card border-0">
											<div class="card-body">
												<div class="row mb-2">
													<div class="col-lg-1 col-md-1 col-xs-2 col-sm-1 pr-0">
														<img alt="" src="${schemePerformances.logo}" class="rounded float-left amc-img">
													</div>
													<div class="col-lg-8 col-md-8 col-xs-8 col-sm-8 p-0 m-0">
														<p class="text-left portfolio-p mb-0"><a href="/mutual-funds-research/scheme/${schemePerformances.scheme_amfi}" class="text-primary">${schemePerformances.scheme_amfi}</a> </p>
														<small class="text-left pull-left">${schemePerformances.scheme_category}</small>
													</div>
													<div class="col-lg-3 col-md-3 col-xs-2 col-sm-2">
														<a class="btn btn__secondary btn__rounded btnCol pull-right" href="javascript:;" onclick="redirectLumpsumInvest('${schemePerformances.scheme_company}','${schemePerformances.scheme_amfi}')">Invest Now</a>
													</div>	
												</div>
												<table class="table table-bordered table-striped mf-research-table counton-table">
													<thead class="model-tb-body">
														<tr>
															<th></th>
															<th>1 Yr Return</th>
															<th>3 Yrs Return</th>
															<th>5 Yrs Return</th>
															<th>10 Yrs Return</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td style="text-align: left;">Annualized Return (%)</td>
															<td><c:out value="${schemePerformances.returns_abs_1year eq 0 ? '-': schemePerformances.returns_abs_1year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_3year eq 0 ? '-': schemePerformances.returns_cmp_3year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_5year eq 0 ? '-': schemePerformances.returns_cmp_5year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_10year eq 0 ? '-': schemePerformances.returns_cmp_10year}"></c:out></td>
														</tr>
														<tr>
															<td style="text-align: left;">Value of Rs.1 Lakh Invested</td>
															<td>
												   				<c:choose>
													   				<c:when test="${schemePerformances.returns_abs_1year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_1year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
															<td>
																<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_3year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_3year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
															<td>
																<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_5year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_5year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>   				   
											   				</td>
															<td>
											   				   <c:choose>
											   				   <c:when test="${schemePerformances.returns_cmp_10year eq 0}">
											   				   -
											   				   </c:when>
											   				   <c:otherwise>
											   				   <fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_10year_current_value}" />
											   				   </c:otherwise>
											   				   </c:choose>
											   				</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</c:forEach>
								<c:forEach items="${credit_opp_list}" var="schemePerformances" varStatus="status" begin="0" end="0">
									<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12 mix mod_agg mb-2">
										<div class="card border-0">
											<div class="card-body">
												<div class="row mb-2">
													<div class="col-lg-1 col-md-1 col-xs-2 col-sm-1 pr-0">
														<img alt="" src="${schemePerformances.logo}" class="rounded float-left amc-img">
													</div>
													<div class="col-lg-8 col-md-8 col-xs-8 col-sm-8 p-0 m-0">
														<p class="text-left portfolio-p mb-0"><a href="/mutual-funds-research/scheme/${schemePerformances.scheme_amfi}" class="text-primary">${schemePerformances.scheme_amfi}</a> </p>
														<small class="text-left pull-left">${schemePerformances.scheme_category}</small>
													</div>
													<div class="col-lg-3 col-md-3 col-xs-2 col-sm-2">
														<a class="btn btn__secondary btn__rounded btnCol pull-right" href="javascript:;" onclick="redirectLumpsumInvest('${schemePerformances.scheme_company}','${schemePerformances.scheme_amfi}')">Invest Now</a>
													</div>	
												</div>
												<table class="table table-bordered table-striped mf-research-table counton-table">
													<thead class="model-tb-body">
														<tr>
															<th></th>
															<th>1 Yr Return</th>
															<th>3 Yrs Return</th>
															<th>5 Yrs Return</th>
															<th>10 Yrs Return</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td style="text-align: left;">Annualized Return (%)</td>
															<td><c:out value="${schemePerformances.returns_abs_1year eq 0 ? '-': schemePerformances.returns_abs_1year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_3year eq 0 ? '-': schemePerformances.returns_cmp_3year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_5year eq 0 ? '-': schemePerformances.returns_cmp_5year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_10year eq 0 ? '-': schemePerformances.returns_cmp_10year}"></c:out></td>
														</tr>
														<tr>
															<td style="text-align: left;">Value of Rs.1 Lakh Invested</td>
															<td>
												   				<c:choose>
													   				<c:when test="${schemePerformances.returns_abs_1year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_1year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
															<td>
																<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_3year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_3year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
															<td>
																<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_5year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_5year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>   				   
											   				</td>
															<td>
											   				   <c:choose>
											   				   <c:when test="${schemePerformances.returns_cmp_10year eq 0}">
											   				   -
											   				   </c:when>
											   				   <c:otherwise>
											   				   <fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_10year_current_value}" />
											   				   </c:otherwise>
											   				   </c:choose>
											   				</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</c:forEach>
								<c:forEach items="${short_term_list}" var="schemePerformances" varStatus="status" begin="0" end="1">
									<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12 mix mod_agg mb-2">
										<div class="card border-0">
											<div class="card-body">
												<div class="row mb-2">
													<div class="col-lg-1 col-md-1 col-xs-2 col-sm-1 pr-0">
														<img alt="" src="${schemePerformances.logo}" class="rounded float-left amc-img">
													</div>
													<div class="col-lg-8 col-md-8 col-xs-8 col-sm-8 p-0 m-0">
														<p class="text-left portfolio-p mb-0"><a href="/mutual-funds-research/scheme/${schemePerformances.scheme_amfi}" class="text-primary">${schemePerformances.scheme_amfi}</a> </p>
														<small class="text-left pull-left">${schemePerformances.scheme_category}</small>
													</div>
													<div class="col-lg-3 col-md-3 col-xs-2 col-sm-2">
														<a class="btn btn__secondary btn__rounded btnCol pull-right" href="javascript:;" onclick="redirectLumpsumInvest('${schemePerformances.scheme_company}','${schemePerformances.scheme_amfi}')">Invest Now</a>
													</div>	
												</div>
												<table class="table table-bordered table-striped mf-research-table counton-table">
													<thead class="model-tb-body">
														<tr>
															<th></th>
															<th>1 Yr Return</th>
															<th>3 Yrs Return</th>
															<th>5 Yrs Return</th>
															<th>10 Yrs Return</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td style="text-align: left;">Annualized Return (%)</td>
															<td><c:out value="${schemePerformances.returns_abs_1year eq 0 ? '-': schemePerformances.returns_abs_1year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_3year eq 0 ? '-': schemePerformances.returns_cmp_3year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_5year eq 0 ? '-': schemePerformances.returns_cmp_5year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_10year eq 0 ? '-': schemePerformances.returns_cmp_10year}"></c:out></td>
														</tr>
														<tr>
															<td style="text-align: left;">Value of Rs.1 Lakh Invested</td>
															<td>
												   				<c:choose>
													   				<c:when test="${schemePerformances.returns_abs_1year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_1year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
															<td>
																<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_3year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_3year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
															<td>
																<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_5year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_5year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>   				   
											   				</td>
															<td>
											   				   <c:choose>
											   				   <c:when test="${schemePerformances.returns_cmp_10year eq 0}">
											   				   -
											   				   </c:when>
											   				   <c:otherwise>
											   				   <fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_10year_current_value}" />
											   				   </c:otherwise>
											   				   </c:choose>
											   				</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</c:forEach>
								<c:forEach items="${liquid_list}" var="schemePerformances" varStatus="status" begin="0" end="0">
									<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12 mix mod_agg mb-2">
										<div class="card border-0">
											<div class="card-body">
												<div class="row mb-2">
													<div class="col-lg-1 col-md-1 col-xs-2 col-sm-1 pr-0">
														<img alt="" src="${schemePerformances.logo}" class="rounded float-left amc-img">
													</div>
													<div class="col-lg-8 col-md-8 col-xs-8 col-sm-8 p-0 m-0">
														<p class="text-left portfolio-p mb-0"><a href="/mutual-funds-research/scheme/${schemePerformances.scheme_amfi}" class="text-primary">${schemePerformances.scheme_amfi}</a> </p>
														<small class="text-left pull-left">${schemePerformances.scheme_category}</small>
													</div>
													<div class="col-lg-3 col-md-3 col-xs-2 col-sm-2">
														<a class="btn btn__secondary btn__rounded btnCol pull-right" href="javascript:;" onclick="redirectLumpsumInvest('${schemePerformances.scheme_company}','${schemePerformances.scheme_amfi}')">Invest Now</a>
													</div>	
												</div>
												<table class="table table-bordered table-striped mf-research-table counton-table">
													<thead class="model-tb-body">
														<tr>
															<th></th>
															<th>1 Yr Return</th>
															<th>3 Yrs Return</th>
															<th>5 Yrs Return</th>
															<th>10 Yrs Return</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td style="text-align: left;">Annualized Return (%)</td>
															<td><c:out value="${schemePerformances.returns_abs_1year eq 0 ? '-': schemePerformances.returns_abs_1year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_3year eq 0 ? '-': schemePerformances.returns_cmp_3year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_5year eq 0 ? '-': schemePerformances.returns_cmp_5year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_10year eq 0 ? '-': schemePerformances.returns_cmp_10year}"></c:out></td>
														</tr>
														<tr>
															<td style="text-align: left;">Value of Rs.1 Lakh Invested</td>
															<td>
												   				<c:choose>
													   				<c:when test="${schemePerformances.returns_abs_1year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_1year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
															<td>
																<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_3year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_3year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
															<td>
																<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_5year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_5year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>   				   
											   				</td>
															<td>
											   				   <c:choose>
											   				   <c:when test="${schemePerformances.returns_cmp_10year eq 0}">
											   				   -
											   				   </c:when>
											   				   <c:otherwise>
											   				   <fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_10year_current_value}" />
											   				   </c:otherwise>
											   				   </c:choose>
											   				</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</c:forEach>
								<c:forEach items="${balanced_list}" var="schemePerformances" varStatus="status" begin="0" end="1">
									<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12 mix mod mb-2">
										<div class="card border-0">
											<div class="card-body">
												<div class="row mb-2">
													<div class="col-lg-1 col-md-1 col-xs-2 col-sm-1 pr-0">
														<img alt="" src="${schemePerformances.logo}" class="rounded float-left amc-img">
													</div>
													<div class="col-lg-8 col-md-8 col-xs-8 col-sm-8 p-0 m-0">
														<p class="text-left portfolio-p mb-0"><a href="/mutual-funds-research/scheme/${schemePerformances.scheme_amfi}" class="text-primary">${schemePerformances.scheme_amfi}</a> </p>
														<small class="text-left pull-left">${schemePerformances.scheme_category}</small>
													</div>
													<div class="col-lg-3 col-md-3 col-xs-2 col-sm-2">
														<a class="btn btn__secondary btn__rounded btnCol pull-right" href="javascript:;" onclick="redirectLumpsumInvest('${schemePerformances.scheme_company}','${schemePerformances.scheme_amfi}')">Invest Now</a>
													</div>	
												</div>
												<table class="table table-bordered table-striped mf-research-table counton-table">
													<thead class="model-tb-body">
														<tr>
															<th></th>
															<th>1 Yr Return</th>
															<th>3 Yrs Return</th>
															<th>5 Yrs Return</th>
															<th>10 Yrs Return</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td style="text-align: left;">Annualized Return (%)</td>
															<td><c:out value="${schemePerformances.returns_abs_1year eq 0 ? '-': schemePerformances.returns_abs_1year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_3year eq 0 ? '-': schemePerformances.returns_cmp_3year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_5year eq 0 ? '-': schemePerformances.returns_cmp_5year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_10year eq 0 ? '-': schemePerformances.returns_cmp_10year}"></c:out></td>
														</tr>
														<tr>
															<td style="text-align: left;">Value of Rs.1 Lakh Invested</td>
															<td>
												   				<c:choose>
													   				<c:when test="${schemePerformances.returns_abs_1year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_1year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
															<td>
																<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_3year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_3year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
															<td>
																<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_5year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_5year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>   				   
											   				</td>
															<td>
												   				<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_10year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_10year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</c:forEach>
								<c:forEach items="${large_cap_list}" var="schemePerformances" varStatus="status" begin="0" end="1">
									<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12 mix mod mb-2">
										<div class="card border-0">
											<div class="card-body">
												<div class="row mb-2">
													<div class="col-lg-1 col-md-1 col-xs-2 col-sm-1 pr-0">
														<img alt="" src="${schemePerformances.logo}" class="rounded float-left amc-img">
													</div>
													<div class="col-lg-8 col-md-8 col-xs-8 col-sm-8 p-0 m-0">
														<p class="text-left portfolio-p mb-0"><a href="/mutual-funds-research/scheme/${schemePerformances.scheme_amfi}" class="text-primary">${schemePerformances.scheme_amfi}</a> </p>
														<small class="text-left pull-left">${schemePerformances.scheme_category}</small>
													</div>
													<div class="col-lg-3 col-md-3 col-xs-2 col-sm-2">
														<a class="btn btn__secondary btn__rounded btnCol pull-right" href="javascript:;" onclick="redirectLumpsumInvest('${schemePerformances.scheme_company}','${schemePerformances.scheme_amfi}')">Invest Now</a>
													</div>	
												</div>
												<table class="table table-bordered table-striped mf-research-table counton-table">
													<thead class="model-tb-body">
														<tr>
															<th></th>
															<th>1 Yr Return</th>
															<th>3 Yrs Return</th>
															<th>5 Yrs Return</th>
															<th>10 Yrs Return</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td style="text-align: left;">Annualized Return (%)</td>
															<td><c:out value="${schemePerformances.returns_abs_1year eq 0 ? '-': schemePerformances.returns_abs_1year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_3year eq 0 ? '-': schemePerformances.returns_cmp_3year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_5year eq 0 ? '-': schemePerformances.returns_cmp_5year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_10year eq 0 ? '-': schemePerformances.returns_cmp_10year}"></c:out></td>
														</tr>
														<tr>
															<td style="text-align: left;">Value of Rs.1 Lakh Invested</td>
															<td>
												   				<c:choose>
													   				<c:when test="${schemePerformances.returns_abs_1year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_1year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
															<td>
																<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_3year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_3year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
															<td>
																<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_5year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_5year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>   				   
											   				</td>
															<td>
												   				<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_10year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_10year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</c:forEach>
								<c:forEach items="${credit_opp_list}" var="schemePerformances" varStatus="status" begin="0" end="0">
									<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12 mix mod mb-2">
										<div class="card border-0">
											<div class="card-body">
												<div class="row mb-2">
													<div class="col-lg-1 col-md-1 col-xs-2 col-sm-1 pr-0">
														<img alt="" src="${schemePerformances.logo}" class="rounded float-left amc-img">
													</div>
													<div class="col-lg-8 col-md-8 col-xs-8 col-sm-8 p-0 m-0">
														<p class="text-left portfolio-p mb-0"><a href="/mutual-funds-research/scheme/${schemePerformances.scheme_amfi}" class="text-primary">${schemePerformances.scheme_amfi}</a> </p>
														<small class="text-left pull-left">${schemePerformances.scheme_category}</small>
													</div>
													<div class="col-lg-3 col-md-3 col-xs-2 col-sm-2">
														<a class="btn btn__secondary btn__rounded btnCol pull-right" href="javascript:;" onclick="redirectLumpsumInvest('${schemePerformances.scheme_company}','${schemePerformances.scheme_amfi}')">Invest Now</a>
													</div>	
												</div>
												<table class="table table-bordered table-striped mf-research-table counton-table">
													<thead class="model-tb-body">
														<tr>
															<th></th>
															<th>1 Yr Return</th>
															<th>3 Yrs Return</th>
															<th>5 Yrs Return</th>
															<th>10 Yrs Return</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td style="text-align: left;">Annualized Return (%)</td>
															<td><c:out value="${schemePerformances.returns_abs_1year eq 0 ? '-': schemePerformances.returns_abs_1year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_3year eq 0 ? '-': schemePerformances.returns_cmp_3year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_5year eq 0 ? '-': schemePerformances.returns_cmp_5year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_10year eq 0 ? '-': schemePerformances.returns_cmp_10year}"></c:out></td>
														</tr>
														<tr>
															<td style="text-align: left;">Value of Rs.1 Lakh Invested</td>
															<td>
												   				<c:choose>
													   				<c:when test="${schemePerformances.returns_abs_1year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_1year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
															<td>
																<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_3year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_3year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
															<td>
																<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_5year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_5year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>   				   
											   				</td>
															<td>
												   				<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_10year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_10year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</c:forEach>
								<c:forEach items="${short_term_list}" var="schemePerformances" varStatus="status" begin="0" end="1">
									<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12 mix mod mb-2">
										<div class="card border-0">
											<div class="card-body">
												<div class="row mb-2">
													<div class="col-lg-1 col-md-1 col-xs-2 col-sm-1 pr-0">
														<img alt="" src="${schemePerformances.logo}" class="rounded float-left amc-img">
													</div>
													<div class="col-lg-8 col-md-8 col-xs-8 col-sm-8 p-0 m-0">
														<p class="text-left portfolio-p mb-0"><a href="/mutual-funds-research/scheme/${schemePerformances.scheme_amfi}" class="text-primary">${schemePerformances.scheme_amfi}</a> </p>
														<small class="text-left pull-left">${schemePerformances.scheme_category}</small>
													</div>
													<div class="col-lg-3 col-md-3 col-xs-2 col-sm-2">
														<a class="btn btn__secondary btn__rounded btnCol pull-right" href="javascript:;" onclick="redirectLumpsumInvest('${schemePerformances.scheme_company}','${schemePerformances.scheme_amfi}')">Invest Now</a>
													</div>	
												</div>
												<table class="table table-bordered table-striped mf-research-table counton-table">
													<thead class="model-tb-body">
														<tr>
															<th></th>
															<th>1 Yr Return</th>
															<th>3 Yrs Return</th>
															<th>5 Yrs Return</th>
															<th>10 Yrs Return</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td style="text-align: left;">Annualized Return (%)</td>
															<td><c:out value="${schemePerformances.returns_abs_1year eq 0 ? '-': schemePerformances.returns_abs_1year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_3year eq 0 ? '-': schemePerformances.returns_cmp_3year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_5year eq 0 ? '-': schemePerformances.returns_cmp_5year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_10year eq 0 ? '-': schemePerformances.returns_cmp_10year}"></c:out></td>
														</tr>
														<tr>
															<td style="text-align: left;">Value of Rs.1 Lakh Invested</td>
															<td>
												   				<c:choose>
													   				<c:when test="${schemePerformances.returns_abs_1year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_1year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
															<td>
																<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_3year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_3year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
															<td>
																<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_5year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_5year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>   				   
											   				</td>
															<td>
												   				<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_10year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_10year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</c:forEach>
								<c:forEach items="${liquid_list}" var="schemePerformances" varStatus="status" begin="0" end="0">
									<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12 mix mod mb-2">
										<div class="card border-0">
											<div class="card-body">
												<div class="row mb-2">
													<div class="col-lg-1 col-md-1 col-xs-2 col-sm-1 pr-0">
														<img alt="" src="${schemePerformances.logo}" class="rounded float-left amc-img">
													</div>
													<div class="col-lg-8 col-md-8 col-xs-8 col-sm-8 p-0 m-0">
														<p class="text-left portfolio-p mb-0"><a href="/mutual-funds-research/scheme/${schemePerformances.scheme_amfi}" class="text-primary">${schemePerformances.scheme_amfi}</a> </p>
														<small class="text-left pull-left">${schemePerformances.scheme_category}</small>
													</div>
													<div class="col-lg-3 col-md-3 col-xs-2 col-sm-2">
														<a class="btn btn__secondary btn__rounded btnCol pull-right" href="javascript:;" onclick="redirectLumpsumInvest('${schemePerformances.scheme_company}','${schemePerformances.scheme_amfi}')">Invest Now</a>
													</div>	
												</div>
												<table class="table table-bordered table-striped mf-research-table counton-table">
													<thead class="model-tb-body">
														<tr>
															<th></th>
															<th>1 Yr Return</th>
															<th>3 Yrs Return</th>
															<th>5 Yrs Return</th>
															<th>10 Yrs Return</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td style="text-align: left;">Annualized Return (%)</td>
															<td><c:out value="${schemePerformances.returns_abs_1year eq 0 ? '-': schemePerformances.returns_abs_1year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_3year eq 0 ? '-': schemePerformances.returns_cmp_3year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_5year eq 0 ? '-': schemePerformances.returns_cmp_5year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_10year eq 0 ? '-': schemePerformances.returns_cmp_10year}"></c:out></td>
														</tr>
														<tr>
															<td style="text-align: left;">Value of Rs.1 Lakh Invested</td>
															<td>
												   				<c:choose>
													   				<c:when test="${schemePerformances.returns_abs_1year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_1year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
															<td>
																<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_3year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_3year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
															<td>
																<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_5year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_5year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>   				   
											   				</td>
															<td>
												   				<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_10year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_10year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</c:forEach>
								<c:forEach items="${balanced_list}" var="schemePerformances" varStatus="status" begin="0" end="1">
									<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12 mix mod_con mb-2">
										<div class="card border-0">
											<div class="card-body">
												<div class="row mb-2">
													<div class="col-lg-1 col-md-1 col-xs-2 col-sm-1 pr-0">
														<img alt="" src="${schemePerformances.logo}" class="rounded float-left amc-img">
													</div>
													<div class="col-lg-8 col-md-8 col-xs-8 col-sm-8 p-0 m-0">
														<p class="text-left portfolio-p mb-0"><a href="/mutual-funds-research/scheme/${schemePerformances.scheme_amfi}" class="text-primary">${schemePerformances.scheme_amfi}</a> </p>
														<small class="text-left pull-left">${schemePerformances.scheme_category}</small>
													</div>
													<div class="col-lg-3 col-md-3 col-xs-2 col-sm-2">
														<a class="btn btn__secondary btn__rounded btnCol pull-right" href="javascript:;" onclick="redirectLumpsumInvest('${schemePerformances.scheme_company}','${schemePerformances.scheme_amfi}')">Invest Now</a>
													</div>	
												</div>
												<table class="table table-bordered table-striped mf-research-table counton-table">
													<thead class="model-tb-body">
														<tr>
															<th></th>
															<th>1 Yr Return</th>
															<th>3 Yrs Return</th>
															<th>5 Yrs Return</th>
															<th>10 Yrs Return</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td style="text-align: left;">Annualized Return (%)</td>
															<td><c:out value="${schemePerformances.returns_abs_1year eq 0 ? '-': schemePerformances.returns_abs_1year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_3year eq 0 ? '-': schemePerformances.returns_cmp_3year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_5year eq 0 ? '-': schemePerformances.returns_cmp_5year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_10year eq 0 ? '-': schemePerformances.returns_cmp_10year}"></c:out></td>
														</tr>
														<tr>
															<td style="text-align: left;">Value of Rs.1 Lakh Invested</td>
															<td>
												   				<c:choose>
													   				<c:when test="${schemePerformances.returns_abs_1year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_1year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
															<td>
																<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_3year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_3year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
															<td>
																<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_5year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_5year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>   				   
											   				</td>
															<td>
												   				<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_10year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_10year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</c:forEach>
								<c:forEach items="${large_cap_list}" var="schemePerformances" varStatus="status" begin="0" end="1">
									<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12 mix mod_con mb-2">
										<div class="card border-0">
											<div class="card-body">
												<div class="row mb-2">
													<div class="col-lg-1 col-md-1 col-xs-2 col-sm-1 pr-0">
														<img alt="" src="${schemePerformances.logo}" class="rounded float-left amc-img">
													</div>
													<div class="col-lg-8 col-md-8 col-xs-8 col-sm-8 p-0 m-0">
														<p class="text-left portfolio-p mb-0"><a href="/mutual-funds-research/scheme/${schemePerformances.scheme_amfi}" class="text-primary">${schemePerformances.scheme_amfi}</a> </p>
														<small class="text-left pull-left">${schemePerformances.scheme_category}</small>
													</div>
													<div class="col-lg-3 col-md-3 col-xs-2 col-sm-2">
														<a class="btn btn__secondary btn__rounded btnCol pull-right" href="javascript:;" onclick="redirectLumpsumInvest('${schemePerformances.scheme_company}','${schemePerformances.scheme_amfi}')">Invest Now</a>
													</div>	
												</div>
												<table class="table table-bordered table-striped mf-research-table counton-table">
													<thead class="model-tb-body">
														<tr>
															<th></th>
															<th>1 Yr Return</th>
															<th>3 Yrs Return</th>
															<th>5 Yrs Return</th>
															<th>10 Yrs Return</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td style="text-align: left;">Annualized Return (%)</td>
															<td><c:out value="${schemePerformances.returns_abs_1year eq 0 ? '-': schemePerformances.returns_abs_1year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_3year eq 0 ? '-': schemePerformances.returns_cmp_3year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_5year eq 0 ? '-': schemePerformances.returns_cmp_5year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_10year eq 0 ? '-': schemePerformances.returns_cmp_10year}"></c:out></td>
														</tr>
														<tr>
															<td style="text-align: left;">Value of Rs.1 Lakh Invested</td>
															<td>
												   				<c:choose>
													   				<c:when test="${schemePerformances.returns_abs_1year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_1year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
															<td>
																<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_3year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_3year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
															<td>
																<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_5year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_5year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>   				   
											   				</td>
															<td>
												   				<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_10year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_10year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</c:forEach>
								<c:forEach items="${credit_opp_list}" var="schemePerformances" varStatus="status" begin="0" end="1">
									<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12 mix mod_con mb-2">
										<div class="card border-0">
											<div class="card-body">
												<div class="row mb-2">
													<div class="col-lg-1 col-md-1 col-xs-2 col-sm-1 pr-0">
														<img alt="" src="${schemePerformances.logo}" class="rounded float-left amc-img">
													</div>
													<div class="col-lg-8 col-md-8 col-xs-8 col-sm-8 p-0 m-0">
														<p class="text-left portfolio-p mb-0"><a href="/mutual-funds-research/scheme/${schemePerformances.scheme_amfi}" class="text-primary">${schemePerformances.scheme_amfi}</a> </p>
														<small class="text-left pull-left">${schemePerformances.scheme_category}</small>
													</div>
													<div class="col-lg-3 col-md-3 col-xs-2 col-sm-2">
														<a class="btn btn__secondary btn__rounded btnCol pull-right" href="javascript:;" onclick="redirectLumpsumInvest('${schemePerformances.scheme_company}','${schemePerformances.scheme_amfi}')">Invest Now</a>
													</div>	
												</div>
												<table class="table table-bordered table-striped mf-research-table counton-table">
													<thead class="model-tb-body">
														<tr>
															<th></th>
															<th>1 Yr Return</th>
															<th>3 Yrs Return</th>
															<th>5 Yrs Return</th>
															<th>10 Yrs Return</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td style="text-align: left;">Annualized Return (%)</td>
															<td><c:out value="${schemePerformances.returns_abs_1year eq 0 ? '-': schemePerformances.returns_abs_1year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_3year eq 0 ? '-': schemePerformances.returns_cmp_3year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_5year eq 0 ? '-': schemePerformances.returns_cmp_5year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_10year eq 0 ? '-': schemePerformances.returns_cmp_10year}"></c:out></td>
														</tr>
														<tr>
															<td style="text-align: left;">Value of Rs.1 Lakh Invested</td>
															<td>
												   				<c:choose>
													   				<c:when test="${schemePerformances.returns_abs_1year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_1year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
															<td>
																<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_3year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_3year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
															<td>
																<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_5year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_5year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>   				   
											   				</td>
															<td>
												   				<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_10year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_10year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</c:forEach>
								<c:forEach items="${short_term_list}" var="schemePerformances" varStatus="status" begin="0" end="1">
									<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12 mix mod_con mb-2">
										<div class="card border-0">
											<div class="card-body">
												<div class="row mb-2">
													<div class="col-lg-1 col-md-1 col-xs-2 col-sm-1 pr-0">
														<img alt="" src="${schemePerformances.logo}" class="rounded float-left amc-img">
													</div>
													<div class="col-lg-8 col-md-8 col-xs-8 col-sm-8 p-0 m-0">
														<p class="text-left portfolio-p mb-0"><a href="/mutual-funds-research/scheme/${schemePerformances.scheme_amfi}" class="text-primary">${schemePerformances.scheme_amfi}</a> </p>
														<small class="text-left pull-left">${schemePerformances.scheme_category}</small>
													</div>
													<div class="col-lg-3 col-md-3 col-xs-2 col-sm-2">
														<a class="btn btn__secondary btn__rounded btnCol pull-right" href="javascript:;" onclick="redirectLumpsumInvest('${schemePerformances.scheme_company}','${schemePerformances.scheme_amfi}')">Invest Now</a>
													</div>	
												</div>
												<table class="table table-bordered table-striped mf-research-table counton-table">
													<thead class="model-tb-body">
														<tr>
															<th></th>
															<th>1 Yr Return</th>
															<th>3 Yrs Return</th>
															<th>5 Yrs Return</th>
															<th>10 Yrs Return</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td style="text-align: left;">Annualized Return (%)</td>
															<td><c:out value="${schemePerformances.returns_abs_1year eq 0 ? '-': schemePerformances.returns_abs_1year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_3year eq 0 ? '-': schemePerformances.returns_cmp_3year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_5year eq 0 ? '-': schemePerformances.returns_cmp_5year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_10year eq 0 ? '-': schemePerformances.returns_cmp_10year}"></c:out></td>
														</tr>
														<tr>
															<td style="text-align: left;">Value of Rs.1 Lakh Invested</td>
															<td>
												   				<c:choose>
													   				<c:when test="${schemePerformances.returns_abs_1year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_1year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
															<td>
																<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_3year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_3year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
															<td>
																<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_5year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_5year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>   				   
											   				</td>
															<td>
												   				<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_10year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_10year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</c:forEach>
								<c:forEach items="${liquid_list}" var="schemePerformances" varStatus="status" begin="0" end="1">
									<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12 mix mod_con mb-2">
										<div class="card border-0">
											<div class="card-body">
												<div class="row mb-2">
													<div class="col-lg-1 col-md-1 col-xs-2 col-sm-1 pr-0">
														<img alt="" src="${schemePerformances.logo}" class="rounded float-left amc-img">
													</div>
													<div class="col-lg-8 col-md-8 col-xs-8 col-sm-8 p-0 m-0">
														<p class="text-left portfolio-p mb-0"><a href="/mutual-funds-research/scheme/${schemePerformances.scheme_amfi}" class="text-primary">${schemePerformances.scheme_amfi}</a> </p>
														<small class="text-left pull-left">${schemePerformances.scheme_category}</small>
													</div>
													<div class="col-lg-3 col-md-3 col-xs-2 col-sm-2">
														<a class="btn btn__secondary btn__rounded btnCol pull-right" href="javascript:;" onclick="redirectLumpsumInvest('${schemePerformances.scheme_company}','${schemePerformances.scheme_amfi}')">Invest Now</a>
													</div>	
												</div>
												<table class="table table-bordered table-striped mf-research-table counton-table">
													<thead class="model-tb-body">
														<tr>
															<th></th>
															<th>1 Yr Return</th>
															<th>3 Yrs Return</th>
															<th>5 Yrs Return</th>
															<th>10 Yrs Return</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td style="text-align: left;">Annualized Return (%)</td>
															<td><c:out value="${schemePerformances.returns_abs_1year eq 0 ? '-': schemePerformances.returns_abs_1year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_3year eq 0 ? '-': schemePerformances.returns_cmp_3year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_5year eq 0 ? '-': schemePerformances.returns_cmp_5year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_10year eq 0 ? '-': schemePerformances.returns_cmp_10year}"></c:out></td>
														</tr>
														<tr>
															<td style="text-align: left;">Value of Rs.1 Lakh Invested</td>
															<td>
												   				<c:choose>
													   				<c:when test="${schemePerformances.returns_abs_1year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_1year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
															<td>
																<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_3year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_3year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
															<td>
																<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_5year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_5year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>   				   
											   				</td>
															<td>
												   				<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_10year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_10year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</c:forEach>
								<c:forEach items="${large_cap_list}" var="schemePerformances" varStatus="status" begin="0" end="1">
									<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12 mix con mb-2">
										<div class="card border-0">
											<div class="card-body">
												<div class="row mb-2">
													<div class="col-lg-1 col-md-1 col-xs-2 col-sm-1 pr-0">
														<img alt="" src="${schemePerformances.logo}" class="rounded float-left amc-img">
													</div>
													<div class="col-lg-8 col-md-8 col-xs-8 col-sm-8 p-0 m-0">
														<p class="text-left portfolio-p mb-0"><a href="/mutual-funds-research/scheme/${schemePerformances.scheme_amfi}" class="text-primary">${schemePerformances.scheme_amfi}</a> </p>
														<small class="text-left pull-left">${schemePerformances.scheme_category}</small>
													</div>
													<div class="col-lg-3 col-md-3 col-xs-2 col-sm-2">
														<a class="btn btn__secondary btn__rounded btnCol pull-right" href="javascript:;" onclick="redirectLumpsumInvest('${schemePerformances.scheme_company}','${schemePerformances.scheme_amfi}')">Invest Now</a>
													</div>	
												</div>
												<table class="table table-bordered table-striped mf-research-table counton-table">
													<thead class="model-tb-body">
														<tr>
															<th></th>
															<th>1 Yr Return</th>
															<th>3 Yrs Return</th>
															<th>5 Yrs Return</th>
															<th>10 Yrs Return</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td style="text-align: left;">Annualized Return (%)</td>
															<td><c:out value="${schemePerformances.returns_abs_1year eq 0 ? '-': schemePerformances.returns_abs_1year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_3year eq 0 ? '-': schemePerformances.returns_cmp_3year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_5year eq 0 ? '-': schemePerformances.returns_cmp_5year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_10year eq 0 ? '-': schemePerformances.returns_cmp_10year}"></c:out></td>
														</tr>
														<tr>
															<td style="text-align: left;">Value of Rs.1 Lakh Invested</td>
															<td>
												   				<c:choose>
													   				<c:when test="${schemePerformances.returns_abs_1year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_1year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
															<td>
																<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_3year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_3year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
															<td>
																<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_5year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_5year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>   				   
											   				</td>
															<td>
												   				<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_10year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_10year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</c:forEach>
								<c:forEach items="${credit_opp_list}" var="schemePerformances" varStatus="status" begin="0" end="1">
									<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12 mix con mb-2">
										<div class="card border-0">
											<div class="card-body">
												<div class="row mb-2">
													<div class="col-lg-1 col-md-1 col-xs-2 col-sm-1 pr-0">
														<img alt="" src="${schemePerformances.logo}" class="rounded float-left amc-img">
													</div>
													<div class="col-lg-8 col-md-8 col-xs-8 col-sm-8 p-0 m-0">
														<p class="text-left portfolio-p mb-0"><a href="/mutual-funds-research/scheme/${schemePerformances.scheme_amfi}" class="text-primary">${schemePerformances.scheme_amfi}</a> </p>
														<small class="text-left pull-left">${schemePerformances.scheme_category}</small>
													</div>
													<div class="col-lg-3 col-md-3 col-xs-2 col-sm-2">
														<a class="btn btn__secondary btn__rounded btnCol pull-right" href="javascript:;" onclick="redirectLumpsumInvest('${schemePerformances.scheme_company}','${schemePerformances.scheme_amfi}')">Invest Now</a>
													</div>	
												</div>
												<table class="table table-bordered table-striped mf-research-table counton-table">
													<thead class="model-tb-body">
														<tr>
															<th></th>
															<th>1 Yr Return</th>
															<th>3 Yrs Return</th>
															<th>5 Yrs Return</th>
															<th>10 Yrs Return</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td style="text-align: left;">Annualized Return (%)</td>
															<td><c:out value="${schemePerformances.returns_abs_1year eq 0 ? '-': schemePerformances.returns_abs_1year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_3year eq 0 ? '-': schemePerformances.returns_cmp_3year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_5year eq 0 ? '-': schemePerformances.returns_cmp_5year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_10year eq 0 ? '-': schemePerformances.returns_cmp_10year}"></c:out></td>
														</tr>
														<tr>
															<td style="text-align: left;">Value of Rs.1 Lakh Invested</td>
															<td>
												   				<c:choose>
													   				<c:when test="${schemePerformances.returns_abs_1year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_1year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
															<td>
																<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_3year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_3year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
															<td>
																<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_5year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_5year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>   				   
											   				</td>
															<td>
												   				<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_10year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_10year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</c:forEach>
								<c:forEach items="${short_term_list}" var="schemePerformances" varStatus="status" begin="0" end="1">
									<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12 mix con mb-2">
										<div class="card border-0">
											<div class="card-body">
												<div class="row mb-2">
													<div class="col-lg-1 col-md-1 col-xs-2 col-sm-1 pr-0">
														<img alt="" src="${schemePerformances.logo}" class="rounded float-left amc-img">
													</div>
													<div class="col-lg-8 col-md-8 col-xs-8 col-sm-8 p-0 m-0">
														<p class="text-left portfolio-p mb-0"><a href="/mutual-funds-research/scheme/${schemePerformances.scheme_amfi}" class="text-primary">${schemePerformances.scheme_amfi}</a> </p>
														<small class="text-left pull-left">${schemePerformances.scheme_category}</small>
													</div>
													<div class="col-lg-3 col-md-3 col-xs-2 col-sm-2">
														<a class="btn btn__secondary btn__rounded btnCol pull-right" href="javascript:;" onclick="redirectLumpsumInvest('${schemePerformances.scheme_company}','${schemePerformances.scheme_amfi}')">Invest Now</a>
													</div>	
												</div>
												<table class="table table-bordered table-striped mf-research-table counton-table">
													<thead class="model-tb-body">
														<tr>
															<th></th>
															<th>1 Yr Return</th>
															<th>3 Yrs Return</th>
															<th>5 Yrs Return</th>
															<th>10 Yrs Return</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td style="text-align: left;">Annualized Return (%)</td>
															<td><c:out value="${schemePerformances.returns_abs_1year eq 0 ? '-': schemePerformances.returns_abs_1year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_3year eq 0 ? '-': schemePerformances.returns_cmp_3year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_5year eq 0 ? '-': schemePerformances.returns_cmp_5year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_10year eq 0 ? '-': schemePerformances.returns_cmp_10year}"></c:out></td>
														</tr>
														<tr>
															<td style="text-align: left;">Value of Rs.1 Lakh Invested</td>
															<td>
												   				<c:choose>
													   				<c:when test="${schemePerformances.returns_abs_1year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_1year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
															<td>
																<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_3year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_3year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
															<td>
																<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_5year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_5year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>   				   
											   				</td>
															<td>
												   				<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_10year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_10year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</c:forEach>
								<c:forEach items="${liquid_list}" var="schemePerformances" varStatus="status" begin="0" end="1">
									<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12 mix con mb-2">
										<div class="card border-0">
											<div class="card-body">
												<div class="row mb-2">
													<div class="col-lg-1 col-md-1 col-xs-2 col-sm-1 pr-0">
														<img alt="" src="${schemePerformances.logo}" class="rounded float-left amc-img">
													</div>
													<div class="col-lg-8 col-md-8 col-xs-8 col-sm-8 p-0 m-0">
														<p class="text-left portfolio-p mb-0"><a href="/mutual-funds-research/scheme/${schemePerformances.scheme_amfi}" class="text-primary">${schemePerformances.scheme_amfi}</a> </p>
														<small class="text-left pull-left">${schemePerformances.scheme_category}</small>
													</div>
													<div class="col-lg-3 col-md-3 col-xs-2 col-sm-2">
														<a class="btn btn__secondary btn__rounded btnCol pull-right" href="javascript:;" onclick="redirectLumpsumInvest('${schemePerformances.scheme_company}','${schemePerformances.scheme_amfi}')">Invest Now</a>
													</div>	
												</div>
												<table class="table table-bordered table-striped mf-research-table counton-table">
													<thead class="model-tb-body">
														<tr>
															<th></th>
															<th>1 Yr Return</th>
															<th>3 Yrs Return</th>
															<th>5 Yrs Return</th>
															<th>10 Yrs Return</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td style="text-align: left;">Annualized Return (%)</td>
															<td><c:out value="${schemePerformances.returns_abs_1year eq 0 ? '-': schemePerformances.returns_abs_1year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_3year eq 0 ? '-': schemePerformances.returns_cmp_3year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_5year eq 0 ? '-': schemePerformances.returns_cmp_5year}"></c:out></td>
															<td><c:out value="${schemePerformances.returns_cmp_10year eq 0 ? '-': schemePerformances.returns_cmp_10year}"></c:out></td>
														</tr>
														<tr>
															<td style="text-align: left;">Value of Rs.1 Lakh Invested</td>
															<td>
												   				<c:choose>
													   				<c:when test="${schemePerformances.returns_abs_1year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_1year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
															<td>
																<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_3year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_3year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
															<td>
																<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_5year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_5year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>   				   
											   				</td>
															<td>
												   				<c:choose>
													   				<c:when test="${schemePerformances.returns_cmp_10year eq 0}">
													   					-
													   				</c:when>
													   				<c:otherwise>
													   					<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemePerformances.lumpsum_10year_current_value}" />
													   				</c:otherwise>
												   				</c:choose>
											   				</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- End Business Contact Area -->