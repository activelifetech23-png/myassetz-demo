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
		
	$('#tbl_scheme_returns').dataTable({
		"pageLength": 25,
        "bPaginate": true,
        "bFilter": true,
        "bInfo": true,
        "bSort": true,
        "aoColumnDefs": [
                         { 'bSortable': false, 'aTargets': [ 1,2 ] }
                      ],
    }).fnSort([2,'desc']);
});
function getData()
{
 	var category = $.trim($("#sel_schemeCategories").val());
	var period = $.trim($("#sel_period").val());
 	
	top.location =  "/mutual-funds-research/top-dividend-paying-mutual-funds?category="+category+"&period="+period;
}
function downloadXl()
{
 	var scheme_category = $.trim($("#sel_schemeCategories").val());
	var period = $.trim($("#sel_period").val());
 	
	$.ajaxSetup({async:true});
    $.post("/mutual-funds-research/checkDownloadCount", function(data)
    {
		var result = $.trim(data);
		var obj = jQuery.parseJSON(result);	
		
		if(obj.status == "200")
		{
			top.location =  "/mutual-funds-research/topDividendPayingMutualfundsExcel?scheme_category="+scheme_category+"&period="+period+"&download=yes";
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
            <h1 class="pagetitle__heading">Top Dividend Paying Mutual Funds</h1>
            <nav>
              <ol class="breadcrumb mb-0">
                <li class="breadcrumb-item"><a href="/">Home</a></li>
                <li class="breadcrumb-item"><a href="/tools-and-calculators/become-a-crorepati">Mutual Funds Research</a></li>
                <li class="breadcrumb-item active" aria-current="page">Top Dividend Paying Mutual Funds</li>
              </ol>
            </nav>
          </div><!-- /.col-12 -->
        </div><!-- /.row -->
      </div><!-- /.container -->
    </section><!-- /.page-title -->
        
		<section class="section pt-4 pb-8" style="background-color:#fff;">
		
`<div class="container card shadow mb-4">
   <h6 class="card-header mf-research-header">
      Top Dividend Paying Mutual Funds
   </h6>
   <div class="card-body mf-research-body">
		<div class="row marginBottom30">
			<div class="col-md-3 col-sm-3 marginBottom10">
				<div class="form-group">
					<label class="no-bold">Select Category</label>
					<select id="sel_schemeCategories" class="form-control form-select">
						<c:forEach var="cat" items="${schemeCategories}" varStatus="status">
							<c:choose>
							<c:when test="${cat eq scheme_category}">
								<option selected="selected" value="${cat}">${cat}</option>
							</c:when>
							<c:otherwise>
								<option value="${cat}">${cat}</option>
							</c:otherwise>
							</c:choose>
						</c:forEach>
					</select>
				</div>
			</div>       
			<div class="col-md-4 col-sm-4">
				<div class="form-group">
					<label class="no-bold">Select Period</label>
					<select id="sel_period" class="form-control form-select">
						<option <c:if test="${period eq '1' }"><c:out value="selected=\'selected\'" /></c:if> value="1">1 Year</option>
						<option <c:if test="${period eq '3' }"><c:out value="selected=\'selected\'" /></c:if> value="3">3 Years</option>
						<option <c:if test="${period eq '5' }"><c:out value="selected=\'selected\'" /></c:if> value="5">5 Years</option>
						<option <c:if test="${period eq '7' }"><c:out value="selected=\'selected\'" /></c:if> value="7">7 Years</option>
						<option <c:if test="${period eq '10' }"><c:out value="selected=\'selected\'" /></c:if> value="10">10 Years</option>
					</select>
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
			<div class="col-md-12 table-responsive">
				<table class="table table-flush" id="tbl_scheme_returns">
					<thead class="thead-light">
						<tr>
							<th>Scheme Name</th>
							<th>Launch Date</th>
							<th>Trailing ${period} year Annual Dividend Yield <br>(Distribution yield)</th>
							<th>Period Range</th>
							<th>Dividend History</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${divided_annualized_returns_list}" var="divided_returns">	              
							<tr>
								<td><a href='/mutual-funds-research/mutual-funds-historical-dividends/<c:out value="${divided_returns.scheme_amfi_url}"></c:out>' class="mutual-funds-anchor"><c:out value="${divided_returns.scheme_amfi_short_name}"></c:out></a>
								</td>
								<td><fmt:formatDate pattern="dd-MM-yyyy" value="${divided_returns.inception_date}" /></td>
								<c:choose>
								<c:when test="${divided_returns.returns eq 0 }">
								<td>-</td>
								</c:when>
								<c:otherwise>
								<td>
								<fmt:formatNumber value="${divided_returns.returns * 100}" maxFractionDigits="2" />%</td>
								</c:otherwise>
								</c:choose>
								<td><fmt:formatDate pattern="dd-MM-yyyy" value="${divided_returns.start_date}" /> To <fmt:formatDate pattern="dd-MM-yyyy" value="${end_date}" /></td>
								<td><a href='/mutual-funds-research/mutual-funds-historical-dividends/<c:out value="${divided_returns.scheme_name}"></c:out>'><i class="fa fa-share fa-lg" aria-hidden="true"></i></a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>  
			<div class="col-md-12 table-responsive" style="padding-right: 0px;">
				<p style="text-align:justify;font-size:12px;">Trailing Annual Dividend Yield is defined as the ratio of aggregate trailing per unit dividends over the period to the current NAV, divided by the number of the years in the period.</p>
			</div>
		</div>
	
	</div>
</section>
    </main>
    <!-- End Main -->