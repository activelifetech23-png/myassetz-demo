<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    

<!-- <style type="text/css">
.mf_content{
	margin-top: 50px;
    margin-bottom: 50px;
}

.row {
    margin-top: 0px;
}
#div_fund_2,#div_fund_3,#div_fund_4,#div_fund_5{
	display:none;
}
#transaction_details table tfoot tr td{
	background-color: #ffd;
	font-weight: bold;
	font-size: 12px;
}
.form-control { 
    font-size: 12px;
}
.marginTop20
{
    margin-top: 20px;
}
.marginTop29{
	margin-top: 29px;
}
.marginbottom20
{
margin-bottom:20px;
}
.clear{
	clear:both;
}
.font-size-18
{
font-size:18px;
}
.marginTop0
{
	margin-top: 0;
}
.bold
{
	font-weight:bold;
}

.btn{
	padding: 5px 12px;
}
.panel-default .table > thead > tr > th {
	font-size: 12px;
}
.table > tbody > tr > td {   
    font-size: 12px;
}
.table-colored > .theadBody{
	background-color:#28395ed6;
	color:#fff;
}

label{
	margin-left: 0px !important;
	 font-size: 12px !important;
     font-weight: 600;
}

.mleft{
margin-left: -15px;
}

.clear{
	clear:both;
}

.col-md-12.col-sm-12.mleft {
    background-color: #ffe9ab;
}

body {
 font-size: 15px !important;
}

.form-control
{
	font-size: 12px;
	height: auto;
    border-radius: 5px;
}
.tabContainer
{
background: #ffe9ab;
}

.table thead tr th {
    border: 1px solid #eee;
    background-color: #9f332f;
    color: #fff;
}
.table > thead > tr > th, .table > tbody > tr > td {   
    font-size: 12px;
}
.table-foot {
    background-color: #d9f6f9;
    font-weight: bold;
    font-size: 12px;
    color: #000;
}
.card{
	padding:20px;
	border-radius:0px;
}

.card-header {
    background-color: #9f332f;
    color: #fff;
    padding: 0.75rem 1.25rem
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
    border-radius: 10px !important;
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

@media (max-width: 768px) {
	.btn {
	    margin-left: 70px !important;
	}
	.section {
    padding-top: 3rem;
    padding-bottom: 3rem;
    margin: -45px 0 0 0;
}

.btn-submit{
	background-color: #9c5553;
	border:1px solid #9c5553;
}
.btn-submit:hover{
	color: #fff;
    background-color: #29d359;
    border-color: #29d359;
}
.header_color{
 background: 50% 0px rgb(163 163 163 / 16%) !important;
}
td a {
     color: #333 !important;
    text-decoration: none;
}

.breadcrumb > li + li::before {
    content: "\f22d" !important;
    font-family: fontawesome;
    font-size: 9px;
}
.breadcrumb>li+li:before {
    padding: 0 5px;
    color: #000 !important;
    content: "/\00a0";
}
	.title_header{
    color: #000 !important;
}
</style> -->


<style>
	.page-heading {
	    padding-top: 8rem;
	    padding-bottom: 2rem;
	}
	.card-header {
		padding: 0.75rem 1.25rem
	}
</style>
<style>
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
.theadBody {
    background-color: #9f332f!important;
    color: #fff!important;
    font-size: 11px;
    font-weight: bold;
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
.service-box:after {
    background: #9c5553;
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
	background-color: #9c5553;
	border:1px solid #9c5553;
}
.btn-submit:hover{
	color: #fff;
    background-color: #29d359;
    border-color: #29d359;
}
.header_color{
 background: 50% 0px rgb(163 163 163 / 16%) !important;
}
.breadcrumb > li + li::before {
    content: "\f22d" !important;
    font-family: fontawesome;
    font-size: 9px;
}
.breadcrumb>li+li:before {
    padding: 0 5px;
    color: #000 !important;
    content: "/\00a0";
}
.title_header{
    color: #000 !important;
}
</style>
<script>

$(document).ready(function(){
	initializeTypeAhead();
	
	var fund = '${fund}';
	if(fund != "")
	{
		var fund_array = fund.split(",");
		for(var k=0;k<fund_array.length;k++)
		{
			var fund_name = fund_array[k];
			
			if(k == 0)
			{
				$("#txt_fund1").val(fund_name);
			}
			if(k == 1)
			{
				$("#more_funds_div_1").hide();
				$("#div_fund_2").show();
				$("#txt_fund2").val(fund_name);
			}
			if(k == 2)
			{
				$("#more_funds_div_2").hide();
				$("#div_fund_3").show();
				$("#txt_fund3").val(fund_name);
			}
			if(k == 3)
			{
				$("#more_funds_div_3").hide();
				$("#div_fund_4").show();
				$("#txt_fund4").val(fund_name);
			}
			if(k == 4)
			{
				$("#more_funds_div_4").hide();
				$("#div_fund_5").show();
				$("#txt_fund5").val(fund_name);
			}
		}
	}
	
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

function initializeTypeAhead()
{	
	$('.txt_fund').typeahead({
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
	            	category: $("#sel_schemeCategories").val()
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

function getData()
{
	var fundname1 = $("#txt_fund1").val();
	var fundname2 = $("#txt_fund2").val();
	var fundname3 = $("#txt_fund3").val();
	var fundname4 = $("#txt_fund4").val();
	var fundname5 = $("#txt_fund5").val();
	var category = $("#sel_schemeCategories").val();
	var fund_array = new Array();
	
	if(fundname1 == "")
	{
		swal({title:"",text:"Please enter value for fund 1"});
		return;
	}else{
		fundname1 = encodeURIComponent(fundname1);
		fund_array.push(fundname1);
	}
	if(fundname2 != "")
	{
		fundname2 = encodeURIComponent(fundname2);
		fund_array.push(fundname2);
	}
	if(fundname3 != "")
	{
		fundname3 = encodeURIComponent(fundname3);
		fund_array.push(fundname3);
	}
	if(fundname4 != "")
	{
		fundname4 = encodeURIComponent(fundname4);
		fund_array.push(fundname4);
	}
	if(fundname5 != "")
	{
		fundname5 = encodeURIComponent(fundname5);
		fund_array.push(fundname5);
	}
	top.location =  "/mutual-funds-research/mutual-funds-performance-comparison?fund="+fund_array+"&category="+category;
}

function addMoreFund(count)
{
	var fundname1 = $("#txt_fund1").val();
	if(fundname1 == "")
	{
		swal({title:"",text:"Enter an value for Fund 1"});
		return;
	}
	if($("#div_fund_2").is(':visible'))
	{
		var fundname2 = $("#txt_fund2").val();
		if(fundname2 == "")
		{
			swal({title:"",text:"Enter an value for Fund 2"});
			return;
		}
	}
	if($("#div_fund_3").is(':visible'))
	{
		var fundname3 = $("#txt_fund3").val();
		if(fundname3 == "")
		{
			swal({title:"",text:"Enter an value for Fund 3"});
			return;
		}
	}
	if($("#div_fund_4").is(':visible'))
	{
		var fundname4 = $("#txt_fund4").val();
		if(fundname4 == "")
		{
			swal({title:"",text:"Enter an value for Fund 4"});
			return;
		}
	}
	if($("#div_fund_5").is(':visible'))
	{
		var fundname5 = $("#txt_fund5").val();
		if(fundname5 == "")
		{
			swal({title:"",text:"Enter an value for Fund 5"});
			return;
		}
	}
	
	if(count == 1)
	{
		$("#more_funds_div_1").hide();
		$("#div_fund_2").show();
	}else if(count == 2)
	{
		$("#more_funds_div_2").hide();
		$("#div_fund_3").show();
	}else if(count == 3)
	{
		$("#more_funds_div_3").hide();
		$("#div_fund_4").show();
	}else if(count == 4)
	{
		$("#more_funds_div_4").hide();
		$("#div_fund_5").show();
	}
}
function removeMoreFund(count)
{
	if(count == 2)
	{
		$("#more_funds_div_1").show();
		$("#div_fund_2").hide();
		$("#txt_fund2").val("");
	}else if(count == 3)
	{
		$("#more_funds_div_2").show();
		$("#div_fund_3").hide();
		$("#txt_fund3").val("");
	}else if(count == 4)
	{
		$("#more_funds_div_3").show();
		$("#div_fund_4").hide();
		$("#txt_fund4").val("");
	}else if(count == 5)
	{
		$("#more_funds_div_4").show();
		$("#div_fund_5").hide();
		$("#txt_fund5").val("");
	}
	
     if($("#transaction_details").is(":visible"))
   	 {
    	 getData();
   	 }
}

function downloadXl()
{
	var fundname1 = $("#txt_fund1").val();
	var fundname2 = $("#txt_fund2").val();
	var fundname3 = $("#txt_fund3").val();
	var fundname4 = $("#txt_fund4").val();
	var fundname5 = $("#txt_fund5").val();
	var category = $("#sel_schemeCategories").val();
	var fund_array = new Array();
	
	if(fundname1 == "")
	{
		swal({title:"",text:"Please enter value for fund 1"});
		return;
	}else{
		fundname1 = encodeURIComponent(fundname1);
		fund_array.push(fundname1);
	}
	if(fundname2 != "")
	{
		fundname2 = encodeURIComponent(fundname2);
		fund_array.push(fundname2);
	}
	if(fundname3 != "")
	{
		fundname3 = encodeURIComponent(fundname3);
		fund_array.push(fundname3);
	}
	if(fundname4 != "")
	{
		fundname4 = encodeURIComponent(fundname4);
		fund_array.push(fundname4);
	}
	if(fundname5 != "")
	{
		fundname5 = encodeURIComponent(fundname5);
		fund_array.push(fundname5);
	}
	
	$.ajaxSetup({async:true});
    $.post("/mutual-funds-research/checkDownloadCount", function(data)
    {
		var result = $.trim(data);
		var obj = jQuery.parseJSON(result);	
		
		if(obj.status == "200")
		{
			top.location =  "/mutual-funds-research/downloadMutualFundsPerformanceComparisonXl?fund="+fund_array+"&category="+category;
		}else
		{
			swal("OOPS!", obj.msg, "error");
			return false;
		}	
    }, "text");
}
function openLogin()
{
	$("#research_login_model").modal('show');
}
</script>

 <div class="main-content">
 
  <section class="header_color">
      <div class="container pt-120 pb-20">
        <!-- Section Content -->
        <div class="section-content">
          <div class="row text-center">
            <div class="col-md-12">
              <h2 class="title text-dark">Mutual Fund Performance Comparison</h2>
              <ol class="breadcrumb text-black mt-10">
                <li><a href="#" class="title_header">Home</a></li>
                <li><a href="#" class="title_header">Mutual Funds Research</a></li>
                <li class="active">Mutual Fund Performance Comparison</li>
              </ol>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <section class="section bg-lighter mb-2">
		<div class="container">
		   <div class="row justify-content-lg-between">
		   
		   		<div class="container service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
			   <h6 class="card-header mf-research-header">
			     Mutual Fund Performance Comparison
			   </h6>
			   <div class="card-body mf-research-body">
					<div class="row marginBottom30">
						<div class="col-md-3 col-sm-3 marginBottom10">
							<div class="form-group">
								<label class="no-bold">Select Category</label>
								<select id="sel_schemeCategories" class="form-control form-select">
									<option value="All">All</option>
									<c:forEach var="cat" items="${schemeCategories}" varStatus="status">
										<c:choose>
											<c:when test="${cat eq category}">
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
						<div class="col-md-3 col-sm-3 marginBottom10" id="div_fund_1">
							<div class="form-group fund">
								<label class="no-bold">Fund 1</label>
								<input id="txt_fund1" type="text" value="ICICI Prudential Value Discovery Fund - Growth" class="txt_fund form-control no-radius input-sm">
							</div>
							<div class="form-group mt-1" id="more_funds_div_1">
								<a href="javascript:void(0);" class="stepsAddmore" onclick="addMoreFund(1)"><i class="fa fa-plus-square marginRight10 font-14"></i> Add another fund (upto 4)</a>
							</div>
						</div>
						<div class="col-md-3 col-sm-3 marginBottom10" id="div_fund_2">
							<div class="form-group fund">
								<label class="no-bold">Fund 2</label>
								<div class="input-group">
									<input id="txt_fund2" type="text" class="txt_fund form-control input-sm">
									<span class="input-group-addon" style="cursor:pointer;"  onclick="removeMoreFund(2)"><i class="fa fa-close font-14"></i></span>
								</div>
							</div>
							<div class="form-group mt-1" id="more_funds_div_2">
								<a href="javascript:void(0);" class="stepsAddmore" onclick="addMoreFund(2)"><i class="fa fa-plus-square marginRight10 font-14"></i> Add another fund (upto 3)</a>
							</div>
						</div>
						<div class="col-md-3 col-sm-3 marginBottom10" id="div_fund_3">
							<div class="form-group fund">
								<label class="no-bold">Fund 3</label>
								<div class="input-group">
									<input id="txt_fund3" type="text" class="txt_fund form-control input-sm">
									<span class="input-group-addon" style="cursor:pointer;"  onclick="removeMoreFund(3)"><i class="fa fa-close font-14"></i></span>
								</div>
							</div>
							<div class="form-group mt-1" id="more_funds_div_3">
								<a href="javascript:void(0);" class="stepsAddmore" onclick="addMoreFund(3)"><i class="fa fa-plus-square marginRight10 font-14"></i> Add another fund (upto 2)</a>
							</div>
						</div>
						<div class="col-md-3 col-sm-3 mt-2" id="div_fund_4">
							<div class="form-group fund">
								<label class="no-bold">Fund 4</label>
								<div class="input-group">
									<input id="txt_fund4" type="text" class="txt_fund form-control input-sm">
									<span class="input-group-addon" style="cursor:pointer;"  onclick="removeMoreFund(4)"><i class="fa fa-close font-14"></i></span>
								</div>
							</div>
							<div class="form-group mt-1" id="more_funds_div_4">
								<a href="javascript:void(0);" class="stepsAddmore" onclick="addMoreFund(4)"><i class="fa fa-plus-square marginRight10 font-14"></i> Add another fund (upto 1)</a>
							</div>
						</div>
						<div class="col-md-3 col-sm-3 mt-2" id="div_fund_5">
							<div class="form-group fund">
								<label class="no-bold">Fund 5</label>
								<div class="input-group">
									<input id="txt_fund5" type="text" class="txt_fund form-control input-sm">
									<span class="input-group-addon" style="cursor:pointer;"  onclick="removeMoreFund(5)"><i class="fa fa-close font-14"></i></span>
								</div>
							</div>
						</div>
						<div class="col-md-2 col-sm-2">
								<div class="form-group">
									<label class="no-bold">&nbsp;</label><br>
									<button class="btn btn-primary btn-submit" type="button" onclick="getData()">Submit</button>
								</div>
						</div>
					</div>
			   </div>
			</div>
			
			
				<div class="container service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
		<div class="row marginBottom20">
			<div class="col-md-12 table-responsive">
						<div class="row marginBottom20">
			<div class="col-md-12 table-responsive">
				<h6 class="font-size-18" style="margin-top:15px;">Summary</h6>
				<table class="adv-table table table-striped table-colored table-bordered">
					<thead class="theadBody">
						<tr>
							<th>Fund Name</th>
							<th>Category</th>
							<th>Launch Date</th>
							<th>AUM (Crore)</th>
							<th>Expense Ratio (%)</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${schemePerformances}" var="schemePerformances">	              
							<tr>
								<td><a href='/mutual-funds-research/fund-card?scheme=<c:out value="${schemePerformances.scheme_amfi}"></c:out>' class="mutual-funds-anchor"><c:out value="${schemePerformances.scheme_amfi_short_name}"></c:out></a></td>
								<td><c:out value="${schemePerformances.scheme_category}"></c:out></td>
							<td><fmt:formatDate pattern="dd-MM-yyyy" value="${schemePerformances.inception_date}" /></td>
							<td class="units_comma_fixed"><c:out value="${schemePerformances.scheme_assets}"/></td>
							<td><c:out value="${schemePerformances.ter}"></c:out></td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<div class="row marginBottom20">
			<div class="col-md-12 table-responsive">
				<h6 class="font-size-18">Performance Comparison</h6>
				<table class="adv-table table table-striped table-colored table-bordered">
					<thead class="theadBody">
						<tr>
							<th>Fund Name</th>
							<th>1-Year Ret&nbsp;(%)</th>
							<th>3-Yrs Ret&nbsp;(%)</th>
							<th>5-Yrs Ret&nbsp;(%)</th>
							<th>10-Yrs Ret&nbsp;(%)</th>
							<th>Since Launch Ret&nbsp;(%)</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${schemePerformances}" var="schemePerformances">	              
							<tr>
								<td><a href='/mutual-funds-research/fund-card?scheme=<c:out value="${schemePerformances.scheme_amfi}"></c:out>' class="mutual-funds-anchor"><c:out value="${schemePerformances.scheme_amfi_short_name}"></c:out></a>	
								</td>
								<td><c:out value="${schemePerformances.returns_abs_1year eq 0 ? '-': schemePerformances.returns_abs_1year}"></c:out></td>
								<td><c:out value="${schemePerformances.returns_cmp_3year eq 0 ? '-': schemePerformances.returns_cmp_3year}"></c:out></td>
								<td><c:out value="${schemePerformances.returns_cmp_5year eq 0 ? '-': schemePerformances.returns_cmp_5year}"></c:out></td>
								<td><c:out value="${schemePerformances.returns_cmp_10year eq 0 ? '-': schemePerformances.returns_cmp_10year}"></c:out></td>
								<td><c:out value="${schemePerformances.returns_cmp_inception eq 0 ? '-': schemePerformances.returns_cmp_inception}"></c:out></td>
							</tr>
						</c:forEach>
					</tbody>
					<c:if test="${category_returns != null && benchmark_returns != null}">
						<tfoot class="table-foot">
							<tr>
								<td>Category Average</td>
								<td><c:out value="${category_returns.returns_abs_1year eq 0 ? '-': category_returns.returns_abs_1year}"></c:out></td>
								<td><c:out value="${category_returns.returns_cmp_3year eq 0 ? '-': category_returns.returns_cmp_3year}"></c:out></td>
								<td><c:out value="${category_returns.returns_cmp_5year eq 0 ? '-': category_returns.returns_cmp_5year}"></c:out></td>
								<td><c:out value="${category_returns.returns_cmp_10year eq 0 ? '-': category_returns.returns_cmp_10year}"></c:out></td>
								<td><c:out value="${category_returns.returns_cmp_inception eq 0 ? '-': category_returns.returns_cmp_inception}"></c:out></td>
							</tr>          
							<tr>
								<td><c:out value="${benchmark_returns.benchmark_name}"></c:out></td>
								<td><c:out value="${benchmark_returns.returns_abs_1year eq 0 ? '-': benchmark_returns.returns_abs_1year}"></c:out></td>
								<td><c:out value="${benchmark_returns.returns_cmp_3year eq 0 ? '-': benchmark_returns.returns_cmp_3year}"></c:out></td>
								<td><c:out value="${benchmark_returns.returns_cmp_5year eq 0 ? '-': benchmark_returns.returns_cmp_5year}"></c:out></td>
								<td><c:out value="${benchmark_returns.returns_cmp_10year eq 0 ? '-': benchmark_returns.returns_cmp_10year}"></c:out></td>
								<td><c:out value="${benchmark_returns.returns_cmp_inception eq 0 ? '-': benchmark_returns.returns_cmp_inception}"></c:out></td>
							</tr>
						</tfoot>
					</c:if>
				</table>
			</div>
		</div> 
			</div>
		</div>
		

				
	</div>
		   		
		   
		   </div>
		</div>
	</section>
 
 </div>