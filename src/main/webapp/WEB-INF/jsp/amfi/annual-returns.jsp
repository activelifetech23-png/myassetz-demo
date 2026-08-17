<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    


<style>
.card-header {
    padding: 0.75rem 1.25rem;
}
.form-control { 
    font-size: 13px;
}
.table > thead > tr > th, .table > tbody > tr > td {   
    font-size: 12px;
    border: 1px solid #d8d8d8;
}
.clear{
	clear:both;
}
tr.odd td.sorting_1, tr.even td.sorting_1 {
    background-color: #EBF5FB;
}
#tbl_scheme_returns tfoot tr td{
	background-color: #d9f6f9;
	font-weight: bold;
	font-size: 12px;
	color:#333;
}
 td a {
     color: #333;
    text-decoration: none;
}

.card{
	padding:20px;
	border-radius:0px;
}
.marginBottom20{
	margin-bottom:20px;
}
.btn-primary{
	padding:7px 15px;
	background-color: #003399;
}
label{
	font-size: 12px !important;
	font-weight: 600;
}
#tbl_scheme_returns thead tr th{
	border:1px solid #eee;
	background-color:#9f332f;
	color:#fff;
}
.table{
	border-collapse: collapse;
}
.marginbottom10{
margin-bottom:10px;
}
table.dataTable tfoot th, table.dataTable tfoot td {
    border: 1px solid #d8d8d8;
}

.card-header {
    background-color: #9f332f;
    color: #fff;
}
.dataTables_wrapper .dataTables_filter input {
    border: 1px solid #aaa;
    border-radius: 3px;
    padding: 5px;
    background-color: transparent;
    margin-left: 3px;
}
.dataTables_wrapper .dataTables_length select {
    border: 1px solid #aaa;
    border-radius: 3px;
    padding: 5px;
    background-color: transparent;
    padding: 4px;
}
.form-control {
    font-size: 14px;
    height: 45px;
    padding: 0 20px;
    background-color: #ffffff;
    border: 2px solid #e6e8eb;
    width: 100%;
    height: 45px;
    border-radius: 10px;
}
.btn {
    height: 45px;
}
.form-group {
    margin-bottom: 0px;
}
.paginate_button {
    position: relative;
    display: block;
    color: #03c;
    background-color: #ffffff;
    border: 1px solid #e2e8f0 !important;
    transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}
.paginate_button {
    padding: 0.375rem 0.75rem !important;
}
.btn-submit{
	background-color: #003399;
	border:1px solid #003399;
}
.btn-submit:hover{
	color: #fff;
    background-color: #29d359;
    border-color: #29d359;
}
.title_header{
    color: #000 !important;
}
</style>

<script>
var period = "";
$(document).ready(function(){

	period = '${period}';
	
	var period_sort = 4;
	if(period == "1y" || period == "1w")
	{
		period_sort = 4;
	}
	if(period == "3y" || period == "1m")
	{
		period_sort = 5;
	}
	if(period == "5y" || period == "3m")
	{
		period_sort = 6;
	}
	if(period == "10y" || period == "6m")
	{
		period_sort = 7;
	}
	if(period == "Since Inception" || period == "ytd")
	{
		period_sort = 8;
	}
	
	var current_year = new Date().getFullYear();
	$(".th_yr_1").html(current_year);
	$(".th_yr_2").html((current_year-1));
	$(".th_yr_3").html((current_year-2));
	$(".th_yr_4").html((current_year-3));
	$(".th_yr_5").html((current_year-4));
	
	$('#tbl_scheme_returns').dataTable({
		"pageLength": 10,
		"bPaginate": true,
		"bFilter": true,
		"bInfo": true,
		"bSort": true,
		"aoColumnDefs": [
		{ 'bSortable': false, 'aTargets': [ 1 ] }
		],
		 fixedHeader: {
	            headerOffset: 70
	        },
		"columns": [
			{ "width": "35%" },
			{ "width": "10%", className: "text-center" },
			{ "width": "5%", className: "text-center"},
			{ "width": "10%", className: "text-center" },
			{ "width": "8%", className: "text-center" },
			{ "width": "8%", className: "text-center" },
			{ "width": "8%", className: "text-center" },
			{ "width": "8%", className: "text-center" },
			{ "width": "8%", className: "text-center" }
			],
        "initComplete": function(settings, json) {
            <c:if test="${fn:contains(header['User-Agent'],'Mobile')}">
            var table = settings.oInstance.api();
            setTimeout(function(){
         	  table.rows(':not(.parent)').nodes().to$().find('td:first-child').trigger('click');
            }, 1000);
            </c:if>
        }
	}).fnSort([period_sort,'desc']);

	$('#tbl_scheme_returns').on( 'draw.dt', function (e, settings) {
		<c:if test="${fn:contains(header['User-Agent'],'Mobile')}">
		var table = settings.oInstance.api();
		 setTimeout(function(){
		    table.rows(':not(.parent)').nodes().to$().find('td:first-child').trigger('click');
		 }, 1000);
		</c:if>
	});
	
	$(".comma_fixed").each(function() {
		$(this).html(numbersWithComma(parseFloat($(this).html()).toFixed(0)));  
	});
	
	$(".units_comma_fixed").each(function() {
		$(this).html(numbersWithComma(parseFloat($(this).html()).toFixed(2)));  
	});
	
});

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
function categoryChanged()
{
	var category = $.trim($("#sel_schemeCategories").val());
	if(category == "Debt: Liquid")
	{
		$("#sel_period").val("3m");
		$('#sel_period').selectpicker('refresh');
	}else if(category == "Hybrid: Arbitrage" || category == "Debt: Ultra Short Duration")
	{
		$("#sel_period").val("6m");
		//$('#sel_period').selectpicker('refresh');
	}else{
		$("#sel_period").val("1y");
		//$('#sel_period').selectpicker('refresh');
	}
}
function getData()
{
	var category = $.trim($("#sel_schemeCategories").val());
	
	var period = $.trim($("#sel_period").val());
	var type = $.trim($("#sel_type").val());
	var mode = "Growth";

	top.location = "/mutual-funds-research/mutual-fund-annual-returns/"+category;
}

function saveResult() 
{	
	var category = $.trim($("#sel_schemeCategories").val());
	var period = $("#sel_period :selected").text();
	var type = $.trim($("#sel_type").val());

	var accountMap = '${accountMap}';
	var title = "Top Performing Mutual Funds -> Category = " + category + ", Period = " + period + ", Type = " + type + " Ended";
	var url = window.location;

	if(accountMap == undefined || accountMap == null || accountMap == "" || accountMap == "null")
	{
		advisorkhoj_result_title = title;
		advisorkhoj_result_url = window.location.href;
	
		$("#adv-contact-advisor-signin-signup").modal("show");
	}
	else
	{
		saveUserResult("MF Tools",title, url);
	}
}

</script>
<!-- 
 <div class="main-content">
 	Section: inner-header
    <section class="inner-header divider parallax layer-overlay overlay-dark-5" data-bg-img="/images/bg/slide1.jpg">
      <div class="container pt-120 pb-20">
        Section Content
        <div class="section-content">
          <div class="row">
            <div class="col-md-12">
              <h2 class="title text-white">Mutual Fund Annual Returns</h2>
              <ol class="breadcrumb text-left text-black mt-10">
                <li><a href="#">Home</a></li>
                <li><a href="#">Mutual Funds Research</a></li>
                <li class="active text-gray-silver">Mutual Fund Annual Returns</li>
              </ol>
            </div>
          </div>
        </div>
      </div>
    </section> -->
    
    
    
        <section class="" style="background: 50% 0px rgb(163 163 163 / 16%);">
      <div class="container pt-120 pb-20">
        <!-- Section Content -->
        <div class="section-content">
          <div class="row text-center">
            <div class="col-md-12">
              <h2 class="title text-dark">Mutual Fund Annual Returns</h2>
              <ol class="breadcrumb text-black mt-10">
                <li><a href="#" class="title_header">Home</a></li>
                <li><a href="#" class="title_header">Mutual Funds Research</a></li>
                <li class="active">Mutual Fund Annual Returns</li>
              </ol>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    
     <section class="section bg-lighter mb-2">
		<div class="container">
		   <div class="row justify-content-lg-between">
		   		<div class="container container service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
   <h6 class="card-header mf-research-header font-18">
      <c:choose>
	  	<c:when test="${empty category_url}">
	  		Mutual Fund Annual Returns
	  	</c:when>
	  	<c:otherwise>
	  		Mutual Fund Annual Returns - ${category_name}
	  	</c:otherwise>
	  	</c:choose>
   </h6>
   <div class="card-body mf-research-body">
		<div class="row">
			   <div class="col-md-4 col-sm-5 col-xs-12">
			      <div class="form-group">
			         <label class="bold-smaller">Select Category</label>
			         <select id="sel_schemeCategories" class="form-control" onchange="categoryChanged()">
			            <c:forEach var="cat" items="${schemeCategories}" varStatus="status">
			               <c:choose>
			                  <c:when test="${cat eq category_name}">
			                     <option selected="selected" value="${cat}">${cat}</option>
			                  </c:when>
			                  <c:otherwise>
			                     <option value="${cat}">${cat}</option>
			                  </c:otherwise>
			               </c:choose>
			            </c:forEach>
			         </select>
			      </div>
			   </div>
			   <div class="col-md-2 col-sm-2 col-xs-12 justify-content-end align-self-end">
			      <div class="form-group">
			         <label class="bold block hidden-xs">&nbsp;</label>
			         <br/>
			         <a href="javascript:void(0)" class="btn btn-primary btn-submit" onclick="getData()">Submit</a>
				      </div>
				   </div>
				</div>
</div>
</div>
		
	<div class="container container service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
		<div class="row marginBottom20">
			<div class="col-md-12 table-responsive">
					       		<table class="adv-table table table-striped table-bordered table-responsive mf-research-table" style="width:100%" id="tbl_scheme_returns">
						<thead>
							
						<c:choose>
						<c:when test="${fn:contains(header['User-Agent'],'Mobile')}">
						    
						    <tr>
							<th data-priority="1">Scheme Name</th>
							<c:if test="${category eq 'All Equity' || category eq 'All Debt' || category eq 'All Hybrid' || category eq 'Exchange Traded Funds'}">
							<th>Category</th>
							</c:if>
							<th>Launch Date</th>
							<th>AUM (Crore)</th>
							<c:choose>
							<c:when test="${category eq 'All Equity' || category eq 'All Debt' || category eq 'All Hybrid' || category eq 'Exchange Traded Funds'}">
							</c:when>
							<c:otherwise>
							<th>Expense Ratio (%)</th>
							</c:otherwise>
							</c:choose>
							<th data-priority="2" class="th_yr_1">2020 (%)</th>
							<th data-priority="3" class="th_yr_2">2019 (%)</th>
							<th data-priority="4" class="th_yr_3">2018 (%)</th>
							<th data-priority="5" class="th_yr_4">2017 (%)</th>
							<th data-priority="6" class="th_yr_5">2016 (%)</th>
							</tr>
							
						</c:when>
						<c:otherwise>
							
							<tr>
							<th rowspan="2">Scheme Name</th>
							<c:if test="${category eq 'All Equity' || category eq 'All Debt' || category eq 'All Hybrid' || category eq 'Exchange Traded Funds'}">
							<th rowspan="2">Category</th>
							</c:if>
							<th rowspan="2">Launch Date</th>
							<th rowspan="2">AUM (Crore)</th>
							<c:choose>
							<c:when test="${category eq 'All Equity' || category eq 'All Debt' || category eq 'All Hybrid' || category eq 'Exchange Traded Funds'}">
							</c:when>
							<c:otherwise>
							<th rowspan="2">Expense Ratio (%)</th>
							</c:otherwise>
							</c:choose>
							<th colspan="6" style="text-align:center">Returns as on - ${nav_date}&nbsp; in %</th>
							</tr>
							<tr>	
								<th class="th_yr_1">2020 </th>
								<th class="th_yr_2">2019 </th>
								<th class="th_yr_3">2018 </th>
								<th class="th_yr_4">2017 </th>
								<th class="th_yr_5">2016 </th>
							</tr>
										            
						</c:otherwise>
						</c:choose>

						</thead>
						<tbody>
							<c:forEach items="${schemePerformances}" var="schemePerformances">	
							<tr>
								<td>
								<a href='/mutual-funds-research/fund-card?scheme=<c:out value="${schemePerformances.scheme_amfi}"></c:out>' class="mutual-funds-anchor"><c:out value="${schemePerformances.scheme_amfi}"></c:out></a> 
								</td>
								<c:if test="${category eq 'All Equity' || category eq 'All Debt' || category eq 'All Hybrid' || category eq 'Exchange Traded Funds'}">
								<td><c:out value="${schemePerformances.scheme_category}"></c:out></td>
								</c:if>
								<td><fmt:formatDate pattern="dd-MM-yyyy" value="${schemePerformances.inception_date}" /></td>
								<td class="units_comma_fixed">${schemePerformances.scheme_assets}</td>
								<c:choose>
								<c:when test="${category eq 'All Equity' || category eq 'All Debt' || category eq 'All Hybrid' || category eq 'Exchange Traded Funds'}">
								</c:when>
								<c:otherwise>
								<td><c:out value="${schemePerformances.ter}"></c:out></td>
								</c:otherwise>
								</c:choose>
								<td><c:out value="${schemePerformances.returns_abs_ytd eq 0 ? '-': schemePerformances.returns_abs_ytd}"></c:out></td>
								<td><c:out value="${schemePerformances.returns_abs_2016 eq 0 ? '-': schemePerformances.returns_abs_2016}"></c:out></td>
								<td><c:out value="${schemePerformances.returns_abs_2015 eq 0 ? '-': schemePerformances.returns_abs_2015}"></c:out></td>
								<td><c:out value="${schemePerformances.returns_abs_2014 eq 0 ? '-': schemePerformances.returns_abs_2014}"></c:out></td>
								<td><c:out value="${schemePerformances.returns_abs_2013 eq 0 ? '-': schemePerformances.returns_abs_2013}"></c:out></td>
							</tr>
							</c:forEach>
						</tbody>
						
						<c:if test="${fn:indexOf(header['User-Agent'],'Mobile')  == -1}">
						<tfoot> 
						<c:if test="${category_returns != null}">
							<tr>
							<td><c:out value="${category_name}"></c:out></td>
							<td>-</td>
							<td>-</td>
							<td>-</td>
							
							<td><c:out value="${category_returns.returns_abs_ytd eq 0 ? '-': category_returns.returns_abs_ytd}"></c:out></td>
							<td><c:out value="${category_returns.returns_abs_2016 eq 0 ? '-': category_returns.returns_abs_2016}"></c:out></td>
							<td><c:out value="${category_returns.returns_abs_2015 eq 0 ? '-': category_returns.returns_abs_2015}"></c:out></td>
							<td><c:out value="${category_returns.returns_abs_2014 eq 0 ? '-': category_returns.returns_abs_2014}"></c:out></td>
							<td><c:out value="${category_returns.returns_abs_2013 eq 0 ? '-': category_returns.returns_abs_2013}"></c:out></td>
	
							</tr> 
						</c:if>
						<c:if test="${benchmark_returns != null}">
						<tr>
							<td class="text-left"><c:out value="${benchmark_returns.benchmark_name}"></c:out></td>
							<td class="text-center">-</td>
							<td class="text-center">-</td>
							<td class="text-center">-</td>
							
							<td class="text-center"><c:out value="${benchmark_returns.returns_abs_ytd eq 0 ? '-': benchmark_returns.returns_abs_ytd}"></c:out></td>
							<td class="text-center"><c:out value="${benchmark_returns.returns_abs_2016 eq 0 ? '-': benchmark_returns.returns_abs_2016}"></c:out></td>
							<td class="text-center"><c:out value="${benchmark_returns.returns_abs_2015 eq 0 ? '-': benchmark_returns.returns_abs_2015}"></c:out></td>
							<td class="text-center"><c:out value="${benchmark_returns.returns_abs_2014 eq 0 ? '-': benchmark_returns.returns_abs_2014}"></c:out></td>
							<td class="text-center"><c:out value="${benchmark_returns.returns_abs_2013 eq 0 ? '-': benchmark_returns.returns_abs_2013}"></c:out></td>
						</tr>
						</c:if>
						</tfoot>
						</c:if>
						
						</table>
			</div>
		</div>
		

				
	</div>
		   </div>
		</div>
	</section>
    
 </div>