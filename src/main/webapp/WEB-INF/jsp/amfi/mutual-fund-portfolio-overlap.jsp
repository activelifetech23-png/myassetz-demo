<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<style>
.member {
    box-shadow: 0px 5px 83px 0px rgb(9 29 62 / 15%);
}

.member .member__info .member__job {
	font-size: 1.3rem;
}

.member_detail {
    font-size: 0.99rem !important;
    line-height: 25px;
}

.member__info_detail {
	padding: 25px 30px !important;
}


.counton-panel-header {
    background-color: #529100!important;
    color: #fff!important;
    font-size: 1rem!important;
}

/****new change**********/
.card-header:first-child {
    border-radius: 0.4rem 0.4rem 0 0;
}
.mf-research-header {
    background: #20C7BA;
    color: #ffffff;
    font-size: 14px;
    padding: 10px;
}
.card {
    box-shadow: 0 0 0 0.05rem rgb(8 60 130 / 6%), 0 0 1.25rem rgb(30 34 40 / 4%);
    border: 0;
}
.form-group {
    position: relative;
    margin-bottom: 4px;
}

table.dataTable tbody tr, table.dataTable tbody td {
    padding: 10px 18px;
    color: #60697b;
}
.mf-research-table th, .mf-research-table td {
    font-size: 13px;
}
label {
    font-weight: normal;
}

.nice-select {
    width: 100%;
    height: 45px;
    line-height: 43px;
    border-radius: 10px;
    margin-bottom: 0;
}
.btn {
    height: 45px;
}
.btn__rounded {
    border-radius: 10px;
}
.mf-research-table thead {
    background: #97e1e9;
}

table.dataTable tbody tr {
    background-color: #fff;
}

.table-striped tbody tr:nth-of-type(odd) {
    background-color: rgba(164, 174, 198, 0.07);
}

.mf-research-table tfoot {
    background: #d9f6f9;
}

.mf-research-table a {
	color: #000;
}
.table {
    color: #60697b;
}

.paginate_button {
    padding: 0px !important;
    font-size: 13px;
}

.dataTables_info {
    font-size: 13px;
}
.dataTables_wrapper .dataTables_paginate {
    float: right;
    text-align: right;
    padding-top: 0.45em;
}
.member .member__info {
    padding: 30px 25px;
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
.multiselect {
    border: solid 1px #e8e8e8;
    border-radius: 0;
    background-color: #f9f9f9;
    font-size: 14px;
}
.hidden {
    display: none!important;
}
.border {
    border: 1px solid #dee2e6!important;
}
table.table-bordered.dataTable tbody th, table.table-bordered.dataTable tbody td {
    border-bottom-width: 0;
}
table.table-bordered.dataTable th, table.table-bordered.dataTable td {
    border-left-width: 0;
}
.dropdown-menu{
	padding: 15px;
}
.datepicker.dropdown-menu th, .datepicker.datepicker-inline th, .datepicker.dropdown-menu td, .datepicker.datepicker-inline td {
    padding: 4px 5px;
    font-size: 13px;
}
.datepicker td, .datepicker th {
    text-align: center;
    width: 20px;
    height: 20px;
    -webkit-border-radius: 4px;
    -moz-border-radius: 4px;
    border-radius: 4px;
    border: none;
}

.res_box {
	border: 1px solid #ddd;
    padding: 21px;
} 
</style>

<script>
$(document).ready(function(){
	
	initializeTypeAhead();
	
	var fund = '${schemes}';
	if(fund != "")
	{
		var fund_array = fund.split(",");
		$("#txt_fund_compare1").val(fund_array[0]);
		$("#txt_fund_compare2").val(fund_array[1]);
	}
	
	showBarChart();
	
	showDonutChart();
	
	$("#save_img").on('click', function () {
		
		var category = $("#sel_schemeCategories").val();
	    var fund1 = $("#txt_fund_compare1").val();
	    var fund2 = $("#txt_fund_compare2").val();
	    
	    if(category == null || category == "")
	    {
	 		$("#adv-alert-msg").html("Please select category");
	   	    $("#adv-alert").modal('show');
	   	    return false;
	    }
	    if(fund1 == "")
	    {
	 		$("#adv-alert-msg").html("Please select fund1");
	   	    $("#adv-alert").modal('show');
	   	    return false;
	    }	
	    if(fund2 == "")
	    {
	 		$("#adv-alert-msg").html("Please select fund2");
	   	    $("#adv-alert").modal('show');
	   	    return false;
	    }
	    var schemes = new Array();
	    schemes.push(encodeURIComponent(fund1));
	    schemes.push(encodeURIComponent(fund2));
		
        /* html2canvas(document.querySelector("#bar_chart")).then(canvas => {
			getCanvas = canvas;     //or whatever you want to execute 
			var imgageData = getCanvas.toDataURL("image/png");
			img = imgageData.replace('data:image/png;base64,', '');
			$.ajaxSetup({async:false});
			$.post("/mutual-funds-research/base64toimage", {base64image : img, filename:"bar-chart"}, function(data){
				
			},'text');
        });
        
        html2canvas(document.querySelector("#dount_chart")).then(canvas => {
			getCanvas = canvas;     //or whatever you want to execute 
			var imgageData = getCanvas.toDataURL("image/png");
			img = imgageData.replace('data:image/png;base64,', '');
			$.ajaxSetup({async:false});
			$.post("/mutual-funds-research/base64toimage2", {base64image : img, filename:"down-chart"}, function(data){
				top.location = "/mutual-funds-research/downloadMutualFundPortfolioOverlap?category="+category+"&schemes="+schemes;
			},'text');
        }); */
        
        var path = "/mutual-funds-research/downloadMutualFundPortfolioOverlap?category="+category+"&schemes="+schemes;
    	var xhr = new XMLHttpRequest();
    	xhr.open('GET', path, true);
    	xhr.responseType = 'text';
    	xhr.onload = function () {
    	    if (xhr.readyState === xhr.DONE) {
    	        if (xhr.status === 200) {
    	        	
    	        	var contentType = xhr.getResponseHeader("Content-Type");
    	        	if(contentType == "application/json;charset=ISO-8859-1"){
    	        		var data = JSON.parse(xhr.response);
    	        		alert(data.msg);
    	    	    }
    	    	    else{

    	    	    	html2canvas(document.querySelector("#bar_chart")).then(canvas => {
    	    				getCanvas = canvas;     //or whatever you want to execute 
    	    				var imgageData = getCanvas.toDataURL("image/png");
    	    				img = imgageData.replace('data:image/png;base64,', '');
    	    				$.ajaxSetup({async:false});
    	    				$.post("/mutual-funds-research/base64toimage", {base64image : img, filename:"bar-chart"}, function(data){
    	    					
    	    				},'text');
    	    	        });
    	    	        
    	    	        html2canvas(document.querySelector("#dount_chart")).then(canvas => {
    	    				getCanvas = canvas;     //or whatever you want to execute 
    	    				var imgageData = getCanvas.toDataURL("image/png");
    	    				img = imgageData.replace('data:image/png;base64,', '');
    	    				$.ajaxSetup({async:false});
    	    				$.post("/mutual-funds-research/base64toimage2", {base64image : img, filename:"down-chart"}, function(data){
    	    					top.location = "/mutual-funds-research/downloadMutualFundPortfolioOverlap?category="+category+"&schemes="+schemes+"&download=yes";
    	    				},'text');
    	    	        });
    	    	    }
    	        }
    	    }
    	};
    	xhr.send(null);
        
   });
	
	$("#sel_schemeCategories").change(function(){
		$(".txt_fund").val("");
		$("#txt_fund1").focus();		
	});
});

function openLogin(){
	
	var category = $("#sel_schemeCategories").val();
    var fund1 = $("#txt_fund_compare1").val();
    var fund2 = $("#txt_fund_compare2").val();
    
    if(category == null || category == "")
    {
 		$("#adv-alert-msg").html("Please select category");
   	    $("#adv-alert").modal('show');
   	    return false;
    }
    if(fund1 == "")
    {
 		$("#adv-alert-msg").html("Please select fund1");
   	    $("#adv-alert").modal('show');
   	    return false;
    }	
    if(fund2 == "")
    {
 		$("#adv-alert-msg").html("Please select fund2");
   	    $("#adv-alert").modal('show');
   	    return false;
    }
    var schemes = new Array();
    schemes.push(encodeURIComponent(fund1));
    schemes.push(encodeURIComponent(fund2));

    downloadPath = "/mutual-funds-research/downloadMutualFundPortfolioOverlap?category="+category+"&schemes="+schemes;
	imageDownload = "no";
	chartId = "";
	filename = "";
	overlap = "overlap";
	$("#adv-login").modal("show");
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
	            url: '../mutual-funds-research/autoSuggestAllMfSchemes',
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
    var category = $("#sel_schemeCategories").val();
    var fund1 = $("#txt_fund_compare1").val();
    var fund2 = $("#txt_fund_compare2").val();
    
    if(category == null || category == "")
    {
 		$("#adv-alert-msg").html("Please select category");
   	    $("#adv-alert").modal('show');
   	    return false;
    }
    if(fund1 == "")
    {
 		$("#adv-alert-msg").html("Please select fund1");
   	    $("#adv-alert").modal('show');
   	    return false;
    }	
    if(fund2 == "")
    {
 		$("#adv-alert-msg").html("Please select fund2");
   	    $("#adv-alert").modal('show');
   	    return false;
    }
    if(fund1 == fund2)
    {
 		$("#adv-alert-msg").html("The Fund1 and Fund2 should not be same");
   	    $("#adv-alert").modal('show');
   	    return false;
    }
    var schemes = new Array();
    schemes.push(encodeURIComponent(fund1));
    schemes.push(encodeURIComponent(fund2));
	
 	top.location = "/mutual-funds-research/mutual-fund-portfolio-overlap?category="+category+"&schemes="+schemes;
}
function showDonutChart()
{	
	var no_of_common_stocks = '${no_of_common_stocks}';
	var no_of_uncommon_stocks_scheme1 = '${no_of_uncommon_stocks_scheme1}';
	var no_of_uncommon_stocks_scheme2 = '${no_of_uncommon_stocks_scheme2}';
	var average_portfolio_overlap = '${average_portfolio_overlap}';
	var no_portfolio_overlap = '${no_portfolio_overlap}';
	
	average_portfolio_overlap = parseFloat(average_portfolio_overlap);
	no_portfolio_overlap = parseFloat(no_portfolio_overlap);
	
	var category_array = new Array();
	if(average_portfolio_overlap > 0)
	{
		var arr = new Array();
		arr.push('Average Portfolio Overlap');
		arr.push(average_portfolio_overlap);
		category_array.push(arr);
	}
	if(no_portfolio_overlap > 0)
	{
		var arr = new Array();
		arr.push('No Overlap');
		arr.push(no_portfolio_overlap);
		category_array.push(arr);
	}
	
	var container_width = $("#donut_div").width();
	container_width = container_width - 5;
	
	$('#dount_chart').highcharts({
		colors: ['#24CBE5', '#64E572', '#FF9655', '#FFF263', '#6AF9C4'],
        chart: {
            type: 'pie',
            options3d: {
                enabled: true,
                alpha: 45
            },
            //width : container_width
        },
        title: {
            text: 'Portfolio Overlap'
        },
        credits: {
            enabled: false
        },
        subtitle: {
            text: ''
        },
        plotOptions: {
            pie: {
                innerSize: 100,
                depth: 45,
                dataLabels: {
                    enabled: true,
                    format: '<b>{point.name}</b>: {point.percentage:.1f} %'
                }
            }
        },
        tooltip: {
            enabled: false
        },
        series: [{
            name: 'Portfolio Overlap',
            data:category_array
        }]
    });
	
	$("#span_common_stocks").html(no_of_common_stocks);
	$("#span_uncommon_stocks_scheme1").html(no_of_uncommon_stocks_scheme1);
	$("#span_uncommon_stocks_scheme2").html(no_of_uncommon_stocks_scheme2);
}
function showBarChart()
{
	var scheme1 = '${scheme1}';
	var scheme2 = '${scheme2}';
	var scheme1_common_stocks = '${scheme1_common_stocks}';
	var scheme2_common_stocks = '${scheme2_common_stocks}';
	var scheme1_uncommon_stocks = '${scheme1_uncommon_stocks}';
	var scheme2_uncommon_stocks = '${scheme2_uncommon_stocks}';
	
	scheme1_common_stocks = parseFloat(scheme1_common_stocks);
	scheme2_common_stocks = parseFloat(scheme2_common_stocks);
	scheme1_uncommon_stocks = parseFloat(scheme1_uncommon_stocks);
	scheme2_uncommon_stocks = parseFloat(scheme2_uncommon_stocks);
	
	var container_width = $("#donut_div").width();
	container_width = container_width;
	
	$('#bar_chart').highcharts({
		colors: ['#76b8f4', '#a4d035', '#FF8900', '#DDDF00', '#24CBE5', '#64E572', '#FF9655', '#FFF263', '#6AF9C4'],
        chart: {
            type: 'column',
            //width : container_width
        },
        title: {
            text: 'Portfolio Holdings %'
        },
        credits: {
            enabled: false
        },
        xAxis: {
            categories: ['% Holding of Fund 1 not common with Fund 2', '% Holding of Fund 1 common with Fund 2', '% Holding of Fund 2 common with Fund 1', '% Holding of Fund 2 not common with Fund 1']
        },
        yAxis: {
            allowDecimals: true,
            min: 0,
            title: {
                text: 'Holdings (%)'
            }
        },
        tooltip: {
        	enabled: false
        },
        plotOptions: {
            column: {
                stacking: 'normal',
                dataLabels: {
                    enabled: true,
                    formatter: function () {
                    	if(this.y > 0)
                       	{
                        	return Highcharts.numberFormat(this.y, 0, ',') + '%';
                        }
                    },
                }
            }
        },
        series: [{
            name: scheme1,
            data: [scheme1_uncommon_stocks, scheme1_common_stocks, 0, 0],
            stack: 'scheme1'
        }, {
            name: scheme2,
            data: [0, 0, scheme2_common_stocks, scheme2_uncommon_stocks],
            stack: 'scheme2'
        }]
    });
}
function showHoldings()
{
    var category = $("#sel_schemeCategories").val();
    var fund1 = $("#txt_fund_compare1").val();
    var fund2 = $("#txt_fund_compare2").val();
    
    if(category == null || category == "")
    {
 		$("#adv-alert-msg").html("Please select category");
   	    $("#adv-alert").modal('show');
   	    return false;
    }
    if(fund1 == "")
    {
 		$("#adv-alert-msg").html("Please select fund1");
   	    $("#adv-alert").modal('show');
   	    return false;
    }	
    if(fund2 == "")
    {
 		$("#adv-alert-msg").html("Please select fund2");
   	    $("#adv-alert").modal('show');
   	    return false;
    }
    var schemes = new Array();
    schemes.push(encodeURIComponent(fund1));
    schemes.push(encodeURIComponent(fund2));
	
 	top.location = "/mutual-funds-research/common-stocks-across-mf-schemes?category="+category+"&schemes="+schemes;
}
function saveResult() 
{	
	var category = $("#sel_schemeCategories").val();
	var fund1 = $("#txt_fund_compare1").val();
	var fund2 = $("#txt_fund_compare2").val();
    
	var accountMap = '${accountMap}';
	var title = "Mutual Fund Portfolio Overlap -> Category = " + category + ", Scheme Name1 = " + fund1 + ", Scheme Name2 = " + fund2;
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

    <!-- ========================
       page title 
    =========================== -->
    <section class="page-title page-title-layout5">
      <div class="bg-img"><img src="/images/backgrounds/6.jpg" alt="background"></div>
      <div class="container">
        <div class="row">
          <div class="col-12">
            <h1 class="pagetitle__heading">Mutual Fund Portfolio Overlap</h1>
            <nav>
              <ol class="breadcrumb mb-0">
                <li class="breadcrumb-item"><a href="/">Home</a></li>
                <li class="breadcrumb-item"><a href="/mutual-funds-research/top-performing-mutual-funds">Mutual Funds Research</a></li>
                <li class="breadcrumb-item active" aria-current="page">Mutual Fund Portfolio Overlap</li>
              </ol>
            </nav>
          </div><!-- /.col-12 -->
        </div><!-- /.row -->
      </div><!-- /.container -->
    </section><!-- /.page-title -->

    <!-- ========================
       Doctors Timetable
    ========================== -->
    <!-- ========================
        Team layout 1
    ========================== -->
    <section class="team-layout1">
      <div class="container">
        <div class="row">

          <!-- Member #1 -->
           <div class="col-lg-12 pb-3">	
			  <span class="bold-smaller">Portfolio as on ${portfolio_date}</span>
		  </div>
          <div class="col-lg-12">
					<div class="col-lg-12 p-0">
				 		<div class="card mb-5">
						<h6 class="card-header mf-research-header">
				        	Mutual Fund Portfolio Overlap
						 </h6>
				        
				        <div class="card-body mf-research-body">
							<div class="col-md-12 col-sm-12" id="donut_div"></div>
							<div class="row pl-4 pr-4">
							   <div class="col-md-3 col-sm-4">
							      <div class="form-group">
							         <label class="no-bold">Select Category</label>
							         <select id="sel_schemeCategories" class="form-control" data-width="100%">
							            <option value="All">All</option>
							            <c:forEach var="categories" items="${schemeCategories}">
							               <c:choose>
							                  <c:when test="${categories eq category}">
							                     <option selected="selected" value="
							                     <c:out value="${categories}"></c:out>
							                     ">
							                     <c:out value="${categories}"></c:out>
							                     </option>
							                  </c:when>
							                  <c:otherwise>
							                     <c:if test="${categories != 'Fixed Maturity Plans' && categories != 'Gold Funds'}">
							                        <option value="
							                        <c:out value="${categories}"></c:out>
							                        ">
							                        <c:out value="${categories}"></c:out>
							                        </option>
							                     </c:if>
							                  </c:otherwise>
							               </c:choose>
							            </c:forEach>
							         </select>
							      </div>
							   </div>
							   <div class="col-md-3 col-sm-4">
							      <div class="form-group">
							         <label class="no-bold">Fund 1</label>
							         <input id="txt_fund_compare1" type="text" class="txt_fund form-control">
							      </div>
							   </div>
							   <div class="col-md-3 col-sm-4">
							      <div class="form-group">
							         <label class="no-bold width-100">Fund 2</label>
							         <input id="txt_fund_compare2" type="text" class="txt_fund margin-bottom10 form-control">
							      </div>
							   </div>
							   <div class="col-md-3 col-sm-4 justify-content-end align-self-end">
							      <div class="form-group">
							         <a href="javascript:void(0)" class="btn btn__secondary btn__rounded" onclick="getData()">Submit</a>
							      </div>
							   </div>
							</div>
				        </div> 
	
				 		</div>
			 		</div>
					
					<div class="row mt-40">
					  <div class="col-lg-6">
				      	<div id="bar_chart" style="border:1px solid #ddd; height:500px;"></div>
				      </div>
					  <div class="col-lg-6 p-0" style="border:1px solid #ddd;">
				      	  <div id="dount_chart" style="height:400px;"></div>
					      <div class="res_box text-center">
					      <div style="font-size: 12px;">Number of common stocks: <span id="span_common_stocks"></span></div>
					      <div style="font-size: 12px;">Number of uncommon stocks in ${scheme1}: <span id="span_uncommon_stocks_scheme1"></span></div>
					      <div style="font-size: 12px;">Number of uncommon stocks in ${scheme2}: <span id="span_uncommon_stocks_scheme2"></span></div>
					      </div>
				      </div>
	       		</div>
			 		
          </div><!-- /.col-lg-4 -->

        </div> <!-- /.row -->
      </div><!-- /.container -->
    </section><!-- /.Team layout 1  -->