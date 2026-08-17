<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    

<style>
	.page-heading {
	    padding-top: 8rem;
	    padding-bottom: 2rem;
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
#stp-transferee tfoot tr td{
	background-color: #d9f6f9;
	font-weight: bold;
	font-size: 12px;
	color:#000;
}
.card{
	padding:20px;
	border-radius:0px;
}
.marginBottom20{
	margin-bottom:20px;
}
.btn-primary{
	padding:11px 15px;
	background-color: #003399;
}
label{
	font-size: 12px !important;
	font-weight: 600;
}
#stp-transferee thead tr th{
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
.hidden {
    display: none!important;
}

.card-header {
        background-color: #9f332f;
    color: #fff;
    padding: 0.75rem 1.25rem;
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
.header_color{
 background: 50% 0px rgb(163 163 163 / 16%) !important;
}
td a {
     color: #333;
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
</style>


<script>
$(document).ready(function(){
	
	$('#mf_fund_txt').typeahead({
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
	
	$('.datepicker').datepicker({
		format: 'dd-mm-yyyy',
		endDate: '-1d',
		autoclose:true,
		disableTouchKeyboard:true
	}).on('changeDate', function(ev) {
		var ID = $(this).attr("id");
		if(ID == "txt_start_date")
		{
			checkStartDate();
		}
	});
	
	$('#div_results .collapse').on('show.bs.collapse', function () {

		$(this).prev().find(".fa-plus-circle").removeClass("fa-plus-circle").addClass("fa-minus-circle");
	});

	$('#div_results .collapse').on('hide.bs.collapse', function () {

		$(this).prev().find(".fa-minus-circle").removeClass("fa-minus-circle").addClass("fa-plus-circle");
	});
	
	$("#stp-transferee").dataTable({
		"bPaginate": false,
		"bFilter": false,
		"bInfo": false,
		"bSort": false,
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
	
	$(".comma_fixed").each(function() {
		$(this).html(numbersWithComma(parseFloat($(this).html()).toFixed(0)));  
	});
	
	$(".units_comma_fixed").each(function() {

		if($(this).html()!= '-'){
			$(this).html(numbersWithComma(parseFloat($(this).html()).toFixed(2)));  
		}
		else{
			$(this).html('-'); 
		}
	});
	
	getGraph();
	
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

function checkStartDate()
{
	
    var scheme_name = $("#mf_fund_txt").val();
    var from_date = $("#txt_start_date").val();
	
	if(scheme_name == null || scheme_name == "")
    {
 		$("#adv-alert-msg").html("Please select scheme");
   	    $("#adv-alert").modal('show');
   	    return false;
    }
	if(from_date == "")
 	{
 		$("#adv-alert-msg").html("Please select start date.");
   	    $("#adv-alert").modal('show');
		return;
 	}
	var schemeName = encodeURIComponent(scheme_name);
	var start_date_arr = from_date.split("-");
	var start_date_str = start_date_arr[2] + "-" + start_date_arr[1] + "-" + start_date_arr[0];
	var start_date = new Date(start_date_str);
	var flag = false;
	
	$.ajaxSetup({async:false});
	$.post("/mutual-funds-research/getSchemeStartAndEndDate", {scheme_name : "" + schemeName + ""}, function(data)
    {
		var schemes = $.trim(data);
		var schemes_obj = jQuery.parseJSON(schemes);
		var schemes_array = $.makeArray(schemes_obj);
		var from = schemes_array[0].split("-");
		var inception_date = new Date(from[2], from[1] - 1, from[0]);
		if(start_date < inception_date)
		{
			swal({
				  title: "Error!",
				  text: "Please select a Intial investement date which is greater than or equal to scheme inception date.!",
				  type: "error",
				  confirmButtonText: "OK"
				});
			
			return false;
		}
		
    },'text');
	
	if(flag)
	{
		return false;
	}
}
function getData()
{
    var scheme = $("#mf_fund_txt").val();
    var amount = $("#txt_sip_amount").val();
    var frequency = $("#sel_frequency").val();
    var startdate = $("#txt_start_date").val();
    var enddate = $("#txt_end_date").val();
    var enhancement_percentage = $("#sel_enhancement").val();
    
 	if(scheme == "" || amount == "" || startdate == "" || enddate == "")
 	{
 		$("#adv-alert-msg").html("All fields are mandatory");
   	    $("#adv-alert").modal('show');
		return;
 	}
	if(isNaN(amount) || parseInt(amount) < 1)
	{
		$("#adv-alert-msg").html("Please enter the valid amount");
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
	if(frequency == "0")
	{
		$("#adv-alert-msg").html("Please select frequency");
   	    $("#adv-alert").modal('show');
		return;
	}
	if(frequency == "Daily")
	{
		start_date.setDate(start_date.getDate() + 1);
		if(end_date <= start_date)
		{
			$("#adv-alert-msg").html("Please select valid start date and end date");
	   	    $("#adv-alert").modal('show');
			return;
		}
	}
	if(frequency == "Weekly")
	{
		start_date.setDate(start_date.getDate() + 7);
		if(end_date <= start_date)
		{
			$("#adv-alert-msg").html("Please select valid start date and end date");
	   	    $("#adv-alert").modal('show');
			return;
		}
	}
	if(frequency == "Fortnightly")
	{
		start_date.setDate(start_date.getDate() + 15);
		if(end_date <= start_date)
		{
			$("#adv-alert-msg").html("Please select valid start date and end date");
	   	    $("#adv-alert").modal('show');
			return;
		}
	}
	if(frequency == "Monthly")
	{
		start_date.setMonth(start_date.getMonth() + 1);
		if(end_date <= start_date)
		{
			$("#adv-alert-msg").html("Please select valid start date and end date");
	   	    $("#adv-alert").modal('show');
			return;
		}
	}
	if(frequency == "Quarterly")
	{			
		start_date.setMonth(start_date.getMonth() + 3);
		if(end_date <= start_date)
		{
			$("#adv-alert-msg").html("Please select valid start date and end date");
	   	    $("#adv-alert").modal('show');
			return;
		}
	}
 	if(scheme == null || scheme == "")
    {
 		$("#adv-alert-msg").html("Please select schemes");
   	    $("#adv-alert").modal('show');
   	    return false;
    }	
 	var schemeName = encodeURIComponent(scheme);
 	//var schemeName = getSchemeAmfiUrl(scheme);
	var flag = false;
	
	$.ajaxSetup({async:false});
	$.post("/mutual-funds-research/getSchemeStartAndEndDate", {scheme_name : "" + schemeName + ""}, function(data)
    {
		var schemes = $.trim(data);
		var schemes_obj = jQuery.parseJSON(schemes);
		var schemes_array = $.makeArray(schemes_obj);
		var inception_date =  new Date(schemes_array[0]);
		if(start_date < inception_date)
		{
			$("#adv-alert-msg").html(scheme+" inception date is "+ inception_date.format("dd-mm-yyyy") +". Please select a start date which is greater than or equal to scheme inception date.");
	   	    $("#adv-alert").modal('show');
	   	 	flag = true;
			return false;
		}
    },'text');
	
	if(flag)
	{
		return false;
	}
 	document.location = "/mutual-funds-research/sip-with-annual-increase/" + scheme + "?amount="+amount+"&frequency="+frequency+"&start_date="+startdate+"&end_date="+enddate+"&enhancement_percentage="+enhancement_percentage
}

function getGraph()
{
	var scheme = $("#mf_fund_txt").val();
    var amount = $("#txt_sip_amount").val();
    var frequency = $("#sel_frequency").val();
    var startdate = $("#txt_start_date").val();
    var enddate = $("#txt_end_date").val();
    var enhancement_percentage = $("#sel_enhancement").val();
	
    var fundArray = new Array();
    fundArray.push(scheme + "||false");
    fundArray.push(scheme + "||true");
    
    var fundArrayName = new Array();
    fundArrayName.push(scheme);
    fundArrayName.push(scheme + " with "+enhancement_percentage+"% Enhancement yearly");
    
    var ele = document.getElementById("btn-submit");
 	/* var l = Ladda.create(ele); */
 	/* l.start();  */
 	$("#div_results").show();
 	
 	var container_width = $("#sip-gth-div").width();
    
	var seriesOptions = [],
    seriesCounter = 0,
    names = fundArray,
    // create the chart when all data is loaded
    createChart = function () {

        $('#sip-gth-container').highcharts('StockChart', {
        	//colors: ['#000000','#a65200','#000000','#194d30','#8B0045','#ff0000','#804000','#000066','#00ff00','#0A9BF5','#999999','#3b0066'],
        	colors: ['#172460','#009bdf','#000000','#194d30','#8B0045','#ff0000','#804000','#000066','#00ff00','#0A9BF5','#999999','#3b0066'],
        	rangeSelector : {
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
	        navigator: {
	            enabled: false
	        },
	        scrollbar : {
                enabled : false
            },
            xAxis: {
            	
            },
            yAxis: {
            	opposite:false
            },
            title: {
                text: 'SIP with ' + enhancement_percentage + '% Yearly Enhancement'
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
                headerFormat: '<small>{point.key}</small><br>',
                pointFormat: '<span style="color:{series.color}">{series.name}</span>: <b>{point.y}</b><br/>',
                valueDecimals: 2,
                xDateFormat : '%b %d, %Y'
            },

            series: seriesOptions,
            chart: {
            	width : container_width,
            	backgroundColor: "#FFF",
            	events: {
            	load: function(event) {
            		/* l.stop(); */
            		$("#sip-gth-spinner").addClass("hidden");
                    $("#sip-gth-container").show();
            	}
            	}
            	}
        });
    };

$.each(names, function (i, name) {

    $.getJSON('/mutual-funds-research/getSipEnhancementGraph?scheme=' + encodeURIComponent(fundArray[i]) + "&amount="+amount+"&frequency="+frequency+"&start_date="+startdate+"&end_date="+enddate+"&enhancement_percentage="+enhancement_percentage,    function (data) {

        seriesOptions[i] = {
            name: fundArrayName[i],
            data: data,
            type: 'area'
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

function saveResult() 
{	
	var scheme = $("#mf_fund_txt").val();
    var amount = $("#txt_sip_amount").val();
    var frequency = $("#sel_frequency").val();
    var startdate = $("#txt_start_date").val();
    var enddate = $("#txt_end_date").val();
    var enhancement_percentage = $("#sel_enhancement").val();
	
	var accountMap = '${accountMap}';
	var title = "SIP with Annual Increase -> Scheme = " + scheme + ", Enhancement Percentage = " + enhancement_percentage + "%, Frequency = " + frequency + ", Amount = " + amount + ", Start Date = " + startdate + ", End Date  = " + enddate ;
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

<div class="main-content">
 
  <section class="header_color">
      <div class="container pt-120 pb-20">
        <!-- Section Content -->
        <div class="section-content">
          <div class="row text-center">
            <div class="col-md-12">
              <h2 class="title text-dark">SIP with Annual Increase</h2>
              <ol class="breadcrumb text-black mt-10">
                <li><a href="#" class="title_header">Home</a></li>
                <li><a href="#" class="title_header">Mutual Funds Research</a></li>
                <li class="active">SIP with Annual Increase</li>
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
     <c:choose>
  	<c:when test="${page eq 'sip-with-annual-increase'}">
  		SIP with Annual Increase
  	</c:when>
  	<c:otherwise>
  		SIP with Annual Increase of ${scheme}
  	</c:otherwise>
  	</c:choose>
   </h6>
   <div class="card-body mf-research-body">
								<div class="row">
				        <div class="col-md-6 col-sm-5 ">
				           <div class="form-group">
				           <label class="bold-smaller">Type Any Scheme Name</label>
				           <input id="mf_fund_txt" type="text" class="form-control no-radius" value="${scheme_name}" placeholder="Type Fund Name and Click Submit">
				           </div>
				        </div>
				
				        <div class="col-md-3 col-sm-3">
					          <div class="form-group">
					            <label class="bold-smaller">Installment Amount</label>
					            <input type="text" id="txt_sip_amount" value="${amount}" maxlength="5" class="form-control no-radius" />
					          </div>
					        </div>
				        
				            <div class="col-md-3 col-sm-3">
					          <div class="form-group">
					            <label class="bold-smaller block">Select Frequency					            	
					            </label>
					            
					            <select id="sel_frequency" class="form-control" data-width="100%">
									<option value="0">Select</option>
									<option value="Fortnightly" <c:if test="${frequency eq 'Fortnightly' }"><c:out value="selected" /></c:if>>Fortnightly</option>
					            	<option value="Monthly" <c:if test="${frequency eq 'Monthly' }"><c:out value="selected" /></c:if>>Monthly</option>
					            	<option value="Quarterly" <c:if test="${frequency eq 'Quarterly' }"><c:out value="selected" /></c:if>>Quarterly</option>
								</select>
					          </div>
					        </div>
					        </div>
					       
					        
				          	<div class="row mt-5">
					        <div class="col-md-3 col-sm-3">
					          <div class="form-group">
					            <label class="bold-smaller">Select Start Date</label>
					            <input type="text" id="txt_start_date" value="${start_date}" class="form-control datepicker no-radius" />
					          </div>
					        </div>
					        
					        <div class="col-md-3 col-sm-3">
					          <div class="form-group">
					            <label class="bold-smaller">Select End Date</label>
					            <input type="text" id="txt_end_date" value="${end_date}" class="form-control datepicker no-radius" />
					          </div>
					        </div>
					        
					        <div class="col-md-3 col-sm-3">
					          <div class="form-group" id="enhancement_select_div">
					            <label class="bold-smaller block">Select Yearly Enhancement(%)</label>
					            <select id="sel_enhancement" class="form-control" data-width="100%">
									<option value="5" <c:if test="${enhancementPercentage eq '5' }"><c:out value="selected" /></c:if>>5</option>
									<option value="10" <c:if test="${enhancementPercentage eq '10' }"><c:out value="selected" /></c:if>>10</option>
									<option value="15" <c:if test="${enhancementPercentage eq '15' }"><c:out value="selected" /></c:if>>15</option>
									<option value="20" <c:if test="${enhancementPercentage eq '20' }"><c:out value="selected" /></c:if>>20</option>
									<option value="25" <c:if test="${enhancementPercentage eq '25' }"><c:out value="selected" /></c:if>>25</option>
									<option value="50" <c:if test="${enhancementPercentage eq '50' }"><c:out value="selected" /></c:if>>50</option>
									<option value="75" <c:if test="${enhancementPercentage eq '75' }"><c:out value="selected" /></c:if>>75</option>
									<option value="100" <c:if test="${enhancementPercentage eq '100' }"><c:out value="selected" /></c:if>>100</option>
								</select>
					          </div>
					        </div>
					        
					        <div class="col-md-3 col-sm-3 justify-content-end align-self-end">
				            <div class="form-group mt-30">
					         <a id="btn-submit" href="javascript:void(0)" class="btn btn-primary btn-submit" onclick="getData()">Submit</a>
					        </div>
				            </div>
					       </div>
					        </div>

</div>

	<div class="container service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
		<div class="row marginBottom20">
			<div class="col-md-12 table-responsive">
									<div id="div_results" class="mt-30"> 
			         <table class="adv-table table table-bordered table-striped mf-research-table" id="stp-transferee">
					  <thead>
						  <tr>
							  <th>Scheme</th>
							  <th class="text-center">SIP Investment Cost</th>
							  <th class="text-center">SIP Value as on ${end_date}</th>
							  <th class="text-center">Growth Amount</th>
							  <th class="text-center">Enhanced Growth Amount</th>
							  <th class="text-center">Enhanced Growth (%)</th>
							  <th class="text-center">Cash Flow</th>
						  </tr>
					  </thead>
					  <tbody>
				     <c:forEach items="${sipYearlyEnhancementResponse}" var="sipYearlyEnhancement" varStatus="status">
				     
				      <c:set var="ep" value="00.00"></c:set>
				      <c:if test="${sipYearlyEnhancement.enhancementPercentage != '.00'}">
				      <fmt:parseNumber var="ep" integerOnly="true" type="number" value="${sipYearlyEnhancement.enhancementPercentage}" />
				      </c:if>
				      
				      
				      <c:choose>	       
				       <c:when test="${enhancementPercentage eq ep}">
					      <tr>
					       <td style="background-color:#dae2ec;"><a class="mutual-funds-anchor" href="/mutual-funds-research/fund-card?scheme=${scheme_name}">${scheme_name} with ${sipYearlyEnhancement.enhancementPercentage}% yearly enhancement </a></td>
					       <td style="background-color:#dae2ec;" class="text-center">${sipYearlyEnhancement.investmentAmount}</td>
					       <td style="background-color:#dae2ec;" class="text-center">${sipYearlyEnhancement.investmentValue}</td>
					       <td style="background-color:#dae2ec;" class="text-center">${sipYearlyEnhancement.sipGrowth}</td>
					       <td style="background-color:#dae2ec;" class="text-center">${sipYearlyEnhancement.enhancementGrowth}</td>
					       <td style="background-color:#dae2ec;" class="text-center">${sipYearlyEnhancement.enhancementGrowthPercent}<c:if test="${sipYearlyEnhancement.enhancementGrowthPercent != '-'}">%</c:if></td>
					       <td class="bg-color text-center" style="cursor:pointer;background-color:#dae2ec;" data-toggle="collapse" data-target="#category-accordion${status.index}" style="cursor:pointer;"><a href="javascript:void();"><i class="fa fa-lg fa-plus-circle font-14" aria-hidden="true"></i></a></td>
					      </tr>
				       </c:when>
				       <c:otherwise>
				          <tr>
				           <%-- <td>${enhancementPercentage} - ${ep}</td> --%>
					       <td><a class="mutual-funds-anchor" href="/mutual-funds-research/fund-card?scheme=${scheme_name}">${scheme_name} with ${sipYearlyEnhancement.enhancementPercentage}% yearly enhancement</a>
					       
					       </td>
					       <td class="text-center units_comma_fixed">${sipYearlyEnhancement.investmentAmount}</td>
					       <td class="text-center units_comma_fixed">${sipYearlyEnhancement.investmentValue}</td>
					       <td class="text-center units_comma_fixed">${sipYearlyEnhancement.sipGrowth}</td>
					       <td class="text-center units_comma_fixed">${sipYearlyEnhancement.enhancementGrowth}</td>
					       <td class="text-center">${sipYearlyEnhancement.enhancementGrowthPercent}<c:if test="${sipYearlyEnhancement.enhancementGrowthPercent != '-'}">%</c:if></td>
					       <td class="text-center" data-toggle="collapse" data-target="#category-accordion${status.index}" style="cursor:pointer;"><a href="javascript:void();"><i class="fa fa-lg fa-plus-circle font-14" aria-hidden="true"></i></a></td>
					      </tr>
				       </c:otherwise>
				      </c:choose>	
				      
				    <tr id="category-accordion${status.index}" class="collapse accordion-body">									    
					<td colspan="7">
					<div class="table-responsive">
					<table class="table table-striped table-bordered table-hover font-12">
					<thead>
					<tr>
					<th class="text-center">NAV Date</th>
					<th class="text-center">NAV</th>	
					<th class="text-center">Units</th>
					<th class="text-center">Cumulative Units</th>
					<th class="text-center">Invested Amount</th>
					<th class="text-center">Cumulative Invested Amount</th>		       
					<th class="text-center">Market Value</th>              
					</tr>
					</thead>
					<tbody> 										            
					<c:forEach var="sipNavResponse" items="${sipNavResponseList[status.index]}">
					<tr> 
					<td class="text-center"><fmt:formatDate pattern="dd-MM-yyyy" value="${sipNavResponse.nav_date}" /></td>
					<td class="text-center"><fmt:formatNumber value="${sipNavResponse.net_asset_value}" maxFractionDigits="4" /></td>
					<td class="text-center"><fmt:formatNumber value="${sipNavResponse.units}" maxFractionDigits="2" /></td>
					<td class="text-center units_comma_fixed">${sipNavResponse.cumulative_units}</td>
					<td class="text-center units_comma_fixed">${sipNavResponse.amount}</td>
					<td class="text-center units_comma_fixed">${sipNavResponse.cumulative_amount}</td>
					<td class="text-center units_comma_fixed">${sipNavResponse.current_value}</td>
					</tr>
					</c:forEach>										        
					</tbody>
					</table>
					</div>
					</td>	
					<td style="display:none;"></td>		
					<td style="display:none;"></td>	
					<td style="display:none;"></td>	
					<td style="display:none;"></td>	
					<td style="display:none;"></td>	
					<td style="display:none;"></td>								    						
					</tr>
				      
				     </c:forEach>
				     </tbody>
				     </table>
				   </div>
				   
				<div id="sip-gth-div" class="text-center mt-30">
				<i id="sip-gth-spinner" class="fa fa-cog fa-spin fa-2x" style="margin-top: 100px;margin-bottom: 100px;"></i>
				<div id="sip-gth-container" style="min-width: 100%;"></div>
				</div>
			</div>
		</div>
		

				
	</div>
		   		
		   
		   </div>
		</div>
	</section>
 
 </div>
  