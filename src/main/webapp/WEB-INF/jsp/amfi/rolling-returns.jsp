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
	padding: 11px 15px;
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
.hidden {
    display: none!important;
}
.card-header {
     background-color:#9f332f;
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
	

	var element = $("#rolling-returns-container"); // global variable
	var getCanvas; // global variable
	
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
				addMoreFund();
				$("#txt_fund2").val(fund_name);
			}
			if(k == 2)
			{
				addMoreFund();
				$("#txt_fund3").val(fund_name);
			}
			if(k == 3)
			{
				addMoreFund();
				$("#txt_fund4").val(fund_name);
			}
			if(k == 4)
			{
				addMoreFund();
				$("#txt_fund5").val(fund_name);
			}
		}
	}
	
	calculateRollingReturns();
	
	$('[data-toggle="tooltip"]').tooltip();
	
	$("#save_img").on('click', function () {
		
		var category = $("#sel_schemeCategories").val();
	    var startDate = $("#txt_start_date").val();
	    var period = $("#sel_period").val();
	    
	    var scheme_array = new Array();
		for(var k=0;k<fund_array.length;k++)
		{
			var scheme_name = fund_array[k];
			var schemeName = encodeURIComponent(scheme_name);
			scheme_array.push(schemeName);
		}
		
        /* html2canvas(document.querySelector("#rolling-returns-container")).then(canvas => {
			getCanvas = canvas;     //or whatever you want to execute 
			var imgageData = getCanvas.toDataURL("image/png");
			img = imgageData.replace('data:image/png;base64,', '');
			$.ajaxSetup({async:false});
			$.post("/mutual-funds-research/base64toimage", {base64image : img, filename:"rolling-returns"}, function(data){
				top.location = "/mutual-funds-research/downloadRollingReturns?category="+category+"&schemes="+scheme_array+"&start_date="+startDate+"&period="+period;
			},'text');
        }); */
        
        
        var path = "/mutual-funds-research/downloadRollingReturns?category="+category+"&schemes="+scheme_array+"&start_date="+startDate+"&period="+period;
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
    	    				$.post("/mutual-funds-research/base64toimage", {base64image : img, filename:"rolling-returns"}, function(data){
    	    					top.location = "/mutual-funds-research/downloadRollingReturns?category="+category+"&schemes="+scheme_array+"&start_date="+startDate+"&period="+period+"&download=yes";
    	    				},'text');
    	    	        });
    	    	    }
    	        }
    	    }
    	};
    	xhr.send(null);
        
   });
	
	 $("#tbl_scheme_returns").dataTable({
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
	/* $("#save_img").on('click', function () {
		
		var category = $("#sel_schemeCategories").val();
	    var startDate = $("#txt_start_date").val();
	    var period = $("#sel_period").val();
	    
	    var scheme_array = new Array();
		for(var k=0;k<fund_array.length;k++)
		{
			var scheme_name = fund_array[k];
			var schemeName = encodeURIComponent(scheme_name);
			scheme_array.push(schemeName);
		}
		
        html2canvas(document.querySelector("#rolling-returns-container")).then(canvas => {
			getCanvas = canvas;     //or whatever you want to execute 
			var imgageData = getCanvas.toDataURL("image/png");
			img = imgageData.replace('data:image/png;base64,', '');
			$.ajaxSetup({async:false});
			$.post("/mutual-funds-research/base64toimage", {base64image : img, filename:"rolling-returns"}, function(data){
				top.location = "/mutual-funds-research/downloadRollingReturns?category="+category+"&schemes="+scheme_array+"&start_date="+startDate+"&period="+period;
			},'text');
        });
   }); */
	
});

function openLogin(){
	
	var category = $("#sel_schemeCategories").val();
    var startDate = $("#txt_start_date").val();
    var period = $("#sel_period").val();
    
    var fund = '${schemes}';
    var fund_array = fund.split(",");
    var scheme_array = new Array();
	for(var k=0;k<fund_array.length;k++)
	{
		var scheme_name = fund_array[k];
		var schemeName = encodeURIComponent(scheme_name);
		scheme_array.push(schemeName);
	}
    
	downloadPath = "/mutual-funds-research/downloadRollingReturns?category="+category+"&schemes="+scheme_array+"&start_date="+startDate+"&period="+period;
	imageDownload = "yes";
	chartId = "#rolling-returns-container";
	filename = "rolling-returns";
    
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
	            url: './autoSuggestAllMfSchemes',
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

function showResult()
{
	var category = $("#sel_schemeCategories").val();
	var fundname1 = $("#txt_fund1").val();
	var fundname2 = "";
	var fundname3 = "";
	var fundname4 = "";
	var fundname5 = "";
	var fund_array = new Array();
    var startDate = $("#txt_start_date").val();
    var period = $("#sel_period").val();
    
 	if(category == null || category == "")
    {
 		$("#adv-alert-msg").html("Please select category");
   	    $("#adv-alert").modal('show');
   	    return false;
    }	
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
 	var start_date_init = new Date(start_date_str);
	
	var ele = document.getElementById("submit_btn");
 	/* var l = Ladda.create(ele);
 	l.start(); */
	
	var scheme_array = new Array();
	for(var k=0;k<fund_array.length;k++)
	{
		var scheme_name = fund_array[k];
		var schemeName = encodeURIComponent(scheme_name);
		scheme_array.push(schemeName);
		var flag = false;
		
		$.ajaxSetup({async:false});
		$.post("/mutual-funds-research/getSchemeStartAndEndDate", {scheme_name : "" + schemeName + ""}, function(data)
	    {
			var schemes = $.trim(data);
			var schemes_obj = jQuery.parseJSON(schemes);
			var schemes_array = $.makeArray(schemes_obj);
			var scheme_inception_date =  new Date(schemes_array[0]);
			
			if(start_date_init < scheme_inception_date)
			{
				$("#adv-alert-msg").html(scheme_name+" inception date is "+ scheme_inception_date.format("dd-mm-yyyy") +". Please select a start date which is greater than or equal to scheme inception date.");
		   	    $("#adv-alert").modal('show');
		   	 	flag = true;
				return false;
			}
	    },'text');
		
		if(flag)
		{
			break;
		}
	}
	
	/* l.stop(); */
	
	if(flag)
	{
		return false;
	}
 	
 	top.location = "/mutual-funds-research/rolling-returns?category="+category+"&schemes="+scheme_array+"&start_date="+startDate+"&period="+period;
}

function calculateRollingReturns()
{
	var category = $("#sel_schemeCategories").val();
	var fundname1 = $("#txt_fund1").val();
	var fundname2 = "";
	var fundname3 = "";
	var fundname4 = "";
	var fundname5 = "";
	var fund_array = new Array();
    var startDate = $("#txt_start_date").val();
    var period = $("#sel_period").val();
    
 	if(category == null || category == "")
    {
 		$("#adv-alert-msg").html("Please select category");
   	    $("#adv-alert").modal('show');
   	    return false;
    }	
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
	
	var scheme_array = new Array();
	for(var k=0;k<fund_array.length;k++)
	{
		var scheme_name = fund_array[k];
		var schemeName = encodeURIComponent(scheme_name);
		scheme_array.push(schemeName);
	}
	
	$("#rolling-returns-container").hide();
	$("#rolling-returns-spinner").removeClass("hidden");
	
	var master_array = new Array();
	//var colors = ['#2B3292','#00BFFF','#fc5203','#5cb85c','#f062f0','#0A9BF5','#999999','#3b0066']; 
	//var colors = ['#db9b15','#2B3292','#000000','#194d30','#8B0045','#ff0000','#804000','#000066','#00ff00','#0A9BF5','#999999','#3b0066'];
	var colors = ['#db9b15','#2B3292','#5cb85c','#00BFFF','#8c648c','#f062f0','#0A9BF5','#999999','#3b0066'];
	
	$.ajaxSetup({async:false});
	$.post("/mutual-funds-research/getRollingReturns", {schemes : "" + scheme_array + "",category : "" + category + "",start_date : "" + startDate + "",period : "" + period + ""}, function(data)
    {
		var result = $.trim(data);
		if(result == null || result == "null" || result == "")
		{
			$("#adv-alert-msg").html("Choose a period lesser than "+period+" or change the start date to "+period+" back form now.");
	   	    $("#adv-alert").modal('show');
	   	    return false;
		}
		var obj = jQuery.parseJSON(result);
		var list_array = $.makeArray(obj);
		if(list_array == null || list_array.length == 0)
		{
			$("#adv-alert-msg").html("Choose a period lesser than "+period+" or change the start date to "+period+" back form now.");
	   	    $("#adv-alert").modal('show');
	   	    return false;
		}
		
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
				var color_name = "";
				/*var scheme_category = data_array[0].scheme_category;
				if(scheme_category == "")
				{
					//color_name = "#2B3292";
					color_name = "#db9b15";
					
				}else{
					color_name = colors[k];
				} */
				color_name = colors[k];
				var obj = {
				        name : scheme,
				        data : scheme_data,
				        color : color_name
				};
				master_array.push(obj);
			}
		}
		
    },'text'); 
	
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
                        if(values.length > 1 && (period == "1 Year" || period == "2 Year" || period == "3 Year" || period == "5 Year" || period == "7 Year" || period == "10 Year" || period == "15 Year"))
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
            		if(period == "1 Year" || period == "3 Year" || period == "5 Year" || period == "10 Year" || period == "15 Year" || period == "2 Year"|| period == "7 Year")
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
function addMoreFund()
{
	var fundname1 = $("#txt_fund1").val();
	if(fundname1 == "")
	{
		$("#adv-alert-msg").html("Enter an value for Fund 1");
   	    $("#adv-alert").modal('show');
		return;
	}
	var fundname2 = $("#txt_fund2").val();
	if(fundname2 == "")
	{
		$("#adv-alert-msg").html("Enter an value for Fund 2");
   	    $("#adv-alert").modal('show');
		return;
	}
	var fundname3 = $("#txt_fund3").val();
	if(fundname3 == "")
	{
		$("#adv-alert-msg").html("Enter an value for Fund 3");
   	    $("#adv-alert").modal('show');
		return;
	}
	var fundname4 = $("#txt_fund4").val();
	if(fundname4 == "")
	{
		$("#adv-alert-msg").html("Enter an value for Fund 4");
   	    $("#adv-alert").modal('show');
		return;
	}
	var fundname5 = $("#txt_fund5").val();
	if(fundname5 == "")
	{
		$("#adv-alert-msg").html("Enter an value for Fund 5");
   	    $("#adv-alert").modal('show');
		return;
	}

    var count = 0;
	$(".fund").each(function(){
		count++;
	});
	count++;
	
	var fund_count = 5 - count;
	$("#fund_count").html(fund_count);
	
	if(count == 5)
	{
		$("#more_funds_div").hide();
	}else{
		$("#more_funds_div").show();
	}

	if(count == 2)
	{
		var friends_html = '<div id="div_fund_' + count + '" class="form-group fund">';
		friends_html += '<label class="bold-smaller">Fund '+ count +'</label>';
		friends_html += '<div class="input-group">';
		friends_html += '<input id="txt_fund' + count + '" type="text" class="txt_fund form-control">';
        friends_html += '<span class="input-group-addon" style="cursor:pointer;"  onclick="removeMoreFund(\'div_fund_' + count + '\')"><i class="fa fa-close font-14"></i></span>';
        friends_html += '</div>';
		friends_html += '</div>';
		
		$("#div_txt_funds").append(friends_html);
	}
	if(count == 3)
	{
		if($("#div_fund_2").length == 0) 
		{
			count = count - 1;
			var friends_html = '<div id="div_fund_' + count + '" class="form-group fund">';
			friends_html += '<label class="bold-smaller">Fund name '+ count +'</label>';
			friends_html += '<div class="input-group">';
			friends_html += '<input id="txt_fund' + count + '" type="text" class="txt_fund form-control">';
	        friends_html += '<span class="input-group-addon" style="cursor:pointer;"  onclick="removeMoreFund(\'div_fund_' + count + '\')"><i class="fa fa-close font-14"></i></span>';
	        friends_html += '</div>';
			friends_html += '</div>';
			
			if($("#div_fund_3").length != 0)
			{
				$( "#div_fund_3" ).before(friends_html);
			}else if($("#div_fund_4").length != 0)
			{
				$( "#div_fund_4" ).before(friends_html);
			}else if($("#div_fund_5").length != 0)
			{
				$( "#div_fund_5" ).before(friends_html);
			}else{
				$("#div_fund_1").append(friends_html);
			}
		}else if($("#div_fund_3").length == 0) 
		{
			var friends_html = '<div id="div_fund_' + count + '" class="form-group fund">';
			friends_html += '<label class="bold-smaller">Fund '+ count +'</label>';
			friends_html += '<div class="input-group">';
			friends_html += '<input id="txt_fund' + count + '" type="text" class="txt_fund form-control">';
	        friends_html += '<span class="input-group-addon" style="cursor:pointer;"  onclick="removeMoreFund(\'div_fund_' + count + '\')"><i class="fa fa-close font-14"></i></span>';
	        friends_html += '</div>';
			friends_html += '</div>';
			
			if($("#div_fund_4").length != 0)
			{
				$( "#div_fund_4" ).before(friends_html);
			}else if($("#div_fund_5").length != 0)
			{
				$( "#div_fund_5" ).before(friends_html);
			}else{
				$("#div_txt_funds").append(friends_html);
			}
		}else if($("#div_fund_4").length == 0) 
		{
			count = count + 1;
			var friends_html = '<div id="div_fund_' + count + '" class="form-group fund">';
			friends_html += '<label class="bold-smaller">Fund '+ count +'</label>';
			friends_html += '<div class="input-group">';
			friends_html += '<input id="txt_fund' + count + '" type="text" class="txt_fund form-control">';
	        friends_html += '<span class="input-group-addon" style="cursor:pointer;"  onclick="removeMoreFund(\'div_fund_' + count + '\')"><i class="fa fa-close font-14"></i></span>';
	        friends_html += '</div>';
			friends_html += '</div>';
			
			if($("#div_fund_5").length != 0)
			{
				$( "#div_fund_5" ).before(friends_html);
			}else{
				$("#div_txt_funds").append(friends_html);
			}
		}else
		{
			count = count + 2;
			var friends_html = '<div id="div_fund_' + count + '" class="form-group fund">';
			friends_html += '<label class="bold-smaller">Fund '+ count +'</label>';
			friends_html += '<div class="input-group">';
			friends_html += '<input id="txt_fund' + count + '" type="text" class="txt_fund form-control">';
	        friends_html += '<span class="input-group-addon" style="cursor:pointer;"  onclick="removeMoreFund(\'div_fund_' + count + '\')"><i class="fa fa-close font-14"></i></span>';
	        friends_html += '</div>';
			friends_html += '</div>';
			
			$("#div_txt_funds").append(friends_html);
		}
	}
	if(count == 4)
	{
		if($("#div_fund_2").length == 0) 
		{
			count = count - 2;
			var friends_html = '<div id="div_fund_' + count + '" class="form-group fund">';
			friends_html += '<label class="bold-smaller">Fund '+ count +'</label>';
			friends_html += '<div class="input-group">';
			friends_html += '<input id="txt_fund' + count + '" type="text" class="txt_fund form-control">';
	        friends_html += '<span class="input-group-addon" style="cursor:pointer;"  onclick="removeMoreFund(\'div_fund_' + count + '\')"><i class="fa fa-close font-14"></i></span>';
	        friends_html += '</div>';
			friends_html += '</div>';
			
			if($("#div_fund_3").length != 0)
			{
				$( "#div_fund_3" ).before(friends_html);
			}else if($("#div_fund_4").length != 0)
			{
				$( "#div_fund_4" ).before(friends_html);
			}else if($("#div_fund_5").length != 0)
			{
				$( "#div_fund_5" ).before(friends_html);
			}else{
				$("#div_txt_funds").append(friends_html);
			}
		}else if($("#div_fund_3").length == 0) 
		{
			count = count - 1;
			var friends_html = '<div id="div_fund_' + count + '" class="form-group fund">';
			friends_html += '<label class="bold-smaller">Fund '+ count +'</label>';
			friends_html += '<div class="input-group">';
			friends_html += '<input id="txt_fund' + count + '" type="text" class="txt_fund form-control">';
	        friends_html += '<span class="input-group-addon" style="cursor:pointer;"  onclick="removeMoreFund(\'div_fund_' + count + '\')"><i class="fa fa-close font-14"></i></span>';
	        friends_html += '</div>';
			friends_html += '</div>';
			
			if($("#div_fund_4").length != 0)
			{
				$( "#div_fund_4" ).before(friends_html);
			}else if($("#div_fund_5").length != 0)
			{
				$( "#div_fund_5" ).before(friends_html);
			}else{
				$("#div_txt_funds").append(friends_html);
			}
		}else if($("#div_fund_4").length == 0) 
		{
			var friends_html = '<div id="div_fund_' + count + '" class="form-group fund">';
			friends_html += '<label class="bold-smaller">Fund '+ count +'</label>';
			friends_html += '<div class="input-group">';
			friends_html += '<input id="txt_fund' + count + '" type="text" class="txt_fund form-control">';
	        friends_html += '<span class="input-group-addon" style="cursor:pointer;"  onclick="removeMoreFund(\'div_fund_' + count + '\')"><i class="fa fa-close font-14"></i></span>';
	        friends_html += '</div>';
			friends_html += '</div>';
			
			if($("#div_fund_5").length != 0)
			{
				$( "#div_fund_5" ).before(friends_html);
			}else{
				$("#div_txt_funds").append(friends_html);
			}
		}else
		{
			count = count + 1;
			var friends_html = '<div id="div_fund_' + count + '" class="form-group fund">';
			friends_html += '<label class="bold-smaller">Fund '+ count +'</label>';
			friends_html += '<div class="input-group">';
			friends_html += '<input id="txt_fund' + count + '" type="text" class="txt_fund form-control">';
	        friends_html += '<span class="input-group-addon" style="cursor:pointer;"  onclick="removeMoreFund(\'div_fund_' + count + '\')"><i class="fa fa-close font-14"></i></span>';
	        friends_html += '</div>';
			friends_html += '</div>';
			
			$("#div_txt_funds").append(friends_html);
		}
	}
	if(count == 5)
	{
		if($("#div_fund_2").length == 0) 
		{
			count = count - 3;
			var friends_html = '<div id="div_fund_' + count + '" class="form-group fund">';
			friends_html += '<label class="bold-smaller">Fund '+ count +'</label>';
			friends_html += '<div class="input-group">';
			friends_html += '<input id="txt_fund' + count + '" type="text" class="txt_fund form-control">';
	        friends_html += '<span class="input-group-addon" style="cursor:pointer;"  onclick="removeMoreFund(\'div_fund_' + count + '\')"><i class="fa fa-close font-14"></i></span>';
	        friends_html += '</div>';
			friends_html += '</div>';
			
			if($("#div_fund_3").length != 0)
			{
				$( "#div_fund_3" ).before(friends_html);
			}else if($("#div_fund_4").length != 0)
			{
				$( "#div_fund_4" ).before(friends_html);
			}else if($("#div_fund_5").length != 0)
			{
				$( "#div_fund_5" ).before(friends_html);
			}else{
				$("#div_txt_funds").append(friends_html);
			}
		}else if($("#div_fund_3").length == 0) 
		{
			count = count - 2;
			var friends_html = '<div id="div_fund_' + count + '" class="form-group fund">';
			friends_html += '<label class="bold-smaller">Fund '+ count +'</label>';
			friends_html += '<div class="input-group">';
			friends_html += '<input id="txt_fund' + count + '" type="text" class="txt_fund form-control">';
	        friends_html += '<span class="input-group-addon" style="cursor:pointer;"  onclick="removeMoreFund(\'div_fund_' + count + '\')"><i class="fa fa-close font-14"></i></span>';
	        friends_html += '</div>';
			friends_html += '</div>';
			
			if($("#div_fund_4").length != 0)
			{
				$( "#div_fund_4" ).before(friends_html);
			}else if($("#div_fund_5").length != 0)
			{
				$( "#div_fund_5" ).before(friends_html);
			}else{
				$("#div_txt_funds").append(friends_html);
			}
		}else if($("#div_fund_4").length == 0) 
		{
			count = count - 1;
			var friends_html = '<div id="div_fund_' + count + '" class="form-group fund">';
			friends_html += '<label class="bold-smaller">Fund '+ count +'</label>';
			friends_html += '<div class="input-group">';
			friends_html += '<input id="txt_fund' + count + '" type="text" class="txt_fund form-control">';
	        friends_html += '<span class="input-group-addon" style="cursor:pointer;"  onclick="removeMoreFund(\'div_fund_' + count + '\')"><i class="fa fa-close font-14"></i></span>';
	        friends_html += '</div>';
			friends_html += '</div>';
			
			if($("#div_fund_5").length != 0)
			{
				$( "#div_fund_5" ).before(friends_html);
			}else{
				$("#div_txt_funds").append(friends_html);
			}
		}else
		{
			var friends_html = '<div id="div_fund_' + count + '" class="form-group fund">';
			friends_html += '<label class="bold-smaller">Fund '+ count +'</label>';
			friends_html += '<div class="input-group">';
			friends_html += '<input id="txt_fund' + count + '" type="text" class="txt_fund form-control">';
	        friends_html += '<span class="input-group-addon" style="cursor:pointer;"  onclick="removeMoreFund(\'div_fund_' + count + '\')"><i class="fa fa-close font-14"></i></span>';
	        friends_html += '</div>';
			friends_html += '</div>';
			
			$("#div_txt_funds").append(friends_html);
		}
	}
	initializeTypeAhead();
}

function removeMoreFund(id)
{
     $("#" + id).remove();
     if($("#transaction_details").is(":visible"))
   	 {
    	 getData();
   	 }
     
    var count = 0;
 	$(".fund").each(function(){
 		count++;
 	});
 	
 	var fund_count = 5 - count;
 	$("#fund_count").html(fund_count);
 	
 	if(count == 5)
 	{
 		$("#more_funds_div").hide();
 	}else{
 		$("#more_funds_div").show();
 	}
}
function gotoRollingReturnsTable()
{
	var category = $("#sel_schemeCategories").val();
	var fundname1 = $("#txt_fund1").val();
	var fundname2 = "";
	var fundname3 = "";
	var fundname4 = "";
	var fundname5 = "";
	var fund_array = new Array();
    var startDate = $("#txt_start_date").val();
    var period = $("#sel_period").val();
    
 	if(category == null || category == "")
    {
 		$("#adv-alert-msg").html("Please select category");
   	    $("#adv-alert").modal('show');
   	    return false;
    }	
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
 	
 	var scheme_array = new Array();
	for(var k=0;k<fund_array.length;k++)
	{
		var scheme_name = fund_array[k];
		var schemeName = encodeURIComponent(scheme_name);
		scheme_array.push(schemeName);
	}
 	
 	top.location = "/mutual-funds-research/mutual-fund-rolling-returns?category="+category+"&schemes="+scheme_array+"&start_date="+startDate+"&period="+period;
}

function saveResult() 
{	
	var fund = '${schemes}';
	var category = $("#sel_schemeCategories").val();
	var fundname1 = $("#txt_fund1").val();
	var fundname2 = "";
	var fundname3 = "";
	var fundname4 = "";
	var fundname5 = "";
	var fund_array = new Array();
    var startDate = $("#txt_start_date").val();
    var period = $("#sel_period").val();
    
	var accountMap = '${accountMap}';
	var title = "Rolling Return vs Category -> Category = " + category + ", Schemes = " + fund + ", Start Date = " + startDate + ", Rolling Return Period = " + period;
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

function resetFundBoxes()
{
	$(".txt_fund").val(""); 	
}
</script>

<div class="main-content">
 
  <section class="header_color">
      <div class="container pt-120 pb-20">
        <!-- Section Content -->
        <div class="section-content">
          <div class="row text-center">
            <div class="col-md-12">
              <h2 class="title text-dark">Mutual Fund Rolling Returns versus Category Returns</h2>
              <ol class="breadcrumb text-black mt-10">
                <li><a href="#" class="title_header">Home</a></li>
                <li><a href="#" class="title_header">Mutual Funds Research</a></li>
                <li class="active">Mutual Fund Rolling Returns versus Category Returns</li>
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
       <c:if test="${page == 'rolling-returns' && category_set == 'false'}">
        Mutual Fund Rolling Returns versus Category Returns
        </c:if>
        
        <c:if test="${page == 'rolling-returns' && category_set == 'true'}">
        Mutual Fund Rolling Returns versus <c:out value="${category}"></c:out> Category Returns
        </c:if>
   </h6>
   <div class="card-body mf-research-body">
									<div class="row ">
				        	<div class="col-md-6 col-sm-6">
				           <div class="form-group">
				            <label class="bold-smaller">Select Category</label>
				            <select id="sel_schemeCategories" onchange="resetFundBoxes()" class="form-control" data-width="100%"> 
							<c:forEach var="categories" items="${schemeCategories}"> 
				                <c:choose>
				                <c:when test="${categories eq category}">
				                  <option selected="selected" value="<c:out value="${categories}"></c:out>"><c:out value="${categories}"></c:out></option>
				                </c:when>
				                <c:otherwise>
				                  <c:if test="${categories != 'Fixed Maturity Plans' && categories != 'Gold Funds'}">
				                  <option value="<c:out value="${categories}"></c:out>"><c:out value="${categories}"></c:out></option>
				                  </c:if>
				                </c:otherwise>
				               </c:choose>
				             </c:forEach>
				             </select> 
				           </div>
				        </div>
				        
				        <div class="col-md-6 col-sm-6">
				        <div id="div_txt_funds">              
				          <div id="div_fund_1" class="form-group fund">
				          <label class="bold-smaller width-100">Fund 1</label>
				          <input id="txt_fund1" type="text" class="txt_fund form-control no-radius">
				          </div>       
				        </div>
				        <div class="form-group" id="more_funds_div">
						  <a href="javascript:void(0);" class="stepsAddmore" onclick="addMoreFund()"><i class="fa fa-plus-square font-14  marginRight10"></i> Add another fund (upto <span id="fund_count">4</span>)</a>
					    </div>
				        </div>
				        
				        </div>
				        
				        <div class="row ">    
				        
						<div class="col-md-4 col-sm-4">
				        <div class="form-group">
				          <label class="bold-smaller">Select Start Date</label>
				          <input type="text" id="txt_start_date" value="${start_date}" class="form-control datepicker no-radius" />
				        </div>
				        </div>  
				        
						<div class="col-md-4 col-sm-4">
				       	   <div class="form-group">
				            <label class="bold-smaller block">Select Rolling Return Period
				            <i class="fa fa-question-circle font-14" data-toggle="tooltip" title="The Rolling Return period should correspond to your typical investment holding period. For example, if you hold your investment for 3 years, then select 3 years in the Rolling Return Period"></i>
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
				          
						<div class="col-md-4 pl-4 pr-4 justify-content-end align-self-end">
							<div class="form-group">
							<label class="bold block hidden-xs">&nbsp;</label>
							<br/>
					        <a href="javascript:void(0)" id="submit_btn" class="btn btn-primary btn-submit" onclick="showResult()" data-style="expand-right" data-size="l"><span class="ladda-label">Submit</span></a>
					        </div>
						</div>
						
				        </div>
   </div>
</div>

	<div class="container service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
		<div class="row marginBottom20">
			<div class="col-md-12 table-responsive">
						      		<div class="row">
				  	<div class="">
				  		<div class="col-md-12 col-sm-12 col-xs-6 padding-0">	
			        	<h6 class="font-size-20 bold-smaller15 margin-bottom0 mt-4 mb-3" style="line-height: 15px;">Rolling Returns</h6>
			        	</div>
			      	</div>
		      		</div>
		      		
		      		

			      	<div style="width:100%;" class="border">
			            <div class="panel panel-default adv-panel">
			            <div class="panel-body padding0 relative text-center" id="rolling-returns-container-div">
						  <i id="rolling-returns-spinner" class="fa fa-cog fa-spin fa-2x" style="margin-top: 100px;margin-bottom: 100px;"></i>
			              <div id="rolling-returns-container" style="width:100%;"></div>              
			            </div>
			         </div>    
			     
			     <div class="table-responsive">
				       <table class="adv-table table table-striped mf-research-table table-bordered" id="tbl_scheme_returns">
				        <thead>
				        	<tr>
				                <th></th>
				                <th colspan="4" class="text-center">Key Parameters</th>
				               	<th colspan="6" class="text-center">Return Consistency (% of times)</th>
				            </tr>
				            <tr>
				                <th>Scheme / Category Name</th>
				                <th class="text-center">Average</th>
				                <th class="text-center">Median</th>
				               	<th class="text-center">Maximum</th>
				              	<th class="text-center">Minimum</th>
				               	<th class="text-center">Less than 0%</th>
				               	<th class="text-center">0 - 8%</th>
				               	<th class="text-center">8 - 12%</th>
				               	<th class="text-center">12 - 15%</th>
				               	<th class="text-center">15 - 20%</th>
				               	<th class="text-center">Greater than 20%</th>
				            </tr>
				            </thead>
				            <tbody>
				            <c:forEach items="${rollingReturnsSummaryList}" var="rollingReturns" varStatus="status">	              
				              <tr>
				                <td><a href='/mutual-funds-research/fund-card?scheme=<c:out value="${rollingReturns.scheme_name}"></c:out>' class="mutual-funds-anchor"><c:out value="${rollingReturns.scheme_name}"></c:out></a></td>
				                <td class="text-center"><fmt:formatNumber value="${rollingReturns.average}" minFractionDigits="2" maxFractionDigits="2" /></td>
				                <td class="text-center"><fmt:formatNumber value="${rollingReturns.median}" minFractionDigits="2" maxFractionDigits="2" /></td>
				                <td class="text-center"><fmt:formatNumber value="${rollingReturns.maximum}" minFractionDigits="2" maxFractionDigits="2" /></td>
				                <td class="text-center"><fmt:formatNumber value="${rollingReturns.minimum}" minFractionDigits="2" maxFractionDigits="2" /></td>
				                <td class="text-center"><fmt:formatNumber value="${rollingReturns.less_than_0}" minFractionDigits="2" maxFractionDigits="2" /></td>
				                <td class="text-center"><fmt:formatNumber value="${rollingReturns.less_than_5}" minFractionDigits="2" maxFractionDigits="2" /></td>
				                <td class="text-center"><fmt:formatNumber value="${rollingReturns.less_than_10}" minFractionDigits="2" maxFractionDigits="2" /></td>
				                <td class="text-center"><fmt:formatNumber value="${rollingReturns.less_than_15}" minFractionDigits="2" maxFractionDigits="2" /></td>
				                <td class="text-center"><fmt:formatNumber value="${rollingReturns.less_than_20}" minFractionDigits="2" maxFractionDigits="2" /></td>
				                <td class="text-center"><fmt:formatNumber value="${rollingReturns.greater_than_20}" minFractionDigits="2" maxFractionDigits="2" /></td>
								</tr>
				            </c:forEach>
				            </tbody>
				       </table>
				</div>
			     
				<div class="col-md-12 col-sm-12 mt-20">
			        <p style="text-align:justify;font-size:14px;">Rolling returns are the annualized returns of the scheme taken for a specified period (rolling returns period) 
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
	</section>
 
 </div>
  