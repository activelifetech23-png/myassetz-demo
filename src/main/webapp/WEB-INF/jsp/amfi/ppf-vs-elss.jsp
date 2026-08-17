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
#div_fund_2,#div_fund_3, #div_fund_4,#div_fund_5 {
   display:none
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
	
	var type = '${type}';
	if(type == "lumpsum")
	{
		$("#period_div").hide();
	}else
	{
		$("#period_div").show();
	}
	
	initializeTypeAhead();
	
	$('.datepicker').datepicker({
		format: 'dd-mm-yyyy',
		endDate: '-1d',
		autoclose:true,
		disableTouchKeyboard:true
	});
	
	var fund = '${schemes}';
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
	
	showGraph();
	//showBarGraph();
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
	            	category: "Equity: ELSS"
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
	var amount = $("#txt_amount").val();
	var startdate = $("#txt_start_date").val();
	var enddate = $("#txt_end_date").val();
	var frequency = $("#sel_frequency").val();
	var type = $("#sel_option").val();
	var fund_array = new Array();
	
	if(fundname1 == "")
	{
		swal({title:"",text:"Please select the fund 1"});
    	return false;
	}else{
		fund_array.push(fundname1);
	}
	if(fundname2 != "")
	{
		fund_array.push(fundname2);
	}
	if(fundname3 != "")
	{
		fund_array.push(fundname3);
	}
	if(fundname4 != "")
	{
		fund_array.push(fundname4);
	}
	if(fundname5 != "")
	{
		fund_array.push(fundname5);
	}
	if(type == "0")
	{
		swal({title:"",text:"Please select option"});
    	return false;
	}
	if(amount == "" || isNaN(amount) || parseInt(amount) < 1)
	{
		swal({title:"",text:"Please enter the valid amount"});
    	return false;
	}
	if(startdate == "")
	{
		swal({title:"",text:"Please select the start date"});
    	return false;
	}
	if(enddate == "")
	{
		swal({title:"",text:"Please select the end date"});
    	return false;
	}
	var start_date_arr = startdate.split("-");
	var start_date_str = start_date_arr[2] + "-" + start_date_arr[1] + "-" + start_date_arr[0];
	var end_date_arr = enddate.split("-");
	var end_date_str = end_date_arr[2] + "-" + end_date_arr[1] + "-" + end_date_arr[0];
	
	var start_date = new Date(start_date_str);
	var end_date = new Date(end_date_str);
	
	if(end_date <= start_date)
	{
		swal({title:"",text:"Please select valid start date and end date"});
    	return false;
	}	
	
	var scheme_array = new Array();
	for(var k=0;k<fund_array.length;k++)
	{
		var scheme_name = fund_array[k];
		var schemeName = encodeURIComponent(scheme_name);
		scheme_array.push(schemeName);
	}
		
	top.location = "/mutual-funds-research/ppf-vs-elss?schemes="+scheme_array+"&amount="+amount+"&start_date="+startdate+"&end_date="+enddate+"&period="+frequency+"&type="+type;	
}
function addMoreFund(count)
{
	var fundname1 = $("#txt_fund1").val();
	if(fundname1 == "")
	{
		swal({title:"",text:"Enter an value for Fund 1"});
    	return false;
	}
	if($("#div_fund_2").is(':visible'))
	{
		var fundname2 = $("#txt_fund2").val();
		if(fundname2 == "")
		{
			swal({title:"",text:"Enter an value for Fund 2"});
	    	return false;
		}
	}
	if($("#div_fund_3").is(':visible'))
	{
		var fundname3 = $("#txt_fund3").val();
		if(fundname3 == "")
		{
			swal({title:"",text:"Enter an value for Fund 3"});
	    	return false;
		}
	}
	if($("#div_fund_4").is(':visible'))
	{
		var fundname4 = $("#txt_fund4").val();
		if(fundname4 == "")
		{
			swal({title:"",text:"Enter an value for Fund 4"});
	    	return false;
		}
	}
	if($("#div_fund_5").is(':visible'))
	{
		var fundname5 = $("#txt_fund5").val();
		if(fundname5 == "")
		{
			swal({title:"",text:"Enter an value for Fund 5"});
	    	return false;
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

function gotoTop()
{
	$('html,body').animate({
        scrollTop: 0
    }, 700);
}
function showPeriod()
{
	var type = $("#sel_option").val();
	if(type == "0")
	{
		swal({title:"",text:"Please select option"});
    	return false;
	}
	if(type == "lumpsum")
	{
		$("#period_div").hide();
	}else
	{
		$("#period_div").show();
	}
}
function showGraph()
{
	var fundname1 = $("#txt_fund1").val();
	var fundname2 = $("#txt_fund2").val();
	var fundname3 = $("#txt_fund3").val();
	var fundname4 = $("#txt_fund4").val();
	var fundname5 = $("#txt_fund5").val();
	var amount = $("#txt_amount").val();
	var startdate = $("#txt_start_date").val();
	var enddate = $("#txt_end_date").val();
	var frequency = $("#sel_frequency").val();
	var type = $("#sel_option").val();
	var fund_array = new Array();
	
	if(fundname1 == "")
	{
		swal({title:"",text:"Please select the fund 1"});
    	return false;
	}else{
		fund_array.push(fundname1);
	}
	if(fundname2 != "")
	{
		fund_array.push(fundname2);
	}
	if(fundname3 != "")
	{
		fund_array.push(fundname3);
	}
	if(fundname4 != "")
	{
		fund_array.push(fundname4);
	}
	if(fundname5 != "")
	{
		fund_array.push(fundname5);
	}
	if(type == "0")
	{
		swal({title:"",text:"Please select option"});
    	return false;
	}
	if(amount == "" || isNaN(amount) || parseInt(amount) < 1)
	{
		swal({title:"",text:"Please enter the valid amount"});
    	return false;
	}
	if(startdate == "")
	{
		swal({title:"",text:"Please select the start date"});
    	return false;
		
	}
	if(enddate == "")
	{
		swal({title:"",text:"Please select the end date"});
    	return false;
	}
	var start_date_arr = startdate.split("-");
	var start_date_str = start_date_arr[2] + "-" + start_date_arr[1] + "-" + start_date_arr[0];
	var end_date_arr = enddate.split("-");
	var end_date_str = end_date_arr[2] + "-" + end_date_arr[1] + "-" + end_date_arr[0];
	
	var start_date = new Date(start_date_str);
	var end_date = new Date(end_date_str);
	
	if(end_date <= start_date)
	{
		swal({title:"",text:"Please select valid start date and end date"});
    	return false;
	}	
	
	$("#lumpsum-gth-container").hide();
	$("#lumpsum-gth-spinner").removeClass("hidden");
	
	var container_width = $("#lumpsum-gth-div").width();
	
	var lumpsumArray = new Array();
	var lumpsumNameArray = new Array();

	for(var k=0;k<fund_array.length;k++)
	{
		lumpsumArray.push(encodeURIComponent(fund_array[k]));
		lumpsumNameArray.push(fund_array[k]);
	}
	
	lumpsumArray.push(encodeURIComponent("PPF"));
	lumpsumNameArray.push("PPF");
	
	var colors = ['#29d359','#9f332f','#FF8900', '#DDDF00', '#24CBE5', '#64E572','#FF9655', '#FFF263', '#6AF9C4'];
	
	var seriesOptions = [],
    seriesCounter = 0,
    names = lumpsumArray,
    
    // create the chart when all data is loaded
    createChart = function () {

    $('#lumpsum-gth-container').highcharts('StockChart', {
	    	rangeSelector : {
	            enabled: false
	        },
	        navigator: {
	            enabled: false
	        },
	        credits: {
	        	enabled : false
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
             	itemStyle: {
              	  font: 'normal 12px Helvetica Neue, Helvetica, Arial, sans-serif',
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
           }
        });
    };  
    
    $.each(names, function (i, name) {
    $.getJSON('/mutual-funds-research/getPPFGraphData?scheme='+name+"&amount="+amount+"&startdate="+startdate+"&enddate="+enddate+"&frequency="+frequency+"&type="+type,  function (values) {
        seriesOptions[i] = {
            name: lumpsumNameArray[i],
            data: values,
            color: colors[i]
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

function showBarGraph()
{
	var fundname1 = $("#txt_fund1").val();
	var fundname2 = $("#txt_fund2").val();
	var fundname3 = $("#txt_fund3").val();
	var fundname4 = $("#txt_fund4").val();
	var fundname5 = $("#txt_fund5").val();
	var amount = $("#txt_amount").val();
	var startdate = $("#txt_start_date").val();
	var enddate = $("#txt_end_date").val();
	var frequency = $("#sel_frequency").val();
	var type = $("#sel_option").val();
	var fund_array = new Array();
	
	if(fundname1 == "")
	{
		swal({title:"",text:"Please select the fund 1"});
    	return false;
	}else{
		fund_array.push(fundname1);
	}
	if(fundname2 != "")
	{
		fund_array.push(fundname2);
	}
	if(fundname3 != "")
	{
		fund_array.push(fundname3);
	}
	if(fundname4 != "")
	{
		fund_array.push(fundname4);
	}
	if(fundname5 != "")
	{
		fund_array.push(fundname5);
	}
	if(type == "0")
	{
		swal({title:"",text:"Please select option"});
    	return false;
	}
	if(amount == "" || isNaN(amount) || parseInt(amount) < 1)
	{
		swal({title:"",text:"Please enter the valid amount"});
    	return false;
	}
	if(startdate == "")
	{
		swal({title:"",text:"Please select the start date"});
    	return false;
	}
	if(enddate == "")
	{
		swal({title:"",text:"Please select the end date"});
    	return false;
	}
	var start_date_arr = startdate.split("-");
	var start_date_str = start_date_arr[2] + "-" + start_date_arr[1] + "-" + start_date_arr[0];
	var end_date_arr = enddate.split("-");
	var end_date_str = end_date_arr[2] + "-" + end_date_arr[1] + "-" + end_date_arr[0];
	
	var start_date = new Date(start_date_str);
	var end_date = new Date(end_date_str);
	
	if(end_date <= start_date)
	{
		swal({title:"",text:"Please select valid start date and end date"});
    	return false;
	}	
	
	$("#sip-gth-container").hide();
	$("#sip-gth-spinner").removeClass("hidden");
	
	var container_width = $("#sip-gth-div").width();
	
	var lumpsumArray = new Array();
	var lumpsumNameArray = new Array();

	for(var k=0;k<fund_array.length;k++)
	{
		lumpsumArray.push(encodeURIComponent(fund_array[k]));
		lumpsumNameArray.push(fund_array[k]);
	}
	
	lumpsumArray.push(encodeURIComponent("PPF"));
	lumpsumNameArray.push("PPF");
	
	
	var year_array = new Array();
	var data_array = new Array();
	
	$.ajaxSetup({async:false});
	$.post("/mutual-funds-research/getPPFBarGraphData", {schemes : "" + lumpsumArray + "",amount : "" + amount + "",startdate : "" + startdate + "",enddate : "" + enddate + "",frequency : "" + frequency + "",type : "" + type + ""}, function(data)
    {
		var schemes = $.trim(data);
		var schemes_obj = jQuery.parseJSON(schemes);
		var scheme_list = schemes_obj.scheme_list;
		var year_list = schemes_obj.year_list;
		var value_list = schemes_obj.value_list;
		var schemes_array = $.makeArray(scheme_list);
		year_array = $.makeArray(year_list);
		var value_master_array = $.makeArray(value_list);
		
		for(var k=0;k<schemes_array.length;k++)
		{
			var scheme = schemes_array[k];
			var value_obj = value_master_array[k];
			var value_array = $.makeArray(value_obj);
			var obj = {
				name: scheme,
			    data: value_array
			};
			
			data_array.push(obj);
		}
    },'text');
	
	var colors = ['#00acac','#2B3292','#000000','#194d30','#8B0045','#804000','#000066','#00ff00','#0A9BF5','#999999','#3b0066'];
	
	$('#sip-gth-container').highcharts({
        chart: {
            type: 'column',
        	events: {
            	load: function(event) {
                    $("#sip-gth-spinner").addClass("hidden");
                    $("#sip-gth-container").show();
            	}
            	},
            	width : container_width,
        },
        title: {
            text: ''
        },
        subtitle: {
            text: ''
        },
        credits: {
        	enabled : false
        },
        xAxis: {
            categories: year_array,
            crosshair: true
        },
        yAxis: {
            min: 0,
            title: {
                text: 'Current Value (Rs.)'
            }
        },
        tooltip: {
            shared: true,
            useHTML: true
        },
        plotOptions: {
            column: {
                pointPadding: 0.2,
                borderWidth: 0
            }
        },
        series: data_array
    });
}

</script>

<div class="main-content">
 
  <section class="header_color">
      <div class="container pt-120 pb-20">
        <!-- Section Content -->
        <div class="section-content">
          <div class="row text-center">
            <div class="col-md-12">
              <h2 class="title text-dark">Mutual Fund PPF vs ELSS</h2>
              <ol class="breadcrumb text-black mt-10">
                <li><a href="#" class="title_header">Home</a></li>
                <li><a href="#" class="title_header">Mutual Funds Research</a></li>
                <li class="active">Mutual Fund PPF vs ELSS</li>
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
      Mutual Fund PPF vs ELSS
   </h6>
   <div class="card-body mf-research-body">
													<div class="row">
							<div class="col-lg-6">
								<div class="form-group">
									<label class="no-bold block">Select Option</label>
									<select id="sel_option" class="form-control form-control-sm" data-width="100%" onchange="showPeriod()">
										<option value="0">Select</option>
										<option value="lumpsum" <c:if test="${type eq 'lumpsum' }"><c:out value="selected" /></c:if>>Lumpsum</option>
										<option value="sip" <c:if test="${type eq 'sip' }"><c:out value="selected" /></c:if>>SIP</option>
									</select>
								</div>
							</div>       
      
							<div class="col-lg-6 mt-2">
								<div class="form-group">
									<label class="no-bold">Fund 1</label>
									<input id="txt_fund1" type="text" class="txt_fund form-control form-control-sm">
								</div>
								<div class="col-md-6 col-sm-6">
									<div class="form-group" id="more_funds_div_1">
										<a href="javascript:void(0);" class="stepsAddmore" onclick="addMoreFund(1)"><i class="fa fa-plus-square marginRight10 font-14"></i> Add another fund (upto 4)</a>
									</div>
								</div>
							</div>
							<div class="col-lg-6 mt-2" id="div_fund_2">
								<div class="form-group fund">
									<label class="no-bold">Fund 2</label>
									<div class="input-group">
										<input id="txt_fund2" type="text" class="txt_fund form-control form-control-sm">
										<span class="input-group-text" style="cursor:pointer;"  onclick="removeMoreFund(2)"><i class="fa fa-close font-14"></i></span>
									</div>
								</div>
								<div class="form-group" id="more_funds_div_2">
									<a href="javascript:void(0);" class="stepsAddmore" onclick="addMoreFund(2)"><i class="fa fa-plus-square marginRight10 font-14"></i> Add another fund (upto 3)</a>
								</div>
							</div>
							<div class="col-lg-6 mt-2" id="div_fund_3">
								<div class="form-group fund">
									<label class="no-bold">Fund 3</label>
									<div class="input-group">
										<input id="txt_fund3" type="text" class="txt_fund form-control form-control-sm">
										<span class="input-group-text" style="cursor:pointer;"  onclick="removeMoreFund(3)"><i class="fa fa-close font-14"></i></span>
									</div>
								</div>
								<div class="form-group" id="more_funds_div_3">
									<a href="javascript:void(0);" class="stepsAddmore" onclick="addMoreFund(3)"><i class="fa fa-plus-square marginRight10 font-14"></i> Add another fund (upto 2)</a>
								</div>
							</div>
							<div class="col-lg-6 mt-2" id="div_fund_4">
								<div class="form-group fund">
									<label class="no-bold">Fund 4</label>
									<div class="input-group">
										<input id="txt_fund4" type="text" class="txt_fund form-control form-control-sm">
										<span class="input-group-text" style="cursor:pointer;"  onclick="removeMoreFund(4)"><i class="fa fa-close font-14"></i></span>
									</div>
								</div>
								<div class="form-group" id="more_funds_div_4">
									<a href="javascript:void(0);" class="stepsAddmore" onclick="addMoreFund(4)"><i class="fa fa-plus-square marginRight10 font-14"></i> Add another fund (upto 1)</a>
								</div>
							</div>
							<div class="col-lg-6 mt-2" id="div_fund_5">
								<div class="form-group fund">
									<label class="no-bold">Fund 5</label>
									<div class="input-group">
										<input id="txt_fund5" type="text" class="txt_fund form-control form-control-sm">
										<span class="input-group-text" style="cursor:pointer;"  onclick="removeMoreFund(5)"><i class="fa fa-close font-14"></i></span>
									</div>
								</div>
							</div>			
							<div class="col-lg-3 mt-2">
								<div class="form-group">
									<label class="no-bold">Amount</label>
									<input type="text" id="txt_amount" maxlength="8" class="form-control form-control-sm" value="${amount}" />
								</div>
							</div>
							<div class="col-lg-3 mt-2">
								<div class="form-group">
									<label class="no-bold block">Select Frequency</label>
									<select id="sel_frequency" class="form-control form-control-sm" data-width="100%">
										<option value="0">Select</option>
										<option value="Monthly" <c:if test="${period eq 'Monthly' }"><c:out value="selected" /></c:if>>Monthly</option>
										<option value="Quarterly" <c:if test="${period eq 'Quarterly' }"><c:out value="selected" /></c:if>>Quarterly</option>
										<option value="halfyearly" <c:if test="${period eq 'halfyearly' }"><c:out value="selected" /></c:if>>Half-Yearly</option>
										<option value="yearly" <c:if test="${period eq 'yearly' }"><c:out value="selected" /></c:if>>Yearly</option>
									</select>
								</div>
							</div>
							<div class="col-lg-3 mt-2">
								<div class="form-group">
									<label class="no-bold">Select Start Date</label>
									<input type="text" id="txt_start_date" value="${start_date}" class="form-control datepicker form-control-sm" />
								</div>
							</div>
							<div class="col-lg-3 mt-2">
								<div class="form-group">
									<label class="no-bold">Select End Date</label>
									<input type="text" id="txt_end_date" value="${end_date}" class="form-control datepicker form-control-sm" />
								</div>
							</div>
							<div class="col-lg-3 align-self-center mt-20"> 
								<a href="javascript:void(0)" class="btn btn-primary btn-submit" onclick="getData()">Submit</a>
							</div>
						</div>
   </div>
</div>


	<div class="container service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
		<div class="row marginBottom20">
			<div class="col-md-12 table-responsive">
										<div class="row mt-3">
					<div class="col-lg-12">
						<h6 class="font-size-20 bold-smaller15 margin-bottom0">Summary</h6>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="table-responsive">
							<table class="table table-striped table-colored table-bordered counton-table mf-research-table" id="tbl_scheme_returns">
								<thead class="theadBody">
									<tr>
										<th width="200">Scheme Name</th>
										<th>Launch Date</th>
										<th>AUM (Crore)</th>
										<th>Expense Ratio (%)</th>
										<th>Start Date</th>
										<th>Amount Invested</th>
										<th>Scheme Current Value as on ${end_date}</th>
										<th>Scheme Returns (%)</th>
										<th>PPF Current Value</th>
										<th>PPF Returns (%)</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${list}" var="schemePerformance" varStatus="status">
										<tr>
											<td><a href='/mutual-funds-research/fund-card?scheme=<c:out value="${schemePerformance.scheme}"></c:out>' class="mutual-funds-anchor"><c:out value="${schemePerformance.scheme}"></c:out></a>
											</td>
											<td><c:out value="${schemePerformance.inception_date}"></c:out></td>
											<td class="units_comma_fixed">
												<c:choose>
													<c:when test="${schemePerformance.net_assets eq 0}">
													-
													</c:when>
													<c:otherwise>
														${schemePerformance.net_assets}
													</c:otherwise>
												</c:choose>
											</td>
											<td>
												<c:choose>
													<c:when test="${schemePerformance.expense_ratio eq 0}">
													-
													</c:when>
													<c:otherwise>
														<c:out value="${schemePerformance.expense_ratio}"/>
													</c:otherwise>
												</c:choose>
											</td>
											<td><c:out value="${schemePerformance.sip_start_date}"></c:out></td>
											<td class="comma_fixed">${schemePerformance.current_cost}</td>
											<td class="comma_fixed">${schemePerformance.current_value}</td>
											<td><c:out value="${schemePerformance.returns}"></c:out></td>
											<td class="comma_fixed">${schemePerformance.ppf_current_value}</td>
											<td><c:out value="${schemePerformance.ppf_returns}"></c:out></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div id="lumpsum-gth-div" class="table-responsive border text-center panel panel-default">
					<div id="lumpsum-gth-container"></div>
				</div>
			</div>
		</div>
		

				
	</div>
		   
		   </div>
		</div>
	</section>
 
 </div>