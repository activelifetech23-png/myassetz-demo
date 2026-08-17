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
</style>

<script>
function changeAmcCompany()
{
    var amc = $("#sel_amcCompanies").val();
    $.ajaxSetup({async:true});
	$.post("/mutual-funds-research/getSchemeCategoriesByAmcCompany", {amc : "" + amc + ""}, function(data)
    {
		var schemeCategories = $.trim(data);
		var schemeCategories_obj = jQuery.parseJSON(schemeCategories);
		var schemeCategories_array = $.makeArray(schemeCategories_obj);
		var html = "";
		for (var i = 0; i < schemeCategories_array.length; i++)
	    {
			html += '<option value="' + schemeCategories_array[i]+ '">' + schemeCategories_array[i] + '</option>';
	    }
		$("#sel_schemeCategories").html(html);
		//$('#sel_schemeCategories').selectpicker('refresh');
		
		changeSchemeCategory();
		
    },'text');
}

function changeSchemeCategory()
{
    var amc = $("#sel_amcCompanies").val();
    var category = $("#sel_schemeCategories").val();

    $.ajaxSetup({async:true});
	$.post("/mutual-funds-research/getSchemeByAmcAndCategory", {amc : "" + amc + "",category : "" + category + ""}, function(data)
    {
		var schemes = $.trim(data);
		var schemes_obj = jQuery.parseJSON(schemes);
		var schemes_array = $.makeArray(schemes_obj);
		var data = new Array();
		
		for (var i = 0; i < schemes_array.length; i++)
	    {
			var obj = {
					label: schemes_array[i], 
					value: schemes_array[i]
			};
			data.push(obj);
	    }
		$("#sel_schemes").multiselect('dataprovider', data);
		
    },'text');
}
function getData()
{
	var amc = $("#sel_amcCompanies").val();
    var category = $("#sel_schemeCategories").val();
    var schemes = $("#sel_schemes").val();
    var startdate = $("#txt_start_date").val();
    var enddate = $("#txt_end_date").val();
	var amount = $("#txt_amount").val();
    
 	if(startdate == "" || enddate == "" || schemes == null)
 	{
 		$("#adv-alert-msg").html("All fields are mandatory");
   	    $("#adv-alert").modal('show');
		return;
 	}
 	
	var start_date_arr = startdate.split("-");
	var start_date_str = start_date_arr[2] + "-" + start_date_arr[1] + "-" + start_date_arr[0];
	var end_date_arr = enddate.split("-");
	var end_date_str = end_date_arr[2] + "-" + end_date_arr[1] + "-" + end_date_arr[0];
	
	var start_date = new Date(start_date_str);
	var end_date = new Date(end_date_str);
	
	if(end_date <= start_date)
	{
		$("#adv-alert-msg").html("Please select valid start date and end date");
   	    $("#adv-alert").modal('show');
		return;
	}
	if(amount == "" || amount <= 0)
	{
		$("#adv-alert-msg").html("Please enter valid amount");
   	    $("#adv-alert").modal('show');
		return;
	}
	
	var flag = false;
	for(var k=0;k<schemes.length;k++)
	{
		var scheme_name = schemes[k];
		var schemeName = encodeURIComponent(scheme_name);
		schemes[k] = schemeName;
	}
	amc = encodeURIComponent(amc);
	
	top.location = "/mutual-funds-research/mutual-fund-point-to-point-returns-calculator?amc="+amc+"&category="+category+"&schemes="+schemes+"&startdate="+startdate+"&enddate="+enddate+"&amount="+amount;
}


$(document).ready(function(){
	
	$('#sel_schemes').multiselect({
		 maxHeight: 200, 
		 buttonWidth: '100%',
		 includeSelectAllOption : true,
		 onChange: function(option, checked, select) {
		 	
		 }
	 });
	
	$('.datepicker').datepicker({
		format: 'dd-mm-yyyy',
		endDate: '-1d',
		autoclose:true,
		disableTouchKeyboard:true
	});
	
	var scheme_list = '${scheme_list}';
	if(scheme_list != '')
	{
		var scheme_array = scheme_list.split(",");
		for(var k=0;k<scheme_array.length;k++)
		{
			var scheme = scheme_array[k];
			scheme_array[k] = scheme;
		}
		$("#sel_schemes").val(scheme_array);
		$("#sel_schemes").multiselect("refresh");
	}
	
	showGraph();
	
	var amc = '${amc}';
	if(amc != '')
	{
		$("#sel_amcCompanies").val(amc);
		//$('#sel_amcCompanies').niceSelect('update');
		//$("#sel_amcCompanies").selectpicker("refresh");
	}
	
	$("#final_result").dataTable({
		"bPaginate": false,
		"bFilter": false,
		"bInfo": false,
		"bSort": false,
		"columns": [
            { "width": "30%" },
            { "width": "15%", className: "text-center"},
            { "width": "10%", className: "text-center"},
            { "width": "10%", className: "text-center"},
            { "width": "10%", className: "text-center"},
            { "width": "10%", className: "text-center"}                  
		],
		fixedHeader: {
	            headerOffset: 70
	    },
		"initComplete": function(settings, json) {
            <c:if test="${fn:contains(header['User-Agent'],'Mobile')}">
            var table = settings.oInstance.api();
            setTimeout(function(){
         	  table.rows(':not(.parent)').nodes().to$().find('td:first-child').trigger('click');
            }, 1000);
            </c:if>
        }
	});
	
	$('#tbl_scheme_returns').on( 'draw.dt', function (e, settings) {
		<c:if test="${fn:contains(header['User-Agent'],'Mobile')}">
		var table = settings.oInstance.api();
		 setTimeout(function(){
		    table.rows(':not(.parent)').nodes().to$().find('td:first-child').trigger('click');
		 }, 1000);
		</c:if>
	});
	
});


function saveResult() 
{	
	var amc = $("#sel_amcCompanies").val();
    var category = $("#sel_schemeCategories").val();
    var schemes = $("#sel_schemes").val();
    var startdate = $("#txt_start_date").val();
    var enddate = $("#txt_end_date").val();
	var amount = $("#txt_amount").val();
	
	var accountMap = '${accountMap}';
	var title = "Mutual Fund Point to Point Returns - AMC & Category -> Amc = " + amc + ", Category = " + category + ", Schemes = " + schemes + ", Amount - " + amount  + ", Start Date - " + startdate + ", End Date - " + enddate;
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


function showGraph()
{	
	var fundname1 =  $("#sel_schemes").val();	
	var amount = $("#txt_amount").val();
	var startdate = $("#txt_start_date").val();
	var enddate = $("#txt_end_date").val();
	var frequency = $("#sel_frequency").val();
	var fund_array = new Array();	
		
	if(fundname1 == "")
	{
		$("#adv-alert-msg").html("Please select the fund 1");
   	    $("#adv-alert").modal('show');
		return;
	}else{
		fund_array.push(fundname1);
	}
	if($("#txt_fund2").length != 0)
	{
		fundname2 = $("#txt_fund2").val();
		if(fundname2 == "")
		{
			$("#adv-alert-msg").html("Please select the fund 2");
	   	    $("#adv-alert").modal('show');
			return;
		}else{
			fund_array.push(fundname2);
		}
	}
	if($("#txt_fund3").length != 0)
	{
		fundname3 = $("#txt_fund3").val();
		if(fundname3 == "")
		{
			$("#adv-alert-msg").html("Please select the fund 3");
	   	    $("#adv-alert").modal('show');
			return;
		}else{
			fund_array.push(fundname3);
		}
	}
	if($("#txt_fund4").length != 0)
	{
		fundname4 = $("#txt_fund4").val();
		if(fundname4 == "")
		{
			$("#adv-alert-msg").html("Please select the fund 4");
	   	    $("#adv-alert").modal('show');
			return;
		}else{
			fund_array.push(fundname4);
		}
	}
	if($("#txt_fund5").length != 0)
	{
		fundname5 = $("#txt_fund5").val();
		if(fundname5 == "")
		{
			$("#adv-alert-msg").html("Please select the fund 5");
	   	    $("#adv-alert").modal('show');
			return;
		}else{
			fund_array.push(fundname5);
		}
	}
	if(amount == "" || isNaN(amount) || parseInt(amount) < 1)
	{
		$("#adv-alert-msg").html("Please enter the valid amount");
   	    $("#adv-alert").modal('show');
		return;
	}
	if(startdate == "")
	{
		$("#adv-alert-msg").html("Please select the start date");
   	    $("#adv-alert").modal('show');
		return;
	}
	if(enddate == "")
	{
		$("#adv-alert-msg").html("Please select the end date");
   	    $("#adv-alert").modal('show');
		return;
	}
	var start_date_arr = startdate.split("-");
	var start_date_str = start_date_arr[2] + "-" + start_date_arr[1] + "-" + start_date_arr[0];
	var end_date_arr = enddate.split("-");
	var end_date_str = end_date_arr[2] + "-" + end_date_arr[1] + "-" + end_date_arr[0];
	
	var start_date = new Date(start_date_str);
	var end_date = new Date(end_date_str);
	
	if(end_date <= start_date)
	{
		$("#adv-alert-msg").html("Please select valid start date and end date");
   	    $("#adv-alert").modal('show');
		return;
	}	
	
	$("#lumpsum-gth-container").hide();
	$("#lumpsum-gth-spinner").removeClass("hidden");
	
	var container_width = $("#lumpsum-gth-div").width();
	
	var lumpsumArray = new Array();
	var lumpsumNameArray = new Array();
	
	for(var k=0;k<fundname1.length;k++)
	{	
		lumpsumArray.push(encodeURIComponent(fundname1[k]));
		lumpsumNameArray.push(fundname1[k]);
	}
		
	var scheme_benchmark_code = '${benchmark_code}';
	var scheme_benchmark_name = '${benchmark_name}';
	
	var benchnamearray = scheme_benchmark_name.split(",");
	var benchcodearray = scheme_benchmark_code.split(",");
		
	for(var k=0;k<benchnamearray.length;k++)
	{	
		scheme_benchmark_name = benchnamearray[k];	
		scheme_benchmark_name = scheme_benchmark_name.replace('[', '');
		scheme_benchmark_name = scheme_benchmark_name.replace('"', '');
		scheme_benchmark_name = scheme_benchmark_name.replace(']', '');
		scheme_benchmark_name = scheme_benchmark_name.replace('"','');		
		if(scheme_benchmark_name != '' && scheme_benchmark_name != 'undefined' && scheme_benchmark_name != undefined && scheme_benchmark_name != 'null' && scheme_benchmark_name != null)
		{
			lumpsumNameArray.push(scheme_benchmark_name);
		}
	}
	
	for(var k=0;k<benchcodearray.length;k++)
	{	
		scheme_benchmark_code = benchcodearray[k];		
		scheme_benchmark_code = scheme_benchmark_code.replace('[', '');
		scheme_benchmark_code = scheme_benchmark_code.replace('"', '');
		scheme_benchmark_code = scheme_benchmark_code.replace(']', '');
		scheme_benchmark_code = scheme_benchmark_code.replace('"','');
		if(scheme_benchmark_code != '' && scheme_benchmark_code != 'undefined' && scheme_benchmark_code != undefined && scheme_benchmark_code != 'null' && scheme_benchmark_code != null)
		{
			lumpsumArray.push(encodeURIComponent(scheme_benchmark_code));
		}
	}
	
	
	
	/* if(scheme_benchmark_code != '' && scheme_benchmark_code != 'undefined' && scheme_benchmark_code != undefined && scheme_benchmark_code != 'null' && scheme_benchmark_code != null)
	{
		lumpsumArray.push(encodeURIComponent(scheme_benchmark_code));
		lumpsumNameArray.push(scheme_benchmark_name);
	} */
	
	var seriesOptions = [],
    seriesCounter = 0,
    names = lumpsumArray,
    
    // create the chart when all data is loaded
    createChart = function () {

    $('#lumpsum-gth-container').highcharts('StockChart', {
        
    	/* colors: ['#FE581E','#2B3292','#000000','#194d30','#8B0045','#ff0000','#804000','#000066','#00ff00','#0A9BF5','#999999','#3b0066'], */
    	//colors: ['#db9b15','#2B3292','#000000','#194d30','#8B0045','#ff0000','#804000','#000066','#00ff00','#0A9BF5','#999999','#3b0066'],
    	colors : ['#009bdf','#2B3292','#5cb85c','#00BFFF','#8c648c','#f062f0','#0A9BF5','#999999','#3b0066'],
	    	rangeSelector : {
	            enabled: false
	        },
	        navigator: {
	            enabled: false
	        },
	        credits: {
	        	enabled : true,
                text: "",
                href: "",
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
            	
            },
            yAxis: {
            	opposite:false
            	
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
                    $("#lumpsum-gth-spinner").addClass("hidden");
                    $("#lumpsum-gth-container").show();
            	}
            	},
            	width : container_width
            	
           }
        });
    };  
    
    $.each(names, function (i, name) {
    $.getJSON('/mutual-funds-research/getLumpSumReturnsGraphData?scheme='+name+"&amount="+amount+"&startdate="+startdate+"&enddate="+enddate,  function (values) {
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

</script>

    <!-- ========================
       page title 
    =========================== -->
    <section class="page-title page-title-layout5">
      <div class="bg-img"><img src="/images/backgrounds/6.jpg" alt="background"></div>
      <div class="container">
        <div class="row">
          <div class="col-12">
            <h1 class="pagetitle__heading">Mutual Fund Point to Point Returns</h1>
            <nav>
              <ol class="breadcrumb mb-0">
                <li class="breadcrumb-item"><a href="/">Home</a></li>
                <li class="breadcrumb-item"><a href="/mutual-funds-research/top-performing-mutual-funds">Mutual Funds Research</a></li>
                <li class="breadcrumb-item active" aria-current="page">Mutual Fund Point to Point Returns</li>
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
          <div class="col-lg-12">
					<div class="col-lg-12 p-0">
				 		<div class="card mb-5">
						<h6 class="card-header mf-research-header">
				        	Mutual Fund Point to Point Returns - AMC &amp; Category
						 </h6>
				        
				        <div class="card-body mf-research-body">
				        <div class="col-lg-12">
						<div class="row">
						
			        	<div class="col-lg-4 col-sm-3">
			        		<div class="form-group">
			        			<label class="bold-smaller">Select AMC</label>
								<select id="sel_amcCompanies" class="form-control" onchange="changeAmcCompany()" data-width="100%">
									<c:forEach items="${amcCompanies}" var="amc">
									<option value="<c:out value="${amc}"></c:out>"><c:out value="${amc}"></c:out></option>
									</c:forEach>
								</select>
			        		</div>
			        	</div>
			        	
			        	<div class="col-lg-4 col-sm-3">
			        		<div class="form-group" onchange="changeSchemeCategory()">
						    <label class="bold-smaller">Select Category</label>
							<select id="sel_schemeCategories" class="form-control"  data-width="100%">
								<c:forEach items="${schemeCategories}" var="cate">
								 <c:choose>
				                <c:when test="${cate eq category}">
				                  <option selected="selected" value="<c:out value="${cate}"></c:out>"><c:out value="${cate}"></c:out></option>
				                </c:when>
				                <c:otherwise>
				                  <option value="<c:out value="${cate}"></c:out>"><c:out value="${cate}"></c:out></option>
				                </c:otherwise>
				               </c:choose>
								</c:forEach>
							</select>	
						</div>
			        	</div>
			        	
			        	<div class="col-lg-4 col-sm-6">
				           <div class="form-group multi">
							    <label class="bold-smaller width-100">Select Schemes
							    	
							    </label>
								<select id="sel_schemes" class="form-control" multiple="multiple"  data-width="100%">
									<c:forEach items="${schemes}" var="scheme">
									<option value="<c:out value="${scheme}"></c:out>"><c:out value="${scheme}"></c:out></option>
									</c:forEach>
								</select>	
							</div>
				        </div>
						</div>
						<div class="row mt-20">

					        <div class="col-lg-3 col-sm-3">
							      <div class="form-group">
								    <label class="bold-smaller">Start Date</label>
									<input type="text" id="txt_start_date" value="${start_date}" class="form-control datepicker" />	
								  </div>
							  </div>
							  <div class="col-lg-3 col-sm-3">
							      <div class="form-group">
								    <label class="bold-smaller">End Date</label>
									<input type="text" id="txt_end_date" value="${end_date}" class="form-control datepicker" />	
								  </div>
							  </div>
							  
							<div class="col-lg-3 col-sm-3">
							  <div class="form-group">
							    <label class="bold-smaller">Invesment Amount</label>
							    <input type="text" id="txt_amount" maxlength="8" class="form-control margin-bottom10 no-radius" value="${amount}" />
							  </div>
							</div>
					
					        <div class="col-lg-3 col-sm-3 justify-content-end align-self-end">
						    <div class="form-group">
						      <label class="bold block hidden-xs">&nbsp;</label>
						      <a href="javascript:void(0)" class="btn btn__secondary btn__rounded" onclick="getData()">Submit</a>
						    </div>
						    </div>
        
        				</div>
        				</div>
				        </div> 
	
				 		</div>
			 		</div>
			 		
			 		
			 			<div>
				 		   <h5 class="mt-3 mb-2">Summary</h5>
					       <table class="adv-table table table-striped table-bordered table-responsive mf-research-table" style="width:100%" id="final_result">
					       <thead>
					       	<tr>
					       	<th>Scheme Name</th>
							<th>Category</th>
							<th>Launch Date</th>
							<th>Growth Value</th>
							<th>CAGR Return (%)</th>
							<th>Absolute Return (%)</th>
							</tr></thead>
							<tbody>
							<c:forEach items="${sipReturnsCalculator}" var="sipReturnsCalculator">
							<c:choose>
							<c:when test="${sipReturnsCalculator.category == ''}">
							<tr class="yellow_color">
							<td><c:out value="${sipReturnsCalculator.scheme}"></c:out></td>
							<td>-</td>
							<td class="nowrap"><c:out value="${sipReturnsCalculator.inception_date}"></c:out></td>
							<td><fmt:formatNumber type="number" maxFractionDigits="0" value="${sipReturnsCalculator.date1_current_value}" /></td>
							<td><fmt:formatNumber value="${sipReturnsCalculator.date1_cagr_returns}" minFractionDigits="2" maxFractionDigits="2" /></td>
							<td><fmt:formatNumber value="${sipReturnsCalculator.date1_absolute_returns}" minFractionDigits="2" maxFractionDigits="2" /></td>
							</tr>
							</c:when>
							<c:otherwise>
							<tr>
							<td><a href='/mutual-funds-research/<c:out value="${sipReturnsCalculator.scheme}"></c:out>' class="mutual-funds-anchor"><c:out value="${sipReturnsCalculator.scheme}"></c:out></a>							
							</td>
							<td><c:out value="${sipReturnsCalculator.category}"></c:out></td>
							<td class="nowrap"><c:out value="${sipReturnsCalculator.inception_date}"></c:out></td>
							<td class="text-right"><fmt:formatNumber type="number" maxFractionDigits="0" value="${sipReturnsCalculator.date1_current_value}" /></td>
							<td class="text-right"><fmt:formatNumber value="${sipReturnsCalculator.date1_cagr_returns}" minFractionDigits="2" maxFractionDigits="2" /></td>
							<td class="text-right"><fmt:formatNumber value="${sipReturnsCalculator.date1_absolute_returns}" minFractionDigits="2" maxFractionDigits="2" /></td>
							</tr>
							</c:otherwise>
							</c:choose>
							</c:forEach>
							</tbody></table>
					       </div>
					       
					        <div id="lumpsum-gth-div" class="table-responsive text-center mt-40 border">
			       				<i id="lumpsum-gth-spinner" class="fa fa-cog fa-spin fa-2x" style="margin-top: 100px;margin-bottom: 100px;"></i>
			       				<div id="lumpsum-gth-container" style="min-width: 600px;"></div>
			       			</div>
			 		
			 		
          </div><!-- /.col-lg-4 -->

        </div> <!-- /.row -->
      </div><!-- /.container -->
    </section><!-- /.Team layout 1  -->