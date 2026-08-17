<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    

<script src="/vendor/date-format/date.format.js"></script>

<style>
	.page-heading {
	    padding-top: 6rem;
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
.tbl_scheme_returns tfoot tr td{
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
.tbl_scheme_returns thead tr th{
	border:1px solid #eee;
	background-color:#054F80;
	color:#fff;
}
.table .thead-light th {
	background-color:#054F80;
	color: #fff;
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
.card-header h3{
	color: #fff;
	margin-bottom: 0px;
	padding:10px;
}
</style>

<script>
$(document).ready(function(){
	
	$('.datepicker').datepicker({
		format: 'dd-mm-yyyy',
		startDate: '01/01/2000',
		endDate: '-1d',
		autoclose:true,
		disableTouchKeyboard:true
	}).on('changeDate', function(ev) {
		var ID = $(this).attr("id");
		if(ID == "txt_start_date")
		{
			alert(ID);
			checkStartDate();
		}
	});
	
	var period = '${top_period}';

	var period_sort = 3;
	if(period == "1y" || period == "1w")
	{
		period_sort = 3;
	}
	if(period == "2y" || period == "1m")
	{
		period_sort = 4;
	}
	if(period == "3y" || period == "3m")
	{
		period_sort = 5;
	}
	if(period == "5y" || period == "6m")
	{
		period_sort = 6;
	}
	if(period == "10y" || period == "ytd")
	{
		period_sort = 7;
	}
	if(period == "Since Inception")
	{
		period_sort = 8;
	}
	
	$('#tbl_scheme_returns').dataTable({
		"pageLength": 25,
        "bPaginate": true,
        "bFilter": true,
        "bInfo": true,
        "bSort": true,
        "aoColumnDefs": [
                         { 'bSortable': false, 'aTargets': [ 1,2 ] }
                      ],
        "columns": [
                    { "width": "55%" },
                    { "width": "13%" },
                    { "width": "8%" },
                    { "width": "8%" },
                    { "width": "8%" },
                    { "width": "8%" },
                    { "width": "8%" },
                    { "width": "8%" },
                    { "width": "8%" }
                  ]
    }).fnSort([period_sort,'desc']);
	
	$('#sip-submit').click(function(e){
	 	e.preventDefault();
	 	
	 	var amount = $("#txt_fd_amount").val();
	 	var start_date = $("#txt_start_date").val();
	 	var fd_term = $("#sel_fd_term").val();
	 	var amc = 	$("#sel_amc").val();
	    var category = 	$("#sel_category").val();
	 	var fund = $("#sel_scheme").val();
	 	var tax_rate = $("#sel_tax_rate").val();

	 	if(amount == null || amount == "" || isNaN(amount) || parseFloat(amount)<=0)
	    {
	 		bootbox.alert("Please enter the valid deposit amount");
	   	    
	   	    return false;
	    }
	 	if(start_date == null || start_date == "")
	    {
	 		bootbox.alert("Please select start date");
	   	    
	   	    return false;
	    }
	 	if(fd_term == null || fd_term == "" || isNaN(fd_term) || parseFloat(fd_term)<=0)
	    {
	 		bootbox.alert("Please select FD term");
	   	    
	   	    return false;
	    }
	 	if(amc == null || amc == "")
	 	{
	 		bootbox.alert("Please select AMC");
	   	    
	   	    return false;
	 	}
	 	if(category == null || category == "")
	 	{
	 		bootbox.alert("Please select category");
	   	    
	   	    return false;
	 	}
	 	if(fund == null || fund == "")
	 	{
	 		bootbox.alert("Please select scheme name");
	   	    
	   	    return false;
	 	}
	 	if(tax_rate == null || tax_rate == "" || isNaN(tax_rate) || parseFloat(tax_rate)<=0)
	    {
	 		bootbox.alert("Please select income tax rate");
	   	    
	   	    return false;
	    }
	 	var arr = start_date.split("-");
	    var start_date_str = arr[2] + "-" + arr[1] + "-" + arr[0];
	    var startDate =  new Date(start_date_str);
	    var yyyy = startDate.getFullYear() + parseInt(fd_term);
	    var end_date_str = yyyy + "-" + arr[1] + "-" + arr[0];
	    var endDate =  new Date(end_date_str);
	    var flag = false;
	    var scheme_inception_date_str = "";
	    var today = new Date();
	    today.setDate(today.getDate() - 1);
	    
	    if(endDate > today)
		{
			bootbox.alert("Please select earlier start date or lower FD term. FD Maturity cannot be later than yesterday");
	   	    
			return;
		}
	    
	    var schemeName = encodeURIComponent(fund);
		var flag = false;
		
		$.ajaxSetup({async:false});
		$.post("/mutual-funds-research/getSchemeStartAndEndDate", {scheme_name : "" + schemeName + ""}, function(data)
	    {
			var schemes = $.trim(data);
			var schemes_obj = jQuery.parseJSON(schemes);
			var schemes_array = $.makeArray(schemes_obj);
			var from = schemes_array[0].split("-");
			var inception_date = new Date(from[2], from[1] - 1, from[0]);
			if(startDate < inception_date)
			{
				bootbox.alert(fund+" inception date is "+ inception_date.format("dd-mm-yyyy") +". Please select a start date which is greater than or equal to scheme inception date.");
		   	    
		   	 	flag = true;
				return false;
			}
	    },'text');
		
		if(flag)
		{
			return false;
		}
	 	
		document.location =  "/mutual-funds-research/fixed-deposit-vs-debt-funds/"+schemeName+"?amount="+amount+"&start_date="+start_date+"&fd_term="+fd_term+"&tax_rate="+tax_rate+"&category="+category+"&amc="+amc;
	 	
	 	return false;
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
function checkStartDate()
{
	var scheme_name = $("#sel_scheme").val();
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
		alert(start_date);
		alert(inception_date);
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
function categoryChange()
{
	var amc = 	$("#sel_amc").val();
    var category = 	$("#sel_category").val();
    var start_date = $("#txt_start_date").val();
    
    if(amc == null || amc == "")
 	{
 		bootbox.alert("Please select AMC");
   	    
   	    return false;
 	}
 	if(category == null || category == "")
 	{
 		bootbox.alert("Please select category");
   	    
   	    return false;
 	}
 	if(start_date == null || start_date == "")
    {
 		bootbox.alert("Please select start date");
   	    
   	    return false;
    }
    
    $.ajaxSetup({async:true});
	$.post("/mutual-funds-research/getSchemeByAmcAndCategoryAndDate", {amc : "" + amc + "",category : "" + category + "", start_date : "" + start_date + ""}, function(data)
    {
		var schemes = $.trim(data);
		var schemes_obj = jQuery.parseJSON(schemes);
		var schemes_array = $.makeArray(schemes_obj);
		var html = "";
		for (var i = 0; i < schemes_array.length; i++)
	    {
			html += '<option value="' + schemes_array[i]+ '">' + schemes_array[i] + '</option>';
	    }
		$("#sel_scheme").html(html);
		
    },'text');
}
function getData()
{
	var category = $.trim($("#sel_schemeCategories").val());
	var period = $.trim($("#sel_period").val());
	
	$.ajaxSetup({async:false});
	$.post("/mutual-funds-research/getSchemePerformanceReturns", {category : category, period : period, type : "Open", maxno : 1000}, function(data)
    {
		var schemePerformances = $.trim(data);
		var schemePerformances_obj = jQuery.parseJSON(schemePerformances);
		var schemePerformances_array = $.makeArray(schemePerformances_obj);
        var html = "";
        
        html += "<thead><tr>";
    	html += "<th>Scheme Name</th>";
    	html += "<th>Launch Date</th>";
    	html += "<th>Expense Ratio (%)</th>";
    	
    	if(period == '1w' || period == '1m' || period == '3m' || period == '6m' || period == 'ytd')
    	{
    		html += "<th>1-Week Ret (%)</th>";
        	html += "<th>1-Month Ret (%)</th>";
        	html += "<th>3-Months Ret (%)</th>";
        	html += "<th>6-Months Ret (%)</th>";
        	html += "<th>YTD Ret (%)</th>";
        	html += "<th>1-Year Ret (%)</th>";
    	}
    	if(period == '1y' || period == '2y' || period == '3y' || period == '5y' || period == '10y' || period == 'Since Inception')
    	{
    		html += "<th>1-Year Ret (%)</th>";
        	html += "<th>2-Yrs Ret (%)</th>";
        	html += "<th>3-Yrs Ret (%)</th>";
        	html += "<th>5-Yrs Ret (%)</th>";
        	html += "<th>10-Yrs Ret (%)</th>";
        	html += "<th>Since Launch Ret (%)</th>";
    	}
    	html += "</tr></thead>";
    	html += "<tbody>";
		for (var i = 0; i < schemePerformances_array.length ; i++)
	    {
			var scheme_name = schemePerformances_array[i].scheme_amfi;
			var ytd_returns = schemePerformances_array[i].returns_abs_ytd;
			var one_week_returns = schemePerformances_array[i].returns_abs_7days;	 
	    	var one_month_returns = schemePerformances_array[i].returns_abs_1month;	    	
	    	var three_month_returns = schemePerformances_array[i].returns_abs_3month;  	
	    	var six_month_returns = schemePerformances_array[i].returns_abs_6month;	    	
	    	var one_year_returns = schemePerformances_array[i].returns_abs_1year;
	    	var two_year_returns = schemePerformances_array[i].returns_cmp_2year;
	    	var three_year_returns = schemePerformances_array[i].returns_cmp_3year;
	    	var five_year_returns = schemePerformances_array[i].returns_cmp_5year;
	    	var ten_year_returns = schemePerformances_array[i].returns_cmp_10year;
	    	var inception_returns = schemePerformances_array[i].returns_cmp_inception;
	    	var inception_date = new Date(schemePerformances_array[i].inception_date);
	    	var ter = schemePerformances_array[i].ter;

			one_week_returns = one_week_returns.toFixed(2);
	    	one_month_returns = one_month_returns.toFixed(2);
	    	three_month_returns = three_month_returns.toFixed(2);
	    	six_month_returns = six_month_returns.toFixed(2);
	    	ytd_returns = ytd_returns.toFixed(2);
	    	one_year_returns = one_year_returns.toFixed(2);
	    	two_year_returns = two_year_returns.toFixed(2);
	    	three_year_returns = three_year_returns.toFixed(2);
	    	five_year_returns = five_year_returns.toFixed(2);
	    	ten_year_returns = ten_year_returns.toFixed(2);
	    	inception_returns = inception_returns.toFixed(2);
            
			if(one_week_returns == 0)
    		{
	    		one_week_returns = "-";
    		}
	    	if(one_month_returns == 0)
    		{
	    		one_month_returns = "-";
    		}
	    	if(three_month_returns == 0)
    		{
	    		three_month_returns = "-";
    		}
	    	if(six_month_returns == 0)
    		{
	    		six_month_returns = "-";
    		}
	    	if(ytd_returns == 0)
    		{
	    		ytd_returns = "-";
    		}
	    	if(one_year_returns == 0)
    		{
	    		one_year_returns = "-";
    		}
	    	if(two_year_returns == 0)
    		{
	    		two_year_returns = "-";
    		}
	    	if(three_year_returns == 0)
    		{
	    		three_year_returns = "-";
    		}
	    	if(five_year_returns == 0)
    		{
	    		five_year_returns = "-";
    		}
	    	if(ten_year_returns == 0)
    		{
	    		ten_year_returns = "-";
    		}
	    	if(inception_returns == 0)
    		{
	    		inception_returns = "-";
    		}
	    	
	    	html += "<tr>";
	    	html += "<td class='fund_hover'><a href='/mutual-funds-research/fund-card?scheme=" + scheme_name + "'>" + scheme_name + "</a></td>";
	    	html += "<td>" +  inception_date.format("dd-mm-yyyy");+ "</td>";
	    	html += "<td>" + ter.toFixed(2) + "</td>";
	    	if(period == '1w' || period == '1m' || period == '3m' || period == '6m' || period == 'ytd')
	    	{
	    		html += "<td>" + one_week_returns + "</td>";
		    	html += "<td>" + one_month_returns + "</td>";
	    		html += "<td>" + three_month_returns + "</td>";
		    	html += "<td>" + six_month_returns + "</td>";
		    	html += "<td>" + ytd_returns + "</td>";
		    	html += "<td>" + one_year_returns + "</td>";
	    	}
	    	if(period == '1y' || period == '2y' || period == '3y' || period == '5y' || period == '10y' || period == 'Since Inception')
	    	{
	    		html += "<td>" + one_year_returns + "</td>";
		    	html += "<td>" + two_year_returns + "</td>";
	    		html += "<td>" + three_year_returns + "</td>";
		    	html += "<td>" + five_year_returns + "</td>";
		    	html += "<td>" + ten_year_returns + "</td>";
		    	html += "<td>" + ten_year_returns + "</td>";
	    	}
	    	html += "</tr>";
	    }
		html += "</tbody>"; 
		$('#tbl_scheme_returns').DataTable().destroy();
		$('#tbl_scheme_returns').empty();
    	$('#tbl_scheme_returns').html(html);

    	var period_sort = 3;
    	if(period == "1y" || period == "1w")
    	{
    		period_sort = 3;
    	}
    	if(period == "2y" || period == "1m")
    	{
    		period_sort = 4;
    	}
    	if(period == "3y" || period == "3m")
    	{
    		period_sort = 5;
    	}
    	if(period == "5y" || period == "6m")
    	{
    		period_sort = 6;
    	}
    	if(period == "10y" || period == "ytd")
    	{
    		period_sort = 7;
    	}
    	if(period == "Since Inception")
    	{
    		period_sort = 8;
    	}
    	
    	$('#tbl_scheme_returns').dataTable({
    		"pageLength": 25,
            "bPaginate": true,
            "bFilter": true,
            "bInfo": true,
            "bSort": true,
            "aoColumnDefs": [
                             { 'bSortable': false, 'aTargets': [ 1,2 ] }
                          ],
            "columns": [
                        { "width": "55%" },
                        { "width": "13%" },
                        { "width": "8%" },
                        { "width": "8%" },
                        { "width": "8%" },
                        { "width": "8%" },
                        { "width": "8%" },
                        { "width": "8%" },
                        { "width": "8%" }
                      ]
        }).fnSort([period_sort,'desc']);
    	
    },'text');
}
</script>

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
            <h1 class="pagetitle__heading">Fixed Deposit vs Debt Funds</h1>
            <nav>
              <ol class="breadcrumb mb-0">
                <li class="breadcrumb-item"><a href="/">Home</a></li>
                <li class="breadcrumb-item"><a href="/tools-and-calculators/become-a-crorepati">Mutual Funds Research</a></li>
                <li class="breadcrumb-item active" aria-current="page">Fixed Deposit vs Debt Funds</li>
              </ol>
            </nav>
          </div><!-- /.col-12 -->
        </div><!-- /.row -->
      </div><!-- /.container -->
    </section><!-- /.page-title -->
        
		<section class="section pt-4 pb-8" style="background-color:#fff;">
		
`<div class="container card shadow mb-4">
   <h6 class="card-header mf-research-header">
      Fixed Deposit vs Debt Funds
   </h6>
   <div class="card-body mf-research-body">
	<div class="row marginBottom30">
           <div class="col-md-12"><b>Fixed Deposit</b></div>
           <div class="col-md-4 col-sm-4">
	          <div class="form-group">
	            <label class="no-bold">Deposit Amount</label>
	            <input type="text" id="txt_fd_amount" value="${amount}" class="form-control no-radius" />
	          </div>
	        </div>
	        
	        <div class="col-md-4 col-sm-4">
	          <div class="form-group">
	            <label class="no-bold">Start Date</label>
	            <input type="text" id="txt_start_date" value="${start_date}" class="form-control datepicker no-radius" autocomplete="off"/>
	          </div>
	        </div>
	        
	        <div class="col-md-4 col-sm-4">
	          <div class="form-group">
	            <label class="no-bold">FD Term (in years)</label>
	            <select id="sel_fd_term" class="form-control form-select" data-width="100%">
	             <option <c:if test="${fd_term eq '1' }"><c:out value="selected=\'selected\'" /></c:if> value="1">1</option>
	             <option <c:if test="${fd_term eq '2' }"><c:out value="selected=\'selected\'" /></c:if> value="2">2</option>
	             <option <c:if test="${fd_term eq '3' }"><c:out value="selected=\'selected\'" /></c:if> value="3">3</option>
	             <option <c:if test="${fd_term eq '4' }"><c:out value="selected=\'selected\'" /></c:if> value="4">4</option>
	             <option <c:if test="${fd_term eq '5' }"><c:out value="selected=\'selected\'" /></c:if> value="5">5</option>
	             <option <c:if test="${fd_term eq '6' }"><c:out value="selected=\'selected\'" /></c:if> value="6">6</option>
	             <option <c:if test="${fd_term eq '7' }"><c:out value="selected=\'selected\'" /></c:if> value="7">7</option>
	             <option <c:if test="${fd_term eq '8' }"><c:out value="selected=\'selected\'" /></c:if> value="8">8</option>
	             <option <c:if test="${fd_term eq '9' }"><c:out value="selected=\'selected\'" /></c:if> value="9">9</option>
	             <option <c:if test="${fd_term eq '10' }"><c:out value="selected=\'selected\'" /></c:if> value="10">10</option>
	            </select>
	          </div>
	        </div>
	       
	        
	        <div class="col-md-12 col-sm-12 mt-3"><b>Debt Fund</b></div>
	        
			<div class="col-md-4 col-sm-4">
	            <div class="form-group">
				<label class="no-bold">Select Category</label>
                <select id="sel_category" class="form-control form-select" onchange="categoryChange()">
                <c:forEach var="cat" items="${schemeCategories}" varStatus="status">
                <c:if test="${cat ne 'Debt: Liquid' && cat ne 'Debt: Ultra Short Duration'}">
                <c:choose>
                <c:when test="${cat eq category}">
                <option selected="selected" value="${cat}">${cat}</option>
                </c:when>
                <c:otherwise>
                <option value="${cat}">${cat}</option>
                </c:otherwise>
                </c:choose>
                </c:if>
                </c:forEach>
                </select>
	            </div>
	            <label class="no-bold mt-1">To see Top performing debt funds by category and period, please scroll down</label>
            </div>
	        
	        <div class="col-md-4 col-sm-4">
	            <div class="form-group">
				<label class="no-bold">Select AMC</label>
                <select id="sel_amc" class="form-control form-select" onchange="categoryChange()">
                <c:forEach var="company" items="${amcCompanies}" varStatus="status">
                <c:choose>
                <c:when test="${company eq amc}">
                <option selected="selected" value="${company}">${company}</option>
                </c:when>
                <c:otherwise>
                <option value="${company}">${company}</option>
                </c:otherwise>
                </c:choose>
                </c:forEach>
                </select>
	            </div>
            </div>
            
            <div class="col-md-4 col-sm-4">
	            <div class="form-group">
				<label class="no-bold">Select Scheme</label>
                <select id="sel_scheme" class="form-control form-select">
                <c:forEach var="scheme" items="${schemes}" varStatus="status">
                <c:choose>
                <c:when test="${scheme eq scheme_name}">
                <option selected="selected" value="${scheme}">${scheme}</option>
                </c:when>
                <c:otherwise>
                <option value="${scheme}">${scheme}</option>
                </c:otherwise>
                </c:choose>
                </c:forEach>
                </select>
	            </div>
            </div>
	        
	        <div class="col-md-4 col-sm-4 mt-1">
	          <div class="form-group">
	            <label class="no-bold">Income Tax Rate</label>
	            <select id="sel_tax_rate" class="form-control form-select" data-width="100%">
	             <option <c:if test="${tax_rate eq '10' }"><c:out value="selected=\'selected\'" /></c:if> value="10">10</option>
	             <option <c:if test="${tax_rate eq '20' }"><c:out value="selected=\'selected\'" /></c:if> value="20">20</option>
	             <option <c:if test="${tax_rate eq '30' }"><c:out value="selected=\'selected\'" /></c:if> value="30">30</option>
	            </select>
	          </div>
	        </div>
	        
	      <div class="col-md-4 col-sm-4">
          <div class="form-group">
            <label class="bold block hidden-xs hidden-sm">&nbsp;</label>
			<a id="sip-submit" href="javascript:void(0)" class="btn btn-primary" style="margin-top:30px;">Submit</a>
	      </div>
         </div>
           </div> 
   </div>
</div>
		
	<div class="container card shadow">
		<div class="row marginBottom20">
			<div class="col-md-12 table-responsive">
				     <div class="row marginBottom20">
				<div class="col-md-12 table-responsive">
					<table class="table table-flush tbl_scheme_returns">
					<thead class="thead-light">
	            <tr >
	            <th>Pre-Tax Return</th>
	            <th>Investment Amount</th>
	            <th>Redeemed / Maturity Amount</th>
	            <th>Total Interest / Profit Amount</th>
	            <th>Annual Interest / Return (%)</th>
	            </tr>
	        </thead>
	         <tbody>
	        	<tr>
	            <td>Fixed Deposit</td>
	            <td class="comma_fixed"><c:out value="${amount}"/></td>      
	            <td class="comma_fixed">${fDvsDebtResponse.fd_investment_value}</td>
	            <td class="comma_fixed">${fDvsDebtResponse.fd_investment_value - amount}</td>
	            <td><c:out value="${fDvsDebtResponse.fd_annualized_return}"/></td>
	            </tr>	 
	            <tr>
	            <td><a href='/mutual-funds-research/fund-card?scheme=<c:out value="${fDvsDebtResponse.scheme}"></c:out>' class="mutual-funds-anchor">
	            <c:out value="${fDvsDebtResponse.scheme}"/></a>
	            </td>
	            <td><c:out value="${amount}"/></td>
	           	<td><fmt:formatNumber value="${fDvsDebtResponse.scheme_investment_value}" maxFractionDigits="0" /></td>
	           	<td><fmt:formatNumber value="${fDvsDebtResponse.scheme_investment_value - amount}" maxFractionDigits="0" /></td>
	           	<td><c:out value="${fDvsDebtResponse.scheme_annualized_return}"/></td>
	            </tr>
	                     
	        </tbody>
       </table>      
      </div>
       </div>
       <div class="row marginBottom20">
				<div class="col-md-12 table-responsive">
					<table class="table table-flush tbl_scheme_returns">
					<thead class="thead-light">
	            <tr >
	            <th>Post Tax Return</th>
	            <th>Pre-tax Interest / Profit Amount</th>
	            <th>Capital Gains Tax</th>
	            <th>Indexed Amount</th>
	            <th>Income / Capital Gains Tax</th>
	            <th>Post Tax Interest / Profit Amount</th>
	            </tr>
	        </thead>
	        <tbody>
	        	<tr>
	            <td>Fixed Deposit</td>
	            <td class="comma_fixed">${fDvsDebtResponse.fd_investment_value - amount}</td>
	            <td>Not Applicable</td>
	            <td>Not Applicable</td>
	            <td class="comma_fixed">${fDvsDebtResponse.fd_income_tax}</td>
	            <td class="comma_fixed">${fDvsDebtResponse.post_tax_fd_investment_value - amount}</td>
	            </tr>	 
	            <tr>
	            <td><a href='/mutual-funds-research/fund-card?scheme=<c:out value="${fDvsDebtResponse.scheme}"></c:out>' class="mutual-funds-anchor">
	            <c:out value="${fDvsDebtResponse.scheme}"/></a></td>
	            <td><fmt:formatNumber value="${fDvsDebtResponse.scheme_investment_value - amount}" maxFractionDigits="0" /></td>
	            <c:choose>
	            <c:when test="${years > 3}">
	            <td>Long Term</td>
	            <td><fmt:formatNumber value="${fDvsDebtResponse.scheme_indexed_cost_of_purchase}" maxFractionDigits="0" /></td>
	            </c:when>
	            <c:otherwise>
	            <td>Short Term</td>
	            <td>Not Applicable</td>
	            </c:otherwise>
	            </c:choose>
	            <td><fmt:formatNumber value="${fDvsDebtResponse.scheme_income_tax}" maxFractionDigits="0" /></td>
	           	<td><fmt:formatNumber value="${fDvsDebtResponse.post_tax_scheme_investment_value - amount}" maxFractionDigits="0" /></td>
	            </tr>
	                     
	        </tbody>
       </table>      
      </div>
      
      <div class="col-md-12 col-sm-12 marginBottom15">
      <p style="text-align:justify;font-size:12px;"><b>Note: The Fixed deposit interest rate is based on historical State Bank of India Fixed deposit rates for different deposit terms. Short Term if term is less than 3 years. Long Term if term is more than three Years.</b></p>
      </div>
      
      </div>
			</div>
		</div>
	
	
	      <div class="row">
      <div class="col-md-12 col-sm-12 marginTop15">
      <div class="panel panel-default adv-panel">
        <div class="panel-heading card-header mf-research-header p-0"><h3 class="panel-title bold" style="font-size: 15px">Top Performing Debt Mutual Funds</h3></div>
        <div class="panel-body padding0 paddingBottom0 paddingTop5">
        <div class="row marginBottom30 mt-3">
        <div class="col-md-4 col-sm-4">
          <div class="form-group">
            <label class="no-bold">Select Category</label>
            <select id="sel_schemeCategories" class="form-control">
             <c:forEach var="cat" items="${schemeCategories}" varStatus="status">
             <c:if test="${cat ne 'Debt: Liquid' && cat ne 'Debt: Ultra Short Duration'}">
               <c:choose>
                <c:when test="${cat eq top_category}">
                  <option selected="selected" value="${cat}">${cat}</option>
                </c:when>
                <c:otherwise>
                  <option value="${cat}">${cat}</option>
                </c:otherwise>
               </c:choose>
               </c:if>
             </c:forEach>
           </select>
          </div>
        </div>       
        <div class="col-md-4 col-sm-4">
           <div class="form-group">
              <label class="no-bold">Select Period</label>
              <select id="sel_period" class="form-control">
			    <option <c:if test="${top_period eq 'ytd' }"><c:out value="selected=\'selected\'" /></c:if> value="ytd">YTD</option>
			    <option <c:if test="${top_period eq '1w' }"><c:out value="selected=\'selected\'" /></c:if> value="1w">1 Week</option>
			    <option <c:if test="${top_period eq '1m' }"><c:out value="selected=\'selected\'" /></c:if> value="1m">1 Month</option>
			    <option <c:if test="${top_period eq '3m' }"><c:out value="selected=\'selected\'" /></c:if> value="3m">3 Month</option>
			    <option <c:if test="${top_period eq '6m' }"><c:out value="selected=\'selected\'" /></c:if> value="6m">6 Month</option>
			    <option <c:if test="${top_period eq '1y' }"><c:out value="selected=\'selected\'" /></c:if> value="1y" >1 Year</option>
			    <option <c:if test="${top_period eq '2y' }"><c:out value="selected=\'selected\'" /></c:if> value="2y">2 Years</option>
			    <option <c:if test="${top_period eq '3y' }"><c:out value="selected=\'selected\'" /></c:if> value="3y">3 Years</option>
			    <option <c:if test="${top_period eq '5y' }"><c:out value="selected=\'selected\'" /></c:if> value="5y">5 Years</option>
			    <option <c:if test="${top_period eq '10y' }"><c:out value="selected=\'selected\'" /></c:if> value="10y">10 Years</option>
			    <option <c:if test="${top_period eq 'Since Inception' }"><c:out value="selected=\'selected\'" /></c:if> value="Since Inception">Since Inception</option>
			   </select>
           </div>
        </div>
        
         <div class="col-md-2 col-sm-2">
							<div class="form-group ">
							<label class="no-bold">&nbsp;</label><br>
							<button class="btn btn-primary" type="button" onclick="getData()">Submit</button>
							</div>
						</div>
       </div>  
       </div>
      </div>
      </div>
       
   
        <div class="col-md-12 col-sm-12 table-responsive mt-20">
	       <table class="adv-table table table-striped table-colored table-bordered tbl_scheme_returns" id="tbl_scheme_returns">
	        <thead>
	            <tr>
	                <th>Scheme<br/>Name</th>
	                <th>Launch Date</th>
	                <th>Expense Ratio&nbsp;(%)</th>
	                <c:if test="${top_period eq '1w' || top_period eq '1m' || top_period eq '3m' || top_period eq '6m' || top_period eq 'ytd'}">
	                <th>1-Week Ret&nbsp;(%)</th>
	                <th>1-Month Ret&nbsp;(%)</th>
	                <th>3-Months Ret&nbsp;(%)</th>
	                <th>6-Months Ret&nbsp;(%)</th>
	                <th>YTD Ret&nbsp;(%)</th>
	                <th>1-Year Ret&nbsp;(%)</th>
	                </c:if>
	                <c:if test="${top_period eq '1y' || top_period eq '2y' || top_period eq '3y' || top_period eq '5y' || top_period eq '10y' || top_period eq 'Since Inception'}">
	                <th>1-Year Ret&nbsp;(%)</th>	
	                <th>2-Yrs Ret&nbsp;(%)</th>	
	                <th>3-Yrs Ret&nbsp;(%)</th>	
	                <th>5-Yrs Ret&nbsp;(%)</th>	
	                <th>10-Yrs Ret&nbsp;(%)</th>	
	                <th>Since Launch Ret&nbsp;(%)</th>	
	                </c:if>					
	            </tr>
	            </thead>
	            <tbody>
	            <c:forEach items="${schemePerformances}" var="schemePerformances">	              
	              <tr>
	                <td><a href='/mutual-funds-research/fund-card?scheme=<c:out value="${schemePerformances.scheme_amfi}"></c:out>' class="mutual-funds-anchor"><c:out value="${schemePerformances.scheme_amfi_short_name}"></c:out></a>
	                </td>
	                <td><fmt:formatDate pattern="dd-MM-yyyy" value="${schemePerformances.inception_date}" /></td>
	                <td><c:out value="${schemePerformances.ter}"></c:out></td>
	                <c:if test="${top_period eq '1w' || top_period eq '1m' || top_period eq '3m' || top_period eq '6m' || top_period eq 'ytd'}">
	                <td><c:out value="${schemePerformances.returns_abs_7days eq 0 ? '-': schemePerformances.returns_abs_7days}"></c:out></td>
	                <td><c:out value="${schemePerformances.returns_abs_1month eq 0 ? '-': schemePerformances.returns_abs_1month}"></c:out></td>
	                <td><c:out value="${schemePerformances.returns_abs_3month eq 0 ? '-': schemePerformances.returns_abs_3month}"></c:out></td>
	                <td><c:out value="${schemePerformances.returns_abs_6month eq 0 ? '-': schemePerformances.returns_abs_6month}"></c:out></td>
	                <td><c:out value="${schemePerformances.returns_abs_ytd eq 0 ? '-': schemePerformances.returns_abs_ytd}"></c:out></td>
	                <td><c:out value="${schemePerformances.returns_abs_1year eq 0 ? '-': schemePerformances.returns_abs_1year}"></c:out></td>
	                </c:if>
	                <c:if test="${top_period eq '1y' || top_period eq '2y' || top_period eq '3y' || top_period eq '5y' || top_period eq '10y' || top_period eq 'Since Inception'}">
	                <td><c:out value="${schemePerformances.returns_abs_1year eq 0 ? '-': schemePerformances.returns_abs_1year}"></c:out></td>
	                <td><c:out value="${schemePerformances.returns_cmp_2year eq 0 ? '-': schemePerformances.returns_cmp_2year}"></c:out></td>
	                <td><c:out value="${schemePerformances.returns_cmp_3year eq 0 ? '-': schemePerformances.returns_cmp_3year}"></c:out></td>
	                <td><c:out value="${schemePerformances.returns_cmp_5year eq 0 ? '-': schemePerformances.returns_cmp_5year}"></c:out></td>
	                <td><c:out value="${schemePerformances.returns_cmp_10year eq 0 ? '-': schemePerformances.returns_cmp_10year}"></c:out></td>
	                <td><c:out value="${schemePerformances.returns_cmp_inception eq 0 ? '-': schemePerformances.returns_cmp_inception}"></c:out></td>
	                </c:if>
	            </tr>
	            </c:forEach>
	            </tbody>
	       </table>
        </div>

      
      </div>
	
	</div>
	
	
	
</section>
    </main>
    <!-- End Main -->