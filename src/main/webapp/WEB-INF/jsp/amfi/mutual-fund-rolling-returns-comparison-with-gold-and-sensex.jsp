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
	padding:7px 15px;
	background-color: #d90d15;
}
label{
	font-size: 12px !important;
	font-weight: 600;
}
#tbl_scheme_returns thead tr th{
	border:1px solid #eee;
	background-color:#29549d;
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
    background-color: #f8b92a;
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
</style>

<script>
function getStartDate()
{
	if($("#chk_date").is(":checked"))
	{
		var scheme = $("#txt_scheme").val();
	    if(scheme == null || scheme == "")
	    {
	 		$("#adv-alert-msg").html("Please select scheme");
	   	    $("#adv-alert").modal('show');
	   	    return false;
	    }
	    
	    $.ajaxSetup({async:true});
		$.post("/mutual-funds-research/getSchemeStartAndEndDate", {scheme_name : "" + scheme + ""}, function(data)
	    {
			var schemes = $.trim(data);
			var schemes_obj = jQuery.parseJSON(schemes);
			var schemes_array = $.makeArray(schemes_obj);
			var from = schemes_array[0].split("-");
			var startdate = new Date(from[2], from[1] - 1, from[0]);
			$("#txt_start_date").val(moment(startdate).format("DD-MM-YYYY"));
			$('#txt_start_date').datepicker('setDate', startdate);
			
	    },'text');
	}
}
function checkStartDate()
{
	var scheme_name = $("#txt_scheme").val();
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
	   	 	flag = true;
			return false;
		}
    },'text');
	
	if(flag)
	{
		return false;
	}
}
function showResult()
{
    var scheme = $("#txt_scheme").val();
    var startDate = $("#txt_start_date").val();
    var period = $("#sel_period").val();
    
 	if(scheme == null || scheme == "")
    {
 		$("#adv-alert-msg").html("Please select scheme");
   	    $("#adv-alert").modal('show');
   	    return false;
    }	
 	if(startDate == null || startDate == "")
    {
 		$("#adv-alert-msg").html("Please select start date");
   	    $("#adv-alert").modal('show');
   	    return false;
    }
 	if(period == null || period == "")
    {
 		$("#adv-alert-msg").html("Please select period");
   	    $("#adv-alert").modal('show');
   	    return false;
    }
 	var date_arr = startDate.split("-");
 	var start_date_str = date_arr[2] + "-" + date_arr[1] + "-" + date_arr[0];
 	var start_date = new Date(start_date_str);
	start_date.setHours(0, 0, 0, 0);
	
	var schemeName = encodeURIComponent(scheme);
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
			$("#adv-alert-msg").html(scheme+" inception date is "+ moment(inception_date).format("DD-MM-YYYY") +". Please select a start date which is greater than or equal to scheme inception date.");
	   	    $("#adv-alert").modal('show');
	   	 	flag = true;
			return false;
		}
    },'text');
	
	if(flag)
	{
		return false;
	}
 	scheme = encodeURIComponent(scheme);
 	
 	top.location = "/mutual-funds-research/mutual-fund-rolling-returns-comparison-with-gold-and-sensex?scheme="+scheme+"&start_date="+startDate+"&period="+period;
}

function calculateRollingReturns()
{
    var scheme = $("#txt_scheme").val();
    var startDate = $("#txt_start_date").val();
    var period = $("#sel_period").val();
    
 	if(scheme == null || scheme == "")
    {
 		$("#adv-alert-msg").html("Please select scheme");
   	    $("#adv-alert").modal('show');
   	    return false;
    }	
 	if(startDate == null || startDate == "")
    {
 		$("#adv-alert-msg").html("Please select start date");
   	    $("#adv-alert").modal('show');
   	    return false;
    }
 	if(period == null || period == "")
    {
 		$("#adv-alert-msg").html("Please select period");
   	    $("#adv-alert").modal('show');
   	    return false;
    }
 	var date_arr = startDate.split("-");
 	var start_date_str = date_arr[2] + "-" + date_arr[1] + "-" + date_arr[0];
 	var start_date = new Date(start_date_str);
	start_date.setHours(0, 0, 0, 0);
 	var schemeName = encodeURIComponent(scheme);
	
	$("#rolling-returns-container").hide();
	$("#rolling-returns-spinner").removeClass("hidden");
	
	var data_array = new Array();

	$.ajaxSetup({async:false});
	$.post("/mutual-funds-research/getMutualFundRollingReturnsComparison", {scheme : "" + schemeName + "",start_date : "" + startDate + "",period : "" + period + ""}, function(data)
    {
		var result = $.trim(data);
		if(result == null || result == "null" || result == "")
		{
			$("#adv-alert-msg").html("Choose a period lesser than "+period+" or change the start date to "+period+" back form now.");
	   	    $("#adv-alert").modal('show');
	   	    return false;
		}
		var obj = jQuery.parseJSON(result);
		data_array = $.makeArray(obj);
		
    },'text'); 
	
	var master_array = new Array();
	var colors = ['#db9b15','#2B3292','#f062f0','#00BFFF','#8c648c','#0A9BF5','#999999','#3b0066'];
	
	for(var k=0;k<data_array.length;k++)
	{
		var obj = data_array[k];
		var value_array = $.makeArray(obj);
		var scheme_data = new Array();
		var name = value_array[0].scheme_name;
		var color_name = "";
		if(name == "S&P BSE Sensex")
		{
			color_name = "#5cb85c";
		}else if(name == "Gold")
		{
			color_name = "#FFD700";
		}else{
			color_name = colors[k];
		}
		
		for(var m=0;m<value_array.length;m++)
		{
			var nav_date = value_array[m].nav_date;
			nav_date = new Date(nav_date).getTime();
			var scheme_rolling_returns = value_array[m].scheme_rolling_returns;
			
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
			var obj = {
			        name : name,
			        data : scheme_data,
			        color : color_name
			};
			master_array.push(obj);
		}
	}
	
	var container_width = $("#rolling-returns-container-div").width();

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
                        if(values.length > 1 && (period == "1 Year" || period == "3 Year" || period == "5 Year" || period == "10 Year" || period == "15 Year" || period == "2 Year" || period == "7 Year"))
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
                        	}else if(period == "2 Year")
                        	{
                        		period_int = 2;
                        	}else if(period == "7 Year")
                        	{
                        		period_int = 7;
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
            	opposite:false,
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
            		if(period == "1 Year" || period == "3 Year" || period == "5 Year" || period == "10 Year" || period == "15 Year" || period == "2 Year" || period == "7 Year")
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
                    	}else if(period == "2 Year")
                    	{
                    		period_int = 2;
                    	}else if(period == "7 Year")
                    	{
                    		period_int = 7;
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
                backgroundColor: "#FFF"
            }
        }); 
}

$(document).ready(function(){
	$('#txt_scheme').typeahead({
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
	    },
        updater:function (item) {
        	$("#chk_date").prop("checked", false);
			$("#txt_start_date").val("");       	
	        return item;
	    }
	});
	
	$('.datepicker').datepicker({
		format: 'dd-mm-yyyy',
		endDate: '-1d',
		autoclose:true,
		disableTouchKeyboard:true
	}).on('changeDate', function(ev) {
		checkStartDate();
	});
	
	var scheme = '${scheme}';
	if(scheme != '')
	{
		$("#txt_scheme").val(scheme);
	}
	
	var scheme_inception_date = '${scheme_inception_date}';
	var start_date = '${start_date}';
	if(scheme_inception_date == start_date)
	{
		$("#chk_date").prop("checked", true);
	}
	
	/* var start_date = '${start_date}';
	if(start_date != '')
	{
		$("#txt_start_date").val(start_date);
		$("#txt_start_date").selectpicker("refresh");
	} */
	
	calculateRollingReturns();
	
	 $('[data-toggle="tooltip"]').tooltip();
	 //data-placement="top"
	 
	 $("#save_img").on('click', function () {
			
		 	var scheme = $("#txt_scheme").val();
		    var startDate = $("#txt_start_date").val();
		    var period = $("#sel_period").val();
		    
		 	if(scheme == null || scheme == "")
		    {
		 		$("#adv-alert-msg").html("Please select scheme");
		   	    $("#adv-alert").modal('show');
		   	    return false;
		    }	
		 	if(startDate == null || startDate == "")
		    {
		 		$("#adv-alert-msg").html("Please select start date");
		   	    $("#adv-alert").modal('show');
		   	    return false;
		    }
		 	if(period == null || period == "")
		    {
		 		$("#adv-alert-msg").html("Please select period");
		   	    $("#adv-alert").modal('show');
		   	    return false;
		    }
	        /* html2canvas(document.querySelector("#rolling-returns-container")).then(canvas => {
				getCanvas = canvas;     //or whatever you want to execute 
				var imgageData = getCanvas.toDataURL("image/png");
				img = imgageData.replace('data:image/png;base64,', '');
				$.ajaxSetup({async:false});
				$.post("/mutual-funds-research/base64toimage", {base64image : img, filename:"mutual-fund-rolling-returns-comparison-with-gold-and-sensex"}, function(data){
					top.location = "/mutual-funds-research/downloadMutualfundRollingReturnsComparisonWithGoldandsensex?schemes="+scheme+"&start_date="+startDate+"&period="+period;
				},'text');
	        }); */
	        
	        var path = "/mutual-funds-research/downloadMutualfundRollingReturnsComparisonWithGoldandsensex?schemes="+scheme+"&start_date="+startDate+"&period="+period;
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
	    	      	    	    	
	    	    	    	html2canvas(document.querySelector("#rolling-returns-container")).then(canvas => {
	    	    				getCanvas = canvas;     //or whatever you want to execute 
	    	    				var imgageData = getCanvas.toDataURL("image/png");
	    	    				img = imgageData.replace('data:image/png;base64,', '');
	    	    				$.ajaxSetup({async:false});
	    	    				$.post("/mutual-funds-research/base64toimage", {base64image : img, filename:"mutual-fund-rolling-returns-comparison-with-gold-and-sensex"}, function(data){
	    	    					top.location = "/mutual-funds-research/downloadMutualfundRollingReturnsComparisonWithGoldandsensex?schemes="+scheme+"&start_date="+startDate+"&period="+period+"&download=yes";
	    	    				},'text');
	    	    	        });
	    	    	    }
	    	        }
	    	    }
	    	};
	    	xhr.send(null);
	   });
	 
});

function openLogin(){
	
	var scheme = $("#txt_scheme").val();
    var startDate = $("#txt_start_date").val();
    var period = $("#sel_period").val();
    
 	if(scheme == null || scheme == "")
    {
 		$("#adv-alert-msg").html("Please select scheme");
   	    $("#adv-alert").modal('show');
   	    return false;
    }	
 	if(startDate == null || startDate == "")
    {
 		$("#adv-alert-msg").html("Please select start date");
   	    $("#adv-alert").modal('show');
   	    return false;
    }
 	if(period == null || period == "")
    {
 		$("#adv-alert-msg").html("Please select period");
   	    $("#adv-alert").modal('show');
   	    return false;
    }

 	downloadPath = "/mutual-funds-research/downloadMutualfundRollingReturnsComparisonWithGoldandsensex?schemes="+scheme+"&start_date="+startDate+"&period="+period;
	imageDownload = "yes";
	chartId = "#rolling-returns-container";
	filename = "mutual-fund-rolling-returns-comparison-with-gold-and-sensex";
 	
	$("#adv-login").modal("show");
}

function saveResult() 
{	
	var scheme = $("#txt_scheme").val();
   	var startDate = $("#txt_start_date").val();
  	var period = $("#sel_period").val();
    
	var accountMap = '${accountMap}';
	var title = "Mutual Fund Rolling Returns Comparison with Gold and Sensex -> Scheme = " + scheme + ", Start Date = " + startDate + ", Rolling Return Period = " + period;
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

    <!-- Main -->
    <main>
    	
        
         <!-- ========================
       page title 
    =========================== -->
    <section class="page-title page-title-layout5">
      <div class="bg-img"><img src="/images/backgrounds/6.jpg" alt="background"></div>
      <div class="container">
        <div class="row">
          <div class="col-12">
            <h1 class="pagetitle__heading">Rolling Return vs Sensex & Gold</h1>
            <nav>
              <ol class="breadcrumb mb-0">
                <li class="breadcrumb-item"><a href="/">Home</a></li>
                <li class="breadcrumb-item"><a href="/tools-and-calculators/become-a-crorepati">Mutual Funds Research</a></li>
                <li class="breadcrumb-item active" aria-current="page">Rolling Return vs Sensex & Gold</li>
              </ol>
            </nav>
          </div><!-- /.col-12 -->
        </div><!-- /.row -->
      </div><!-- /.container -->
    </section><!-- /.page-title -->
        
		<section class="section pt-4 pb-8" style="background-color:#fff;">
		
`<div class="container card shadow mb-4">
   <h6 class="card-header mf-research-header">
     Mutual Fund Rolling Returns Comparison with Gold and Sensex
   </h6>
   <div class="card-body mf-research-body">
									<div class="row">
			        <div class="col-md-4 col-sm-3">
				        <div class="form-group">
				        <label class="bold-smaller">Enter Scheme Name</label>
				        <input id="txt_scheme" type="text" class="form-control no-radius" placeholder="Enter Scheme Name">
				        </div>
					</div>
			        
			        <div class="col-md-3 col-sm-3">
			        <div class="form-group">
			          <label class="bold-smaller">Select Start Date</label>
			          <input type="text" id="txt_start_date" value="${start_date}" class="form-control datepicker no-radius" />
			        </div>
			        </div>
			        
			        <div class="col-md-3 col-sm-4">
			       	   <div class="form-group">
			            <label class="bold-smaller block">Select Rolling Return Period
			            <i class="fa fa-question-circle" data-toggle="tooltip" title="The Rolling Return period should correspond to your typical investment holding period. For example, if you hold your investment for 3 years, then select 3 years in the Rolling Return Period"></i>
			            </label>
			            <select id="sel_period" class="form-control" data-width="100%">							
			            	<option value="1 Month" <c:if test="${period eq '1 Month' }"><c:out value="selected" /></c:if>>1 Month</option>			            	
							<option value="1 Year" <c:if test="${period eq '1 Year' }"><c:out value="selected" /></c:if>>1 Year</option>
							<option value="2 Year" <c:if test="${period eq '2 Year' }"><c:out value="selected" /></c:if>>2 Years</option>
			            	<option value="3 Year" <c:if test="${period eq '3 Year' }"><c:out value="selected" /></c:if>>3 Years</option>
			            	<option value="5 Year" <c:if test="${period eq '5 Year' }"><c:out value="selected" /></c:if>>5 Years</option>
			            	<option value="7 Year" <c:if test="${period eq '7 Year' }"><c:out value="selected" /></c:if>>7 Years</option>
			            	<option value="10 Year" <c:if test="${period eq '10 Year' }"><c:out value="selected" /></c:if>>10 Years</option>
			            	<option value="15 Year" <c:if test="${period eq '15 Year' }"><c:out value="selected" /></c:if>>15 Years</option>
						</select>
			          </div>
			        </div> 
			        
			         <div class="col-md-1 col-sm-1 col-xs-12 justify-content-end align-self-end">
							      <div class="form-group">
							         <label class="bold block hidden-xs">&nbsp;</label>
							         <a href="javascript:void(0)" class="btn btn-primary" onclick="showResult()">Submit</a>
							      </div>
					</div>
			        
			        
			        <div class="row pl-3 pr-3 mt-1">
			        <div class="col-md-12 col-sm-6">
					<div class="form-group">
			           <div class="checkbox mt-1">
					  <label>
					    <input id="chk_date" type="checkbox" value="" style="margin-top: 3px;" onchange="getStartDate()">
					    Select start date as the scheme inception date
					  </label>
					</div>
			        </div>        
			        </div>
			        
					<div class="col-md-3 col-sm-3">
						<div class="form-group">
				       
				        </div>
					</div>
			        </div>	
				        </div> 
   </div>
</div>
		
	<div class="container card shadow">
		<div class="row marginBottom20">
			<div class="col-md-12 table-responsive">
					<div class="row">
			      	<div class="">
			      		<div class="col-md-12 col-sm-12 col-xs-12 padding-0">	
				        	<h5 class="font-size-20 bold-smaller15 margin-bottom0 mt-4 mb-3" style="line-height: 25px;">Mutual Fund Rolling Returns with Gold and Sensex</h5>
				        </div>
					</div>
					</div>	
					
					<div class="border">
					<div class="col-md-12 col-sm-12 table-responsive">
				      <div class="col-md-12">   
				            <div class="panel panel-default adv-panel">
				            <div class="panel-body padding0 relative text-center" id="rolling-returns-container-div">
							  <i id="rolling-returns-spinner" class="fa fa-cog fa-spin fa-2x" style="margin-top: 100px;margin-bottom: 100px;"></i>
				              <div id="rolling-returns-container" style="min-width:100%;"></div>              
				            </div>
				         </div>    
				     </div>
				     </div>
				     
					<div class="col-md-12 col-sm-12 table-responsive mt-3">
					<div class="col-md-12 col-sm-12">
				        <p style="text-align:justify;font-size:14px;">Rolling returns are the annualized returns of an asset taken for a specified period (rolling returns period) on every day/week/month and taken till the last day of the duration. In this chart we are showing the annualized returns of the asset over the rolling returns period on every day from the start date and comparing it with the benchmark and other asset classes. Rolling returns is the best measure of an asset's return performance. Trailing returns have a recency bias and point to point returns are specific to the period in consideration. Rolling returns, on the other hand, measures the asset's absolute and relative performance across all timescales, without bias.</p>
					</div>
					</div>
	       		</div>
			</div>
		</div>
		

				
	</div>
</section>
    </main>
    <!-- End Main -->