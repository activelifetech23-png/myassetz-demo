<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    

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
.adv-table tfoot tr td{
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
.adv-table thead tr th{
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

$(document).ready(function(){
	
	$('#mf_fund_txt').typeahead({
	    source: function (query, process) {
	    	
	    	var spaceCheckAtEnd = /(\S.*\S)?\s+$/.test(query);
			query = $.trim(query);
	        if (query.length === 0 || !spaceCheckAtEnd) {
	            return process([]);
	        }
	        return $.ajax({
	            url: '/mutual-funds-research/autoSuggestMfSchemeWithDividend',
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
	
	$('#tbl_dividend_history').dataTable({
		"pageLength": 10,
        "bPaginate": true,
        "bFilter": true,
        "bInfo": true,
        "bSort": false,
        "columns": [
                    { "width": "25%" },
                    { "width": "25%" },
                    { "width": "25%" },
                    { "width": "25%" },
                  ]
    });
	
	var scheme_name = '${scheme}';
	$("#mf_fund_txt").val(scheme_name);
	
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
function getData()
{
	var scheme_name = $("#mf_fund_txt").val();
 	if(scheme_name == "")
 	{
   	    swal({title:"",text:"Please select scheme"});
		return;
 	}
 	var schemeName = encodeURIComponent(scheme_name);
 	
 	var flag = false;
 	$.ajaxSetup({async:false});
	$.post("/mutual-funds-research/isValidFundName", {fund : schemeName}, function(data)
    {
		var result = $.trim(data);
		if(result == "true")
		{
		 	
		}
		else
		{
			flag = true;
	   	    return;
		}			
    },'text');
	
	if(flag)
	{
   	    swal({title:"",text:"Please type an Fund Name and select it from the autocomplete functionality."});
		return false;
	}
	
	top.location =  "/mutual-funds-research/mutual-funds-historical-dividends/"+schemeName;
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
            <h1 class="pagetitle__heading">Mutual Fund Historical Dividends</h1>
            <nav>
              <ol class="breadcrumb mb-0">
                <li class="breadcrumb-item"><a href="/">Home</a></li>
                <li class="breadcrumb-item"><a href="/tools-and-calculators/become-a-crorepati">Mutual Funds Research</a></li>
                <li class="breadcrumb-item active" aria-current="page">Mutual Fund Historical Dividends</li>
              </ol>
            </nav>
          </div><!-- /.col-12 -->
        </div><!-- /.row -->
      </div><!-- /.container -->
    </section><!-- /.page-title -->
        
		<section class="section pt-4 pb-8" style="background-color:#fff;">
		
`<div class="container card shadow mb-4">
   <h6 class="card-header mf-research-header">
     Mutual Fund Historical Dividends
   </h6>
   <div class="card-body mf-research-body">
<div class="row marginBottom30">
	<div class="col-md-4 col-sm-4 marginBottom10">
	<div class="form-group">
	<label class="no-bold">Type an scheme Name</label>
    <input id="mf_fund_txt" type="text" value="" class="form-control no-radius input-sm" placeholder="Type Fund Name and Click Submit">					
    </div>
    </div>
            
    <div class="col-md-2 col-sm-2 marginBottom10">
	<div class="form-group ">
    <label class="no-bold">&nbsp;</label><br>
	<button class="btn btn-primary" type="button" onclick="getData()">Submit</button>
	</div>
	</div>

    </div>
   </div>
</div>
		
	<div class="container card shadow">
		<div class="row marginBottom20">
			<div class="col-md-12">
   				<div class="row marginBottom20">
			    <div class="col-md-12 table-responsive " style="margin-top: 15px; overflow: hidden;">
				<table class="adv-table table table-striped table-colored table-bordered">
	       		 <thead class="theadBody">
	            <tr>
	                <th>Category</th>
	                <th>Launch Date</th>
	    	        <th>Benchmark</th>
	    	        <th>Expense Ratio</th>		
	    	        <th>AUM</th>						
	            </tr>
	            </thead>
	            <tbody>              
	             <tr>
	                <td>${schemeMapping.scheme_advisorkhoj_category}</td>
	                <td><fmt:formatDate pattern="dd-MM-yyyy" value="${schemeMapping.scheme_inception_date}"/></td>
	                <td>
	                <c:choose>
	              	<c:when test="${not empty schemeMapping.scheme_benchmark}">
	               		<c:out value="${schemeMapping.scheme_benchmark}"/>
	              	</c:when>
	              	<c:otherwise>
	               		-
	              	</c:otherwise>               
	             	</c:choose>
	                </td>
	                <td><c:out value="${schemeMapping.ter}"/>% <br>As on (<fmt:parseDate value="${schemeMapping.ter_date}" var="parsedEmpDate" pattern="yyyy-MM-dd" /><fmt:formatDate pattern="dd-MM-yyyy" value="${parsedEmpDate}" />)</td>
	                <td><span class="units_comma_fixed">${schemeMapping.scheme_assets}</span> Cr <br>As on (<fmt:parseDate value="${schemeMapping.scheme_asset_date}" var="parsedEmpDate" pattern="yyyy-MM-dd" /><fmt:formatDate pattern="dd-MM-yyyy" value="${parsedEmpDate}" />)</td>
	            </tr>
	            </tbody>
	       </table>
          </div>
        	</div>
     
     	  <div class="row marginBottom20 ">
			    <div class="col-md-12 table-responsive" style="margin-top: 15px;">
	       <table class="adv-table table table-striped table-colored table-bordered " id="tbl_dividend_history">
	        <thead class="theadBody">
	            <tr>
	                <th>Dividend Record Date</th>
	                <th>Dividend / Unit</th>
	    	        <th>NAV</th>
	    	        <th>Dividend Yield (%)</th>					
	            </tr>
	            </thead>
	            <tbody>
	             <c:forEach items="${dividend_list}" var="dividend">	              
	             <tr>
	                <td><fmt:formatDate pattern="dd-MM-yyyy" value="${dividend.dividend_date}" /></td>
	                <%-- <td><c:out value="${dividend.dividend_value}"></c:out></td> --%>
	                <td><fmt:formatNumber type="number" minFractionDigits="4" value="${dividend.dividend_value}" /></td>
	                <td><c:out value="${dividend.net_asset_value}"></c:out></td>
	                <td><fmt:formatNumber type="number" minFractionDigits="2" maxFractionDigits="2" value="${dividend.dividend_yield}" /></td>
	            </tr>
	            </c:forEach>
	            </tbody>
	            </table>
				</div>
			</div>
			</div>
		</div>
		

				
	</div>
</section>
    </main>
    <!-- End Main -->