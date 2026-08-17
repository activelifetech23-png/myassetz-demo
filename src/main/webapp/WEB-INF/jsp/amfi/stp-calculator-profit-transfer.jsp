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
.mf-research-table tfoot tr td{
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
.mf-research-table thead tr th{
	border:1px solid #eee;
	background-color:#054F80;
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
var stp_count = "";
function changeAmcCompany()
{
    var amc = $("#sel_amc").val();
    
    $.ajaxSetup({async:true});
	$.post("/mutual-funds-research/getSchemeByAmc", {amc : "" + amc + ""}, function(data)
    {
		var scheme = $.trim(data);
		var scheme_obj = jQuery.parseJSON(scheme);
		var scheme_array = $.makeArray(scheme_obj);
		var html = "";
		for (var i = 0; i < scheme_array.length; i++)
	    {
			html += '<option value="' + scheme_array[i]+ '">' + scheme_array[i] + '</option>';
	    }
		$("#sel_from_scheme").html(html);
		//$('#sel_from_scheme').selectpicker('refresh');
		
		$("#sel_to_scheme").html(html);
		//$('#sel_to_scheme').selectpicker('refresh');
		
    },'text');
}
function checkInsuptionDate()
{
	var from_scheme = $("#sel_from_scheme").val();
    var to_scheme = $("#sel_to_scheme").val();
    var init_start_date = $("#txt_init_start_date").val();
    if(init_start_date == "")
 	{
 		$("#adv-alert-msg").html("Please select lumpsum amount investment date.");
   	    $("#adv-alert").modal('show');
		return;
 	}
    var fromSchemeName = encodeURIComponent(from_scheme);
    var toSchemeName = encodeURIComponent(to_scheme);
	var start_date_arr = init_start_date.split("-");
	var start_date_str = start_date_arr[2] + "-" + start_date_arr[1] + "-" + start_date_arr[0];
	var start_date = new Date(start_date_str);
	var flag = false;
	
	$.ajaxSetup({async:false});
	$.post("/mutual-funds-research/getSchemeStartAndEndDate", {scheme_name : "" + fromSchemeName + ""}, function(data)
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
	
	flag = false;
	
	$.ajaxSetup({async:false});
	$.post("/mutual-funds-research/getSchemeStartAndEndDate", {scheme_name : "" + toSchemeName + ""}, function(data)
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
			//swal(from_scheme+" inception date is "+ moment(inception_date).format("DD-MM-YYYY") +". Please select a Intial investement date which is greater than or equal to scheme inception date.");
	   	 	flag = true;
			return false;
		}
    },'text');
	
	if(flag)
	{
		return false;
	}
}

function checkSTPDate()
{
	var from_scheme = $("#sel_from_scheme").val();
    var to_scheme = $("#sel_to_scheme").val();
    var from_date = $("#txt_from_date").val();
    if(from_date == "")
 	{
 		$("#adv-alert-msg").html("Please select STP start date.");
   	    $("#adv-alert").modal('show');
		return;
 	}
    var fromSchemeName = encodeURIComponent(from_scheme);
    var toSchemeName = encodeURIComponent(to_scheme);
	var start_date_arr = from_date.split("-");
	var start_date_str = start_date_arr[2] + "-" + start_date_arr[1] + "-" + start_date_arr[0];
	var start_date = new Date(start_date_str);
	var flag = false;
	
	$.ajaxSetup({async:false});
	$.post("/mutual-funds-research/getSchemeStartAndEndDate", {scheme_name : "" + fromSchemeName + ""}, function(data)
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
	
	flag = false;
	
	$.ajaxSetup({async:false});
	$.post("/mutual-funds-research/getSchemeStartAndEndDate", {scheme_name : "" + toSchemeName + ""}, function(data)
    {
		var schemes = $.trim(data);
		var schemes_obj = jQuery.parseJSON(schemes);
		var schemes_array = $.makeArray(schemes_obj);
		var from = schemes_array[0].split("-");
		var inception_date = new Date(from[2], from[1] - 1, from[0]);
		if(start_date < inception_date)
		{
			$("#adv-alert-msg").html(to_scheme+" inception date is "+ moment(inception_date).format("DD-MM-YYYY") +". Please select a STP start date which is greater than or equal to scheme inception date.");
	   	    $("#adv-alert").modal('show');
	   	 	flag = true;
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
	var amc = $("#sel_amc").val();
    var from_scheme = $("#sel_from_scheme").val();
    var to_scheme = $("#sel_to_scheme").val();
    var initial_amount = $("#txt_init_amount").val();
    var init_start_date = $("#txt_init_start_date").val();
    var period = $("#sel_period").val();
    var from_date = $("#txt_from_date").val();
    var to_date = $("#txt_to_date").val();  
		
 	if(initial_amount == "" || init_start_date == "" || from_date == "" || to_date == "")
 	{
 		$("#adv-alert-msg").html("All fields are mandatory");
   	    $("#adv-alert").modal('show');
		return;
 	}
	if(isNaN(initial_amount) || parseInt(initial_amount) < 1)
	{
		$("#adv-alert-msg").html("Please enter the valid initial amount");
   	    $("#adv-alert").modal('show');
		return;
	}
	if(from_scheme == to_scheme)
	{
		$("#adv-alert-msg").html("Transfer from scheme and to scheme should not be same");
   	    $("#adv-alert").modal('show');
		return;
	}	 
	
	var init_date_arr = init_start_date.split("-");
	var init_date_str = init_date_arr[2] + "-" + init_date_arr[1] + "-" + init_date_arr[0];
	var start_date_arr = from_date.split("-");
	var start_date_str = start_date_arr[2] + "-" + start_date_arr[1] + "-" + start_date_arr[0];
	var end_date_arr = to_date.split("-");
	var end_date_str = end_date_arr[2] + "-" + end_date_arr[1] + "-" + end_date_arr[0];
	
	var init_date = new Date(init_date_str);
	var start_date = new Date(start_date_str);
	var startDate = new Date(start_date_str);
	var end_date = new Date(end_date_str);
	
	if(start_date < init_date)
	{
		$("#adv-alert-msg").html("Please select STP start date less than intial amount start date");
   	    $("#adv-alert").modal('show');
		return;
	}
	if(end_date <= start_date)
	{
		$("#adv-alert-msg").html("Please select valid start date and end date");
   	    $("#adv-alert").modal('show');
		return;
	}
	if(period == "Weekly")
	{
		start_date.setDate(start_date.getDate() + 7);
		if(end_date <= start_date)
		{
			$("#adv-alert-msg").html("Please select valid start date and end date");
	   	    $("#adv-alert").modal('show');
			return;
		}
	}
	if(period == "Fortnightly")
	{
		start_date.setDate(start_date.getDate() + 15);
		if(end_date <= start_date)
		{
			$("#adv-alert-msg").html("Please select valid start date and end date");
	   	    $("#adv-alert").modal('show');
			return;
		}
	}
	if(period == "Monthly")
	{
		start_date.setMonth(start_date.getMonth() + 1);
		if(end_date <= start_date)
		{
			$("#adv-alert-msg").html("Please select valid start date and end date");
	   	    $("#adv-alert").modal('show');
			return;
		}
	}
	if(period == "Quarterly")
	{			
		start_date.setMonth(start_date.getMonth() + 3);
		if(end_date <= start_date)
		{
			$("#adv-alert-msg").html("Please select valid start date and end date");
	   	    $("#adv-alert").modal('show');
			return;
		}
	}
	
	var fromScheme = encodeURIComponent(from_scheme);
	var toScheme = encodeURIComponent(to_scheme);
	var flag = false;
	
	$.ajaxSetup({async:false});
	$.post("/mutual-funds-research/getSchemeStartAndEndDate", {scheme_name : "" + fromScheme + ""}, function(data)
    {
		var schemes = $.trim(data);
		var schemes_obj = jQuery.parseJSON(schemes);
		var schemes_array = $.makeArray(schemes_obj);
		var from = schemes_array[0].split("-");
		var from_scheme_inception_date = new Date(from[2], from[1] - 1, from[0]);
		if(startDate < from_scheme_inception_date)
		{
			$("#adv-alert-msg").html(from_scheme+" inception date is "+ from_scheme_inception_date.format("dd-mm-yyyy") +". Please select a STP start date which is greater than or equal to scheme inception date.");
	   	    $("#adv-alert").modal('show');
	   	 	flag = true;
			return false;
		}
		if(init_date < from_scheme_inception_date && flag == false)
		{
			$("#adv-alert-msg").html(from_scheme+" inception date is "+ from_scheme_inception_date.format("dd-mm-yyyy") +". Please select a lumpsum amount investement date which is greater than or equal to scheme inception date.");
	   	    $("#adv-alert").modal('show');
	   	 	flag = true;
			return false;
		}
    },'text');
	
	if(flag)
	{
		return false;
	}
	
	$.ajaxSetup({async:false});
	$.post("/mutual-funds-research/getSchemeStartAndEndDate", {scheme_name : "" + toScheme + ""}, function(data)
    {
		var schemes = $.trim(data);
		var schemes_obj = jQuery.parseJSON(schemes);
		var schemes_array = $.makeArray(schemes_obj);
		var from = schemes_array[0].split("-");
		var to_scheme_inception_date = new Date(from[2], from[1] - 1, from[0]);
		if(startDate < to_scheme_inception_date)
		{
			$("#adv-alert-msg").html(to_scheme+" inception date is "+ to_scheme_inception_date.format("dd-mm-yyyy") +". Please select a start date which is greater than or equal to scheme inception date.");
	   	    $("#adv-alert").modal('show');
	   	 	flag = true;
			return false;
		}
    },'text');
	
	if(flag)
	{
		return false;
	}
	
	
	$.ajaxSetup({async:false});
	$.post("/mutual-funds-research/getSchemeCategory", {scheme_name : "" + fromScheme + ""}, function(data)
    {
		var category = $.trim(data);
		//alert("category--->"+category);
		
		if(category == "Equity: ELSS")
		{
			var init_date = new Date(init_date_str);
			var start_date = new Date(start_date_str);
			init_date.setFullYear(init_date.getFullYear() + 3);
			
			if(start_date < init_date)
			{
				$("#adv-alert-msg").html("ELSS schemes are locked-in for 3 years from the date of investment. STP is not allowed during the lock-in period.");
		   	    $("#adv-alert").modal('show');
		   	 	flag = true;
				return false;
			}
		}
		
    },'text');
	
	if(flag)
	{
		return false;
	}
	
	$.ajaxSetup({async:false});
	$.post("/mutual-funds-research/getSchemeCategory", {scheme_name : "" + toScheme + ""}, function(data)
    {
		var category = $.trim(data);
		//alert("category--->"+category);
		
		if(category == "Equity: ELSS")
		{
			var init_date = new Date(init_date_str);
			var start_date = new Date(start_date_str);
			init_date.setFullYear(init_date.getFullYear() + 3);
			
			if(start_date < init_date)
			{
				$("#adv-alert-msg").html("ELSS schemes are locked-in for 3 years from the date of investment. STP is not allowed during the lock-in period.");
		   	    $("#adv-alert").modal('show');
		   	 	flag = true;
				return false;
			}
		}
		
    },'text');
	
	if(flag)
	{
		return false;
	}
	
	amc = encodeURIComponent(amc);
	from_scheme = encodeURIComponent(from_scheme);
	to_scheme = encodeURIComponent(to_scheme);
	
 	top.location = "/mutual-funds-research/stp-calculator-profit-transfer?amc="+amc+"&from_scheme="+from_scheme+"&to_scheme="+to_scheme+"&intial_amount="+initial_amount+"&period="+period+"&from_date="+from_date+"&to_date="+to_date+"&init_start_date="+init_start_date;
}

$(document).ready(function(){
	
	$('.datepicker').datepicker({
		format: 'dd-mm-yyyy',
		endDate: '-1d',
		autoclose:true,
		disableTouchKeyboard:true
	}).on('changeDate', function(ev) {
		var ID = $(this).attr("id");
		if(ID == "txt_init_start_date")
		{
			checkInsuptionDate();
		}
		if(ID == "txt_from_date")
		{
			checkSTPDate();
		}
	});
	
	var amc = '${amc}';
	if(amc != '')
	{
		$("#sel_amc").val(amc);
		//'#sel_amc').niceSelect('update');
		//$("#sel_amc").selectpicker("refresh");
		
	}
	
	var from_scheme = '${from_scheme}';
	if(from_scheme != '')
	{
		$("#sel_from_scheme").val(from_scheme);
		//$('#sel_from_scheme').niceSelect('update');
		//$("#sel_from_scheme").selectpicker("refresh");
	}
	
	var to_scheme = '${to_scheme}';
	if(to_scheme != '')
	{
		$("#sel_to_scheme").val(to_scheme);
		//$('#sel_to_scheme').niceSelect('update');
		//$("#sel_to_scheme").selectpicker("refresh");
	}
	
	$("#stp-transferor").dataTable({
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
	
	$("#stp-totalreturns").dataTable({
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
	
	$("#growth-details1").dataTable({
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
	
	$("#growth-details2").dataTable({
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
		$(this).html(numbersWithComma(parseFloat($(this).html()).toFixed(2)));  
	});
	
	$(".units_comma_4fixed").each(function() {
		$(this).html(numbersWithComma(parseFloat($(this).html()).toFixed(4)));  
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
function gotoTop()
{
	$('html,body').animate({
        scrollTop: 0
    }, 700);
}
function getStartAndEndDate()
{
	if($("#chk_date").is(":checked"))
	{
		var scheme_name = $("#sel_from_scheme").val();
		var schemeName = encodeURIComponent(scheme_name);
		var inception_date =  "";
		
		$.ajaxSetup({async:false});
		$.post("/mutual-funds-research/getSchemeStartAndEndDate", {scheme_name : "" + schemeName + ""}, function(data)
	    {
			var schemes = $.trim(data);
			var schemes_obj = jQuery.parseJSON(schemes);
			var schemes_array = $.makeArray(schemes_obj);
			var from = schemes_array[0].split("-");
			inception_date = new Date(from[2], from[1] - 1, from[0]);
	    },'text');
		
		//$("#txt_init_start_date").val(inception_date.format("dd-mm-yyyy"));
		$("#txt_init_start_date").val(moment(inception_date).format("DD-MM-YYYY"));
		$('#txt_init_start_date').datepicker('setDate', inception_date);
	}
}


function saveResult() 
{	
	var amc = $("#sel_amc").val();
    var from_scheme = $("#sel_from_scheme").val();
    var to_scheme = $("#sel_to_scheme").val();
    var initial_amount = $("#txt_init_amount").val();
    var init_start_date = $("#txt_init_start_date").val();
    var period = $("#sel_period").val();
    var from_date = $("#txt_from_date").val();
    var to_date = $("#txt_to_date").val();  
	
	var accountMap = '${accountMap}';
	var title = "STP Calculator Profit Transfer -> Amc = " + amc + ", From Scheme = " + from_scheme + ", To Scheme = " + to_scheme + ", Initial Investment Amount = " + initial_amount + ", Initial Investment Date = " + init_start_date + ", Frequency = " + period + ", STP Start Date = " + from_date + ", STP End Date = " + to_date ;
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
            <h1 class="pagetitle__heading">STP Calculator Profit Transfer</h1>
            <nav>
              <ol class="breadcrumb mb-0">
                <li class="breadcrumb-item"><a href="/">Home</a></li>
                <li class="breadcrumb-item"><a href="/tools-and-calculators/become-a-crorepati">Mutual Funds Research</a></li>
                <li class="breadcrumb-item active" aria-current="page">STP Calculator Profit Transfer</li>
              </ol>
            </nav>
          </div><!-- /.col-12 -->
        </div><!-- /.row -->
      </div><!-- /.container -->
    </section><!-- /.page-title -->
        
		<section class="section pt-4 pb-8" style="background-color:#fff;">
		
`<div class="container card shadow mb-4">
   <h6 class="card-header mf-research-header">
      STP Calculator Profit Transfer
   </h6>
   <div class="card-body mf-research-body">
													<div class="row pl-4 pr-4 pb-3">
				        <div class="col-md-4 col-sm-4">
				        	<div class="form-group">
				          	<label class="bold-smaller">Select AMC</label>
					        <select id="sel_amc" class="form-control" onchange="changeAmcCompany()" data-width="100%">
								<c:forEach items="${amcCompanies}" var="amc_name">
								<option value="<c:out value="${amc_name}"></c:out>"><c:out value="${amc_name}"></c:out></option>
								</c:forEach>
						    </select>
							</div>
						</div>
				        
				        <div class="col-md-4 col-sm-4">
				        	<div class="form-group">
						    <label class="bold-smaller">Transfer From Scheme</label>
							<select id="sel_from_scheme" class="form-control" data-width="100%">
								<c:forEach items="${schemes}" var="scheme">
								<option value="<c:out value="${scheme}"></c:out>"><c:out value="${scheme}"></c:out></option>
								</c:forEach>
							</select>	
							</div>
				        </div>
				        
				        <div class="col-md-4 col-sm-4">
				        	<div class="form-group">
						    <label class="bold-smaller width-100">Transfer To Scheme
						    	<%-- <span class="width-50 pull-right download_anchor">
							        <c:choose>
									  	<c:when test="${empty accountMap.userid}">
									  		<a onClick="openLogin();" style="cursor:pointer;float:right;color:white;text-decoration:none;" class="btn btn-sm btn-success">Download Result</a>					  	
									  	</c:when>
									  	<c:otherwise>
								  			<a onClick="downloadExcel();" style="cursor:pointer;float:right;color:white;text-decoration:none;" class="btn btn-sm btn-success">Download Result</a>	
								  	    </c:otherwise>
								  	</c:choose>
							  	</span> --%>
						    </label>
							<select id="sel_to_scheme" class="form-control" data-width="100%">
								<c:forEach items="${schemes}" var="scheme">
								<option value="<c:out value="${scheme}"></c:out>"><c:out value="${scheme}"></c:out></option>
								</c:forEach>
							</select>	
							</div>
				        </div>
				        
				        </div>
				        
				        <div class="row pl-4 pr-4 pb-3">
				        
				        	<div class="col-md-4 col-sm-4">
					          <div class="form-group">
					            <label class="bold-smaller">Initial Investment Amount</label>
					            <input type="text" id="txt_init_amount" value="${initial_amount}" maxlength="8" class="form-control no-radius" />
					          </div>
					        </div>
					        
					        <div class="col-md-4 col-sm-4">
					          <div class="form-group">
					            <label class="bold-smaller">Initial Investment Date</label>
					            <input type="text" id="txt_init_start_date" value="${init_start_date}" class="form-control datepicker no-radius" />
					          </div>
					        <div class="form-group">
							<div class="checkbox mt-1">
							<label><input id="chk_date" type="checkbox" value="" onchange="getStartAndEndDate()"> Prefill date with inception date</label>
							</div>
				        </div>
					        </div>
					        
							<div class="col-md-4 col-sm-4">
					          <div class="form-group">
					            <label class="bold-smaller block">Select Frequency</label>
					            <select id="sel_period" class="form-control" data-width="100%">
									<option value="Weekly" <c:if test="${period eq 'Weekly' }"><c:out value="selected" /></c:if>>Weekly</option>
									<option value="Fortnightly" <c:if test="${period eq 'Fortnightly' }"><c:out value="selected" /></c:if>>Fortnightly</option>
					            	<option value="Monthly" <c:if test="${period eq 'Monthly' }"><c:out value="selected" /></c:if>>Monthly</option>
					            	<option value="Quarterly" <c:if test="${period eq 'Quarterly' }"><c:out value="selected" /></c:if>>Quarterly</option>
								</select>
					          </div>
					        </div>
					        
					       </div>
					       
					       <div class="row pl-4 pr-4">
				
					        <div class="col-md-3 col-sm-3">
					          <div class="form-group">
					            <label class="bold-smaller">Select STP Start Date</label>
					            <input type="text" id="txt_from_date" value="${from_date}" class="form-control datepicker no-radius" />
					          </div>
					        </div>
					        
							<div class="col-md-3 col-sm-3">
					          <div class="form-group">
					            <label class="bold-smaller">Select STP End Date</label>
					            <input type="text" id="txt_to_date" value="${to_date}" class="form-control datepicker no-radius" />
					          </div>
					        </div>
					        
					        <div class="col-md-3 col-sm-3 justify-content-end align-self-end">
					          	<div class="form-group">
					          	<label class="bold-smaller visible-md visible-lg">&nbsp;</label>
						      	<a href="javascript:void(0)" class="btn btn-primary" onclick="getData()">Submit</a>
						    	</div>
					        </div>
					        
					        </div>
   </div>
</div>
		
	<div class="container card shadow">
		<div class="row marginBottom20">
			<div class="col-md-12 table-responsive">
												     <div class="">
				 <div class="">
			        <div class="row">
				 	<div class="col-md-9">
			        <h6 class="font-size-14 bold-smaller15 margin-bottom5 mt-3 mb-3" style="line-height: 20px;">STP - Transferor Scheme : <a href='/mutual-funds-research/fund-card?scheme=<c:out value="${schemeMapping_from.scheme_amfi_url}"></c:out>' class="mutual-funds-anchor">${from_scheme}</a>			        
			        </h6>
			        </div>
				  	</div>
			        
			       <c:choose>
			        <c:when test="${lumpsum_option eq 'LAEP'}">
					<div >
					<table class="adv-table table table-striped table-responsive mf-research-table table-bordered" style="width:100%;"
id="stp-transferor">
					<thead><tr>
					<th class="text-center">Initial Investment Amount</th>
					<th class="text-center">STP Period</th>
					<th class="text-center">No of ${period} Installments</th>
					<th class="text-center">Total No. Units Remaining</th>
					<th class="text-center">Total Amount Transferred</th>
					<th class="text-center">Value as on ${from_current_value_date}</th>
					<th class="text-center">Current Value as on ${from_final_nav_date}</th>
					<th class="text-center">Profit</th>
					<th class="text-center">Returns (%)</th>
					</tr></thead><tbody>
					<tr>
					<td class="text-center comma_fixed"><fmt:formatNumber value="${total_lumpsum_amount}" maxFractionDigits="0" /></td>
					<td class="nowrap text-center">${from_date} to ${to_date}</td>
					<td class="text-center">${installments}</td>
					<td class="text-center"><fmt:formatNumber value="${from_remain_units}" maxFractionDigits="2" /></td>
					<td class="text-center comma_fixed">${trans_amount}</td>
					<td class="text-center comma_fixed">${from_current_value}</td>	
					<td class="text-center comma_fixed">${from_final_current_value}</td>	
					<td class="text-center comma_fixed">${from_profit}</td>
					<td class="text-center units_comma_fixed">${from_returns}</td>	
					</tr>
					</tbody></table>
					</div>	
					</c:when>
					<c:otherwise>
					<div >
					<table class="adv-table table table-striped table-responsive mf-research-table table-bordered" style="width:100%;"
id="stp-transferor">
					<thead><tr>
					<th class="text-center">Total Investment Amount</th>
					<th class="text-center">STP Period</th>
					<th class="text-center">No of ${period} Installments</th>
					<th class="text-center">Total No. Units Remaining</th>
					<th class="text-center">Total Amount Transferred</th>
					<th class="text-center">Value as on ${from_current_value_date}</th>
					<th class="text-center">Current Value as on ${from_final_nav_date}</th>
					<th class="text-center">Profit</th>
					<th class="text-center">Returns (%)</th>
					</tr></thead><tbody>
					<tr>
					<td class="text-center"><fmt:formatNumber value="${total_lumpsum_amount}" maxFractionDigits="0" /></td>
					<td class="nowrap text-center">${from_date} to ${to_date}</td>
					<td class="text-center">${installments}</td>
					<td class="text-center"><fmt:formatNumber value="${from_remain_units}" maxFractionDigits="2" /></td>
					<td class="text-center comma_fixed">${trans_amount}</td>
					<td class="text-center comma_fixed">${from_current_value}</td>	
					<td class="text-center comma_fixed">${from_final_current_value}</td>	
					<td class="text-center comma_fixed">${from_profit}</td>
					<td class="text-center">${from_returns}</td>	
					</tr>
					</tbody></table>
					</div>	
					</c:otherwise>
					</c:choose>		
							
					<h6 class="font-size-14 marginTop30 bold-smaller15 margin-bottom5 mt-3 mb-3">STP - Transferee Scheme : <a href='/mutual-funds-research/fund-card?scheme=<c:out value="${schemeMapping_to.scheme_amfi_url}"></c:out>' class="mutual-funds-anchor">${to_scheme}</a>
					
					</h6>
					<div >
					<table class="adv-table table table-striped mf-research-table table-bordered" style="width:100%;"
id="stp-transferee">
					<thead><tr>
					<th class="text-center">STP Period</th>
					<th class="text-center">No of ${period} Installments</th>
					<th class="text-center">Total No. Units Accumulated</th>
					<th class="text-center">Total Amount Invested</th>
					<th class="text-center">Value as on ${to_current_value_date}</th>
					<th class="text-center">Current Value as on ${to_final_nav_date}</th>
					<th class="text-center">Profit</th>
					<th class="text-center">Returns (%)</th>
					</tr></thead><tbody>
					<tr>
					<td class="nowrap text-center">${from_date} to ${to_date}</td>
					<td class="text-center">${installments}</td>
					<td class="text-center"><fmt:formatNumber value="${to_remain_units}" maxFractionDigits="2" /></td>
					<td class="text-center comma_fixed">${trans_amount}</td>
					<td class="text-center comma_fixed">${to_current_value}</td>
					<td class="text-center comma_fixed">${to_final_current_value}</td>
					<td class="text-center comma_fixed">${to_profit}</td>
					<td class="text-center units_comma_fixed">${to_returns}</td>
					</tr>
					</tbody></table>
					</div>
					
					<h6 class="font-size-14 marginTop30 bold-smaller15 margin-bottom5 mt-3 mb-3">STP - Total Returns:</h6>
					<div >
					<table class="adv-table table table-striped mf-research-table table-bordered" style="width:100%;"
id="stp-totalreturns">
					<thead><tr>
					<th class="text-center">Total Investment Amount</th>
					<th class="text-center">Total Current Value</th>
					<th class="text-center">Total Profit</th>
					<th class="text-center">Total Returns (%)</th>
					</tr></thead><tbody>
					<tr>
					<td class="text-center comma_fixed">${total_lumpsum_amount}</td>
					<td class="text-center comma_fixed">${total_current_value}</td>
					<td class="text-center comma_fixed">${total_profit}</td>
					<td class="text-center comma_fixed">${total_returns}</td>
					</tr>
					</tbody></table>
					</div>
			       	</div>
			
			        <div class="">
					<h6 class='font-size-20 bold-smaller15 margin-bottom5 mt-3 mb-3'>${from_scheme}</h6>
					<div >
					<table class="adv-table table table-striped mf-research-table table-bordered" style="width:100%;"
id="growth-details1">
					<thead>
					<tr>
					<th class="text-center">Nav Date</th>
					<th class="text-center">Nav</th>
					<th class="text-center">Units</th>
					<th class="text-center">Cumulative Units</th>
					<th class="text-center">Value Before STP</th>
					<th class="text-center">Cash Flow</th>
					<th class="text-center">Capital Gain/Loss<br>(Profit Transfer)</th>
					<th class="text-center">No. of Days<br>(Invested)</th>
					<th class="text-center">Current Value After STP</th>
					</tr>
					</thead>
					<tbody>
					<c:forEach items="${from_scheme_list}" var="scheme">
					<tr>
					<td class="text-center "><fmt:formatDate pattern="dd-MM-yyyy" value="${scheme.nav_date}" /></td>
			    	<td class="text-center units_comma_4fixed"><c:out value="${scheme.nav}"></c:out></td>
			    	<td class="text-center "><fmt:formatNumber value="${scheme.units}" maxFractionDigits="4" /></td>
			    	<td class="text-center units_comma_4fixed">${scheme.cumulative_units}</td>
			    	<td class="text-center comma_fixed">${scheme.amount}</td>
			    	<td class="text-center comma_fixed">${scheme.cash_flow}</td>
			    	<td class="text-center comma_fixed">${scheme.capital_gain}</td>
			    	<td class="text-center"><fmt:formatNumber value="${scheme.no_of_days}" maxFractionDigits="0" /></td>
			    	<td class="text-center comma_fixed">${scheme.current_value}</td>
			    	</tr>
					</c:forEach>
					</tbody>
					</table>
			       	</div>
			       </div>
			       
			       <div class="">
					<h6 class='font-size-20 bold-smaller15 margin-bottom5 mt-3 mb-3'>${to_scheme}</h6>
					<div >
					<table class="adv-table table table-striped mf-research-table table-bordered" style="width:100%;"
id="growth-details2">
					<thead>
					<tr>
					<th class="text-center">Nav Date</th>
					<th class="text-center">Nav</th>
					<th class="text-center">Units</th>
					<th class="text-center">Cumulative Units</th>
					<th class="text-center">Cash Flow</th>
					<th class="text-center">Amount</th>
					<th class="text-center">Current Value</th>
					</tr>
					</thead>
					<tbody>
					<c:forEach items="${to_scheme_list}" var="scheme">
					<tr>
					<td class="text-center"><fmt:formatDate pattern="dd-MM-yyyy" value="${scheme.nav_date}" /></td>
			    	<td class="text-center"><c:out value="${scheme.nav}"></c:out></td>
			    	<td class="text-center units_comma_4fixed">${scheme.units}</td>
			    	<td class="text-center units_comma_4fixed">${scheme.cumulative_units}</td>
			    	<td class="text-center comma_fixed">${scheme.cash_flow}</td>
			    	<td class="text-center comma_fixed">${scheme.amount}</td>
			    	<td class="text-center comma_fixed">${scheme.current_value}</td>
				    	
			    	</tr>
					</c:forEach>
					</tbody>
					</table>
			       	</div>
			       </div>

	       		</div>
			</div>
		</div>
		

				
	</div>
</section>
    </main>
    <!-- End Main -->