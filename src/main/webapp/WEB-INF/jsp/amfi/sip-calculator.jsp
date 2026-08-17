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
    background: #9f332f;
    color: #ffffff;
    font-size: 14px;
    padding: 10px;
}
.card {
    box-shadow: 0 0 0 0.05rem rgb(8 60 130 / 6%), 0 0 1.25rem rgb(30 34 40 / 4%);
    border: 0;
    background-color: #fff;
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
.btn-primary {
	background-color: #003399;
}

.btn {
    padding: 11px 22px;
}

#final_result thead tr th {
    border: 1px solid #eee;
    background-color: #9f332f;
    color: #fff;
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
function getStartAndEndDate()
{
	if($("#chk_date").is(":checked"))
	{
		var fundname1 = $("#txt_fund1").val();
		var fundname2 = "";
		var fundname3 = "";
		var fundname4 = "";
		var fundname5 = "";
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
		var dates_array = new Array();
		for(var k=0;k<fund_array.length;k++)
		{
			var scheme_name = fund_array[k];
			var schemeName = encodeURIComponent(scheme_name);
			
			$.ajaxSetup({async:false});
			$.post("/mutual-funds-research/getSchemeStartAndEndDate", {scheme_name : "" + schemeName + ""}, function(data)
		    {
				var schemes = $.trim(data);
				var schemes_obj = jQuery.parseJSON(schemes);
				var schemes_array = $.makeArray(schemes_obj);
				var from = schemes_array[0].split("-");
				var startdate = new Date(from[2], from[1] - 1, from[0]);
				dates_array.push(startdate);
		    },'text');
		}
		dates_array.sort(date_sort_asc);
		var inception_date =  dates_array[0];
		//$("#txt_start_date").val(inception_date.format("dd-mm-yyyy"));
		$("#txt_start_date").val(moment(inception_date).format("DD-MM-YYYY"));
		$('#txt_start_date').datepicker('setDate', inception_date);
	}
}
var date_sort_asc = function (date1, date2) 
{
	if (date1 > date2) return 1;
  	if (date1 < date2) return -1;
  	return 0;
};
function checkStartDate()
{
	var fundname1 = $("#txt_fund1").val();
	var fundname2 = "";
	var fundname3 = "";
	var fundname4 = "";
	var fundname5 = "";
	var startdate = $("#txt_start_date").val();
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
	if(startdate == "")
	{
		$("#adv-alert-msg").html("Please select the start date");
   	    $("#adv-alert").modal('show');
		return;
	}
	var start_date_arr = startdate.split("-");
	var start_date_str = start_date_arr[2] + "-" + start_date_arr[1] + "-" + start_date_arr[0];
	var start_date = new Date(start_date_str);
	for(var k=0;k<fund_array.length;k++)
	{
		var scheme_name = fund_array[k];
		var schemeName = encodeURIComponent(scheme_name);
		var flag = false;
		
		$.ajaxSetup({async:false});
		$.post("/mutual-funds-research/getSchemeStartAndEndDate", {scheme_name : "" + schemeName + ""}, function(data)
	    {
			var schemes = $.trim(data);
			var schemes_obj = jQuery.parseJSON(schemes);
			var schemes_array = $.makeArray(schemes_obj);
			var from = schemes_array[0].split("-");
			var scheme_inception_date = new Date(from[2], from[1] - 1, from[0]);
			if(start_date < scheme_inception_date)
			{
				$("#adv-alert-msg").html(scheme_name+" inception date is "+ scheme_inception_date.format("dd-mm-yyyy") +". Please select a start date which is greater than or equal to scheme inception date.");
		   	    $("#adv-alert").modal('show');
		   	 	flag = true;
				return false;
			}
	    },'text');
		
		if(flag)
		{
			return false;
			break;
		}
	}
}
function gotoTop()
{
	$('html,body').animate({
        scrollTop: 0
    }, 700);
}

function gotoSIPEnhancement()
{
	var fundname = $("#txt_fund1").val();
	var amount = $("#txt_amount").val();
	var startdate = $("#txt_start_date").val();
	var enddate = $("#txt_end_date").val();
	var frequency = $("#sel_frequency").val();
	
	if(fundname == "")
	{
		$("#adv-alert-msg").html("Please select the fund 1");
   	    $("#adv-alert").modal('show');
		return;
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
	if(frequency == "0")
	{
		$("#adv-alert-msg").html("Please select the frequency");
   	    $("#adv-alert").modal('show');
		return;
	}
	
	top.location = "/mutual-funds-research/sip-with-annual-increase/"+fundname+"?amount="+amount+"&frequency="+frequency+"&start_date="+startdate+"&end_date="+enddate+"&enhancement_percentage=10";
}

$(document).ready(function(){
	
	initializeTypeAhead();
	
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
	
	$("#sel_schemeCategories").change(function(){
		$(".txt_fund").val("");
		$("#txt_fund1").focus();		
	});
	
	$("#final_result").dataTable({
		"bPaginate": false,
        "bFilter": false,
        "bInfo": false,
        "bSort": false,
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

function getData()
{
	var category = $("#sel_schemeCategories").val();
 	var fundname1 = $("#txt_fund1").val();
	var fundname2 = "";
	var fundname3 = "";
	var fundname4 = "";
	var fundname5 = "";
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
	if(frequency == "0")
	{
		$("#adv-alert-msg").html("Please select the frequency");
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
	/* for(var k=0;k<fund_array.length;k++)
	{
		var scheme_name = fund_array[k];
		var schemeName = encodeURIComponent(scheme_name);
		var flag = false;
		
		$.ajaxSetup({async:false});
		$.post("/mutual-funds-research/getSchemeStartAndEndDate", {scheme_name : "" + schemeName + ""}, function(data)
	    {
			var schemes = $.trim(data);
			var schemes_obj = jQuery.parseJSON(schemes);
			var schemes_array = $.makeArray(schemes_obj);
			var scheme_inception_date =  new Date(schemes_array[0])
			if(start_date < scheme_inception_date)
			{
				$("#adv-alert-msg").html(scheme_name+" inception date is "+ scheme_inception_date.format("dd-mm-yyyy") +". Please select a start date which is greater than or equal to scheme inception date.");
		   	    $("#adv-alert").modal('show');
		   	 	flag = true;
				return false;
			}
	    },'text');
		
		if(flag)
		{
			return false;
			break;
		}
	} */
	var scheme_array = new Array();
	for(var k=0;k<fund_array.length;k++)
	{
		var scheme_name = fund_array[k];
		scheme_name = encodeURIComponent(scheme_name);
		scheme_array.push(scheme_name);
	}
	top.location = "/mutual-funds-research/mutual-fund-sip-investment-calculator?category="+category+"&fund="+scheme_array+"&amount="+amount+"&frequency="+frequency+"&startdate="+startdate+"&enddate="+enddate;	
}

function downloadXl()
{
	var category = $("#sel_schemeCategories").val();
 	var fundname1 = $("#txt_fund1").val();
	var fundname2 = "";
	var fundname3 = "";
	var fundname4 = "";
	var fundname5 = "";
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
	if(frequency == "0")
	{
		$("#adv-alert-msg").html("Please select the frequency");
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
	
	var scheme_array = new Array();
	for(var k=0;k<fund_array.length;k++)
	{
		var scheme_name = fund_array[k];
		scheme_name = encodeURIComponent(scheme_name);
		scheme_array.push(scheme_name);
	}
	//top.location = "/mutual-funds-research/downloadMutualFundSIPCalculatorXl?category="+category+"&fund="+scheme_array+"&amount="+amount+"&frequency="+frequency+"&startdate="+startdate+"&enddate="+enddate;
	
	var path = "/mutual-funds-research/downloadMutualFundSIPCalculatorXl?category="+category+"&fund="+scheme_array+"&amount="+amount+"&frequency="+frequency+"&startdate="+startdate+"&enddate="+enddate;
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
	        		//console.log(xhr.response);
	 	            //console.log(xhr.responseText);
	    	    }
	    	    else{
	    	    	top.location =  "/mutual-funds-research/downloadMutualFundSIPCalculatorXl?category="+category+"&fund="+scheme_array+"&amount="+amount+"&frequency="+frequency+"&startdate="+startdate+"&enddate="+enddate+"&download=yes";
	    	    }
	        }
	    }
	};
	xhr.send(null);
}

function openLogin(){
	
	var category = $("#sel_schemeCategories").val();
 	var fundname1 = $("#txt_fund1").val();
	var fundname2 = "";
	var fundname3 = "";
	var fundname4 = "";
	var fundname5 = "";
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
	if(frequency == "0")
	{
		$("#adv-alert-msg").html("Please select the frequency");
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
	
	var scheme_array = new Array();
	for(var k=0;k<fund_array.length;k++)
	{
		var scheme_name = fund_array[k];
		scheme_name = encodeURIComponent(scheme_name);
		scheme_array.push(scheme_name);
	}
	downloadPath = "/mutual-funds-research/downloadMutualFundSIPCalculatorXl?category="+category+"&fund="+scheme_array+"&amount="+amount+"&frequency="+frequency+"&startdate="+startdate+"&enddate="+enddate;
	imageDownload = "no";
	chartId = "";
	filename = "";
	
	$("#adv-login").modal("show");
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
        friends_html += '<span class="input-group-addon" style="cursor:pointer;"  onclick="removeMoreFund(\'div_fund_' + count + '\')"><i class="fa fa-close"></i></span>';
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
	        friends_html += '<span class="input-group-addon" style="cursor:pointer;"  onclick="removeMoreFund(\'div_fund_' + count + '\')"><i class="fa fa-close"></i></span>';
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
	        friends_html += '<span class="input-group-addon" style="cursor:pointer;"  onclick="removeMoreFund(\'div_fund_' + count + '\')"><i class="fa fa-close"></i></span>';
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
	        friends_html += '<span class="input-group-addon" style="cursor:pointer;"  onclick="removeMoreFund(\'div_fund_' + count + '\')"><i class="fa fa-close"></i></span>';
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
	        friends_html += '<span class="input-group-addon" style="cursor:pointer;"  onclick="removeMoreFund(\'div_fund_' + count + '\')"><i class="fa fa-close"></i></span>';
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
	        friends_html += '<span class="input-group-addon" style="cursor:pointer;"  onclick="removeMoreFund(\'div_fund_' + count + '\')"><i class="fa fa-close"></i></span>';
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
	        friends_html += '<span class="input-group-addon" style="cursor:pointer;"  onclick="removeMoreFund(\'div_fund_' + count + '\')"><i class="fa fa-close"></i></span>';
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
	        friends_html += '<span class="input-group-addon" style="cursor:pointer;"  onclick="removeMoreFund(\'div_fund_' + count + '\')"><i class="fa fa-close"></i></span>';
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
	        friends_html += '<span class="input-group-addon" style="cursor:pointer;"  onclick="removeMoreFund(\'div_fund_' + count + '\')"><i class="fa fa-close"></i></span>';
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
	        friends_html += '<span class="input-group-addon" style="cursor:pointer;"  onclick="removeMoreFund(\'div_fund_' + count + '\')"><i class="fa fa-close"></i></span>';
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
	        friends_html += '<span class="input-group-addon" style="cursor:pointer;"  onclick="removeMoreFund(\'div_fund_' + count + '\')"><i class="fa fa-close"></i></span>';
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
	        friends_html += '<span class="input-group-addon" style="cursor:pointer;"  onclick="removeMoreFund(\'div_fund_' + count + '\')"><i class="fa fa-close"></i></span>';
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
	        friends_html += '<span class="input-group-addon" style="cursor:pointer;"  onclick="removeMoreFund(\'div_fund_' + count + '\')"><i class="fa fa-close"></i></span>';
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
function removeFunds(scheme)
{
	var count = 0;
	$(".fund").each(function(){
		count++;
	});
	for(var k=1;k<=count;k++)
	{
		if($("#txt_fund"+k).val() == scheme)
		{
			if(k == 1)
			{
				if(count > 1)
				{
					if($("#div_fund_2").length != 0)
					{
						var value2 = $("#txt_fund2").val();
						$("#txt_fund1").val(value2);
						$("#div_fund_2").remove();
						getData();
					}else if($("#div_fund_3").length != 0)
					{
						var value3 = $("#txt_fund3").val();
						$("#txt_fund1").val(value3);
						$("#div_fund_3").remove();
						getData();
					}else if($("#div_fund_4").length != 0)
					{
						var value4 = $("#txt_fund4").val();
						$("#txt_fund1").val(value4);
						$("#div_fund_4").remove();
						getData();
					}else
					{
						var value5 = $("#txt_fund5").val();
						$("#txt_fund1").val(value5);
						$("#div_fund_5").remove();
						getData();
					}
				}else{
					$("#txt_fund"+k).val("");
				}
			}else
			{
				 $("#div_fund_" + k).remove();
				 getData();
			}
		}
	}
}

function saveResult() 
{	
	var fund = '${fund}';
	var category = $("#sel_schemeCategories").val();
	var amount = $("#txt_amount").val();
	var startdate = $("#txt_start_date").val();
	var enddate = $("#txt_end_date").val();
	var frequency = $("#sel_frequency").val();
	
	var accountMap = '${accountMap}';
	var title = "Mutual Fund SIP Calculator -> Category = " + category + ", Frequency = " + frequency + ", Amount = " + amount + ", Start Date = " + startdate + ", End Date  = " + enddate + ", Schemes = " + fund;
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
              <h2 class="title text-dark">Mutual Fund SIP Calculator</h2>
              <ol class="breadcrumb text-black mt-10">
                <li><a href="#" class="title_header">Home</a></li>
                <li><a href="#" class="title_header">Mutual Funds Research</a></li>
                <li class="active">Mutual Fund SIP Calculator</li>
              </ol>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <section class="section bg-lighter mb-2">
		<div class="container">
		   <div class="row justify-content-lg-between">
		   							<div class="col-lg-12 p-0">
				 		<div class="card mb-5 pb-0">
						<h6 class="card-header mf-research-header">
				        	<c:choose>
						  	<c:when test="${category_name eq ''}">
						  		Mutual Fund SIP Calculator
						  	</c:when>
						  	<c:otherwise>
						  		<c:choose>
							  	<c:when test="${category_name eq 'All'}">
							  		Mutual Fund SIP Calculator of All Categories
							  	</c:when>
							  	<c:otherwise>
							  		Mutual Fund SIP Calculator - ${category_name}
							  	</c:otherwise>
							  	</c:choose>
						  	</c:otherwise>
						  	</c:choose>
						 </h6>
				        
				        <div class="card-body mf-research-body">
							<div class="col-md-12 col-sm-12 nopadding">
						   <div class="row pl-4 pr-4 text-left">
						      <div class="col-md-6 col-sm-6">
						         <div class="form-group">
						            <label class="bold-smaller">Select Category</label>
						            <select id="sel_schemeCategories" class="form-control" data-width="100%">
						               <option value="All">All</option>
						               <c:forEach var="categories" items="${schemeCategories}">
						                  <c:choose>
						                     <c:when test="${category eq categories}">
						                        <option selected value="
						                        <c:out value="${categories}"/>
						                        ">
						                        <c:out value="${categories}"/>
						                        </option>
						                     </c:when>
						                     <c:otherwise>
						                        <c:if test="${categories != 'Fixed Maturity Plans' && categories != 'Gold Funds'}">
						                           <option value="
						                           <c:out value="${categories}"/>
						                           ">
						                           <c:out value="${categories}"/>
						                           </option>
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
						      </div>
						      <div class="col-md-6 offset-lg-6 col-sm-6 offset-md-6">
						         <div class="form-group" id="more_funds_div">
						            <a href="javascript:void(0);" class="stepsAddmore" onclick="addMoreFund()"><i class="fa fa-plus-square marginRight10"></i> Add another fund (upto <span id="fund_count">4</span>)</a>
						         </div>
						      </div>
						   </div>
						</div>
						<div class="col-md-12 col-sm-12 mt-20">
						   <div class="row pl-4 pr-4 text-left">
						      <div class="col-md-2 col-sm-3">
						         <div class="form-group">
						            <label class="bold-smaller">Installment Amount</label>
						            <input type="text" id="txt_amount" maxlength="7" class="form-control no-radius" value="${amount}" />
						         </div>
						      </div>
						      <div class="col-md-2 col-sm-3">
						         <div class="form-group">
						            <label class="bold-smaller block">Select Frequency</label>
						            <select id="sel_frequency" class="form-control" data-width="100%">
						               <option value="0">Select</option>
						               <option value="Fortnightly" 
						               <c:if test="${frequency eq 'Fortnightly' }">
						                  <c:out value="selected" />
						               </c:if>
						               >Fortnightly</option>
						               <option value="Monthly" 
						               <c:if test="${frequency eq 'Monthly' }">
						                  <c:out value="selected" />
						               </c:if>
						               >Monthly</option>
						               <option value="Quarterly" 
						               <c:if test="${frequency eq 'Quarterly' }">
						                  <c:out value="selected" />
						               </c:if>
						               >Quarterly</option>
						            </select>
						         </div>
						      </div>
						      <div class="col-md-3 col-sm-3">
						         <div class="form-group">
						            <label class="bold-smaller">Select Start Date</label>
						            <input type="text" id="txt_start_date" value="${start_date}" class="form-control datepicker no-radius" />
						         </div>
						      </div>
						      <div class="col-md-3 col-sm-3">
						         <div class="form-group">
						            <label class="bold-smaller">Select End Date</label>
						            <input type="text" id="txt_end_date" value="${end_date}" class="form-control margin-bottom5 datepicker no-radius" />
						         </div>
						      </div>
						      <div class="col-md-2 col-sm-2 justify-content-end align-self-end">
						         <div class="form-group">
						            <label class="bold block hidden-xs hidden-sm">&nbsp;</label>
						            
						            <a href="javascript:void(0)" class="btn btn-primary btn-submit" onclick="getData()">Submit</a>
						         </div>
						      </div>
						   </div>
						</div>
						<div class="col-md-12 col-sm-12 nopadding pb-10">
						   <div class="row pl-4 pr-4 text-left">
						      <div class="col-md-4 col-sm-4">
						         <div class="form-group">
						            <div class="checkbox mt-1">
						               <label class="stepsAddmore"><input class="margin-top3" id="chk_date" type="checkbox" value="" onchange="getStartAndEndDate()"> Prefill start date with inception date</label>
						              
						            </div>
						         </div>
						      </div>
						      <div class="col-md-6 col-sm-6 font-size-13"><strong class="bold-smaller">To see SIP Returns with Yearly Enhancements scroll down to bottom of the Cash Flow table.</strong></div>
						   </div>
						</div>
				        </div> 
	
				 		</div>
			 		</div>
		   		
		   		
		   		 <div class="row mt-4">
				  	<div class="col-xs-12 col-md-12 col-sm-12">
				  		<div class="col-md-6 col-sm-6 col-xs-6 p-0">	
			        	<h6 class="font-size-20 bold-smaller15 m-10" style="line-height: 15px;">Summary</h6>
			        	</div>
			      	</div>
		      		</div>
		      		
		      				      		<div class="mt-20">     
					<table class="adv-table table table-striped table-bordered mf-research-table" style="width:100%" id="final_result">
					<thead>
					<c:choose>
						<c:when test="${fn:contains(header['User-Agent'],'Mobile')}">
							<tr>
							<th width="200">Fund Name</th>
							<th class="text-center">Launch Date</th>
							<th class="text-center">Nav Date</th>
							<th class="text-center">Nav</th>
							<th class="text-center">Units</th>
							<th class="text-center">No of Installments</th>
							<th class="text-center">Investment Amount</th>
							<th class="text-center">SIP value as on ${end_date}</th>
							<c:if test="${end_date!= latest_nav_date}">
							<th class="text-center">SIP value as on ${latest_nav_date}</th>
							</c:if>
							<th class="text-center">XIRR (%) as on ${latest_nav_date}</th>
							<th class="text-center">Action</th>
							</tr>
						</c:when>
						<c:otherwise>
							<tr>
							<th width="200">Fund Name</th>
							<th class="text-center">Launch Date</th>
							<th class="text-center">Nav Date</th>
							<th class="text-center">Nav</th>
							<th class="text-center">Units</th>
							<th class="text-center">No of<br/>Installments</th>
							<th class="text-center">Investment<br/>Amount</th>
							<th class="text-center">SIP value as on<br/>${end_date}</th>
							<c:if test="${end_date!= latest_nav_date}">
							<th class="text-center">SIP value as on<br/>${latest_nav_date}</th>
							</c:if>
							<th class="text-center">XIRR (%)<br/> as on ${latest_nav_date}</th>
							<th class="text-center">Action</th>
							</tr>
						</c:otherwise>
						</c:choose>
					</thead>
					<tbody>
					<c:forEach items="${sip_list}" var="sip" varStatus="status">
					<tr>
					<td class="text-left"><a href='/mutual-funds-research/fund-card?scheme=<c:out value="${sip.scheme}"></c:out>' class="mutual-funds-anchor"><c:out value="${sip.scheme}"></c:out></a>
				 
					</td>
			    	<td class="nowrap text-center"><fmt:formatDate pattern="dd-MM-yyyy" value="${sip.inception_date}" /></td>
			    	<td class="nowrap text-center"><fmt:formatDate pattern="dd-MM-yyyy" value="${sip.nav_date}" /></td>
			    	<td class="text-center"><c:out value="${sip.nav}"></c:out></td>
			    	<td class="text-center"><fmt:formatNumber value="${sip.units}" maxFractionDigits="4" /></td>
			    	<td class="text-center"><c:out value="${sip.no_of_installment}"></c:out></td>
			    	<td class="text-center"><fmt:formatNumber value="${sip.invested_amount}" maxFractionDigits="0" /></td>
			    	<td class="text-center"><fmt:formatNumber value="${sip.current_value}" maxFractionDigits="0" /></td>
			    	<c:if test="${end_date!= latest_nav_date}">
			    	<td class="text-center"><fmt:formatNumber value="${sip.current_value_today}" maxFractionDigits="0" /></td>
			    	</c:if>
			    	<td class="text-center"><c:out value="${sip.returns}"></c:out></td>
			    	<td class="text-center"><span style="cursor:pointer;" onclick="removeFunds('${nav_list.scheme_name}')"><i class="fa fa-times-circle fa-2x"></i></span></td>
			    	</tr>
					</c:forEach>		
					</tbody></table>
			
			       <div id="transaction_details" class="col-md-12 col-sm-12 pl-0 pr-0">
			       	<h6 class='mt-4 mb-2'>Cash Flow</h6>
					<div class='table-responsive sip_result'>
					<table class="adv-table table table-striped table-bordered mf-research-table">
					<tbody><tr>
			       	
					<c:forEach items="${sip_list}" var="scheme_details">
			       	<td>
			       	<table class="table adv-table text-center" style="margin-bottom:0px;">
			       	<tr><th colspan="5"><h6 class="height10 font-size-12 bold text-center"><a href="/mutual-funds-research/${scheme_details.scheme}">${scheme_details.scheme}</a></h6></th></tr>
					<tr><td class="bold">Nav Date</td>
					<td class="bold">Nav</td>
					<td class="bold">Cumulative Units</td>
					<td class="bold">Cumulative Invested Amount</td>
					<td class="bold">Market Value</td></tr>
					
					<c:forEach items="${scheme_details.sip_list}" var="scheme">
					<tr>
					<td><fmt:formatDate pattern="dd-MM-yyyy" value="${scheme.nav_date}" /></td>
			    	<td><c:out value="${scheme.nav}"></c:out></td>
			    	<td><fmt:formatNumber value="${scheme.cumulative_units}" maxFractionDigits="4" /></td>
			    	<td><fmt:formatNumber value="${scheme.cumulative_invested_amount}" maxFractionDigits="0" /></td>
			    	<td><fmt:formatNumber value="${scheme.current_value}" maxFractionDigits="0" /></td>
			    	</tr>
					</c:forEach>
					</table>
			       	</td>
			       	</c:forEach>
			       	</tr>
			       	</tbody>
			       	</table>
			       	</div>
			       </div>
	       		</div>
		   
		   </div>
		</div>
	</section>
 
 </div>