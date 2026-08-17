<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


 <!--================Breadcrumb Area =================-->
        <section class="breadcrumb_area">
        	<div class="breadcrumb_bottom">
        		<div class="container">
					<ul class="nav">
						<li><a href="/">Home</a></li>
						<li><a href="/mutual-funds-research/top-performing-mutual-funds">Mutual Fund Research</a></li>
						<li class="active"><a href="#">${scheme}</a></li>
					</ul>
				</div>
        	</div>
        </section>
        <!--================End Breadcrumb Area =================-->
        
<div id="fund-page" style="font-size:14px;" class="container relative my-4 pt-2">
	<section class="col-lg-12 nopadding">
		<!-- <div class="panel-heading"><img src="/resources/img/tag.png" /></div> -->
		<h2 class="text-blue-color normal-fnt-wt letter-space-1 mb-3" style="margin: 0px;padding: 10px 20px;background: #f3f3f3;font-size: 24px;">
			<c:out value="${scheme}"></c:out>
			<c:choose>
			<c:when test="${accountMap != null}">
				<a class="btn submit_btn" style="float: right;margin-top: 5px;" id="invest_now" href="https://mfportfolio.meetTruuegro.com/bse/bse-fresh-purchase">Invest Now</a>
			</c:when>
			<c:otherwise>
				<a class="btn submit_btn" style="float: right;margin-top: 5px;" id="invest_now" href="/client-login">Invest Now</a>
			</c:otherwise>
			</c:choose>	
			<br>
			<span style="font-size:12px;">
				Fund Manager: <c:out value="${schemeMapping.scheme_manager}" /> &nbsp; &nbsp;| &nbsp; &nbsp; 
				<c:out value="${schemeMapping.scheme_advisorkhoj_category}" />  &nbsp; &nbsp;| &nbsp; &nbsp;
				<c:out value="${schemeMapping.scheme_benchmark}" />
			</span>
		</h2>
		<div class="col-lg-12 nopadding ">
			<div class="col-lg-12 nopadding">
				<div class="mt-2">
					<%-- <p data-v-191343de="" class="mt-1 font16 mb-1">
						<span data-v-191343de="" style="color: rgb(11, 101, 254);"><c:out value="${schemeMapping.scheme_advisorkhoj_category}"></c:out></span>
						 | <c:out value="${schemeMapping.open_or_closed}"></c:out> 
					</p> --%>
					<div class="layout mb-3 align-center padding-left10">
						<div class="row">
						<div class="col-md-5" style="margin-top:10px;">
						<div class="row">
						<div class="col-md-7 pr-0">
						<span class="f-weight-600" style="font-size: 20px;">
							<i class="fa fa-inr"></i> <c:out value="${schemePerformances.price}" /> 
						</span>
						<c:choose>
							<c:when test="${schemePerformances.price_change_onday < 0}">
								<span class="text-danger" style="font-size: 20px;margin: 0px 10px;">
									<i class="fa fa-long-arrow-down"></i> <i class="fa fa-inr"></i>
									<fmt:formatNumber type="number" maxFractionDigits="2"
										value="${schemePerformances.price_change_onday}" />
									(<fmt:formatNumber type="number" maxFractionDigits="2" value="${schemePerformances.price_change_percent_onday}" /> %)							
								</span>
							</c:when>
							<c:otherwise>
								<span class="text-success" style="font-size: 20px;margin: 0px 10px;">
									<i class="fa fa-long-arrow-up"></i> <i class="fa fa-inr"></i>
									<fmt:formatNumber type="number" maxFractionDigits="2"
										value="${schemePerformances.price_change_onday}" />
									(<fmt:formatNumber type="number" maxFractionDigits="2" value="${schemePerformances.price_change_percent_onday}" /> %)
								</span>
							</c:otherwise>
						</c:choose>
						<p style="margin:0px; font-size:12px;">NAV as on <fmt:formatDate pattern="dd-MM-yyyy" value="${schemePerformances.price_date}" />
						</p>
						</div>
						<div class="col-md-5" style="border-left: 1px solid #ccc;">
						<span class="f-weight-600" style="font-size: 20px;">
							<i class="fa fa-inr"></i> <fmt:formatNumber type="number"	maxFractionDigits="2" value="${schemeMapping.scheme_assets}" /> Cr 
						</span>
						<p style="margin:0px; font-size:12px;">AUM as on <fmt:formatDate pattern="dd-MM-yyyy" value="${scheme_aum_date}" /></p>
						</div>
						</div>
						<div style="font-size:12px;margin-top:20px;"> Fund House: <a data-toggle="tooltip" title="See all the funds of this AMC" data-placement="right" href='/mutual-funds-research/amc?amc=<c:out value="${schemeMapping.scheme_company}"/>&category=All'><c:out value="${schemeMapping.scheme_company}" /></a></div> 
						</div>
						
						<div class="col-md-7 pl-0">
								<section class="hidden-sm-and-down col-lg-12">
								<div class="hor-box row">
									
									<div class="layout col fund-information ma-1 justify-center">
										<p class="font14 mb-0 mt-2" style="background: #f3f3f3;margin: 0px !important;">Rtn ( Since Inception )
										</p>
										<div class="layout row justify-center align-center">
											<c:choose>
											<c:when
												test="${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformances.returns_cmp_inception < 0}">
												<p class="text-danger mb-0 f-weight-600">
													<i class="fa fa-long-arrow-down"></i>
													<c:out value="${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformances.returns_cmp_inception}%" />
												</p>
											</c:when>
											<c:otherwise>
												<p class="text-success mb-0 f-weight-600">
													<i class="fa fa-long-arrow-up"></i>
													<span id="returnSpan">
													<c:out
														value="${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformances.returns_cmp_inception}%" />
													</span>
												</p>
											</c:otherwise>
											</c:choose>
										</div>	
										<p style="font-size:10px;margin: 0px !important;"></p>								
									</div>
									
									<div class="layout col fund-information ma-1 justify-center">
										<p class="font14 mb-0 mt-2" style="background: #f3f3f3;margin: 0px !important;">Inception Date</p>
										<div class="layout row justify-center align-center">
											<p class="mb-0" style="font-size: 12px;">
												<fmt:formatDate pattern="MMM dd, yyyy" value="${schemeMapping.scheme_inception_date}" />
											</p>
										</div>
									</div>
									<div class="layout col fund-information ma-1 justify-center">
										<p class="font14 mb-0 mt-2" style="background: #f3f3f3;margin: 0px !important;">Expense Ratio</p>
										<div class="layout row justify-center align-center">
											<p class="mb-0" style="font-size: 12px;">
												<c:out value="${schemeMapping.ter}" />%
											</p>
										</div>
									</div>
									<div class="layout col fund-information ma-1 justify-center" style="width:100px;">
										<p class="font14 mb-0 mt-2" style="background: #f3f3f3;margin: 0px !important;">Fund Status</p>
										<div class="layout row justify-center align-center">
											<p class="mb-0" style="font-size: 12px;">
												<c:out value="${schemeMapping.open_or_closed}" />
											</p>
										</div>
									</div>
								</div>
								<div class="hor-box row">
									<div class="layout col fund-information ma-1 justify-center" style="width:100px;">
										<p class="font14 mb-0 mt-2" style="background: #f3f3f3;margin: 0px !important;">Min. Investment</p>
										<div class="layout row justify-center align-center">
											<p class="mb-0" style="font-size: 12px;">
												<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemeMapping.minimum}" />
											</p>
										</div>
									</div>
									<div class="layout col fund-information ma-1 justify-center" style="width:100px;">
										<p class="font14 mb-0 mt-2" style="background: #f3f3f3;margin: 0px !important;">Min. Topup</p>
										<div class="layout row justify-center align-center">
											<p class="mb-0" style="font-size: 12px;">
												<fmt:formatNumber type="number" maxFractionDigits="0" value="${schemeMapping.minimum_topup}" />
											</p>
										</div>
									</div>
									<div class="layout col fund-information ma-1 justify-center" style="width:100px;">
										<p class="font14 mb-0 mt-2" style="background: #f3f3f3;margin: 0px !important;">Min. SIP Amount</p>
										<div class="layout row justify-center align-center">
											<p class="mb-0" style="font-size: 12px;">
												<c:out value="${schemeMapping.sip_minimum_amount}" />
											</p>
										</div>
									</div>
									<div class="layout col fund-information ma-1 justify-center" style="width:100px;">
										<p class="font14 mb-0 mt-2" style="background: #f3f3f3;margin: 0px !important;">Risk Status</p>
										<div class="layout row justify-center align-center">
											<p class="mb-0" style="font-size: 12px;text-transform: capitalize;">
												<c:out value="${fn:toLowerCase(schemeMapping.riskometer)}" />
											</p>
										</div>
									</div>
								</div>
								</section>								
						</div>
						</div>
					</div>
				</div>
				
				<div class="layout upwardly-take row">
					<p class="font14 mb-1 ml-0 f-weight-400">
						<span class="f-weight-600">Investment Objective : </span>
      					<c:out value="${schemeMapping.scheme_objective}"></c:out> 
					</p>
				</div>
			</div>
		</div>
		
		<div role="tabpanel" class="product_tab_area mt-5">
		<div class="nav nav-tabs" role="tablist" id="menu_tab">
	    <a href="#menu_tab1" style="width: 33%" class="nav-item nav-link active text-center" aria-controls="menu_tab1" role="tab" data-toggle="tab">Snapshot</a>
	    <a href="#menu_tab2" style="width: 33%" class="nav-item nav-link text-center" aria-controls="menu_tab2" role="tab" data-toggle="tab">Portfolio</a>
	    <a href="#menu_tab3" style="width: 32.29%" class="nav-item nav-link text-center" aria-controls="menu_tab3" onclick="saveImages()" role="tab" data-toggle="tab">Fund Card</a>
	    </div>
	  	<div class="tab-content px-0 pb-0 pt-3">
    	<div role="tabpanel" class="tab-pane fade active show" id="menu_tab1">
    	
    	<div class="row">
    		<div class="col-md-8 pr-lg-0">
    			<c:if test="${schemeMapping.scheme_broad_category ne 'Debt Schemes'}">
    			<div class="fund-performance perfomance marginTop15 px-2 py-2" style="border: 1px solid #eee;color: #333;">
    				<h6 class="normal-fnt-wt m-0">Fund Performance</h6>
						<div class="font14 p-2 pl-3 mar-left"><span class="font-weight-bold">&#8377; 1,00,000</span> Invested for</div>
						<div class="layout pl-3 row justify-space-between">
							<div class="custom-pills pointer mr-3" data-return="${schemePerformances.returns_abs_3month}">3m</div>
						    <div class="custom-pills pointer mr-3" data-return="${schemePerformances.returns_abs_6month}">6m</div>
						    <div class="custom-pills pointer mr-3 custom-pills-active" data-return="${schemePerformances.returns_abs_1year}">1y</div>
						    <div class="custom-pills pointer mr-3" data-return="${schemePerformances.returns_cmp_3year}">3y</div>
						    <div class="custom-pills pointer mr-3" data-return="${schemePerformances.returns_cmp_5year}">5y</div>
						    <div class="custom-pills pointer mr-3" data-return="${schemePerformances.returns_cmp_10year}">10y</div>
						</div>
						<section class="mt-4 pl-lg-3 pl-0">
						<div class="row progress1">
							<div class="col-lg-1 font14 nopadding">FUND</div>
							<div class="progress col-lg-6 nopadding">
							    <div class="progress-bar progress-fund" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100">
							     
							    </div>
							</div>
							<div id="res_total_amount_fund" style="padding-right:0px;" class="col-lg-4 font14">&#8377;2.51L (20.25%)</div>
						</div>
						<div class="row progress1">
							<div class="col-lg-1 font14 nopadding">FD</div>
							<div class="progress col-lg-6 nopadding">
							    <div class="progress-bar progress-fd" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100">
							      
							    </div>
							</div>
							<div id="res_total_amount_fd" style="padding-right:0px;" class="col-lg-4 font14">&#8377;2.51L (20.25%)</div>
						</div>
						
						<div class="row progress1" style="display:<c:choose>
						  <c:when test="${fn:contains(schemePerformances.scheme_category, 'Equity')}">
						    <c:out value="flex;"></c:out>
						  </c:when>
						 <c:otherwise>
							 <c:out value="none;"></c:out>
						  </c:otherwise>
						</c:choose>">
							<div class="col-lg-1 nopadding">GOLD</div>
							<div class="progress col-lg-6 nopadding">
							    <div class="progress-bar progress-gold" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100">
							      
							    </div>
							</div>
							<div id="res_total_amount_gold" style="padding-right:0px;" class="col-lg-4 font14">&#8377;2.51L (20.25%)</div>
						</div>
						
						<div class="row progress1" style="display:<c:choose>
						  <c:when test="${fn:contains(schemePerformances.scheme_category, 'Equity')}">
						    <c:out value="flex;"></c:out>
						  </c:when>
						 <c:otherwise>
							 <c:out value="none;"></c:out>
						  </c:otherwise>
						</c:choose>">
							<div class="col-lg-1 font14 nopadding">NIFTY</div>
							<div class="progress col-lg-6 nopadding">
							    <div class="progress-bar progress-bmr" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100">
							      
							    </div>
							</div>
							<div id="res_total_amount_bmr" style="padding-right:0px;" class="col-lg-4 font14">&#8377;2.51L (20.25%)</div>
						</div>
						
						<p class="f-weight-300 col-lg-12 mt-0 nopadding" style="font-size: 12px;color: #000;">3 and 6 Months returns are absolute</p>
						</section>
    			</div>
    			</c:if>
    			
	    		<div id="nav-movement-gth-div" class="mt-1 marginTop15 py-2" style="border: 1px solid #eee;">
	       		<h6 class="normal-fnt-wt">NAV Movement</h6>
	      			<div id="nav-movement-container" style="height: 450px; min-width: 250px;padding:20px 0px;background: #fff;" class="adv-panel-border text-center">
	      				<i id="nav-movement-gth-spinner" class="fa fa-cog fa-spin fa-2x" style="margin-top: 100px;"></i>
	      			</div>
	   			</div>
	   			
	   			<div class="marginTop15 mt-1 py-2" style="border: 1px solid #eee;">
   					<h6 class="normal-fnt-wt pl-3">Returns (%)</h6>
   					<div class="marginTop15 padding0 table-responsive">
	       				<table class="table table-striped" style="margin-top:10px; border: none;">
						<thead>
							<tr>
								<th></th>
								<th class="text-right"> 3 Mon </th>
								<th class="text-right"> 6 Mon </th>
								<th class="text-right"> 1 Yr </th>
								<th class="text-right"> 3 Yrs </th>
								<th class="text-right"> 5 Yrs </th>
								<th class="text-right"> 10 Yrs </th>								
							</tr>											
						</thead>
						<tbody>
							<tr>
								<td> Fund </td>
								<td class="text-right"> ${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformances.returns_abs_3month} </td>
								<td class="text-right"> ${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformances.returns_abs_6month} </td>
								<td class="text-right"> ${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformances.returns_abs_1year} </td>
								<td class="text-right"> ${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformances.returns_cmp_3year} </td>
								<td class="text-right"> ${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformances.returns_cmp_5year} </td>
								<td class="text-right"> ${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformances.returns_cmp_10year} </td>																
							</tr>
							<tr>
								<td> ${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformancesBenchmark.benchmark_name} </td>
								<td class="text-right"> ${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformancesBenchmark.returns_abs_3month} </td>
								<td class="text-right"> ${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformancesBenchmark.returns_abs_6month} </td>
								<td class="text-right"> ${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformancesBenchmark.returns_abs_1year} </td>
								<td class="text-right"> ${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformancesBenchmark.returns_cmp_3year} </td>
								<td class="text-right"> ${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformancesBenchmark.returns_cmp_5year} </td>
								<td class="text-right"> ${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformancesBenchmark.returns_cmp_10year} </td>								
							</tr>
							<tr>
								<td> ${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformancesCategory.sector} </td>
								<td class="text-right"> ${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformancesCategory.returns_abs_3month} </td>
								<td class="text-right"> ${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformancesCategory.returns_abs_6month} </td>
								<td class="text-right"> ${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformancesCategory.returns_abs_1year} </td>
								<td class="text-right"> ${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformancesCategory.returns_cmp_3year} </td>
								<td class="text-right"> ${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformancesCategory.returns_cmp_5year} </td>
								<td class="text-right"> ${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformancesCategory.returns_cmp_10year} </td>																
							</tr>
							<tr>
								<td> Rank within Category </td>
								<td class="text-right"> ${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformances.returns_abs_3month_rank} </td>
								<td class="text-right"> ${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformances.returns_abs_6month_rank} </td>
								<td class="text-right"> ${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformances.returns_abs_1year_rank} </td>
								<td class="text-right"> ${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformances.returns_cmp_3year_rank} </td>
								<td class="text-right"> ${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformances.returns_cmp_5year_rank} </td>
								<td class="text-right"> ${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformances.returns_cmp_10year_rank} </td>							
							</tr>
							<tr>
								<td> Number of Funds within Category </td>
								<td class="text-right"> ${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformances.returns_abs_3month_totalrank} </td>
								<td class="text-right"> ${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformances.returns_abs_6month_totalrank} </td>
								<td class="text-right"> ${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformances.returns_abs_1year_totalrank} </td>
								<td class="text-right"> ${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformances.returns_cmp_3year_totalrank} </td>
								<td class="text-right"> ${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformances.returns_cmp_5year_totalrank} </td>
								<td class="text-right"> ${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformances.returns_cmp_10year_totalrank} </td>						
							</tr>
						</tbody>
					</table>
	   				</div>
	   			</div>
	   			
	   			<div class="marginTop15 mt-1 pt-2" style="border: 1px solid #eee;">
   					<h6 class="normal-fnt-wt pl-3">Peer Comparison</h6>
   					<div class="marginTop15 padding0 table-responsive">
	   				<table class="table table-striped" style="margin-top:10px; border: none;">
							<thead>
								<tr style="border-bottom: 0px !important;">
									<th style="border-bottom: 0px !important;"></th>
									<th style="border-bottom: 0px !important;"></th>
									<th style="border-bottom: 0px !important;"></th>
									<th colspan="4" class="text-center">Return (%)</th>
								</tr>
								<tr>
									<th style="border-top: 0px;">Scheme Name</th>
									<th style="border-top: 0px;text-align:right;">AUM <br> (crore)</th>
									<th style="border-top: 0px;text-align:right;">Expense <br> Ratio</th>
									<th style="border-top: 0px;text-align:right;">1 Yr</th>
									<th style="border-top: 0px;text-align:right;">3 Yrs</th>
									<th style="border-top: 0px;text-align:right;">5 Yrs</th>
									<th style="border-top: 0px;text-align:right;">10 Yrs</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach items="${peerComparisonResponse}" var="peer"	varStatus="status">
								<tr class="rowcompar row-${status.index}">
									<td class="table-font-color <c:if test='${status.index eq 0}'>active</c:if>">
										<a href="/mutual-funds-research/${peer.scheme_amfi}">${peer.scheme_amfi}</a>
									</td>
									<td class="table-font-color text-right <c:if test='${status.index eq 0}'>active</c:if>">
										<fmt:formatNumber type="number"	maxFractionDigits="2" value="${peer.scheme_assets}" />
									</td>
									<td class="table-font-color text-right <c:if test='${status.index eq 0}'>active</c:if>">
										<fmt:formatNumber type="number"	maxFractionDigits="2" value="${peer.ter}" />
									</td>
									<td class="table-font-color text-right <c:if test='${status.index eq 0}'>active</c:if>">
										${peer.returns_abs_1year}
									</td>
									<td class="table-font-color text-right <c:if test='${status.index eq 0}'>active</c:if>">
										${peer.returns_cmp_3year}
									</td>
									<td class="table-font-color text-right <c:if test='${status.index eq 0}'>active</c:if>">
										${peer.returns_cmp_5year}
									</td>
									<td class="table-font-color text-right <c:if test='${status.index eq 0}'>active</c:if>">
										${peer.returns_cmp_10year}
									</td>
								</tr>
							</c:forEach>
						</tbody>						
					</table>
					</div>
				</div>
				
				<div class="marginTop15 py-2 mt-1"  id="yearly-performance-gth-div" style="border: 1px solid #eee;">
				<h6 class="normal-fnt-wt pl-3 mb-3">Yearly Performance (%)</h6>
	       		<div id="yearly-performance-container" style="height: 275px;" class="adv-panel-border text-center mt-5">
					<i id="yearly-performance-gth-spinner" class="fa fa-cog fa-spin fa-2x" style="margin-top: 100px;"></i>
				</div>
				</div>
				
				<div class="marginTop15 mt-1 pt-2" style="border: 1px solid #eee;">
   					<h6 class="normal-fnt-wt pl-3">Historical Returns (%)</h6>
   					<div class="marginTop15 padding0 table-responsive">
	       				<table class="table table-striped" style="margin-top:10px; border: none;">
						<thead>
							<tr>
								<th></th>
								<th class="text-right th_yr_1"> 2010 </th>
								<th class="text-right th_yr_2"> 2011 </th>
								<th class="text-right th_yr_3"> 2012 </th>
								<th class="text-right th_yr_4"> 2013 </th>
								<th class="text-right th_yr_5"> 2014 </th>
								<th class="text-right th_yr_6"> 2015 </th>
								<th class="text-right th_yr_7"> 2016 </th>
								<th class="text-right th_yr_8"> 2017 </th>
								<th class="text-right th_yr_9"> 2018 </th>
								<th class="text-right th_yr_10"> 2019 </th>
							</tr>											
						</thead>
						<tbody>
							<tr>
								<td> Fund </td>
								<td class="text-right"> ${schemePerformances.returns_abs_2007} </td>
                   				<td class="text-right"> ${schemePerformances.returns_abs_2008} </td>
                   				<td class="text-right"> ${schemePerformances.returns_abs_2009} </td>
                   				<td class="text-right"> ${schemePerformances.returns_abs_2010} </td>
                   				<td class="text-right"> ${schemePerformances.returns_abs_2011} </td>
                   				<td class="text-right"> ${schemePerformances.returns_abs_2012} </td>
                   				<td class="text-right"> ${schemePerformances.returns_abs_2013} </td>
                   				<td class="text-right"> ${schemePerformances.returns_abs_2014} </td>
                   				<td class="text-right"> ${schemePerformances.returns_abs_2015} </td>
                   				<td class="text-right"> ${schemePerformances.returns_abs_ytd} </td>																								
							</tr>
							<tr>
								<td>${bmSchemeMapping	.scheme_benchmark} </td>
								<td class="text-right"> <fmt:formatNumber value="${bmark.returns_abs_2007}"  maxFractionDigits="2" /> </td>
                 				<td class="text-right"> <fmt:formatNumber value="${bmark.returns_abs_2008}"  maxFractionDigits="2" /> </td>
                 				<td class="text-right"> <fmt:formatNumber value="${bmark.returns_abs_2009}"  maxFractionDigits="2" /> </td>
                 				<td class="text-right"> <fmt:formatNumber value="${bmark.returns_abs_2010}"  maxFractionDigits="2" /> </td>
                 				<td class="text-right"> <fmt:formatNumber value="${bmark.returns_abs_2011}"  maxFractionDigits="2" /> </td>
                 				<td class="text-right"> <fmt:formatNumber value="${bmark.returns_abs_2012}"  maxFractionDigits="2" /> </td>
                 				<td class="text-right"> <fmt:formatNumber value="${bmark.returns_abs_2013}"  maxFractionDigits="2" /> </td>
                 				<td class="text-right"> <fmt:formatNumber value="${bmark.returns_abs_2014}"  maxFractionDigits="2" /> </td>
                 				<td class="text-right"> <fmt:formatNumber value="${bmark.returns_abs_2015}"  maxFractionDigits="2" /> </td>
                 				<td class="text-right"> <fmt:formatNumber value="${bmark.returns_abs_ytd}"  maxFractionDigits="2" /> </td>													
							</tr>
							<tr>
								<td> ${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformancesCategory.sector} </td>
								<c:forEach items="${category_returns}" var="returns" varStatus="status">
									<td class="text-right"><fmt:formatNumber value="${returns.returns}"  maxFractionDigits="2" /></td>
								</c:forEach>	
								<td class="text-right">-</td>																						
							</tr>							
						</tbody>
					</table>
	   				</div>
	   			</div>
	   			
	   			<div class="marginTop15 mt-1 pt-2" style="border: 1px solid #eee;">
	   				<h6 class="normal-fnt-wt pl-3">Returns Calculator</h6>
	   				<div role="tabpanel" class="product_tab_area mt-5">
	   				<div class="nav nav-tabs" role="tablist" id="returns_tab">
	   				<a class="nav-item nav-link active" href="#returns_tab1" aria-controls="returns_tab1" role="tab" data-toggle="tab">SIP Returns</a>
					<a class="nav-item nav-link" href="#returns_tab2" aria-controls="returns_tab2" role="tab" data-toggle="tab" onclick="returnsTabChange(2)">Lumpsum Returns</a>
					<a class="nav-item nav-link" href="#returns_tab3" aria-controls="returns_tab3" role="tab" data-toggle="tab" onclick="returnsTabChange(3)">Rolling Returns</a>
					</div>
					<div class="tab-content p-0 pt-3 border-0">
				    	<div role="tabpanel" class="tab-pane active" id="returns_tab1">
				    		<div id="sip-gth-div" class="col-md-12 marginTop15 padding0">
				          		<h6 style="font-weight: normal !important;">Growth of 10000 In SIP (Fund vs Benchmark)</h6>    
				            	<div class="panel panel-default adv-panel mt-3" style="border:none;box-shadow: none;">
				            	<div class="panel-heading paddingBottom0" style="background: white;border:none;">
				              	<div class="row">
				              	<div class="col-md-3 col-sm-3 col-xs-6 marginBottom10 reduce-bootstrap-col-lr-padding">
					           	Amount : <input type="text" value="10000" id="txt_sip_amount" onchange="calculateSIPReturns()" class="form-control width80 inline-block" />
					           	</div> 
					           	<div class="col-md-3 col-sm-3 col-xs-6 marginBottom10">
					           	Period : 
					           	<select id="txt_sipFreq" onchange="calculateSIPReturns()" class="form-control selectpicker inline-block" data-width="100px">      
								<option value="Daily">Daily</option>            
								<option value="Weekly">Weekly</option>            
								<option value="FortNightly">FortNightly</option>            
								<option selected value="Monthly">Monthly</option>            
								<option value="Quarterly">Quarterly</option>            
							   	</select>
					           	</div>  
					           	<div class="col-md-3 col-sm-3 col-xs-6 marginBottom10 reduce-bootstrap-col-lr-padding">
					           	Start : <input type="text" value="<fmt:formatDate pattern="dd-MM-yyyy" value="${dateMap[0]}"/>" id="txt_sipStartDate" class="form-control datepicker inline-block width100" />
					           	</div>     
					           	<div class="col-md-3 col-sm-3 col-xs-6">
					           	End : <input type="text" value="<fmt:formatDate pattern="dd-MM-yyyy" value="${dateMap[1]}" />" id="txt_sipEndDate" class="form-control datepicker inline-block width100" />
					           	</div>     
				              	</div>
				            	</div>
				            	<div class="panel-body padding0 relative text-center">
				              	<div class="table-responsive" id="sip_returns_table_res">
							  	</div>
							  	<i id="sip-gth-spinner" class="fa fa-cog fa-spin fa-2x" style="margin-top: 100px;margin-bottom: 100px;"></i>
				            	</div>
				         		</div>    
				         		 
				         		<div id="sip-gth-container" style="height:300px;min-width: 250px;padding: 20px 0px; background: #fff;" class="adv-panel-border"></div>
			    			</div>
				    	</div>
				    	<div role="tabpanel" class="tab-pane fade" id="returns_tab2">
				    		<div id="lumpsum-gth-div" class="col-md-12 marginTop15 padding0">
								<h6 style="font-weight: normal !important;">Growth of 10000 In LUMPSUM (Fund vs Benchmark)</h6> 
				           		<div class="panel panel-default adv-pane mt-3l" style="border:none;box-shadow: none;">
				            	<div class="panel-heading" style="background: white;border:none;">
				              	<div class="row">
				               	<div class="col-md-3 col-sm-6 col-xs-6 marginBottom10 reduce-bootstrap-col-lr-padding">
					           	Amount : <input type="text" value="10000" id="txt_lumpsum_amount" onchange="calculateLumpSumReturns()" class="form-control width80 inline-block" />
					           	</div> 
					           	<div class="col-md-3 col-sm-6 col-xs-6 reduce-bootstrap-col-lr-padding">
					           	Start : <input type="text" value="<fmt:formatDate pattern="dd-MM-yyyy" value="${dateMap[0]}"/>" id="txt_lumpsumtartDate" class="form-control datepicker inline-block width100" />
					           	</div>
				              	</div>
				            	</div>
				            	<div class="panel-body padding0 relative text-center">
				             	<div class="table-responsive" id="lumpsum_returns_table_res">
							 	</div>
							  	<i id="lumpsum-gth-spinner" class="fa fa-cog fa-spin fa-2x" style="margin-top: 100px;margin-bottom: 100px;"></i>
				            	</div>
				         		</div>
				         		
				         		<div id="lumpsum-gth-container" style="height:300px;min-width: 250px;padding: 20px 0px; background: #fff;" class="adv-panel-border"></div>
			    			</div>
				    	</div>
				    	<div role="tabpanel" class="tab-pane fade" id="returns_tab3">
				    		<div id="rolling-returns-gth-div" class="col-md-12 marginTop15 padding0">
								<h6 style="font-weight: normal !important;">Rolling Returns</h6> 
								<div class="panel panel-default adv-panel mt-3" style="border:none;box-shadow: none;">
				            	<div class="panel-heading" style="background: white;border:none;height:100px;">
				              	<div class="row">
					           	<div class="col-md-6 col-sm-6 col-xs-6 reduce-bootstrap-col-lr-padding">
					           	<div class="form-group">
								<label class="no-bold block">Select Start Date</label>
					           	<input type="text" value="<fmt:formatDate pattern="dd-MM-yyyy" value="${rolling_returns_start_date}"/>" id="txt_rolling_returns_start_date" class="form-control datepicker inline-block width100" />
					           	</div>
					           	</div>
					           	<div class="col-md-6 col-sm-6 col-xs-6 marginBottom10 reduce-bootstrap-col-lr-padding">
					           		<div class="form-group">
						            <label class="no-bold block">Select Rolling Return Time Period
						            <i class="fa fa-question-circle" data-toggle="tooltip" title="The Rolling Return time period should correspond to your typical investment holding period. For example, if you hold your investment for 3 years, then select 3 years in the Rolling Return Time Period"></i>
						            </label>
						            <select id="sel_rolling_returns_period" class="form-control selectpicker inline-block" data-width="100px" onchange="calculateRollingReturnsBefore()">
						            	<option value="1 Month">1 Month</option>
										<option value="1 Year">1 Year</option>
						            	<option value="3 Year" selected="selected">3 Years</option>
						            	<option value="5 Year">5 Years</option>
						            	<option value="10 Year">10 Years</option>
						            	<option value="15 Year">15 Years</option>
									</select>
						          	</div>
					           	</div> 
				              	</div>
				            	</div>
				            	<div class="panel-body padding0 relative text-center">
				             		<i id="rolling-returns-spinner" class="fa fa-cog fa-spin fa-2x" style="margin-top: 100px;margin-bottom:100px;"></i>
					              	<div id="rolling-returns-container" class="adv-panel-border" style="height:230px;min-width:250px;"></div>       
							 	</div>
							 	<div>
			       				<p style="text-align:justify;font-size:12px;">Rolling returns are the annualized returns of the scheme taken for a specified period (rolling returns period) 
					        on every day/week/month and taken till the last day of the duration. In this chart we are showing the annualized returns over the 
					        rolling returns period on every day from the start date and comparing it with the benchmark. Rolling returns is the best measure of a fund's performance. 
					        Trailing returns have a recency bias and point to point returns are specific to the period in consideration. Rolling returns, on the other hand, 
					        measures the fund's absolute and relative performance across all timescales, without bias.</p>
										</div>
						            	</div>
					    			</div>
			    	</div>
			    	</div>
					</div>
	   			</div>
   			</div>
   			
   			<div class="col-md-4">
   				<c:if test="${schemeMapping.scheme_broad_category ne 'Debt Schemes'}">
   				<div class="fund-performance multipler marginTop15 px-2 py-2" style="border: 1px solid #eee;color: #333;">
    				<h6 class="normal-fnt-wt m-0">Fund Multiplier</h6>
    					<div class="font14 p-2 pl-2 mar-txt"><span class="font-weight-bold">Time Taken To Multiply</span></div>
						<div class="layout pl-2 row justify-start">
						<div class="custom-pills pointer mr-3 custom-pills-active">2x</div>
					    <div class="custom-pills pointer mr-3">4x</div>
					    <div class="custom-pills pointer mr-3">5x</div>
					    <div class="custom-pills pointer mr-3">10x</div>
					   	</div>
					   	
					   	<section class="mt-4 pl-2">
						<div class="row progress1">
							<div class="col-lg-2 font14 nopadding">FUND</div>
							<div class="progress col-lg-4 nopadding">
							    <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width:25%">
							     
							    </div>
							</div>
							<div class="col-lg-6 font14 2x_in multiDiv">
								<c:choose>
								  <c:when test="${schemeMapping.doubled_in eq ''}">
								    There is no value for 2x
								  </c:when>
								 <c:otherwise>
									 ${schemeMapping.doubled_in}
								  </c:otherwise>
								</c:choose>
							</div>
							<div class="col-lg-6 font14 4x_in multiDiv">
							<c:choose>
								  <c:when test="${schemeMapping.x4In eq ''}">
								    There is no value for 4x
								  </c:when>
								 <c:otherwise>
									 ${schemeMapping.x4In}
								  </c:otherwise>
								</c:choose>
							</div>
							<div class="col-lg-6 font14 5x_in multiDiv">
							<c:choose>
								  <c:when test="${schemeMapping.x5In eq ''}">
								    There is no value for 5x
								  </c:when>
								 <c:otherwise>
									 ${schemeMapping.x5In}
								  </c:otherwise>
								</c:choose>
							</div>
							<div class="col-lg-6 font14 10x_in multiDiv">
							<c:choose>
								  <c:when test="${schemeMapping.x10In eq ''}">
								    There is no value for 10x
								  </c:when>
								 <c:otherwise>
									 ${schemeMapping.x10In}
								  </c:otherwise>
								</c:choose>
							</div>
						</div>
						<div class="row progress1">
							<div class="col-lg-2 font14 nopadding">FD</div>
							<div class="progress col-lg-4 nopadding">
							    <div class="progress-bar progress-double-fd" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width:100%">
							      
							    </div>
							</div>
							<div class="col-lg-6 font14 fdDivText" style="font-size:13px;">11 years 10 Months</div>
						</div>
						<div class="row progress1" style="display:<c:choose>
						  <c:when test="${fn:contains(schemePerformances.scheme_category, 'Equity')}">
						    <c:out value="flex;"></c:out>
						  </c:when>
						 <c:otherwise>
							 <c:out value="none;"></c:out>
						  </c:otherwise>
						</c:choose>">
							<div class="col-lg-2 font14 nopadding">GOLD</div>
							<div class="progress col-lg-4 nopadding">
							    <div class="progress-bar progress-double-gold" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width:75%">
							      
							    </div>
							</div>
							<div class="col-lg-6 font14 goldDivText" style="font-size:13px;">8 years 9 Months</div>
						</div>
						
						<div class="row progress1" style="display:<c:choose>
						  <c:when test="${fn:contains(schemePerformances.scheme_category, 'Equity')}">
						    <c:out value="flex;"></c:out>
						  </c:when>
						 <c:otherwise>
							 <c:out value="none;"></c:out>
						  </c:otherwise>
						</c:choose>">
							<div class="col-lg-2 font14 nopadding">NIFTY</div>
							<div class="progress col-lg-4 nopadding">
							    <div class="progress-bar progress-double-bmr" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width:50%">
							      
							    </div>
							</div>
							<div class="col-lg-6 font14 niftyDivText" style="font-size:13px;">5 years 5 Months</div>
						</div>
						
						<p class="f-weight-300 col-lg-12 mt-0 font14 nopadding">&nbsp;</p>
					</section>
    				</div>
    				</c:if>
    				
   				<div class="col-md-12 marginTop15 mt-1 py-2" style="border: 1px solid #eee;">
   					<h6 class="normal-fnt-wt m-0">Riskometer</h6>
   					<div class="col-md-12 marginTop15 padding0 text-center">
	       				<c:choose>
							<c:when test="${schemeMapping.riskometer == 'LOW'}">
								<img src="/img/ROM-1_L.png" alt="riskometer" />
							</c:when>
							<c:when test="${schemeMapping.riskometer == 'MODERATELY LOW'}">
								<img src="/img/ROM-2_ML.png" alt="riskometer" />
							</c:when>
							<c:when test="${schemeMapping.riskometer == 'MODERATE'}">
								<img src="/img/ROM-3_M.png" alt="riskometer" />
							</c:when>
							<c:when test="${schemeMapping.riskometer == 'MODERATELY HIGH'}">
								<img src="/img/ROM-4_MH.png" alt="riskometer" />
							</c:when>
							<c:when test="${schemeMapping.riskometer == 'HIGH'}">
								<img src="/img/ROM-5_H.png" alt="riskometer" />
							</c:when>
						</c:choose>
	   				</div>
	   			</div>
	   			
   				<div class="col-md-12 marginTop15 mt-1 py-2" style="border: 1px solid #eee;">
   					<h6 class="normal-fnt-wt m-0">Asset Allocation</h6>
   					<div class="col-md-12 marginTop15 padding0">
	       				<div id="asset-allocation-chart"></div>
	   				</div>
	   			</div>
	   			
	   			<div class="marginTop15 mt-1 pt-2" style="border: 1px solid #eee;">
	   				<h6 class="normal-fnt-wt pl-3">Top 10 Holdings</h6>
	   				<div class="table-responsive full_holdings_data">
	   				<table class="table table-striped full_holdings_data_table">
						<thead>
							<tr>
								<th>Company</th>
								<th>Instrument</th>
								<th>Credit Rating</th>
								<th>Holdings (%)</th>
							</tr>
						</thead>
						<tbody>
						</tbody>
					</table>
					</div>
				</div>
				
				<div class="marginTop15 mt-1 pt-2" style="border: 1px solid #eee;">
					<h6 class="normal-fnt-wt pl-3">Related Funds in this Category</h6>
					<div class="table-responsive" id="related_funds_table"></div>
				</div>
   			</div>
    	</div>
    	
		
	</div>
		<div role="tabpanel" class="tab-pane fade" id="menu_tab2">
			<div class="row">
    			<div class="col-md-8 pr-lg-0">
    				
    					<c:if test="${schemeMapping.scheme_broad_category ne 'Debt Schemes'}">
    					<div class="marginTop15 mt-1 pt-2" style="border: 1px solid #eee;">
   						<h6 class="normal-fnt-wt pl-3">Sector Allocation (%)</h6>
   							<div id="full_sector_data"></div>
						</div>
						</c:if>
						
						<c:if test="${schemeMapping.scheme_broad_category eq 'Debt Schemes'}">
						<div class="marginTop15 mt-1 pt-2">
						<h6 class="normal-fnt-wt pl-3">Profile</h6>
   						<div role="tabpanel" class="product_tab_area mt-5">
					  	<div class="nav nav-tabs" role="tablist" id="profile_tab">
					    <a class="nav-item nav-link active" href="#profile_tab1" aria-controls="profile_tab1" role="tab" data-toggle="tab">Credit Quality Break Down</a>
					    <a class="nav-item nav-link" href="#profile_tab2" aria-controls="profile_tab2" role="tab" data-toggle="tab">Asset Type (Top 5)</a>
					    <a class="nav-item nav-link" href="#profile_tab3" aria-controls="profile_tab3" role="tab" data-toggle="tab">Top 10 Issuers</a>
					    
					    </div>
					  	<div class="tab-content px-3 py-3">
				    	<div role="tabpanel" class="tab-pane active" id="profile_tab1">
				    		<div class="col-md-12 marginTop15 padding0" style="padding: 0px;">
				       		<!-- <div id="ratings_container"></div> -->
				       		<table class="table table-striped" style="border: 1px solid #ddd;">
									<thead>
										<tr>
											<th> Credit Quality  </th>
											<th class="text-right"> Portfolio (%) </th>																			
										</tr>											
									</thead>
									<tbody>
										<c:forEach items="${ratingMap}" var="rating">
											<tr>
												<td><c:out value="${rating.key}"/></td>
												<td  class="text-right"><c:out value="${rating.value}"/></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								<div style="font-size: 10px; margin-top:10px;"> Note: AAA includes A1, A includes A2, BBB includes A3. </div>
				   			</div>
				    	</div>
				    	<div role="tabpanel" class="tab-pane fade" id="profile_tab2">
				    		<div class="col-md-12 marginTop15 padding0">
				       		<div id="assets-container"></div>
				   			</div>
				    	</div>
				    	<div role="tabpanel" class="tab-pane fade" id="profile_tab3">
				    		<div class="col-md-12 marginTop15 padding0">
				       			<div id="issuers-container"></div>
				   			</div>
				    	</div>
				    	</div>
					  	</div>
					  	</div>
					</c:if>
   					
   					<c:if test="${schemeMapping.scheme_broad_category eq 'Debt Schemes'}">
   						<div class="marginTop15 mt-1 pt-2" style="border: 1px solid #eee;">
   						<h6 class="normal-fnt-wt pl-3">Debt Holdings</h6>
   							<div class="table-responsive full_holdings_data_2">
								<table class="table table-striped full_holdings_data_table">
									<thead>
										<tr>
											<th>Sector</th>
											<th>Allocation (%)</th>
										</tr>
									</thead>
									<tbody>
									</tbody>
								</table>
							</div>
   						</div>
   					</c:if>
   					
   					<c:if test="${schemeMapping.scheme_broad_category ne 'Debt Schemes'}">
   						<div class="marginTop15 mt-1 pt-2" style="border: 1px solid #eee;">
   						<h6 class="normal-fnt-wt pl-3">Equity Holdings</h6>
   							<div class="table-responsive full_holdings_data_2">
								<table class="table table-striped full_holdings_data_table">
									<thead>
										<tr>
											<th>Sector</th>
											<th>Allocation (%)</th>
										</tr>
									</thead>
									<tbody>
									</tbody>
								</table>
							</div>
   						</div>
   					</c:if>
    			</div>
    			
    			<div class="col-md-4">
    				<div class="marginTop15 mt-1 pt-2" style="border: 1px solid #eee;">
    					<c:if test="${schemeMapping.scheme_broad_category eq 'Debt Schemes'}">
	   					<h6 class="normal-fnt-wt pl-3">Debt Profile</h6>
	   					<table class="table table-striped" style="border: none;">
							<thead>
								<tr>
									<th></th>
									<th  class="text-right"> Scheme  </th>
									<th  class="text-right"> Category </th>
									<th  class="text-right"> % of Change <br> <span style="font-size:10px;">month-on-month</span> </th>												
								</tr>											
							</thead>
							<tbody>
								<tr>
									<td> Modified Duration </td>
									<td class="text-right">
										<fmt:formatNumber type="number" maxFractionDigits="2" value="${debtPercent.duration_current}" />
									</td>
									<td class="text-right"> 
										<fmt:formatNumber type="number" maxFractionDigits="2" value="${debtPercent.category_duration}" />
									</td>
									<td class="text-right">
										<fmt:formatNumber type="number" maxFractionDigits="2" value="${debtPercent.change_percent_duration * 100}" />
									 </td>
								</tr>
								<tr>
									<td> Average Maturity </td>
									<td class="text-right">
										<fmt:formatNumber type="number" maxFractionDigits="2" value="${debtPercent.maturity_current}" />
									</td>
									<td class="text-right">
										<fmt:formatNumber type="number" maxFractionDigits="2" value="${debtPercent.category_maturity}" />
									</td>
									<td class="text-right">
										<fmt:formatNumber type="number" maxFractionDigits="2" value="${debtPercent.change_percent_maturity * 100}" />
									</td>
								</tr>
								<tr>
									<td> Yield To Maturity </td>
									<td class="text-right"> 
										<fmt:formatNumber type="number" maxFractionDigits="2" value="${debtPercent.ytm_current}" />
									</td>
									<td class="text-right"> 
										<fmt:formatNumber type="number" maxFractionDigits="2" value="${debtPercent.category_ytm}" />
									</td>
									<td class="text-right">
										<fmt:formatNumber type="number" maxFractionDigits="2" value="${debtPercent.change_percent_ytm * 100}" />
									</td>
								</tr>
							</tbody>
						</table>
						</c:if>
						
						<c:if test="${schemeMapping.scheme_broad_category ne 'Debt Schemes'}">
							<h6 class="normal-fnt-wt pl-3">Market Cap Distribution</h6>
							<div id="stock_chart"></div>
						</c:if>
	   				</div>
	   				
	   				<c:if test="${schemeMapping.scheme_broad_category eq 'Debt Schemes'}">
	   				<div class="marginTop15 mt-1 pt-2" style="border: 1px solid #eee;">
	   					<h6 class="normal-fnt-wt pl-3">Best &amp; Worst Period</h6>
	   					<table class="table table-striped" style="border: none;">
	   						<thead>
								<tr>
									<th></th>
									<th class="text-right">Best (Period)</th>
									<th class="text-right">Worst (Period) </th>
								</tr>						
							</thead>
							<tbody>
								<tr>
									<td> Month </td>
									<td class="text-right"> 
										<span style="color: green; font-size:16px; font-weight:600;"> 
										<fmt:formatNumber type="number" maxFractionDigits="2" value="${schemeBestPerformance.bestrtns_monthly * 100}" /> % 
										</span> <br>
										( <fmt:formatDate pattern="MMM - yyyy" value="${schemeBestPerformance.bestdate_monthly}" /> )
									</td>
									<td class="text-right"> <span style="color: ${month_worst_color}; font-size:16px; font-weight:600;"> 
										<fmt:formatNumber type="number" maxFractionDigits="2" value="${schemeBestPerformance.worstrtns_monthly * 100}" /> %
										</span> <br>
										( <fmt:formatDate pattern="MMM - yyyy" value="${schemeBestPerformance.worstdate_monthly}" /> )
									</td>
								</tr>
								
								<tr>
									<td style="font-weight:600;"> Quarter </td>
									<td class="text-right"> <span style="color: green; font-size:16px; font-weight:600;"> 
										<fmt:formatNumber type="number" maxFractionDigits="2" value="${schemeBestPerformance.bestrtns_quarterly * 100}" /> %
										</span> <br>
										( ${schemeBestPerformance.bestdate_quarterly_str} )
									</td>
									<td class="text-right"> <span style="color: ${quarter_worst_color}; font-size:16px; font-weight:600;"> 
										<fmt:formatNumber type="number" maxFractionDigits="2" value="${schemeBestPerformance.worstrtns_quarterly * 100}" /> %
										</span> <br>
										( ${schemeBestPerformance.worstdate_quarterly_str} )
									</td>
								</tr>
								
								<tr>
									<td style="font-weight:600;"> Year </td>
									<td class="text-right"> <span style="color: green; font-size:16px; font-weight:600;">
										 <fmt:formatNumber type="number" maxFractionDigits="2" value="${schemeBestPerformance.bestrtns_annually * 100}" /> %
										 </span> <br>
										( <fmt:formatDate pattern="yyyy" value="${schemeBestPerformance.bestdate_annually}" /> )
									</td>
									<td class="text-right"> <span style="color: ${annual_worst_color}; font-size:16px; font-weight:600;">
										<fmt:formatNumber type="number" maxFractionDigits="2" value="${schemeBestPerformance.worstrtns_annually * 100}" /> %
										 </span> <br>
										( <fmt:formatDate pattern="yyyy" value="${schemeBestPerformance.worstdate_annually}" /> )
									</td>
								</tr>
								
							</tbody>
	   					</table>
	   				</div>
	   				</c:if>
	   				
	   				<div class="marginTop15 mt-1 pt-2" style="border: 1px solid #eee;">
	   					<h6 class="normal-fnt-wt pl-3">Portfolio Behavior</h6>
	   					<table class="table table-striped" style="border: none;">
							<!-- <thead>
								<tr>
								<th></th>
								<th class="text-right">Value</th>
								</tr>
							</thead> -->
							<tbody>
							<tr>
								<td class="text-left">Volatility</td>
								<td class="text-right"><c:out value="${schemeMapping.volatility eq 0 || schemeMapping.volatility eq null ? '-': schemeMapping.volatility}"></c:out></td>
							</tr>
							<tr>
								<td class="text-left">Sharp Ratio</td>
								<td class="text-right"><c:out value="${schemeMapping.sharpratio eq 0 || schemeMapping.sharpratio eq null ? '-': schemeMapping.sharpratio}"></c:out></td>
							</tr>
							<tr>
								<td class="text-left">Alpha</td>
								<td class="text-right"><c:out value="${schemeMapping.alpha eq 0 || schemeMapping.alpha eq null ? '-': schemeMapping.alpha}"></c:out></td>
							</tr>
							<tr>
								<td class="text-left">Beta</td>
								<td class="text-right"><c:out value="${schemeMapping.beta eq 0 || schemeMapping.beta eq null ? '-': schemeMapping.beta}"></c:out></td>
							</tr>
							<tr>
								<td class="text-left">Standard Deviation </td>
								<td class="text-right">-</td>
							</tr>
							<tr>
								<td class="text-left">Portfolio Turnover</td>
								<td class="text-right">
									<c:out value="${schemeMapping.portfolio_turnover_ratio}"></c:out>
								</td>
							</tr>
						</table>
	   				</div>
	   				
	   				<div class="marginTop15 mt-1 pt-2 table-responsive" style="border: 1px solid #eee;">
	   					<h6 class="normal-fnt-wt pl-3">Extreme Performance</h6>
	   					<table class="table table-striped" style="border: none;">
							<thead>
								<tr>
									<th>Time Frame</th>
									<th>Period</th>
									<th class="text-right">Fund<br>(%)</th>
									<th class="text-right">Benchmark<br>(%)</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Best Month</td>
									<td>30-05-2014</td>
									<td class="text-right">11.64</td>
									<td class="text-right">8.11</td>
								</tr>
								<tr>
									<td>Worst Month</td>
									<td>31-01-2011</td>
									<td class="text-right">-10.46</td>
									<td class="text-right">-10.23</td>
								</tr>
								<tr>
									<td>Best Quarter</td>
									<td>30-06-2014</td>
									<td class="text-right">20.12</td>
									<td class="text-right">14.03</td>
								</tr>
								<tr>
									<td>Worst Quarter</td>
									<td>30-09-2011</td>
									<td class="text-right">-9.40</td>
									<td class="text-right">-12.11</td>
								</tr>
								<tr>
									<td>Best Year</td>
									<td>31-12-2014</td>
									<td class="text-right">57.64</td>
									<td class="text-right">32.91</td>
								</tr>
								<tr>
									<td>Worst Year</td>
									<td>30-12-2011</td>
									<td class="text-right">-22.29</td>
									<td class="text-right">-23.81</td>
								</tr>
						</table>
	   				</div>
    			</div>
    		</div>
		</div>
		<div role="tabpanel" class="tab-pane fade" id="menu_tab3">
			<object data="" type="application/pdf" width="100%" height="1200px"> 
			</object>
		</div>
	</div>
	</div>
	
	</section>
	<input type="hidden" id="bmr_3m" value="${benchmark_returns.returns_abs_3month}">
	<input type="hidden" id="bmr_6m" value="${benchmark_returns.returns_abs_6month}">
	<input type="hidden" id="bmr_1y" value="${benchmark_returns.returns_abs_1year}">
	<input type="hidden" id="bmr_3y" value="${benchmark_returns.returns_cmp_3year}">
	<input type="hidden" id="bmr_5y" value="${benchmark_returns.returns_cmp_5year}">
	<input type="hidden" id="bmr_10y" value="${benchmark_returns.returns_cmp_10year}">
	
</div>

<link rel="stylesheet" href="/vendors/apexcharts/apexcharts.css">
<script type="text/javascript" src="/vendors/apexcharts/apexcharts.min.js"></script>
<script type="text/javascript" src="/js/html2canvas.js"></script>
    
<style>
		
	.left_side_form {
	    background: #fff;
	    border: 1px solid #e9e9e9;
	    width: 320px;
	    height: 48px;
	    margin-bottom: 10px;
	    margin-top:10px;
	}
	
	.multiDiv {
		font-size:13px;
	}
	.left_side_form button {
	    background: #393939;
	    width: 46px;
	    height: 46px;
	    color: #fff;
	    text-align: center;
	    border: none;
	    position: relative;
	    left: 1px;
	    transition: all .3s ease;
	}
	
	.left_side_form input {
	    border: none;
	    background: transparent;
	    height: 100%;
	    width: calc(100% - 46px);
	    color: #474747;
	    outline: none;
	    padding-left: 20px;
	    font-size: 1em;
	    margin-left: -5px;
    }
	.relative {
 	   position: relative;
	}
	.my-5 {
 	   margin-top: 48px!important;
    	margin-bottom: 48px!important;
	}
	
	#fund-page .ribbon-fund-desktop {
	    left: -10px;
	    width: 22px;
	}
	#fund-page .ribbon-fund {
	    height: 38px;
	    min-width: 51px;
	    border-radius: 2px;
	    background-color: #253366;
	    position: absolute;
	    padding-left: 12px;
	    padding-top: 0;
	    top: 75px;
	}
	
	#fund-page .ribbon-fund i {
 	   color: #0f0;
	    margin-top: 6px;
	    font-size: 20px;
	}
	.font24 {
	    font-size: 24px!important;
	    font-size: 2.4rem!important;
	}
	.f-weight-700 {
	    font-weight: 700!important;
	}
	.font28 {
   	 font-size: 28px!important;
   	 font-size: 2.8rem!important;
	}
	.material-icons {
	    font-family: 'Material Icons';
	    font-weight: normal;
	    font-style: normal;
	    font-size: 24px;
	    line-height: 1;
	    letter-spacing: normal;
	    text-transform: none;
	    display: inline-block;
	    white-space: nowrap;
	    word-wrap: normal;
	    direction: ltr;
	    -webkit-font-feature-settings: 'liga';
	    -webkit-font-smoothing: antialiased;
	}
	
	.header-font-family {
   	 font-family: Roboto Slab,Lora,Bookman,Georgia,Times New Roman,serif;
	}
	.letter-space-1 {
    letter-spacing: 1px;
	}
	.normal-fnt-wt {
    	font-weight: 400;
    	color: #333;
    	background: #2acaff;
    	padding: 10px;
    	margin: 10px;
    	margin-top: 0px;
	}
	.nopadding{
		padding: 0!important;
		    margin: 0!important;
	}
	
	
	.uppercase {
	    text-transform: uppercase;
	}
	.font17 {
	    font-size: 17px!important;
	    font-size: 1.7rem!important;
	}
	.mb-1 {
	    margin-bottom: 4px!important;
	}
	.mt-1 {
	    margin-top: 4px!important;
	}
	.mt-2 {
    margin-top: 8px!important;
	}
	.font18 {
	    font-size: 18px!important;
	    font-size: 1.8rem!important;
	}
	.font9 {
    	font-size: 0.9rem!important;
	}

.f-weight-300 {
    font-weight: 300!important;
}
.mb-0 {
    margin-bottom: 0!important;
}
.mb-3 {
    margin-bottom: 16px!important;
}
.f-weight-600 {
    font-weight: 600!important;
}
.danger {
    color: #f84b27!important;
}
p {
    letter-spacing: 0.03em;
}
.font16 {
    font-size: 16px!important;
    font-size: 1.6rem!important;
}
.upwardly-take {
    margin-left: 0px !important;
}

#fund-page .addToCartBox {
    -webkit-box-shadow: 2px 2px 2px 0 #dedede;
    box-shadow: 2px 2px 2px 0 #dedede;
    margin: 0;
}
.addToCartBox[data-v-6f5c2c9a] {
    width: 260px;
}
.pa-4 {
    padding: 24px!important;
}

.fund-information {
    max-width: 198px;
    min-width: 19.1%;
    text-align: center;
    border-radius: 2px;
    padding: 0 !important;
    border: 1px solid #ddd;
}
.ma-1 {
    margin: 4px!important;
}
.upwardly-background {
    background-color: #0f0!important;
}
.font12 {
    font-size: 12px!important;
    font-size: 0.8rem!important;
}
.font26 {
    font-size: 26px!important;
    font-size: 2.6rem!important;
}
.f-weight-500 {
    font-weight: 500!important;
}
.justify-center {
    -webkit-box-pack: center;
    -ms-flex-pack: center;
    justify-content: center;
}
.align-center {
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
}
.font-padding{
	padding-top: 15px
}
.calculator-section {
    display: inline-block;
    border-top: 2px solid #ddd;
}

.pa-4 {
    padding: 24px!important;
}
span.font-weight-bold {
    font-weight: bolder;
}
.mar-left {
    padding-top: 52px;
        padding-bottom: 15px;
}
.mar-txt {
    padding-top: 25px;
        padding-bottom: 15px;
}

#compareTable .active {
    background-color: #ffffb3;
}

.custom-pills {
    width: 65px;
    height: 40px;
    border-radius: 2px;
    background-color: #f5f5f5;
    -webkit-box-shadow: 0 2px 4px 0 #b9b9b9;
    box-shadow: 0 2px 4px 0 #b9b9b9;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    -ms-flex-direction: column;
    flex-direction: column;
    -webkit-box-pack: center;
    -ms-flex-pack: center;
    justify-content: center;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    font-size: 14px;
    color: #253366;
}
.pointer {
    cursor: pointer;
}

.justify-start {
    -webkit-box-pack: start;
    -ms-flex-pack: start;
    justify-content: flex-start;
}

.custom-pills-active {
    background-color: #fff;
    border: 2px solid red;
}

.mr-3 {
    margin-right: 16px!important;
}
.mt-3 {
    margin-top: 16px!important;
}

.uppercase {
    text-transform: uppercase;
}
.px-2 {
    padding-right: 8px!important;
}
.pl-2, .px-2 {
    padding-left: 8px!important;
}
.flex-div {
	display: flex;
	padding: 5px 20px;
}
.table__overflow {
    width: 100%;
    overflow-x: auto;
    overflow-y: hidden;
}
.table {
    background-color: #fff;
    color: rgba(0,0,0,.87);
}
table.table {
    border-radius: 2px;
    border-collapse: collapse;
    border-spacing: 0;
    width: 100%;
    max-width: 100%;
    font-size: 12px;
    font-family: "Poppins", sans-serif;
}
.table {
    border: 1px solid #dedede;
    width: 100%;
    overflow: hidden;
}
.table thead tr:first-child {
    border-bottom: 1px solid rgba(0,0,0,.12);
}
table.table thead tr {
    height: 48px;
}

table.table thead th {
    font-weight: 500;
   -webkit-transition: .3s cubic-bezier(.25,.8,.5,1);
    transition: .3s cubic-bezier(.25,.8,.5,1);
    white-space: nowrap;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    font-size:14px;
}
.header-color {
    color: #333!important;
}
.letter-space-1 {
    letter-spacing: 1px;
}
table.table tbody td, table.table tbody th {
   
   
}
#compareTable .active[data-v-2b1097f2] {
    background-color: #e4edda;
}
td{
	vertical-align: middle !important;
}
#compareTable .table-font-color[data-v-2b1097f2] a {
    color: #45484d;
}
table tr th a{
	font-size: 14px;
}

.table{
	margin-bottom: 0px;
}

.mt-5 {
    margin-top: 18px!important;
}

.font18 {
    font-size: 18px!important;
    font-size: 1.8rem!important;
}
.fundInformationSubHeading[data-v-5c4e027e] {
    width: 170px;
    border-bottom: 2px solid #b9b9b9;
    color: #333;
}

.my-2 {
    margin-top: 8px!important;
    margin-bottom: 8px!important;
}
.key {
    font-size: 13px !important;
    font-weight: 600;
    color: #333;
}
.value[data-v-df571fca] {
    font-size: 13px !important;
    font-weight: 300 !important;
    
}
.mt-bottom {
    margin-bottom: 25px;
}
.label-switch{
	    font-size: 14px;
    font-weight: 600;
    color: #253366;
}
.switch label input[type=checkbox]:checked + .lever {
    background-color: #9298bf;
}
.switch label input[type=checkbox]:checked + .lever:after {
    background-color: #071047;
}
.input-field{
	margin-top: 4rem;
}
.calc{
	
    background: hsla(0,0%,100%,.6) !important;
    
    margin-left: 1.25rem !important;
    margin-right: 1.25rem !important;
    margin-top: 33px;
    
}
.input-field {
    margin-top: 2rem;
    padding:0 !important;
}


.skew-button {
    padding: 0;
    background: transparent;
    border: 0;
    border-radius: 2px;
    font-size: 11px;
    font-size: 1.1rem;
    line-height: 1.5;
    -webkit-appearance: none;
    -moz-appearance: none;
    max-width: 400px;
    letter-spacing: 1.5px;
    height: auto;
    -webkit-box-shadow: 0 5px 5px -3px rgba(0,0,0,.2), 0 8px 10px 1px rgba(0,0,0,.14), 0 3px 14px 2px rgba(0,0,0,.12);
    box-shadow: 0 5px 5px -3px rgba(0,0,0,.2), 0 8px 10px 1px rgba(0,0,0,.14), 0 3px 14px 2px rgba(0,0,0,.12);
}
.upwardlyBtn {
    background: #F6BB19 !important;
    color: #000 !important;
    font-weight: 900 !important;
}

#invest-now {
    padding: 10px;
    width: 229px;
    margin-top: 15px;
}


.set-margin{
	margin-bottom: 0px;
}

.tag-img {
    position: absolute;
    /* right: 45%; */
    /* top: 2%; */
    left: -6%;
}


.switch {
  position: relative;
  display: inline-block;
  width: 60px;
  height: 34px;
}

.switch input {display:none;}

.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #ccc;
  -webkit-transition: .4s;
  transition: .4s;
}

.slider:before {
  position: absolute;
  content: "";
  height: 26px;
  width: 26px;
  left: 4px;
  bottom: 4px;
  background-color: white;
  -webkit-transition: .4s;
  transition: .4s;
}

input:checked + .slider {
  background-color: #559dd3;
}

input:focus + .slider {
  box-shadow: 0 0 1px #2196F3;
}

input:checked + .slider:before {
  -webkit-transform: translateX(26px);
  -ms-transform: translateX(26px);
  transform: translateX(26px);
}

/* Rounded sliders */
.slider.round {
  border-radius: 34px;
}

.slider.round:before {
  border-radius: 50%;
}

.btn-default:active:hover, .btn-default.active:hover, .open > .dropdown-toggle.btn-default:hover, .btn-default:active:focus, .btn-default.active:focus, .open > .dropdown-toggle.btn-default:focus, .btn-default:active.focus, .btn-default.active.focus, .open > .dropdown-toggle.btn-default.focus {
    color: #fff;
    background-color: #393939;
    border-color: #8c8c8c;
}

.btn-default:hover, .btn-default:focus, .btn-default.focus, .btn-default:active, .btn-default.active, .open > .dropdown-toggle.btn-default {
    background-color: #393939;
    border-color: transparent;
    color: #ffffff;
}
.monthly-amount{
	margin-top: 15px;
}
.mamount {
    padding: 5px 0px;
    font-weight: 300;
}
.progress {
    height: 8px;
    position: relative;
    top: 10px;
}
.progress-bar {
    background-color: #01135c;
    border-radius: 4px;
}

.progress {
    background-color: transparent; 
    border-radius: 0; 
    -webkit-box-shadow: none ;
    box-shadow: inset: none;
}
.progress1 {
    padding: 8px 0px;
    margin: 0px;
}
.progress-gold , .progress-double-gold{
	background-color: #F6BB19;
}
.progress-bmr, .progress-double-bmr  {
	background-color: green;
}
.progress-fd, .progress-double-fd{
	background-color: #559dd3;
}
.mr-3:nth-child(1) {
    margin-left: 15px;
}
.fund-edit-btn[data-v-047b2c23] {
    border: 1px solid rgba(76,166,243,.78);
    border-radius: 4px;
    color: #4ca6f3;
    line-height: 42px;
    height: 42px;
    padding: 1px 8px;
    text-align: center;
    font-size: 14px;
    background: #fff;
    margin: 10px 0px;
}
.fund-edit-btn[data-v-047b2c23]:hover {
    background-image: linear-gradient(90deg,#56ccf2,#4ca6f3);
    box-shadow: 2px 4px 7px 0 rgba(0,0,0,.1);
    color: #fff;
    border: 0;
    transition: .15s ease-in-out;
}
.peer-comparison {
    padding-bottom: 10px;
}

</style>


<style>

.checkbox label:after, 
.radio label:after {
    content: '';
    display: table;
    clear: both;
}

.checkbox .cr,
.radio .cr {
    position: relative;
    display: inline-block;
    border: 1px solid #a9a9a9;
    border-radius: .25em;
    width: 1.3em;
    height: 1.3em;
    float: left;
    margin-right: .5em;
}

.radio .cr {
    border-radius: 50%;
}

.checkbox .cr .cr-icon,
.radio .cr .cr-icon {
    position: absolute;
    font-size: .8em;
    line-height: 0;
    top: 50%;
    left: 20%;
}

.radio .cr .cr-icon {
    margin-left: 0.04em;
}

.checkbox label input[type="checkbox"],
.radio label input[type="radio"] {
    display: none;
}

.checkbox label input[type="checkbox"] + .cr > .cr-icon,
.radio label input[type="radio"] + .cr > .cr-icon {
    transform: scale(3) rotateZ(-20deg);
    opacity: 0;
    transition: all .3s ease-in;
}

.checkbox label input[type="checkbox"]:checked + .cr > .cr-icon,
.radio label input[type="radio"]:checked + .cr > .cr-icon {
    transform: scale(1) rotateZ(0deg);
    opacity: 1;
}

.checkbox label input[type="checkbox"]:disabled + .cr,
.radio label input[type="radio"]:disabled + .cr {
    opacity: .5;
}


.check-scheme {
    padding: 10px 0px;
}
.check-scheme label{
	padding-left:0;
}

.switch {
    position: relative;
    /* display: inline-block; */
    width: 50px;
    height: 23px;
}

.slider:before {
    position: absolute;
    content: "";
    height: 15px;
    width: 15px;
    left: 4px;
    bottom: 4px;
    background-color: white;
    -webkit-transition: .4s;
    transition: .4s;
}

.switch-text {
    position: relative;
    top: -11px;
}

.performance-scheme{
	margin-bottom: 20px;
}

.hor-box{
	display:flex;
	color: #333;
}

.text-success .fa-long-arrow-up {
   color: #8ef37a !important;
}
.text-danger {
    color: red !important;
}
span.pull-right{
	font-size: 12px !important;
}
@media (max-width: 575.98px) { 
	.tag-img{
		display:none;
	}
	
	.upwardly-take{
		width:100%;
		margin-right: 0 !important;
    	margin-left: 0 !important;
	}
	.hor-box{
		display: block;
	}
	.ma-1{
		margin:0px !important;
	}
	
	.calculator-section {
    	display: block;
	}
	.multipler{
		margin-top: 12px;
    	padding: 0;
	} 
}

@media (min-width: 576px) and (max-width: 767.98px) {  }

@media (min-width: 768px) and (max-width: 991.98px) {  }

@media (min-width: 992px) and (max-width: 1199.98px) {  }

@media (min-width: 1200px) { 


}

</style>

<script type="text/javascript">
	var nav = '${nav}';
	var fund = '${scheme}';
	var scheme_end_date = '<fmt:formatDate pattern="yyyy-MM-dd" value="${dateMap[1]}" />';
	var sip_start_date = '<fmt:formatDate pattern="yyyy-MM-dd" value="${dateMap[0]}" />';
	var lumpsum_start_date = '<fmt:formatDate pattern="yyyy-MM-dd" value="${dateMap[0]}" />';

	var navLoaded = 0;
	var yearlyLoaded = 0;
	var issuersLoaded = 0;
	
	$(document).ready(function(){
		
		$('#nav-movement-gth-div').appear(function() {
			getCompleteNavReport();
		});
		
		$('#yearly-performance-gth-div').appear(function() {
	  		yearlyPerformaceGraph();
	  	});
		$('#related_funds_table').appear(function() {
			getRelatedFunds();
		});
		
		$('#sip-gth-container').appear(function() {
			calculateSIPReturns();
		});
		
		$('#issuers-container').appear(function() {
			renderIssuers();
		});
		
		$('#assets-container').appear(function() {
			renderAssets();
		});
		
		$('#aum-container').appear(function() {
			renderDailyAum();
		});
		
		showPortfolioAnalysis();
		renderHoldings();
		
		initializeTypeAhead();
		
		$('[data-toggle="tooltip"]').tooltip();
		$('#txt_sipStartDate').datepicker({format: 'dd-mm-yyyy',autoclose:true,endDate: '-1d',disableTouchKeyboard:true}).on("changeDate", function(e){
			calculateSIPReturns();
	    });
	    $('#txt_sipEndDate').datepicker({format: 'dd-mm-yyyy',autoclose:true,endDate: '-1d',disableTouchKeyboard:true}).on("changeDate", function(e){
			calculateSIPReturns();
	    });
	    $('#txt_lumpsumtartDate').datepicker({format: 'dd-mm-yyyy',autoclose:true,endDate: '-1d',disableTouchKeyboard:true}).on("changeDate", function(e){
	    	calculateLumpSumReturns();
	    });
	    $('#txt_rolling_returns_start_date').datepicker({format: 'dd-mm-yyyy',autoclose:true,endDate: '-1d',disableTouchKeyboard:true}).on("changeDate", function(e){
	    	calculateRollingReturnsBefore();
	    });
	    $('#txt_sipStartDate_compare').datepicker({format: 'dd-mm-yyyy',autoclose:true,endDate: '-1d',disableTouchKeyboard:true}).on("changeDate", function(e){
	    	calculateCompareSIPReturns();
	    });
	    $('#txt_sipEndDate_compare').datepicker({format: 'dd-mm-yyyy',autoclose:true,endDate: '-1d',disableTouchKeyboard:true}).on("changeDate", function(e){
	    	calculateCompareSIPReturns();
	    });
	    $('#txt_lumpsumStartDate_compare').datepicker({format: 'dd-mm-yyyy',autoclose:true,endDate: '-1d',disableTouchKeyboard:true}).on("changeDate", function(e){
	    	calculateCompareLumpSumReturns();
	    });
	    $('#txt_lumpsumEndDate_compare').datepicker({format: 'dd-mm-yyyy',autoclose:true,endDate: '-1d',disableTouchKeyboard:true}).on("changeDate", function(e){
	    	calculateCompareLumpSumReturns();
	    });
	    
		var current_year = new Date().getFullYear();
		$(".th_yr_10").html(current_year);
		$(".th_yr_9").html((current_year-1));
		$(".th_yr_8").html((current_year-2));
		$(".th_yr_7").html((current_year-3));
		$(".th_yr_6").html((current_year-4));
		$(".th_yr_5").html((current_year-5));
		$(".th_yr_4").html((current_year-6));
		$(".th_yr_3").html((current_year-7));
		$(".th_yr_2").html((current_year-8));
		$(".th_yr_1").html((current_year-9));
	    
	    
	  $(".rowcompar").hide();
		$('.multiDiv').hide();
		$('.sipMinimum').hide();
		$('#lumpSpan').html(numbersWithComma(parseInt($('#lumpSpan').html())));
		$('#sipSpan').html(numbersWithComma(parseInt($('#sipSpan').html())));
		
		$('.2x_in').show();
		$(".row-0,.row-1,.row-2,.row-3,.row-4").show();
		 
		$('#invest-now').click(function() {	
			if($(".invTypeCheck").is(":checked")) {
				if($("#siplumpAmount").val() < parseInt($("#sipMinAmount").val())) {
					swal({title:"",text:"Minimum SIP amount should be Rs."+numbersWithComma($("#sipMinAmount").val())});
				} else {
					top.location = 'https://www.meetTruuegro.com/client-login';
				}
			} else {
				if(parseInt($("#siplumpAmount").val()) < parseInt($("#lumpMinAmount").val())) {
					swal({title:"",text:"Minimum Lumpsum amount should be Rs."+numbersWithComma($("#lumpMinAmount").val())});
				} else {
					top.location = 'https://www.meetTruuegro.com/client-login';
				}
			}
			
		});
		var i=5;
	    $(".fund-edit-btn").click(function(){
    		$('.row-'+i).show( "slow" );
    		
    		if(i>=10){
    			$('.fund-edit-btn').hide();
    		}
    		
    		i++;
	    });
	    $('.perfomance .custom-pills').each(function() {
	        var rateOfReturn = $(this).attr('data-return');
	        if(rateOfReturn == 0) {
	        	$(this).hide();
	        }
	    });
	    
	    $('.invTypeCheck').change(function() {
	        if($(this).is(":checked")) {
	            $('.invTypeText').html('Monthly Amount');
	            $('.sipMinimum').show();
	            $('.lumpMinimum').hide();	            
	        } else {
	        	$('.invTypeText').html('One Time Amount');
	        	$('.lumpMinimum').show();
	            $('.sipMinimum').hide();
	        }
	             
	    });
	    
	    var isDebt = '${schemeMapping.scheme_broad_category}'
	     if(isDebt != 'Debt Schemes')
	    	 calculateLumpsum(12, $('.perfomance .custom-pills-active').data('return'), 'bmr_1y');
	    
	    $('.perfomance .custom-pills').click(function(){
	    	$('.perfomance .custom-pills').removeClass('custom-pills-active');
	    	$(this).addClass('custom-pills-active');
	    	var period = $(this).html();
	    	var rateofreturn = $(this).data('return');
	    	
	    	if(period == '3m') {
	    		calculateLumpsum(3, rateofreturn, 'bmr_3m');
	    	} else if(period == '6m') {
	    		calculateLumpsum(6, rateofreturn, 'bmr_6m');
	    	} else if(period == '1y') {
	    		calculateLumpsum(12, rateofreturn, 'bmr_1y');
	    	} else if(period == '3y') {
	    		calculateLumpsum(36, rateofreturn, 'bmr_3y');
	    	} else if(period == '5y') {
	    		calculateLumpsum(60, rateofreturn, 'bmr_5y');
	    	} else if(period == '10y') {
	    		calculateLumpsum(120, rateofreturn, 'bmr_10y');
	    	}
	    });  
		 
	   	$('.multipler .custom-pills').click(function(){
	    	$('.multipler .custom-pills').removeClass('custom-pills-active');	    	
	    	$(this).addClass('custom-pills-active');
	    	$('.multiDiv').hide();
	    	var mutliTerm = $(this).html();
	    	if(mutliTerm == '2x') {
	    		$('.2x_in').show();	    
	    		$('.fdDivText').html('11 Years 10 Months');
	    		$('.goldDivText').html('8 Years 9 Months');
	    		$('.niftyDivText').html('5 Years 5 Months');
	    	} else if(mutliTerm == '4x') {
	    		$('.4x_in').show();
	    		$('.fdDivText').html('23 Years 9 Months');
	    		$('.goldDivText').html('17 Years 5 Months');
	    		$('.niftyDivText').html('9 Years 4 Months');
	    	}  else if(mutliTerm == '5x') {
	    		$('.5x_in').show();
	    		$('.fdDivText').html('27 Years 7 Months');
	    		$('.goldDivText').html('20 Years 2 Months');
	    		$('.niftyDivText').html('10 Years 10 Months');
	    	}  else if(mutliTerm == '10x') {
	    		$('.10x_in').show();
	    		$('.fdDivText').html('39 Years 7 Months');
	    		$('.goldDivText').html('28 Years 11 Months');
	    		$('.niftyDivText').html('15 Years 5 Months');
	    	}
	    });
		
		$('.btn-toggle').click(function() {
	    $(this).find('.btn').toggleClass('active');  
	    
	    if ($(this).find('.btn-primary').length>0) {
	    	$(this).find('.btn').toggleClass('btn-primary');
	    }
	    if ($(this).find('.btn-danger').length>0) {
	    	$(this).find('.btn').toggleClass('btn-danger');
	    }
	    if ($(this).find('.btn-danger').length>0) {
	    	$(this).find('.btn').toggleClass('btn-danger');
	    }
	    if ($(this).find('.btn-info').length>0) {
	    	$(this).find('.btn').toggleClass('btn-info');
	    }
	    
	    $(this).find('.btn').toggleClass('btn-default');
	});
	
	$('#sip-submit').click(function(e){
	 	e.preventDefault();

	 	var fund = $("#mf_fund_txt").val();
	 	
	 	if(fund == "")
	 	{
	 		$("#adv-alert-msg").html("Please type an Fund Name and select it from the autocomplete functionality.<br/>Then click on Submit.");
	   	    $("#adv-alert").modal('show');
	 	}
	 	
	 	var l = Ladda.create(this);
	 	l.start();
	 	
	 	var schemeName = encodeURIComponent(fund);
	 	
	 	$.ajaxSetup({async:false});
		$.post("/mutual-funds-research/isValidFundNameSchemeDetails", {fund : schemeName}, function(data)
	    {
			l.stop();
			var result = $.trim(data);
			if(result == "true")
			{
				document.location =  "/mutual-funds-research/"+schemeName; 
			}
			else
			{
				$("#adv-alert-msg").html("Please type an Fund Name and select it from the autocomplete functionality.<br/>Then click on Submit.");
		   	    $("#adv-alert").modal('show');
			}			
	    },'text');
	 	
	 	return false;
	});
});
	
var isImageSaved = 0;

	function saveImages() 
	{
		if(isImageSaved == 0)
		{
			$.LoadingOverlay("show");
			
			if( navLoaded == 0) {
				getCompleteNavReport();
			}
			if( yearlyLoaded == 0) {
				yearlyPerformaceGraph();
			}
			if( issuersLoaded == 0) {
				renderIssuers();
			}
			
			$("#menu_tab1").addClass('d-block');
			$("#menu_tab2").addClass('d-block');
			if('${schemeMapping.scheme_broad_category}' == 'Debt Schemes') 
			{
				$("#profile_tab3").addClass('d-block');
			}
			 setTimeout(function(){ 
				
				html2canvas(document.querySelector("#yearly-performance-container")).then(canvas => {
					getCanvas = canvas;
					var imgageData = getCanvas.toDataURL("image/png");
					img = imgageData.replace('data:image/png;base64,', '');
					$.ajaxSetup({async:false});
					$.post("/base64toimageYearly", {scheme : '${scheme}', base64image : img}, function(data){
						
						console.log("base64toimageYearly done ");
						
						html2canvas(document.querySelector("#asset-allocation-chart")).then(canvas => {
							getCanvas = canvas;
							var imgageData = getCanvas.toDataURL("image/png");
							img = imgageData.replace('data:image/png;base64,', '');
							$.ajaxSetup({async:false});
							$.post("/base64toimageAsset", {scheme : '${scheme}', base64image : img}, function(data){
								
								console.log("base64toimageAsset done ");
								
								html2canvas(document.querySelector("#nav-movement-container")).then(canvas => {
									getCanvas = canvas;
									var imgageData = getCanvas.toDataURL("image/png");
									img = imgageData.replace('data:image/png;base64,', '');
									$.ajaxSetup({async:false});
									$.post("/base64toimageNav", {scheme : '${scheme}', base64image : img}, function(data){
										
										console.log("base64toimageNav done ");
										
										if('${schemeMapping.scheme_broad_category}' != 'Debt Schemes') 
										{
											html2canvas(document.querySelector("#full_sector_data")).then(canvas => {
												getCanvas = canvas;
												var imgageData = getCanvas.toDataURL("image/png");
												img = imgageData.replace('data:image/png;base64,', '');
												$.ajaxSetup({async:false});
												$.post("/base64toimageSector", {scheme : '${scheme}', base64image : img}, function(data){
													
													console.log("base64toimageSector done ");
													
													setTimeout(function(){$.post("/pdf/fund-card", {scheme : '${scheme}'}, function(pdfData){
														$( "object").attr('data',  pdfData).hide().show(); 
													},'text');},500);
													$("#menu_tab2").removeClass('d-block');
													$("#menu_tab1").removeClass('d-block');
													$.LoadingOverlay("hide");
												},'text');
										    });	
											
										}
										
										if('${schemeMapping.scheme_broad_category}' == 'Debt Schemes') 
										{
											
											html2canvas(document.querySelector("#issuers-container")).then(canvas => {
												getCanvas = canvas;
												var imgageData = getCanvas.toDataURL("image/png");
												img = imgageData.replace('data:image/png;base64,', '');
												$.ajaxSetup({async:false});
												$.post("/base64toimageIssuers", {scheme : '${scheme}', base64image : img}, function(data){
													
													console.log("base64toimageIssuers done ");
													
													setTimeout(function(){$.post("/pdf/fund-card", {scheme : '${scheme}'}, function(pdfData){
														$( "object").attr('data',  pdfData).hide().show(); 
													},'text');},500);
													$("#profile_tab3").removeClass('d-block');
													$("#menu_tab2").removeClass('d-block');
													$("#menu_tab1").removeClass('d-block');
													$.LoadingOverlay("hide");
												},'text');
										    });			
										}
										
									},'text');
							    });	
								
								
							},'text');
					    });	
						
					},'text');
			    });		
				
				isImageSaved = 1;
			
			 }, 5000); 
		}
	}
	
	function numbersWithComma(x) {
	    x = x.toString();
	    var afterPoint = '';
	    if (x.indexOf('.') > 0) afterPoint = x.substring(x.indexOf('.'), x.length);
	    x = Math.floor(x);
	    x = x.toString();
	    var lastThree = x.substring(x.length - 3);
	    var otherNumbers = x.substring(0, x.length - 3);
	    if (otherNumbers != '') lastThree = ',' + lastThree;
	    var res = otherNumbers.replace(/\B(?=(\d{2})+(?!\d))/g, ",") + lastThree + afterPoint;
	    return res;
	}
	
	function sectorAllocationClick()
	{
		var sector_text = $("#sector_anchor_span").html();	
		if(sector_text == "Show All Sectors")
		{
			$("#fullSectorAnchor").html('<span id="sector_anchor_span" class="paddingRight5">Hide All Sectors</span> <i class="fa fa-chevron-circle-up"></i>');
			$("#full_sector_data_table tr:gt(9)").show();
		}else{
			$("#fullSectorAnchor").html('<span id="sector_anchor_span" class="paddingRight5">Show All Sectors</span> <i class="fa fa-chevron-circle-down"></i>');
			$("#full_sector_data_table tr:gt(9)").hide();
		}
	}
	function holdingsAllocationClick()
	{
		var holdings_text = $(".holdings_anchor_span").html();	
		if(holdings_text == "Show All Holdings")
		{
			$(".fullHoldingsAnchor").html('<span class="holdings_anchor_span paddingRight5">Hide All Holdings</span> <i class="fa fa-chevron-circle-up"></i>');
			$(".full_holdings_data_table tr:gt(9)").show();
		}else{
			$(".fullHoldingsAnchor").html('<span class="holdings_anchor_span paddingRight5">Show All Holdings</span> <i class="fa fa-chevron-circle-down"></i>');
			$(".full_holdings_data_table tr:gt(9)").hide();
		}
	}
	
	function showPortfolioAnalysis() {
		$("#asset-gth-spinner").show();
		$("#portfolio-gth-spinner").show();

		$("#fullSector").addClass("in");
		$("#fullHoldings").addClass("in");

		var scheme_amfi = '${scheme}';

		var container_width = $("#asset_allocation_div").width();
		container_width = container_width - 5;

		$.ajaxSetup({async : false});
		$.post("/mutual-funds-research/getPortfolioAnalysis",{scheme_amfi : scheme_amfi}, function(data) {
							var result = $.trim(data);
							var obj = jQuery.parseJSON(result);
							var scheme_asset = obj.schemeAssets;
							var schemePortfolioAnalysisResponse = obj.schemePortfolioAnalysisResponse;
							var schemePortfolioList_array = $
									.makeArray(schemePortfolioAnalysisResponse.schemePortfolioList);
							var sectorAllocationMap = schemePortfolioAnalysisResponse.sectorAllocationMap;
							var assetAllocationMap = schemePortfolioAnalysisResponse.assetAllocationMap;

							/* schemeAssets */
				/* schemeAssets */
		if(assetAllocationMap != null && assetAllocationMap != undefined && assetAllocationMap != "")
		{
			var main_arr = new Array();
			for(var key in assetAllocationMap) {
			    var value = assetAllocationMap[key];
			    var obj = {
						name: key,
		                y: value,	
					};
					main_arr.push(obj);
			}

			if(main_arr.length == 0 || main_arr == "0")
			{
				$("#asset-gth-spinner").hide();
				$('#asset-allocation-container').html("<b>Asset allocation Not Available</b>");
				//$("#portfolio-gth-spinner").hide();
				$('#portfolio-gth-spinner').html("<b>Portfolio Analysis Not Available</b>");
				return false;
			}
			
			$('#asset-allocation-container').highcharts({
				colors: ['#FE581E','#2B3292','#000000','#194d30','#8B0045','#ff0000','#804000','#000066','#00ff00','#0A9BF5','#999999','#3b0066'],
		        chart: {
		            type: 'bar',
		            width: container_width,
		            backgroundColor: "#F1EDE2"
		        },
		        title: {
		            text: ''
		        },
		        subtitle: {
		            text: ''
		        },
		        xAxis: {
		            type: 'category',
		            gridLineColor: "#666",
	            	gridLineWidth: 1,
	            	lineColor: "#666",
	            	tickColor: "#666",
		            labels: {
		            	align:'left',
		            	x:5
		        	}
		        },
		        yAxis: {
		        	gridLineColor: "#666",
	            	gridLineWidth: 1,
	            	lineColor: "#666",
	            	tickColor: "#666"
		        },
		        credits: {
		        	enabled : true,
	                text: "Easternfin.com",
	                href: "https://www.easternfin.com/",
	                style: {
	                	cursor: 'pointer',
	                	color: '#264998',
	                	fontSize: '10px'
	                }
		        },
		        legend: {
		            enabled: false
		        },
		        plotOptions: {
		            series: {
		                dataLabels: {
		                    enabled: true,
		                    align:'left',
		                    y:20,
		                    format: '{point.y:.1f}%'
		                }
		            },
		            pointPadding: 0,
		        	groupPadding: 0,
		        },
		        tooltip: {
		            pointFormat: '<b>{point.y:.2f}%</b>'
		        },
		        series: [{data: main_arr}],
		    });
			
			$("#asset-gth-spinner").hide();
		}else{
			$("#asset-gth-spinner").hide();
			$('#asset-allocation-container').html("<b>Asset allocation Not Available</b>");
		}

							if (sectorAllocationMap == null
									|| sectorAllocationMap == undefined
									|| sectorAllocationMap == ""
									|| schemePortfolioList_array == null
									|| schemePortfolioList_array == undefined
									|| schemePortfolioList_array.length == 0) {
								//$("#portfolio-gth-spinner").hide();
								$('#portfolio-gth-spinner')
										.html(
												"<b>Portfolio Analysis Not Available</b>");
								return false;
							}

							/* Sectors */
							var sector_data = "";
							sector_data += '<table class="table table-striped" style="border: none" id="full_sector_data_table"><thead><tr><th >Sector</th><th class="text-right">Allocation (%)</th></tr></thead><tbody>';
							for ( var key in sectorAllocationMap) {
								var value = sectorAllocationMap[key];
								sector_data += '<tr><td>' + key + '</td><td class="text-right">'+ value + '</td></tr>';
							}
							sector_data += '</tbody></table>';
							//$("#full_sector_data").html(sector_data);

							/* Holdings */
							
							var ten_holdings_data = '<table class="table table-striped full_holdings_data_table" style="border: none"><thead><tr><th>Company</th>';
							var all_holdings_data = '<table class="table table-striped holdings_full_table" style="border: none"><thead><tr><th>Company</th>';
							if('${schemeMapping.scheme_broad_category}' == 'Debt Schemes')
								all_holdings_data += '<th> Instrument </th> <th> Credit Rating </th>';
							else
								all_holdings_data += '<th> Sector </th>';
							ten_holdings_data +=  '<th class="text-right">Holdings (%)</th></tr></thead><tbody>';
							all_holdings_data +=  '<th class="text-right">Holdings (%)</th></tr></thead><tbody>';
							
							for (var i = 0; i < schemePortfolioList_array.length; i++) {
								var company_name = schemePortfolioList_array[i].instrument;
								var holdings = schemePortfolioList_array[i].holdings;
								var instrument = schemePortfolioList_array[i].asset_class;
								var rating = schemePortfolioList_array[i].rating_eq;
								var industry = schemePortfolioList_array[i].industry;
								ten_holdings_data += '<tr><td>' + company_name + '</td>';
								all_holdings_data += '<tr><td>' + company_name + '</td>';
								if('${schemeMapping.scheme_broad_category}' == 'Debt Schemes') {
									all_holdings_data += '<td>' + instrument + '</td>';
									all_holdings_data += '<td>' + rating + '</td>';
								} else 
									all_holdings_data += '<td>' + industry + '</td>';
								ten_holdings_data += '<td class="text-right">' + holdings + '</td></tr>';
								all_holdings_data += '<td class="text-right">' + holdings + '</td></tr>';
							}
							ten_holdings_data += '</tbody></table>';
							all_holdings_data += '</tbody></table>';							
							
							$(".full_holdings_data").html(ten_holdings_data);
							$(".full_holdings_data_2").html(all_holdings_data);
							
							var portfolio_date = new Date(schemePortfolioList_array[0].portfolio_date);
							var curr_date = portfolio_date.getDate();
							var curr_month = portfolio_date.getMonth() + 1; //Months are zero based
							var curr_year = portfolio_date.getFullYear();
							//1portfolio_date = portfolio_date.replace('00:00:00 GMT+0530 (India Standard Time)', '');
							$("#portfolio_date_txt").html(schemePortfolioList_array[0].portfolio_date);
							$("#portfolio_date_div").show();

							var sector_names_array = $
									.makeArray(schemePortfolioAnalysisResponse.sectorNamesString);
							var sector_value_string = $
									.makeArray(schemePortfolioAnalysisResponse.sectorAllocationMorrisString);
							var total_sector = 0;
							var sector_value_array = new Array();

							for (var i = 0; i < (sector_value_string.length - 1); i++) {
								var sector_name = sector_names_array[i];
								var sector_value = parseFloat(sector_value_string[i]);
								total_sector = total_sector + sector_value;
								var arr = new Array();
								arr.push(sector_name);
								arr.push(sector_value);
								sector_value_array.push(arr);
							}
							if (total_sector < 100) {
								var sector_others = 100 - total_sector;
								var arr = new Array();
								arr.push("Others");
								arr.push(sector_others);
								sector_value_array.push(arr);
							}

							var sector_data = new Array();
							var sector_keys = new Array();
							for(var key in sectorAllocationMap) {
							    var value = sectorAllocationMap[key];
							    sector_keys.push(key);
								sector_data.push(parseFloat(value).toFixed(2));
							}
							
							var sectorChart = {
								  chart: {
									height: 350,
									type: 'bar',
								  },
								  plotOptions: {
									bar: {
										barHeight: '100%',
										distributed: true,
										horizontal: true					
									}
								  },
								  colors: ['#33b2df', '#546E7A', '#d4526e', '#13d8aa', '#A5978B', '#2b908f', '#f9a3a4', '#90ee7e',
									  '#f48024', '#69d2e7'],
								  dataLabels: {
									enabled: true,
									formatter: function(val, opt) {
										  return  val +" %"
									  },style: {
										    colors: ['#000']
									  }
								  },
								  series: [{
									data: sector_data.slice(0, 10)
								  }],
								  xaxis: {
									categories: sector_keys.slice(0, 10),
								  },
								  stroke: {
									  show: true,
									  width: 1,
									  colors: ['#fff']
									},
								  tooltip: {
									  theme: 'dark',
									  x: {
										show: true
									  },
									  y: {
										title: {
										  formatter: function () {
											return ''
										  }
										}
									  }
								 },
								  legend: {
									show: false
								  }
							};
							
							var sector_chart = new ApexCharts(
							  document.querySelector("#full_sector_data"),
							  sectorChart
							);
							sector_chart.render();
							
							var holding_name_array = $
									.makeArray(schemePortfolioAnalysisResponse.schemePortfolioHoldingsNamesString);
							var holding_value_string = $
									.makeArray(schemePortfolioAnalysisResponse.schemePortfolioHoldingsValuesString);
							var total_holdings = 0;
							var holding_value_array = new Array();

							for (var i = 0; i < (holding_value_string.length - 1); i++) {
								var holdings_name = holding_name_array[i];
								var holdings_value = parseFloat(holding_value_string[i]);
								total_holdings = total_holdings
										+ holdings_value;
								var arr = new Array();
								arr.push(holdings_name);
								arr.push(holdings_value);
								holding_value_array.push(arr);
							}
							if (total_holdings < 100) {
								var holding_others = 100 - total_holdings;
								var arr = new Array();
								arr.push("Others");
								arr.push(holding_others);
								holding_value_array.push(arr);
							}

							/* Holdings Allocation Graph */
							$('#holdings-allocation-container').highcharts(
							{
								chart : {
									backgroundColor: "#ffffff",
									plotBackgroundColor : null,
									plotBorderWidth : null,
									plotShadow : false
								},
								title : {
									text : ''
								},
								tooltip : {
									pointFormat : '<b>{point.percentage:.2f}%</b>'
								},
								credits : {
									enabled : false,
									text : "EASTERN FINANCIERS",
									href : "https://www.easternfin.com/",
									style : {
										cursor : 'pointer',
										color : '#264998',
										fontSize : '10px'
									}
								},
								plotOptions : {
									pie : {
										allowPointSelect : true,
										cursor : 'pointer',
										dataLabels : {
											enabled : false
										}
									}
								},
								series : [ {
									type : 'pie',
									data : holding_value_array
								} ]
							});

							$("#portfolio-gth-spinner").hide();
							$("#top_10_sectors").show();
							$("#top_10_stocks").show();
							$("#fullSector").show();
							$("#fullHoldings").show();

							//$("#full_sector_data_table tr:gt(9)").hide();
							$(".full_holdings_data_table tr:gt(9)").hide();
							$(".holdings_full_table tr:gt(9)").show();
							
							var stocksMapList = '${stocksMapList}'; 
							stocksMapList = stocksMapList.replace("{", "");
							stocksMapList = stocksMapList.replace("}", "");
							stocksMapList = stocksMapList.split(",");
							if(stocksMapList != null && stocksMapList != undefined && stocksMapList != "")
							{
								var stock_data = new Array();
								var stock_keys = new Array();
								for(var k = 0; k < stocksMapList.length; k++) {
									var value = stocksMapList[k];
									value = value.split("=");
									stock_keys.push($.trim(value[0]));
									stock_data.push(parseFloat($.trim(value[1])).toFixed(2));
								}
								
								var stockChart = {
									  chart: {
										height: 190,
										type: 'bar',
									  },
									  plotOptions: {
										bar: {
											barHeight: '100%',
											distributed: true,
											horizontal: true					
										}
									  },
									  colors: ['#33b2df', '#546E7A', '#d4526e', '#13d8aa', '#A5978B', '#2b908f', '#f9a3a4', '#90ee7e',
										  '#f48024', '#69d2e7'],
									  dataLabels: {
										enabled: true,
										offsetX: 40,
										formatter: function(val, opt) {
											  return  val +" %"
										  },style: {
											    colors: ['#000']
										  }
									  },
									  series: [{
										data: stock_data
									  }],
									  xaxis: {
										categories: stock_keys,
									  },
									  stroke: {
										  show: true,
										  width: 1,
										  colors: ['#fff']
										},
									  tooltip: {
										  theme: 'dark',
										  x: {
											show: true
										  },
										  y: {
											title: {
											  formatter: function () {
												return ''
											  }
											}
										  }
									 },
									  legend: {
										show: false
									  }
								};
								
								var stock_chart = new ApexCharts(
								  document.querySelector("#stock_chart"),
								  stockChart
								);
								stock_chart.render();
							}
							
						}, 'text');
	}
	
	
	function calculateLumpsum(periodInMonths, rateofReturn, bmrReturn) 
	{
		var lumpsumAmount = "100000";
		
		lumpsumAmount = parseInt(lumpsumAmount);
		periodInMonths = parseInt(periodInMonths);
		rateofReturn = parseFloat(rateofReturn,10);
		var  years = periodInMonths / 12;
		var invested_amount = 0;
		var growth_value = 0;
		var maturity_amount = 0;
		var fd_maturity_amount = 0;
		var gold_maturity_amount = 0;
		var bmr_maturity_amount = 0;
		
		$.ajaxSetup({async:false});
		$.post("/mutual-funds-research/getLumpsumCalcResult", {lumpsum_amount : "" + lumpsumAmount + "",years : "" + years + "",expected_return : "" + rateofReturn + ""}, function(data)
		{
			var result = $.trim(data);
			var obj = jQuery.parseJSON(result);
			
			if(obj.status == 400)
			{
				alert(obj.msg);
				return false;
			}
			
			maturity_amount = obj.future_amount;
			
	    },'text');
	  
		$('#res_total_amount_fund').html("&#8377; "+numbersWithComma(maturity_amount)+" <span style='font-size: 9px;'>("+rateofReturn+"%)</span>");
		
		var fundMaturityAmount = maturity_amount;
		var rateofReturn = "6";
	
		$.ajaxSetup({async:false});
		$.post("/mutual-funds-research/getLumpsumCalcResult", {lumpsum_amount : "" + lumpsumAmount + "",years : "" + years + "",expected_return : "" + rateofReturn + ""}, function(data)		
	    {
			var result = $.trim(data);
			var obj = jQuery.parseJSON(result);
			
			if(obj.status == 400)
			{
				alert(obj.msg);
				return false;
			}
			fd_maturity_amount = obj.future_amount;
			
	    },'text');
		
		$('#res_total_amount_fd').html("&#8377; "+numbersWithComma(fd_maturity_amount)+" <span style='font-size: 9px;'>("+rateofReturn+"%)</span>");
		
		rateofReturn = "8";
		$.ajaxSetup({async:false});
		$.post("/mutual-funds-research/getLumpsumCalcResult", {lumpsum_amount : "" + lumpsumAmount + "",years : "" + years + "",expected_return : "" + rateofReturn + ""}, function(data)		
	    {
			var result = $.trim(data);
			var obj = jQuery.parseJSON(result);
			
			if(obj.status == 400)
			{
				alert(obj.msg);
				return false;
			}
			maturity_amount = obj.future_amount;
			gold_maturity_amount = maturity_amount;
	    },'text');
		$('#res_total_amount_gold').html("&#8377; "+numbersWithComma(maturity_amount)+" <span style='font-size: 9px;'>(8%)</span>");
		
		rateofReturn = $('#'+bmrReturn).val();
		$.ajaxSetup({async:false});
		$.post("/mutual-funds-research/getLumpsumCalcResult", {lumpsum_amount : "" + lumpsumAmount + "",years : "" + years + "",expected_return : "" + rateofReturn + ""}, function(data)		
	    {
			var result = $.trim(data);
			var obj = jQuery.parseJSON(result);
			
			if(obj.status == 400)
			{
				alert(obj.msg);
				return false;
			}
			maturity_amount = obj.future_amount;
			bmr_maturity_amount = maturity_amount;
	    },'text');
		
		$('#res_total_amount_bmr').html("&#8377; "+numbersWithComma(maturity_amount)+" <span style='font-size: 9px;'>("+rateofReturn+"%)</span>");
		
		if(rateofReturn < 8) {
			maturity_amount = gold_maturity_amount;	
		    if(fundMaturityAmount < maturity_amount) {
				var fundWidth = ((fundMaturityAmount / maturity_amount) * 100) ;
				var fdWidth = ((fd_maturity_amount / maturity_amount) * 100) ;
				var bmrWidth = ((bmr_maturity_amount / maturity_amount) * 100) ;
				$('.progress-fd').css("width" , fdWidth+'%');
				$('.progress-fund').css("width" , fundWidth+"%");
				$('.progress-bmr').css("width" , bmrWidth+"%");
				$('.progress-gold').css("width" , '100%');
			} else {
				var goldWidth = ((maturity_amount / fundMaturityAmount) * 100);
				var fdWidth = ((fd_maturity_amount / fundMaturityAmount) * 100);
				var bmrWidth = ((bmr_maturity_amount / fundMaturityAmount) * 100) ;
				$('.progress-fund').css("width" , '100%');
				$('.progress-fd').css("width" , fdWidth+"%");
				$('.progress-gold').css("width" , goldWidth+"%");
				$('.progress-bmr').css("width" , bmrWidth+"%");
			}
		} else {
			maturity_amount = bmr_maturity_amount;	
		    if(fundMaturityAmount < maturity_amount) {
				var fundWidth = ((fundMaturityAmount / maturity_amount) * 100) ;
				var fdWidth = ((fd_maturity_amount / maturity_amount) * 100) ;
				var goldWidth = ((gold_maturity_amount / maturity_amount) * 100) ;
				$('.progress-fd').css("width" , fdWidth+'%');
				$('.progress-fund').css("width" , fundWidth+"%");
				$('.progress-gold').css("width" , goldWidth+"%");
				$('.progress-bmr').css("width" , '100%');
			} else {
				var goldWidth = ((gold_maturity_amount / fundMaturityAmount) * 100);
				var fdWidth = ((fd_maturity_amount / fundMaturityAmount) * 100);
				var bmrWidth = ((bmr_maturity_amount / fundMaturityAmount) * 100) ;
				$('.progress-fund').css("width" , '100%');
				$('.progress-fd').css("width" , fdWidth+"%");
				$('.progress-gold').css("width" , goldWidth+"%");
				$('.progress-bmr').css("width" , bmrWidth+"%");
			}
		}
	}
	
	function initializeTypeAhead()
	{	
		$('#searchMFSchemeTxt').typeahead({
		    source: function (query, process) {
		    	
		    	var spaceCheckAtEnd = /(\S.*\S)?\s+$/.test(query);
				query = $.trim(query);
		        if (query.length === 0 || !spaceCheckAtEnd) {
		            return process([]);
		        }
		        return $.ajax({
		            url: '/mutual-funds-research/autoSuggestAllMfSchemes',
		            type: 'post',
		            data: { 
		            	query: query,
		            	category: "All"
		            },
		            dataType: 'json',
		            success: function (result) {
		                return process(result);
		            }
		        });
		    },
		    items:10,
		    matcher: function(item) {
		        return true;
		    }
		});
	}
	
	function searchMFScheme() {
		var searchKey = $("#searchMFSchemeTxt").val();
		if(searchKey == "") {
			swal({title:"",text:"Please enter a search keyword"});
			return;
		}
		
		$.ajaxSetup({async:false});
		$.post("/mutual-funds-research/isValidFundNameSchemeDetails", {fund : searchKey}, function(data)
	    {
			var result = $.trim(data);
			if(result == "true")
			{
				top.location = "/mutual-funds-research/"+searchKey;
			}
			else
			{
				swal({title:"",text:"Please type a Fund Name and select it from the autocomplete"});				
			}			
	    },'text');
	 	
	 	return false;
	}
	
	var second_tab_loaded = false;
	var third_tab_loaded = false;
	function tabChange(val)
	{
		if(val == 2 && second_tab_loaded == false)
		{
			second_tab_loaded = true;
			setTimeout(function(){
				yearlyPerformaceGraph();
			}, 1000);
		}
		if(val == 3 && third_tab_loaded == false)
		{
			third_tab_loaded = true;
			setTimeout(function(){
				getCompleteNavReport();
			}, 1000);
		}
	}
	
	/* Scheme Performance Graph */
	function schemePerformaceGraph()
	{
		$("#scheme-performance-gth-spinner").removeClass("hidden");
		
		var data_array = new Array();
		var fund_obj = {
	            name: '<c:out escapeXml="false" value="${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformances.scheme_amfi}"/>',
	            color:'#01135C',
	            data: [parseFloat('<c:out value="${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformances.returns_abs_ytd}"/>'),
					   parseFloat('<c:out value="${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformances.returns_abs_1month}"/>'),
					   parseFloat('<c:out value="${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformances.returns_abs_3month}"/>'),
					   parseFloat('<c:out value="${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformances.returns_abs_6month}"/>'),
					   parseFloat('<c:out value="${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformances.returns_abs_1year}"/>'),
	            	   parseFloat('<c:out value="${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformances.returns_cmp_3year}"/>'),
	            	   parseFloat('<c:out value="${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformances.returns_cmp_5year}"/>'),
	            	   parseFloat('<c:out value="${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformances.returns_cmp_10year}"/>'),
	            	   parseFloat('<c:out value="${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformances.returns_cmp_inception}"/>')]
	        };
		data_array.push(fund_obj);
		
		var scheme_benchmark = '${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformancesBenchmark}';
		if(scheme_benchmark != null && scheme_benchmark != "")
		{
			var benchmark_obj = {
					name: '<c:out escapeXml="false" value="${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformancesBenchmark.benchmark_name}"/>',
		            color:'#F6BB19',
		            data: [parseFloat('<c:out value="${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformancesBenchmark.returns_abs_ytd}"/>'),
		            	   parseFloat('<c:out value="${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformancesBenchmark.returns_abs_1month}"/>'),
						   parseFloat('<c:out value="${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformancesBenchmark.returns_abs_3month}"/>'),
						   parseFloat('<c:out value="${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformancesBenchmark.returns_abs_6month}"/>'),
						   parseFloat('<c:out value="${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformancesBenchmark.returns_abs_1year}"/>'),
						   parseFloat('<c:out value="${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformancesBenchmark.returns_cmp_3year}"/>'),
		            	   parseFloat('<c:out value="${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformancesBenchmark.returns_cmp_5year}"/>'),
		            	   parseFloat('<c:out value="${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformancesBenchmark.returns_cmp_10year}"/>'),
		            	   parseFloat('<c:out value="${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformancesBenchmark.returns_cmp_inception}"/>')]
			};
			data_array.push(benchmark_obj);
		}
		
		var category_obj = {
	            name: '<c:out escapeXml="false" value="${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformancesCategory.sector}"/>',
	            color:'#a8a8a8',
	            data: [parseFloat('<c:out value="${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformancesCategory.returns_abs_ytd}"/>'),
	            	   parseFloat('<c:out value="${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformancesCategory.returns_abs_1month}"/>'),
					   parseFloat('<c:out value="${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformancesCategory.returns_abs_3month}"/>'),
					   parseFloat('<c:out value="${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformancesCategory.returns_abs_6month}"/>'),
					   parseFloat('<c:out value="${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformancesCategory.returns_abs_1year}"/>'),
					   parseFloat('<c:out value="${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformancesCategory.returns_cmp_3year}"/>'),
	            	   parseFloat('<c:out value="${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformancesCategory.returns_cmp_5year}"/>'),
	            	   parseFloat('<c:out value="${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformancesCategory.returns_cmp_10year}"/>'),
	            	   parseFloat('<c:out value="${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformancesCategory.returns_cmp_inception}"/>')]
	        };
		data_array.push(category_obj);
		
		var container_width = $("#scheme-performance-gth-div").width();
		
	    $('#scheme-performance-container').highcharts({
	    	colors: ['#01135C','#F6BB19','#000000','#194d30','#8B0045','#ff0000','#804000','#000066','#00ff00','#0A9BF5','#999999','#3b0066'],
	    	chart: {
	            type: 'column',
	            backgroundColor: "#ffffff",
	            events: {
	            	load: function(event) {
	            		$("#scheme-performance-gth-spinner").addClass("hidden");        		
	            	}
	            },
	        },
	        title: {
	            text: ''
	        },
	        legend: {
	         	 enabled: true
	       },
	        xAxis: {
	            categories: ['YTD', '1 Month', '3 Month', '6 Month', '1 Year', '3 Years', '5 Years', '10 Years', 'Since Launch']
	        },
	        yAxis: {
	        	title: {
	                text: 'Returns'
	            }
	        },
	        tooltip: {
	            valueSuffix: '%',
	        },
	        credits: {
	        	enabled : false,
	            text: "easternfin.com",
	            href: "https://www.easternfin.com/",
	            style: {
	            	cursor: 'pointer',
	            	color: '#264998',
	            	fontSize: '10px'
	            }
	        },
	        series: data_array
	    }); 
	}

	/* Yearly Performance Graph */
	function yearlyPerformaceGraph()
	{
		$("#yearly-performance-gth-spinner").removeClass("hidden");
		
		var current_year = new Date().getFullYear();
		var year_array = new Array();
		year_array.push(current_year-9);
		year_array.push(current_year-8);
		year_array.push(current_year-7);
		year_array.push(current_year-6);
		year_array.push(current_year-5);
		year_array.push(current_year-4);
		year_array.push(current_year-3);
		year_array.push(current_year-2);
		year_array.push(current_year-1);
		year_array.push(current_year);
		
		var data_array = new Array();
		var fund_obj = {
	            name: '<c:out escapeXml="false" value="${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformances.scheme_amfi}"/>',
	            color:'#01135C',
	            data: [parseFloat('<c:out value="${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformances.returns_abs_2008}"/>'),
	            	   parseFloat('<c:out value="${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformances.returns_abs_2009}"/>'),
	            	   parseFloat('<c:out value="${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformances.returns_abs_2010}"/>'),
	            	   parseFloat('<c:out value="${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformances.returns_abs_2011}"/>'),
	            	   parseFloat('<c:out value="${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformances.returns_abs_2012}"/>'),
	            	   parseFloat('<c:out value="${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformances.returns_abs_2013}"/>'),
	            	   parseFloat('<c:out value="${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformances.returns_abs_2014}"/>'),
	            	   parseFloat('<c:out value="${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformances.returns_abs_2015}"/>'),
	            	   parseFloat('<c:out value="${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformances.returns_abs_2016}"/>'),
	            	   parseFloat('<c:out value="${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformances.returns_abs_ytd}"/>')]
	        };
		data_array.push(fund_obj);
		
		var scheme_benchmark = '${bmSchemeMapping.scheme_benchmark}';
		if(scheme_benchmark != null && scheme_benchmark != "")
		{
			var benchmark_obj = {
					name: '<c:out escapeXml="false" value="${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformancesBenchmark.benchmark_name}"/>',
		            color:'#f14141',
		            data: [parseFloat('<c:out value="${bmark.returns_abs_2008}"/>'),
		            	   parseFloat('<c:out value="${bmark.returns_abs_2009}"/>'),
		            	   parseFloat('<c:out value="${bmark.returns_abs_2010}"/>'),
		            	   parseFloat('<c:out value="${bmark.returns_abs_2011}"/>'),
		            	   parseFloat('<c:out value="${bmark.returns_abs_2012}"/>'),
		            	   parseFloat('<c:out value="${bmark.returns_abs_2013}"/>'),
		            	   parseFloat('<c:out value="${bmark.returns_abs_2014}"/>'),
		            	   parseFloat('<c:out value="${bmark.returns_abs_2015}"/>'),
		            	   parseFloat('<c:out value="${bmark.returns_abs_2016}"/>'),
		            	   parseFloat('<c:out value="${bmark.returns_abs_ytd}"/>')]
			};
			data_array.push(benchmark_obj);
		}
		
		var category_obj = {
	            name: '<c:out escapeXml="false" value="${fundPerformanceOverviewAgainstBenchmarkAndCategoryResponse.schemePerformancesCategory.sector}"/>',
	            color:'#a8a8a8',
	            data: [parseFloat('<c:out value="${category_returns[8].returns}"/>'),
	            	   parseFloat('<c:out value="${category_returns[7].returns}"/>'),
	            	   parseFloat('<c:out value="${category_returns[6].returns}"/>'),
	            	   parseFloat('<c:out value="${category_returns[5].returns}"/>'),
	            	   parseFloat('<c:out value="${category_returns[4].returns}"/>'),
	            	   parseFloat('<c:out value="${category_returns[3].returns}"/>'),
	            	   parseFloat('<c:out value="${category_returns[2].returns}"/>'),
	            	   parseFloat('<c:out value="${category_returns[1].returns}"/>'),
	            	   parseFloat('<c:out value="${category_returns[0].returns}"/>'),
	            	   parseFloat('0')]
	        };
		data_array.push(category_obj);
		
		var container_width = $("#yearly-performance-gth-div").width()-10;
		
	    $('#yearly-performance-container').highcharts({
	    	colors: ['#01135C','#f14141','#000000','#194d30','#8B0045','#ff0000','#804000','#000066','#00ff00','#0A9BF5','#999999','#3b0066'],
	    	chart: {
	            type: 'column',
	            width : container_width,
	            backgroundColor: "#ffffff",
	            events: {
	            	load: function(event) {
	            		$("#yearly-performance-gth-spinner").addClass("hidden");        		
	            	}
	            },
	        },
	        title: {
	            text: ''
	        },
	        legend: {
	         	 enabled: true
	       },
	        xAxis: {
	            categories: year_array
	        },
	        credits: {
	        	enabled : false
	        },
	        series: data_array
	    });
	    yearlyLoaded = 1;
	}
	
	function calculateLumpSumReturns()
	{
		var amount = $("#txt_lumpsum_amount").val();
		var startDate = $("#txt_lumpsumtartDate").val();
		var curDate = new Date();
	    
	    if(amount == "" || isNaN(amount))
		{
			$("#adv-alert-msg").html("Please enter valid amount");
	   	    $("#adv-alert").modal('show');
			return;
		}
		if(startDate == "")
		{
			$("#adv-alert-msg").html("Please select start date");
	   	    $("#adv-alert").modal('show');
			return;
		}
		var start_date_arr = startDate.split("-");
		var start_date_new = start_date_arr[2] + "-" + start_date_arr[1] + "-" + start_date_arr[0];
		
		var start_date = new Date(start_date_new);
		start_date.setHours(0, 0, 0, 0);
		curDate.setHours(0, 0, 0, 0);
		
		if(start_date.getTime() >= curDate.getTime())
		{
			$("#adv-alert-msg").html("Start Date Should be less than current date");
	   	    $("#adv-alert").modal('show');
			return;
		}
	    
		$("#lumpsum-gth-container").hide();
		$("#lumpsum-gth-spinner").removeClass("hidden");
		
		var container_width = $("#lumpsum-gth-div").width();

		var scheme_benchmark = '${schemeMapping.scheme_benchmark}';
		var scheme_benchmark_code = '${schemeMapping.scheme_benchmark_code}'; 
		
		var lumpsumArray = new Array();
		lumpsumArray.push(encodeURIComponent(fund));
		if(scheme_benchmark != null && scheme_benchmark != "" && scheme_benchmark_code != '')
		{
			lumpsumArray.push(encodeURIComponent(scheme_benchmark_code));
		}
			
		var lumpsumNameArray = new Array();
		lumpsumNameArray.push(fund);
		if(scheme_benchmark != null && scheme_benchmark != "" && scheme_benchmark_code != '')
		{
			lumpsumNameArray.push(scheme_benchmark);
		}
		
		
		var  str = "";
		str += '<table class="table table-striped"><thead><tr>';
	    str +='<th style="text-align:center;"></th>';
	    str +='<th style="text-align:center;">Amount Invested</th>';
		str +='<th style="text-align:center;">Fund Value</th>';
		str +='<th style="text-align:center;">Profit</th>';
		str +='<th style="text-align:center;">Returns</th>';
	    str +='</tr></thead><tbody>';
		
	    $.ajaxSetup({async:false});
		$.post("/mutual-funds-research/getLumpSumReturnsTable", {scheme_amfi_name : "" + lumpsumNameArray[0] + "",amount : "" + amount + "",startDate : "" + startDate + ""}, function(data)
	    {	   
			var result = $.trim(data);
			var obj = jQuery.parseJSON(result);
			var current_cost = obj.current_cost;
			var current_value = obj.current_value;
			var returns = obj.returns;
			
			current_cost = Math.round(current_cost);
			current_value = Math.round(current_value);
	       	var profit = current_value - current_cost;
	       	profit = Math.round(profit);
	       
	       	str += '<tr><td>Fund</td><td>'+ current_cost.toLocaleString() +'</td><td>'+ current_value.toLocaleString() +'</td><td>'+ profit.toLocaleString() +'</td><td>'+ returns.toFixed(2) +'</td></tr>';
		   
	    },'text');
		
		if(scheme_benchmark != null && scheme_benchmark != "" && scheme_benchmark_code != '')
		{
			$.ajaxSetup({async:false});
			$.post("/mutual-funds-research/getLumpSumReturnsTable", {scheme_amfi_name : "" + scheme_benchmark_code + "",amount : "" + amount + "",startDate : "" + startDate + ""}, function(data)
		    {	   
				var result = $.trim(data);
				var obj = jQuery.parseJSON(result);
				var current_cost = obj.current_cost;
				var current_value = obj.current_value;
				var returns = obj.returns;
				
				current_cost = Math.round(current_cost);
				current_value = Math.round(current_value);
		       	var profit = current_value - current_cost;
		       	profit = Math.round(profit);
		       
		       	str += '<tr><td>Benchmark</td><td>'+ current_cost.toLocaleString() +'</td><td>'+ current_value.toLocaleString() +'</td><td>'+ profit.toLocaleString() +'</td><td>'+ returns.toFixed(2) +'</td></tr>';
			   
		    },'text');
		}
		else
		{
			str += '<tr><td>Benchmark</td><td>-</td><td>-</td><td>-</td></tr>';
		}
		str +='</tbody></table>';
		$("#lumpsum_returns_table_res").html(str);
		
		
		
		var seriesOptions = [],
	    seriesCounter = 0,
	    names = lumpsumArray,
	    
	    // create the chart when all data is loaded
	    createChart = function () {

	    $('#lumpsum-gth-container').highcharts('StockChart', {
	        
	    	colors: ['#01135C','#f14141','#000000','#194d30','#8B0045','#ff0000','#804000','#000066','#00ff00','#0A9BF5','#999999','#3b0066'],
	    	
		    	rangeSelector : {
		            enabled: false
		        },
		        navigator: {
		            enabled: false
		        },
		        credits: {
		        	enabled : false,
	                text: "easternfin.com",
	                href: "https://www.easternfin.com/",
	                style: {
	                	cursor: 'pointer',
	                	color: '#264998',
	                	fontSize: '10px'
	                }
		        },
		        legend: {
	             	 enabled: true
	           },
		        scrollbar : {
	                enabled : false
	            },
	            xAxis: {
					gridLineColor: "#ddd",
	            	gridLineWidth: 1,
	            	lineColor: "#ddd",
	            	tickColor: "#666"
	            },
	            yAxis: {
	            	gridLineColor: "#ddd",
	            	gridLineWidth: 1,
	            	lineColor: "#ddd",
	            	tickColor: "#666"
	            },
	            plotOptions: {
	                series: {
	                    connectNulls: true,
	                    dataGrouping: {
	                        enabled: false
	                    }
	                }
	            },

	            tooltip: {
	                pointFormat: '<span style="color:{series.color}">{series.name}</span>: <b>{point.y}</b><br/>',
	                valueDecimals: 2,
	                xDateFormat : '%b %d, %Y'
	            },

	            series: seriesOptions,
	            chart: {
	            	events: {
	            	load: function(event) {
	                    $("#lumpsum-gth-spinner").addClass("hidden");
	                    $("#lumpsum-gth-container").show();
	            	}
	            	},
	            	width : container_width,
	            	backgroundColor: "#ffffff"
	           }
	        });
	    };  
	    
	    $.each(names, function (i, name) {
	    $.getJSON('/mutual-funds-research/getLumpSumReturnsForFundOverview?scheme_amfi_name='+name+"&amount="+amount+"&startDate="+startDate,  function (values) {
	        seriesOptions[i] = {
	            name: lumpsumNameArray[i],
	            data: values
	        };

	        seriesCounter += 1;

	        if (seriesCounter === names.length) {
	            createChart();
	        }
	    });
	    
	    });
	    
	    Highcharts.setOptions({
	    	global: {
	    		useUTC: false
	    	}
	    });
	    
	    
	}
	

	var retuns_tab_loaded = false;
	var rolling_retuns_tab_loaded = false;
	function returnsTabChange(value)
	{
		if(value == 2)
		{
			if(retuns_tab_loaded == false)
			{
				retuns_tab_loaded = true;
				setTimeout(function(){
					calculateLumpSumReturns();
				}, 1000);
				
			}
		}
		if(value == 3)
		{
			if(rolling_retuns_tab_loaded == false)
			{
				rolling_retuns_tab_loaded = true;
				calculateRollingReturnsBefore();
			}
		}
	}
	
	function calculateRollingReturnsBefore()
	{
		setTimeout(function(){
			calculateRollingReturns();
		}, 500);
	}
	function calculateRollingReturns()
	{
	    var startDate = $("#txt_rolling_returns_start_date").val();
	    var period = $("#sel_rolling_returns_period").val();
	    var category = '${schemeMapping.scheme_advisorkhoj_category}';
	    
	 	if(startDate == null || startDate == "")
	    {
	 		$("#adv-alert-msg").html("Please select rolling returns start date");
	   	    $("#adv-alert").modal('show');
	   	    return false;
	    }
	 	if(period == null || period == "")
	    {
	 		$("#adv-alert-msg").html("Please select rolling returns period");
	   	    $("#adv-alert").modal('show');
	   	    return false;
	    }
	 	var date_arr = startDate.split("-");
	 	var start_date_str = date_arr[2] + "-" + date_arr[1] + "-" + date_arr[0];
	 	var start_date = new Date(start_date_str);
		start_date.setHours(0, 0, 0, 0);
		
		var scheme = fund;
		var schemeName = encodeURIComponent(scheme);
		
	 	$('#rolling-returns-container').hide();
		$("#rolling-returns-spinner").removeClass("hidden");
		
		var master_array = new Array();
		var colors = ['#01135C','#f14141','#00BFFF','#FFB6C1','#999999','#804000','#000066','#00ff00','#0A9BF5','#999999','#3b0066'];
		
		$.ajaxSetup({async:false});
		$.post("/mutual-funds-research/getRollingReturns", {schemes : "" + schemeName + "",category : "" + category + "",start_date : "" + startDate + "",period : "" + period + ""}, function(data)
	    {
			var result = $.trim(data);
			if(result == null || result == "null" || result == "")
			{
				$("#adv-alert-msg").html("Oops something wrong. Please try again later.");
		   	    $("#adv-alert").modal('show');
		   	    return false;
			}
			var obj = jQuery.parseJSON(result);
			var list_array = $.makeArray(obj);
			
			for(var k=0;k<list_array.length;k++)
			{
				var data_obj = list_array[k];
				var data_array = $.makeArray(data_obj);
				var scheme_data = new Array();
				
				for(var m=0;m<data_array.length;m++)
				{
					var nav_date = data_array[m].nav_date;
					nav_date = new Date(nav_date).getTime();
					var scheme_rolling_returns = data_array[m].scheme_rolling_returns;
					
					if(scheme_rolling_returns!=null && scheme_rolling_returns!="")
					{
						var scheme_arr = new Array();
						scheme_arr.push(nav_date);
						scheme_arr.push(scheme_rolling_returns);
						scheme_data.push(scheme_arr);
					}
				}
				
				if(scheme_data.length > 0)
				{
					var scheme = data_array[0].scheme_name;
					var scheme_category = data_array[0].scheme_category;
					var color_name = "";
					if(scheme_category == "")
					{
						color_name = "#F6BB19";
					}else{
						color_name = colors[k];
					}
					var obj = {
					        name : scheme,
					        data : scheme_data,
					        color : color_name
					};
					master_array.push(obj);
				}
			}
			
	    },'text'); 
		
		var container_width = $("#rolling-returns-gth-div").width();

	    $('#rolling-returns-container').highcharts('StockChart', {
	    	
		    	rangeSelector : {
		            enabled: false
		        },
		        navigator: {
		            enabled: false
		        },
		        credits: {
		            enabled: false
		        },
		        scrollbar : {
	                enabled : false
	            },
	            xAxis: {
	            	type: 'datetime',
	            	labels: {
	                    formatter: function() {
	                        var monthStr = Highcharts.dateFormat('%b %Y', this.value);
	                        var values = monthStr.split(' ');
	                        if(values.length > 1 && (period == "1 Year" || period == "3 Year" || period == "5 Year" || period == "10 Year" || period == "15 Year"))
	                        {
	                        	var period_int = 1;
	                        	if(period == "1 Year")
	                        	{
	                        		period_int = 1;
	                        	}else if(period == "3 Year")
	                        	{
	                        		period_int = 3;
	                        	}else if(period == "5 Year")
	                        	{
	                        		period_int = 5;
	                        	}else if(period == "10 Year")
	                        	{
	                        		period_int = 10;
	                        	}else
	                        	{
	                        		period_int = 15;
	                        	}
	                        	var add_value = parseInt(values[1])+period_int;
	                        	if(add_value.length == 1)
	                            {
	                        		add_value = "0"+add_value;
	                            }
	                        	return monthStr+"<br>to<br>"+values[0]+" "+add_value;
	                        }else{
	                        	return values;
	                        }
	                    }
	            }
	            },
	            yAxis: {
	            	labels: {
	                    formatter: function() {
	                        return this.value + '%';
	                    }
	                }
	            },
	            plotOptions: {
	                series: {
	                    connectNulls: true,
	                    dataGrouping: {
	                        enabled: false
	                    }
	                }
	            },
	            legend: {
	              	 enabled: true
	            },
	            tooltip: {
					formatter: function() {
						var str = '';
	            		if(period == "1 Year" || period == "3 Year" || period == "5 Year" || period == "10 Year" || period == "15 Year")
	                    {
	            			var dateMonthStr = Highcharts.dateFormat('%b %d', new Date(this.x));
	                		var yearStr = Highcharts.dateFormat('%Y', new Date(this.x));
	                		var year_int = parseInt(yearStr);
	                		
	                    	var period_int = 1;
	                    	if(period == "1 Year")
	                    	{
	                    		period_int = 1;
	                    	}else if(period == "3 Year")
	                    	{
	                    		period_int = 3;
	                    	}else if(period == "5 Year")
	                    	{
	                    		period_int = 5;
	                    	}else if(period == "10 Year")
	                    	{
	                    		period_int = 10;
	                    	}else
	                    	{
	                    		period_int = 15;
	                    	}
	                    	year_int = year_int + period_int;
	                    	str = Highcharts.dateFormat('%b %d, %Y', new Date(this.x)) + ' - '+ dateMonthStr + ', '+ year_int + '<br/>'
	                    }else
	                    {
	                    	str = Highcharts.dateFormat('%b %d, %Y', new Date(this.x)) + '<br/>'
	                    }
	            		$.each(this.points, function (i, point) {
	            			str += '<span style="color: ' + point.series.color + '">' + point.series.name + ':</span><b>' + Highcharts.numberFormat(point.y, 2)+'%</b><br/>';
	                    });
	                    return str;
					}
	            },
	            series: master_array,
	            chart: {
	            	events: {
	            	load: function(event) {
	            		$("#rolling-returns-spinner").addClass("hidden");
	            		$("#rolling-returns-container").show();            		
	            	}
	            	},
	                width : container_width,
	                backgroundColor: "#ffffff"
	            }
	        }); 
	}
	
	var fundBenchArray = new Array();
	fundBenchArray.push(encodeURIComponent('${scheme}'));
	var scheme_benchmark = '${schemeMapping.scheme_benchmark}';
	var scheme_benchmark_code = '${schemeMapping.scheme_benchmark_code}';
	if(scheme_benchmark != null && scheme_benchmark != "" && scheme_benchmark_code != '')
	{
		fundBenchArray.push(encodeURIComponent(scheme_benchmark_code));
	}

	var fundBenchNameArray = new Array();
	fundBenchNameArray.push('${scheme}');
	var scheme_benchmark = '${schemeMapping.scheme_benchmark}';
	if(scheme_benchmark != null && scheme_benchmark != "" && scheme_benchmark_code != '')
	{
		fundBenchNameArray.push('${schemeMapping.scheme_benchmark}');
	}
	
	function renderDailyAum() {
		var scheme_amfi_common = '${schemeMapping.scheme_amfi_common}';
		
		var jsonData = "";
		$.getJSON('/mutual-funds-research/getSchemeDailyAum?scheme_amfi_common=' + encodeURIComponent(scheme_amfi_common),    function (data) 
	    {
			jsonData = data; 
			
			$('#aum-container').highcharts('StockChart', {
				
				colors: ['#01135C','#F6BB19','#000000','#194d30','#8B0045','#ff0000','#804000','#000066','#00ff00','#0A9BF5','#999999','#3b0066'],
				
					rangeSelector : {
						enabled: false
					},
					navigator: {
						enabled: false
					},
					credits: {
						enabled : false,
						text: "easternfin.com",
						href: "https://www.easternfin.com/",
						style: {
							cursor: 'pointer',
							color: '#264998',
							fontSize: '10px'
						}
					},
					scrollbar : {
						enabled : false
					},
					xAxis: {
						gridLineColor: "#666",
						gridLineWidth: 1,
						lineColor: "#666",
						tickColor: "#666"
					},
					yAxis: {
						gridLineColor: "#666",
						gridLineWidth: 1,
						lineColor: "#666",
						tickColor: "#666"
					},
					plotOptions: {
						series: {
							connectNulls: true,
							dataGrouping: {
								enabled: false
							}
						}
					},
					legend: {
						 enabled: true,
						 labelFormatter: function () {
							return this.name + ' (AUM in Crores)';
						}
				   },
					tooltip: {
						pointFormat: '<span style="color:{series.color}">{series.name}</span>: <b>{point.y}</b><br/>',
						valueDecimals: 2,
						xDateFormat : '%b %d, %Y'
					},
					series: [{
						name: '${scheme}',
						data: jsonData
					}],
					chart: {
						events: {
						load: function(event) {
							$("#sip-gth-spinner").addClass("hidden");
							$("#sip-gth-container").show();            		
						}
						},
						 width : 1000,
						 backgroundColor: "#fafafa"
					}
				});
			   
	    });
		if(jsonData == "") {
				$('#aum-container').html('Daily AUM data is not available for this scheme category');
		}
	}
	
	function getCompleteNavReport()
	{
		$("#nav-movement-gth-spinner").removeClass("hidden");
		
		var container_width = $("#nav-movement-gth-div").width() -10;
		var seriesOptions = [],
	    seriesCounter = 0,
	    names = fundBenchArray,
	    // create the chart when all data is loaded
	    createChart = function () {
			
	        $('#nav-movement-container').highcharts('StockChart', {
	        	colors: ['#01135C','#f14141','#000000','#194d30','#8B0045','#ff0000','#804000','#000066','#00ff00','#0A9BF5','#999999','#3b0066'],
	            rangeSelector: {
	                selected: 4
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
		        	enabled : false,
	                text: "easternfin.com",
	                href: "https://www.easternfin.com/",
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
	                width : container_width,
	                backgroundColor: "#ffffff",
	                events: {
	                	load: function(event) {
	                        $("#nav-movement-gth-spinner").addClass("hidden");
	                	}
	                },
	            },
	            series: seriesOptions,
				rangeSelector: {
					buttonTheme: { 
						stroke: 'none',
						'stroke-width': 0,                          
						style: {                            
						},
						states: {
						  hover: {
						  },
						  select: {
							fill: '#b9dbf7',
							style: {
							  color: '#3b3f42'
							}
						  }
						}
					},
				allButtonsEnabled: false,
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
						count: 2,
						text: '2y'
					}, {
						type: 'year',
						count: 3,
						text: '3y'
					}, {
						type: 'year',
						count: 5,
						text: '5y'
					}, {
						type: 'year',
						count: 10,
						text: '10y'
					}, {
						type: 'all',               
						text: 'All'              
					}],
					selected: 4
				}
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
		navLoaded = 1;
	}
	
	function calculateSIPReturns()
	{
		var amount = $("#txt_sip_amount").val();
		var frequency = $("#txt_sipFreq").val(); 
		var startDate = $("#txt_sipStartDate").val();
		var endDate = $("#txt_sipEndDate").val();
		
		if(amount == "" || isNaN(amount))
		{
			$("#adv-alert-msg").html("Please enter valid amount");
	   	    $("#adv-alert").modal('show');
			return;
		}
		if(startDate == "")
		{
			$("#adv-alert-msg").html("Please select start date");
	   	    $("#adv-alert").modal('show');
			return;
		}
		if(endDate == "")
		{
			$("#adv-alert-msg").html("Please select end date");
	   	    $("#adv-alert").modal('show');
			return;
		}
		var start_date_arr = startDate.split("-");
		var start_date_new = start_date_arr[2] + "-" + start_date_arr[1] + "-" + start_date_arr[0];
		var end_date_arr = endDate.split("-");
		var end_date_new = end_date_arr[2] + "-" + end_date_arr[1] + "-" + end_date_arr[0];
		
		var start_date = new Date(start_date_new);
		start_date.setHours(0, 0, 0, 0);
		var end_date = new Date(end_date_new);
		end_date.setHours(0, 0, 0, 0);
		
		if(start_date.getTime() >= end_date.getTime())
		{
			$("#adv-alert-msg").html("End Date Should be greater than start date");
	   	    $("#adv-alert").modal('show');
			return;
		}
		$("#sip-gth-container").hide();
		$("#sip-gth-spinner").removeClass("hidden");
		
		var container_width = $("#sip-gth-div").width();
		
		var scheme_benchmark = '${schemeMapping.scheme_benchmark}';
		var scheme_benchmark_code = '${schemeMapping.scheme_benchmark_code}'; 
		
		var fundArray = new Array();
		//fundArray.push(encodeURIComponent(fund) + '||true');
		fundArray.push(encodeURIComponent(fund) + '||false');
		if(scheme_benchmark != null && scheme_benchmark != "" && scheme_benchmark_code != '')
		{
			fundArray.push(encodeURIComponent(scheme_benchmark_code) + '||false');
		}
			
		var fundNameArray = new Array();
		fundNameArray.push(fund);
		if(scheme_benchmark != null && scheme_benchmark != "" && scheme_benchmark_code != '')
		{
			fundNameArray.push(scheme_benchmark);
		}
		
		var  str = "";
		str += '<table class="table table-striped"><thead><tr>';
	    str +='<th style="text-align:center;"></th>';
	    str +='<th style="text-align:center;">Amount Invested</th>';
		str +='<th style="text-align:center;">Fund Value</th>';
		str +='<th style="text-align:center;">Profit</th>';
		str +='<th style="text-align:center;">Returns</th>';
	    str +='</tr></thead><tbody>';
		
	    $.ajaxSetup({async:false});
		$.post("/mutual-funds-research/getSIPReturnsTable", {scheme_amfi_name : "" + fundNameArray[0] + "",amount : "" + amount + "",
			frequency : "" + frequency + "",startDate : "" + startDate + "",endDate : "" + endDate + ""}, function(data)
	    {	   
	        var result = $.trim(data);
			var obj = jQuery.parseJSON(result);
			var current_cost = obj.current_cost;
			var current_value = obj.current_value;
			var returns = obj.returns;
			
			current_cost = Math.round(current_cost);
			current_value = Math.round(current_value);
	       	var profit = current_value - current_cost;
	       	profit = Math.round(profit);
	       
	       	str += '<tr><td>Fund</td><td>'+ current_cost.toLocaleString() +'</td><td>'+ current_value.toLocaleString() +'</td><td>'+ profit.toLocaleString() +'</td><td>'+ returns.toFixed(2) +'</td></tr>';
	       
	    },'text');
		
		if(scheme_benchmark != null && scheme_benchmark != "" && scheme_benchmark_code != '')
		{
			$.ajaxSetup({async:false});
			$.post("/mutual-funds-research/getSIPReturnsTable", {scheme_amfi_name : "" + scheme_benchmark_code + "",amount : "" + amount + "",
				frequency : "" + frequency + "",startDate : "" + startDate + "",endDate : "" + endDate + ""}, function(data)
		    {	   
					var result = $.trim(data);
					var obj = jQuery.parseJSON(result);
					var current_cost = obj.current_cost;
					var current_value = obj.current_value;
					var returns = obj.returns;
					
					current_cost = Math.round(current_cost);
					current_value = Math.round(current_value);
			       	var profit = current_value - current_cost;
			       	profit = Math.round(profit);
			       
			       	str += '<tr><td>Benchmark</td><td>'+ current_cost.toLocaleString() +'</td><td>'+ current_value.toLocaleString() +'</td><td>'+ profit.toLocaleString() +'</td><td>'+ returns.toFixed(2) +'</td></tr>';
			   
		    },'text');
		}
		else
		{
			str += '<tr><td>Benchmark</td><td>-</td><td>-</td><td>-</td></tr>';
		}
		str +='</tbody></table>';
		$("#sip_returns_table_res").html(str);
		
		
		var seriesOptions = [],
	    seriesCounter = 0,
	    names = fundArray,
	    
	    // create the chart when all data is loaded
	    createChart = function () {

	    $('#sip-gth-container').highcharts('StockChart', {
	        
	    	colors: ['#01135C','#f14141','#000000','#194d30','#8B0045','#ff0000','#804000','#000066','#00ff00','#0A9BF5','#999999','#3b0066'],
	    	
		    	rangeSelector : {
		            enabled: false
		        },
		        navigator: {
		            enabled: false
		        },
		        credits: {
		        	enabled : false,
	                text: "easternfin.com",
	                href: "https://www.easternfin.com/",
	                style: {
	                	cursor: 'pointer',
	                	color: '#264998',
	                	fontSize: '10px'
	                }
		        },
		        scrollbar : {
	                enabled : false
	            },
	            xAxis: {
					gridLineColor: "#ddd",
	            	gridLineWidth: 1,
	            	lineColor: "#ddd",
	            	tickColor: "#666"
	            },
	            yAxis: {
	            	gridLineColor: "#ddd",
	            	gridLineWidth: 1,
	            	lineColor: "#ddd",
	            	tickColor: "#666"
	            },
	            plotOptions: {
	                series: {
	                    connectNulls: true,
	                    dataGrouping: {
	                        enabled: false
	                    }
	                }
	            },
	            legend: {
	             	 enabled: true
	           },
	            tooltip: {
	                pointFormat: '<span style="color:{series.color}">{series.name}</span>: <b>{point.y}</b><br/>',
	                valueDecimals: 2,
	                xDateFormat : '%b %d, %Y'
	            },
	            series: seriesOptions,
	            chart: {
	            	events: {
	            	load: function(event) {
	            		$("#sip-gth-spinner").addClass("hidden");
	            		$("#sip-gth-container").show();            		
	            	}
	            	},
	                width : container_width,
	                backgroundColor: "#ffffff"
	            }
	        });
	    };  
	    
	    $.each(names, function (i, name) {
	    $.getJSON('/mutual-funds-research/getSIPReturnsForFundOverview?scheme_amfi_name='+encodeURIComponent(name)+"&amount="+amount+"&frequency="+frequency+"&startDate="+startDate+"&endDate="+endDate,    function (values) {
	    	seriesOptions[i] = {
	            name: fundNameArray[i],
	            data: values
	        };

	        seriesCounter += 1;

	        if (seriesCounter === names.length) {
	            createChart();
	        }
	    });
	    
	    });
	    
	    Highcharts.setOptions({
	    	global: {
	    		useUTC: false,
	    	}
	    }); 
	}
	
	function renderIssuers() 
	{
		var issuerMap = '${issuerMap}';
		issuerMap = issuerMap.replace("{", "");
		issuerMap = issuerMap.replace("}", "");
		issuerMap = issuerMap.split(",");
		var issuers_keys = new Array();
		var issuers_data = new Array();
		
		if(issuerMap != null && issuerMap != undefined && issuerMap != "")
		{
			for(var k = 0; k < issuerMap.length; k++) {
				var value = issuerMap[k];
				value = value.split("=");
				
				issuers_keys.push($.trim(value[0]));
				issuers_data.push(parseFloat($.trim(value[1])).toFixed(2));
			}
			
			var issuersChart = {
				  chart: {
					type: 'bar',
					height: 350
				  },
				  plotOptions: {
					bar: {
						barHeight: '100%',
						distributed: true,
						horizontal: true					
					}
				  },
				  colors: ['#f9a3a4', '#F6BB19','#33b2df', '#546E7A', '#d4526e', '#13d8aa',
					  		'#A5978B', '#2b908f', '#90ee7e', '#f58634', '#00a85b', '#858688'],
				  dataLabels: {
					enabled: true,
					offsetX: 40,
					formatter: function(val, opt) {
						  return  val +" %"
					  },
					  style: {
						    colors: ['#000']
						  }
				  },
				  series: [{
					data: issuers_data.slice(0, 10),
					
				  }],
				  xaxis: {
					  labels: {
				          show: true
				      },
					  categories: issuers_keys.slice(0, 10),
				  },
				  stroke: {
					  show: true,
					  width: 1,
					  colors: ['#fff']
					},
					tooltip: {
						  x: {
							title: {
							  formatter: function () {
								return ''
							  }
							}
						  },
						  y: {
							title: {
							  formatter: function () {
								return ''
							  }
							}
						  }
					  },
				  legend: {
					show: false
				  }
			};
			
			var issuers_chart = new ApexCharts(
			  document.querySelector("#issuers-container"),
			  issuersChart
			);
			issuers_chart.render();
		} else {
			$("#issuers-container").html("<div style='font-size:12px'>Issuers data not available for this scheme</div>");	
		}
		issuersLoaded = 1;
	}

	function renderAssets() 
	{
		var assetMap = '${assetMap}';
		
		assetMap = assetMap.replace("{", "");
		assetMap = assetMap.replace("}", "");
		assetMap = assetMap.split(",");
		var assets_keys = new Array();
		var assets_data = new Array();
		
		if(assetMap != null && assetMap != undefined && assetMap != "")
		{
			for(var k = 0; k < assetMap.length; k++) {
				var value = assetMap[k];
				value = value.split("=");
				
				assets_keys.push($.trim(value[0]));
				assets_data.push(parseFloat($.trim(value[1])).toFixed(2));
			}
			
			var assetsCharts = {
					  chart: {
						type: 'bar',
						height: 220
					  },
					  plotOptions: {
						bar: {
							barHeight: '100%',
							distributed: true,
							horizontal: true					
						}
					  },
					  colors: ['#f9a3a4', '#F6BB19','#33b2df', '#546E7A', '#d4526e', '#13d8aa',
						  		'#A5978B', '#2b908f',  '#90ee7e', '#f58634', '#00a85b', '#858688'],
					  dataLabels: {
						enabled: true,
						offsetX: 40,
						formatter: function(val, opt) {
							  return  val +" %"
						  },
						  style: {
							    colors: ['#000']
							  }
					  },
					  series: [{
						data: assets_data.slice(0, 5),
						
					  }],
					  xaxis: {
						categories: assets_keys.slice(0, 5),
					  },
					  stroke: {
						  show: true,
						  width: 1,
						  colors: ['#fff']
						},
						tooltip: {
							  x: {
								title: {
								  formatter: function () {
									return ''
								  }
								}
							  },
							  y: {
								title: {
								  formatter: function () {
									return ''
								  }
								}
							  }
						  },
					  legend: {
						show: false
					  }
				};
				
				var assets_chart = new ApexCharts(
				  document.querySelector("#assets-container"),
				  assetsCharts
				);
				assets_chart.render();
		} else {
			$("#assets-container").html("<div style='font-size:12px'> Asset type not available for this scheme </div>");	
		}
		
	}

	function renderRatings() 
	{
		var ratingMap = '${ratingMap}';
		
		ratingMap = ratingMap.replace("{", "");
		ratingMap = ratingMap.replace("}", "");
		ratingMap = ratingMap.split(",");
		var ratings_data = new Array();
		var ratings_keys = new Array();
		
		/* if(ratingMap != null && ratingMap != undefined && ratingMap != "")
		{
			for(var k = 0; k < ratingMap.length; k++) {
				var value = ratingMap[k];
				value = value.split("=");
				
				ratings_keys.push($.trim(value[0]));
				ratings_data.push(parseFloat($.trim(value[1])).toFixed(2));
			}
			
			var ratingsChart = {
					  chart: {
						type: 'bar',
						height: 120
					  },
					  plotOptions: {
						bar: {
							barHeight: '100%',
							distributed: true,
							horizontal: true					
						}
					  },
					  colors: ['#01135c', '#F6BB19','#33b2df', '#546E7A', '#d4526e', '#13d8aa',
						  		'#A5978B', '#2b908f', '#f9a3a4', '#90ee7e', '#f58634', '#00a85b', '#858688'],
					  dataLabels: {
						enabled: true,
						formatter: function(val, opt) {
							  return  val +" %"
						  },
						  style: {
							    colors: ['#fff']
							  }
					  },
					  series: [{
						data: ratings_data.slice(0, 10),
						
					  }],
					  xaxis: {
						categories: ratings_keys.slice(0, 10),
					  },
					  stroke: {
						  show: true,
						  width: 1,
						  colors: ['#fff']
						},
						tooltip: {
							  x: {
								title: {
								  formatter: function () {
									return ''
								  }
								}
							  },
							  y: {
								title: {
								  formatter: function () {
									return ''
								  }
								}
							  }
						  },
					  legend: {
						show: false
					  }
				};
				
				var ratings_chart = new ApexCharts(
				  document.querySelector("#ratings_container"),
				  ratingsChart
				);
				ratings_chart.render();
		} else {
			$("#ratings_container").html("<div style='font-size:12px'> Credit Qulaity not available for this scheme</div>");	
		}	 */	
	}
	
	function renderHoldings() 
	{
		var scheme_amfi = '${scheme}';
		var holding_value_array = new Array();
		$.ajaxSetup({async : false});
		$.post("/mutual-funds-research/getPortfolioAnalysis",{scheme_amfi : scheme_amfi}, function(data) {
			
			var result = $.trim(data);
			var obj = jQuery.parseJSON(result);
			var scheme_asset = obj.schemeAssets;
			var schemePortfolioAnalysisResponse = obj.schemePortfolioAnalysisResponse;
			var schemePortfolioList_array = $.makeArray(schemePortfolioAnalysisResponse.schemePortfolioList);
			var assetAllocationMap = schemePortfolioAnalysisResponse.assetAllocationMap;
			
			if(assetAllocationMap != null && assetAllocationMap != undefined && assetAllocationMap != "")
			{
				var asset_data = new Array();
				var asset_keys = new Array();
				
				var seriesOptions = [];
				var i = 0;
				for(var key in assetAllocationMap) {
					var value = assetAllocationMap[key];
					var keyValue = new Array();
					asset_keys.push(key);
					asset_data.push(parseFloat(value.toFixed(2)));
								
				}	
				
				var assetChart = {
						  chart: {
							type: 'bar',
							height: 180
						  },
						  plotOptions: {
							bar: {
								barHeight: '100%',
								distributed: true,
								horizontal: true					
							}
						  },
						  colors: ['#f9a3a4', '#F6BB19','#33b2df', '#546E7A', '#d4526e', '#13d8aa',
							  		'#A5978B', '#2b908f', '#90ee7e', '#f58634', '#00a85b', '#858688'],
						  dataLabels: {
							enabled: true,
							offsetX: 40,
							formatter: function(val, opt) {
								  return  val +" %"
							  },
							  style: {
								    colors: ['#000']
								  }
						  },
						  series: [{
							data: asset_data,
							
						  }],
						  xaxis: {
							categories: asset_keys,
						  },
						  stroke: {
							  show: true,
							  width: 1,
							  colors: ['#fff']
							},
							tooltip: {
								  x: {
									title: {
									  formatter: function () {
										return ''
									  }
									}
								  },
								  y: {
									title: {
									  formatter: function () {
										return ''
									  }
									}
								  }
							  },
						  legend: {
							show: false
						  }
					};
					
					var asset_chart = new ApexCharts(
					  document.querySelector("#asset-allocation-chart"),
					  assetChart
					);
					asset_chart.render();
			} else {
				$('#asset-allocation-chart').html("<b>Asset allocation Not Available</b>");
			}
			
			var holdings_data = new Array();
			var holdings_keys = new Array();
			for (var i = 0; i < schemePortfolioList_array.length ; i++) {
			    holdings_keys.push(schemePortfolioList_array[i].instrument);
				holdings_data.push(parseFloat(schemePortfolioList_array[i].holdings).toFixed(2));
			}
			
			/* if (total_holdings < 100) {
				var holding_others = 100 - total_holdings;
				var arr = new Array();
				arr.push("Others");
				arr.push(holding_others);
				holding_value_array.push(arr);
			} */

			var holdingsChart = {
				  chart: {
					type: 'bar',
					height: 350
				  },
				  plotOptions: {
					bar: {
						barHeight: '100%',
						distributed: true,
						horizontal: true					
					}
				  },
				  colors: ['#f9a3a4', '#F6BB19','#33b2df', '#546E7A', '#d4526e', '#13d8aa',
					  		'#A5978B', '#2b908f', '#90ee7e', '#f58634', '#00a85b', '#858688'],
				  dataLabels: {
					enabled: true,
					offsetX: 40,
					formatter: function(val, opt) {
						  return  val +" %"
					  },
					  style: {
						    colors: ['#000']
						  }
				  },
				  series: [{
					data: holdings_data.slice(0, 10),
					
				  }],
				  xaxis: {
					categories: holdings_keys.slice(0, 10),
				  },
				  stroke: {
					  show: true,
					  width: 1,
					  colors: ['#fff']
					},
					tooltip: {
						  x: {
							title: {
							  formatter: function () {
								return ''
							  }
							}
						  },
						  y: {
							title: {
							  formatter: function () {
								return ''
							  }
							}
						  }
					  },
				  legend: {
					show: false
				  }
			};
			
			var holdings_chart = new ApexCharts(
			  document.querySelector("#top-10-holdings-allocation-container"),
			  holdingsChart
			);
			holdings_chart.render();
			
			
		}, 'text');
	}
	
	function getRelatedFunds() 
	{
		var  str = "";
		str += '<table class="table table-striped" style="border: none;"><thead><tr>';
		str +='<th class="text-left">Fund Name</th>';
	    str +='<th class="text-center">5-Year Return</th>';
		str +='</tr></thead><tbody>';
		
		$.ajaxSetup({async:false});
		$.post("/mutual-funds-research/getRelatedfunds", {category:"" + '${schemeMapping.scheme_advisorkhoj_category}'}, function(data)
	    {	
			var schemePerformances = $.trim(data);
			var schemePerformances_obj = jQuery.parseJSON(schemePerformances);
			var schemePerformances_array = $.makeArray(schemePerformances_obj);
			for (var i = 0; i < schemePerformances_array.length ; i++)
		    {
				var scheme_name = schemePerformances_array[i].scheme_amfi;
				var scheme_amfi_url = schemePerformances_array[i].scheme_amfi_url;
		    	var three_year_returns = schemePerformances_array[i].returns_cmp_5year;
		    	
		    	three_year_returns = three_year_returns.toFixed(2);
		    	str +='<tr><td class="text-left"><a class="blue-color" href="/mutual-funds-research/'+scheme_amfi_url+'">'+scheme_name+'</a></td>';
		    	str +='<td class="text-center">'+three_year_returns+' %</td></tr>';
		    }
	    },'text');
		
		str +='</tbody></table>';
		
		$('#related_funds_table').html(str);
	}
</script>
