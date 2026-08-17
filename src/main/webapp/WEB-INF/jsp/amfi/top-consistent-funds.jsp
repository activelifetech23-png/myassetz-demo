<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    

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
var _MS_PER_DAY = 1000*60*60*24;
$(document).ready(function(){
	
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
	
	$('[data-toggle="tooltip"]').tooltip();
	
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
    var fdate = $("#txt_start_date").val();
    var today = new Date();
    var period = $("#sel_period").val();
    
    var dd = today.getDate();
    var mm = today.getMonth()+1; //January is 0!
    var yyyy = today.getFullYear();  
    
    if(dd<10) 
    {
        dd='0'+dd;
    } 

    if(mm<10) 
    {
        mm='0'+mm;
    } 
    
    var yyyy1 = yyyy-3;
    var yyyy3 = yyyy-5;
    var yyyy5 = yyyy-7;
    
    var formatted_todays_date = dd + '-' + mm + '-' + yyyy;    
    
    var back_1_todays_date = dd + '-' + mm + '-' + yyyy1;
    var back_3_todays_date = dd + '-' + mm + '-' + yyyy3;
    var back_5_todays_date = dd + '-' + mm + '-' + yyyy5;    
         
	var fday=fdate.substring(0,2);
	var fmonth=fdate.substring(3,5);
	var fyear=fdate.substring(6,fdate.length);	
	
 	var tday1=back_1_todays_date.substring(0,2);
	var tmonth1=back_1_todays_date.substring(3,5);
	var tyear1=back_1_todays_date.substring(6,back_1_todays_date.length);
	
	var tday3 = back_3_todays_date.substring(0,2);
	var tmonth3 = back_3_todays_date.substring(3,5);
	var tyear3 = back_3_todays_date.substring(6,back_3_todays_date.length);
	
	var tday5=back_5_todays_date.substring(0,2);
	var tmonth5=back_5_todays_date.substring(3,5);
	var tyear5=back_5_todays_date.substring(6,back_5_todays_date.length);
   
	var fdate_int = eval(fyear+fmonth+fday);
	
	var tdate_int1 = eval(tyear1+tmonth1+tday1);
	var tdate_int3 = eval(tyear3+tmonth3+tday3);
	var tdate_int5 = eval(tyear5+tmonth5+tday5);
	
	if(period == "1 Year")
	{
		//alert("fdate_int............>"+fdate_int);
		//alert("tdate_int1............>"+tdate_int1);
		if(fdate_int > tdate_int1)
		{
		$("#adv-alert-msg").html("Start date should be at least 3 years ago (from today)");
   	    $("#adv-alert").modal('show');	   
	   	return false;
		}
	}
	if(period == "3 Year")
	{
		//alert("fdate............>"+fdate);
		//alert("back_3_todays_date............>"+back_3_todays_date);
		if(fdate_int > tdate_int3)
		{
		$("#adv-alert-msg").html("Start date should be at least 5 years ago (from today)");
   	    $("#adv-alert").modal('show');	   
	   	return false;
		}
	}
	if(period == "5 Year")
	{
		//alert("fdate............>"+fdate);
		//alert("back_5_todays_date............>"+back_5_todays_date);
		if(fdate_int > tdate_int5)
		{
		$("#adv-alert-msg").html("Start date should be at least 7 years ago (from today)");
   	    $("#adv-alert").modal('show');	   
	   	return false;
		}
	}
	else
	{		
	  
	}	 
}
function diff_years(dt2, dt1) 
{ 
var formatTDate = new Date(GetDate(dt2));
var formatFrmDate = new Date(GetDate(dt1));
var diff = (formatTDate.getTime() - formatFrmDate.getTime()) / 1000;
diff /= (60 * 60 * 24);
return Math.abs(Math.round(diff/365.25));  
}
/* dt1 = new Date(2014,10,2);
dt2 = new Date(2014,10,11);
console.log(diff_years(dt1, dt2));

dt1 = new Date("June 13, 2014 08:11:00");
dt2 = new Date("October 19, 2017 11:13:00");
console.log(diff_years(dt1, dt2)); */
function dateDiffInDays(tDt,fDt)
{
	var formatTDate = new Date(GetDate(tDt));
	var formatFrmDate = new Date(GetDate(fDt));

	var utc1 = Date.UTC(formatTDate.getFullYear(), formatTDate.getMonth(), formatTDate.getDate());
	var utc2 = Date.UTC(formatFrmDate.getFullYear(), formatFrmDate.getMonth(), formatFrmDate.getDate());
	return Math.floor((utc1-utc2)/_MS_PER_DAY);
}
function GetDate(str) 
{
	var arr = str.split('-');
	var formatddate = arr[1]  + '/' + arr[0] + '/' + arr[2];
	return formatddate;
 }
function getData()
{
	var category = $("#sel_schemeCategories").val();	
       
    var flag = false;
    
 	if(category == null || category == "")
    {
 		$("#adv-alert-msg").html("Please select category");
   	    $("#adv-alert").modal('show');
   	    return false;
    } 
 	
 	top.location = "/mutual-funds-research/top-consistent-mutual-fund-performers?category="+category;
}
function downloadXl()
{
	var category = $("#sel_schemeCategories").val();	
    
    var flag = false;
    
 	if(category == null || category == "")
    {
   	    swal({title:"",text:"Please select category"});
   	    return false;
    } 
 	
 	 $.ajaxSetup({async:true});
     $.post("/mutual-funds-research/checkDownloadCount", function(data)
     {
 		var result = $.trim(data);
 		var obj = jQuery.parseJSON(result);	
 		
 		if(obj.status == "200")
 		{
 			top.location = "/mutual-funds-research/downloadTopConsistentMutualFundPerformersXL?category="+category;
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

<!--  <div class="main-content">
 	  Section: inner-header
    <section class="inner-header divider parallax layer-overlay overlay-dark-5" data-bg-img="/images/bg/slide1.jpg">
      <div class="container pt-120 pb-20">
        Section Content
        <div class="section-content">
          <div class="row">
            <div class="col-md-12">
              <h2 class="title text-white">Top Consistent Mutual Fund Performers</h2>
              <ol class="breadcrumb text-left text-black mt-10">
                <li><a href="#">Home</a></li>
                <li><a href="#">Mutual Funds Research</a></li>
                <li class="active text-gray-silver">Top Consistent Mutual Fund Performers</li>
              </ol>
            </div>
          </div>
        </div>
      </div>
    </section> -->
    
    
     <section class="" style="background: 50% 0px rgb(163 163 163 / 16%);">
      <div class="container pt-120 pb-20">
        <!-- Section Content -->
        <div class="section-content">
          <div class="row text-center">
            <div class="col-md-12">
              <h2 class="title text-dark">Top Consistent Mutual Fund Performers</h2>
              <ol class="breadcrumb text-black mt-10">
                <li><a href="#"  class="title_header">Home</a></li>
                <li><a href="#" class="title_header">Mutual Funds Research</a></li>
                <li class="active ">Top Consistent Mutual Fund Performers</li>
              </ol>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    
    <section class="section bg-lighter mb-2">
		<div class="container">
		   <div class="row justify-content-lg-between">
		   		<div class="container container service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
   <h6 class="card-header mf-research-header font-18">
      Top Consistent Mutual Fund Performers
   </h6>
   <div class="card-body mf-research-body">
 					<div class="row">
		<div class="col-lg-4">
			<div class="form-group">
				<label class="no-bold">Select Category</label>
				<select id="sel_schemeCategories" class="form-control form-control-sm" data-width="100%"> 
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

		<div class="col-md-3 col-sm-2 col-xs-12 justify-content-end align-self-end">
		      <div class="form-group">
		         <label class="bold block hidden-xs">&nbsp;</label>
		         <br/>
		         <a href="javascript:void(0)" class="btn btn-primary btn-submit" onclick="getData()">Submit</a>
		      </div>
		   </div>
		
		</div>
   </div>
</div>
		
	<div class="container container service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
		<div class="row marginBottom20">
			<div class="col-md-12 table-responsive">
					<div class="table-responsive mt-30">
							<table class="table table-striped table-colored table-bordered mf-research-table counton-table" id="tbl_scheme_returns">
								<thead class="theadBody">
									<tr>
										<th>Scheme Name</th>
										<th>Launch Date</th>
										<th>AUM (Crore)</th>
										<th>Expense Ratio (%)</th>
										<th>1-Yr Return (%)</th>
										<th>3-Yrs Return (%)</th>
										<th>5-Yrs Return (%)</th>
										<th>10-Yrs Return (%)</th>	               
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${rollingReturnsSummaryList}" var="rollingReturns" varStatus="status">	                
										<tr>
											<td><a href='/mutual-funds-research/fund-card?scheme=<c:out value="${rollingReturns.scheme_name}"></c:out>' class="mutual-funds-anchor"><c:out value="${rollingReturns.scheme_name}"></c:out></a></td>
											<td>${rollingReturns.scheme_inception_date}</td>
											<td class="units_comma_fixed">${rollingReturns.scheme_assets}</td>	
											<td><fmt:formatNumber value="${rollingReturns.expense_ratio}" minFractionDigits="2" maxFractionDigits="2" /></td>
											<td><fmt:formatNumber value="${rollingReturns.one_yr_return}" minFractionDigits="2" maxFractionDigits="2" /></td>
											<td><fmt:formatNumber value="${rollingReturns.three_yr_return}" minFractionDigits="2" maxFractionDigits="2" /></td>
											<td><fmt:formatNumber value="${rollingReturns.five_yr_return}" minFractionDigits="2" maxFractionDigits="2" /></td>
											<td>
												<c:choose>
													<c:when test="${rollingReturns.ten_yr_return eq 0.00}">
													-
													</c:when>
													<c:otherwise>
														<fmt:formatNumber value="${rollingReturns.ten_yr_return}" minFractionDigits="2" maxFractionDigits="2" />
													</c:otherwise>
												</c:choose>	
											</td>            
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
			</div>
		</div>
		
		<div class="row	 mb-3">
					<div class="col-md-12 table-responsive text-justify">
						<p class="font-11" style="font-size: 0.9rem;">Most consistent funds have been chosen based on average rolling returns and consistency with which funds have beaten category average returns. We have ranked schemes based on these two parameters using our proprietary algorithm and are showing the most consistent schemes for each category. Note that we have ranked schemes which have performance track records of at least 5 years (consistency cannot be measured unless a scheme has sufficiently long track record covering multiple market cycles e.g. bull market, bear market, sideways market etc). Also note that, schemes whose AUMs have not yet reached Rs 500 crores have been excluded from ranking.</p>
					</div> 
				</div>  

				
	</div>		   
		   </div>
		</div>
	</section>
    
    
 </div>