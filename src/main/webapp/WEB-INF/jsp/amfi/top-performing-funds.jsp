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
.title_header{
    color: #000 !important;
}
.card-header {
    background-color: #9f332f;
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
</style>

<script>
$(document).ready(function(){
	
	var period = '${period}';

	var period_sort = 4;
	if(period == "1y" || period == "1w")
	{
		period_sort = 4;
	}
	if(period == "3y" || period == "1m")
	{
		period_sort = 5;
	}
	if(period == "5y" || period == "3m")
	{
		period_sort = 6;
	}
	if(period == "10y" || period == "6m")
	{
		period_sort = 7;
	}
	if(period == "Since Inception" || period == "ytd")
	{
		period_sort = 8;
	}
	
	
		$('#tbl_scheme_returns').dataTable({
			"pageLength": 10,
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
 	var category = $.trim($("#sel_schemeCategories").val());
	var period = $.trim($("#sel_period").val());
 	var mode = "Growth";
 	
	top.location =  "/mutual-funds-research/top-performing-mutual-funds?category="+category+"&period="+period+"&mode="+mode;
}
function downloadXl()
{
	var category = $.trim($("#sel_schemeCategories").val());
	var period = $.trim($("#sel_period").val());
 	var mode = "Growth";
 	
 	$.ajaxSetup({async:true});
    $.post("/mutual-funds-research/checkDownloadCount", function(data)
    {
		var result = $.trim(data);
		var obj = jQuery.parseJSON(result);	
		
		if(obj.status == "200")
		{
			top.location =  "/mutual-funds-research/downloadTopPerformingFundsXl?category="+category+"&period="+period+"&mode="+mode;
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
 <div class="main-content">
    	

    
        <!-- Section: inner-header -->
    <section class="header_color" >
      <div class="container pt-120 pb-20">
        <!-- Section Content -->
        <div class="section-content">
          <div class="row text-center">
            <div class="col-md-12">
              <h2 class="title text-dark">Mutual Fund Trailing Returns</h2>
              <ol class="breadcrumb text-black mt-10">
                <li><a href="#" class="title_header">Home</a></li>
                <li><a href="#" class="title_header">Mutual Funds Research</a></li>
                <li class="active">Mutual Fund Trailing Returns</li>
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
   <h6 class="card-header mf-research-header font-18">
      <c:choose>
         <c:when test="${category_name eq ''}">
            Mutual Fund Trailing Returns
         </c:when>
         <c:otherwise>
            Mutual Fund Trailing Returns - ${category_name}
         </c:otherwise>
      </c:choose>
   </h6>
   <div class="card-body mf-research-body">
      <div class="row marginbottom10">
         <div class="col-md-3 col-sm-3">
            <div class="form-group">
               <label class="no-bold">Select Category</label>
               <select id="sel_schemeCategories" class="form-control form-select">
                  <c:forEach var="cat" items="${schemeCategories}" varStatus="status">
                     <c:choose>
                        <c:when test="${cat eq category}">
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
         <div class="col-md-3 col-sm-3">
            <div class="form-group">
               <label class="no-bold">Select Period</label>
               <select id="sel_period" class="form-control form-select">
                  <option 
                  <c:if test="${period eq 'ytd' }">
                     <c:out value="selected=\'selected\'" />
                  </c:if>
                  value="ytd">YTD</option>
                  <option 
                  <c:if test="${period eq '1w' }">
                     <c:out value="selected=\'selected\'" />
                  </c:if>
                  value="1w">1 Week</option>
                  <option 
                  <c:if test="${period eq '1m' }">
                     <c:out value="selected=\'selected\'" />
                  </c:if>
                  value="1m">1 Month</option>
                  <option 
                  <c:if test="${period eq '3m' }">
                     <c:out value="selected=\'selected\'" />
                  </c:if>
                  value="3m">3 Month</option>
                  <option 
                  <c:if test="${period eq '6m' }">
                     <c:out value="selected=\'selected\'" />
                  </c:if>
                  value="6m">6 Month</option>
                  <option 
                  <c:if test="${period eq '1y' }">
                     <c:out value="selected=\'selected\'" />
                  </c:if>
                  value="1y" >1 Year</option>
                  <%-- <option <c:if test="${period eq '2y' }"><c:out value="selected=\'selected\'" /></c:if> value="2y">2 Years</option> --%>
                  <option 
                  <c:if test="${period eq '3y' }">
                     <c:out value="selected=\'selected\'" />
                  </c:if>
                  value="3y">3 Years</option>
                  <option 
                  <c:if test="${period eq '5y' }">
                     <c:out value="selected=\'selected\'" />
                  </c:if>
                  value="5y">5 Years</option>
                  <option 
                  <c:if test="${period eq '10y' }">
                     <c:out value="selected=\'selected\'" />
                  </c:if>
                  value="10y">10 Years</option>
                  <option 
                  <c:if test="${period eq 'Since Inception' }">
                     <c:out value="selected=\'selected\'" />
                  </c:if>
                  value="Since Inception">Since Inception</option>
               </select>
            </div>
         </div>
         <div class="col-md-2 col-sm-2">
            <div class="form-group ">
               <label class="no-bold">&nbsp;</label><br>
               <button class="btn btn-primary btn-submit type="button" onclick="getData()">Submit</button>
            </div>
         </div>
      </div>
   </div>
</div>
		
	<div class="container service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
		<div class="row marginBottom20">
			<div class="col-md-12 table-responsive">
				<table class="table table-flush pt-1" id="tbl_scheme_returns">
					<thead class="thead-light">
						<tr>
							<th scope="row">Scheme Name</th>
							<c:if test="${category eq 'All Equity' || category eq 'All Debt' || category eq 'All Hybrid' || category eq 'Exchange Traded Funds'}">
							<th>Category</th>
							</c:if>
							<th>Launch <br> Date</th>
							<th>AUM  <br>  (Crore)</th>
							<c:choose>
							<c:when test="${category eq 'All Equity' || category eq 'All Debt' || category eq 'All Hybrid' || category eq 'Exchange Traded Funds'}">
							</c:when>
							<c:otherwise>
							<th>Expense <br>  Ratio (%)</th>
							</c:otherwise>
							</c:choose>
							<c:if test="${period eq '1w' || period eq '1m' || period eq '3m' || period eq '6m' || period eq 'ytd'}">
							<th>1-Week <br>  Ret&nbsp;(%)</th>
							<th>1-Month <br>  Ret&nbsp;(%)</th>
							<th>3-Months <br>  Ret&nbsp;(%)</th>
							<th>6-Months  <br> Ret&nbsp;(%)</th>
							<th>YTD <br>  Ret&nbsp;(%)</th>
							</c:if>
							<c:if test="${period eq '1y' || period eq '3y' || period eq '5y' || period eq '10y' || period eq 'Since Inception'}">
							<th>1-Yrs <br>  Ret&nbsp;(%)</th>	
							<th>3-Yrs  <br> Ret&nbsp;(%)</th>	
							<th>5-Yrs  <br> Ret&nbsp;(%)</th>	
							<th>10-Yrs <br>  Ret&nbsp;(%)</th>
							<th>Since <br>  Launch <br>  Ret&nbsp;(%)</th>		
							</c:if>					
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${schemePerformances}" var="schemePerformances">	              
							<tr>
								<td><a href='/mutual-funds-research/fund-card?scheme=<c:out value="${schemePerformances.scheme_amfi_url}"></c:out>' class="mutual-funds-anchor "><c:out value="${schemePerformances.scheme_amfi_short_name}"></c:out></a>             	                
								</td>
								<c:if test="${category eq 'All Equity' || category eq 'All Debt' || category eq 'All Hybrid' || category eq 'Exchange Traded Funds'}">
								<td><c:out value="${schemePerformances.scheme_category}"></c:out></td>
								</c:if>
								<td style="width: 80px;"><fmt:formatDate pattern="dd-MM-yyyy" value="${schemePerformances.inception_date}" /></td>
								<td class="units_comma_fixed"><c:out value="${schemePerformances.scheme_assets}"/></td>
								<c:choose>
								<c:when test="${category eq 'All Equity' || category eq 'All Debt' || category eq 'All Hybrid' || category eq 'Exchange Traded Funds'}">
								</c:when>
								<c:otherwise>
								<td><c:out value="${schemePerformances.ter}"></c:out></td>
								</c:otherwise>
								</c:choose>
								<c:if test="${period eq '1w' || period eq '1m' || period eq '3m' || period eq '6m' || period eq 'ytd'}">
								<td><c:out value="${schemePerformances.returns_abs_7days eq 0 ? '-': schemePerformances.returns_abs_7days}"></c:out></td>
								<td><c:out value="${schemePerformances.returns_abs_1month eq 0 ? '-': schemePerformances.returns_abs_1month}"></c:out></td>
								<td><c:out value="${schemePerformances.returns_abs_3month eq 0 ? '-': schemePerformances.returns_abs_3month}"></c:out></td>
								<td><c:out value="${schemePerformances.returns_abs_6month eq 0 ? '-': schemePerformances.returns_abs_6month}"></c:out></td>
								<td><c:out value="${schemePerformances.returns_abs_ytd eq 0 ? '-': schemePerformances.returns_abs_ytd}"></c:out></td>
								</c:if>
								<c:if test="${period eq '1y' || period eq '3y' || period eq '5y' || period eq '10y' || period eq 'Since Inception'}">
								<td><c:out value="${schemePerformances.returns_abs_1year eq 0 ? '-': schemePerformances.returns_abs_1year}"></c:out></td>
								<td><c:out value="${schemePerformances.returns_cmp_3year eq 0 ? '-': schemePerformances.returns_cmp_3year}"></c:out></td>
								<td><c:out value="${schemePerformances.returns_cmp_5year eq 0 ? '-': schemePerformances.returns_cmp_5year}"></c:out></td>
								<td><c:out value="${schemePerformances.returns_cmp_10year eq 0 ? '-': schemePerformances.returns_cmp_10year}"></c:out></td>
								<td><c:out value="${schemePerformances.returns_cmp_inception eq 0 ? '-': schemePerformances.returns_cmp_inception}"></c:out></td>
								</c:if>
							</tr>
						</c:forEach>
					</tbody>
					<tfoot>  
						<c:if test="${category_returns != null}">
							<tr>
								<td>Category Average</td>
								<td>-</td>
								<td>-</td>
								<td>-</td>
								<c:if test="${period eq '1w' || period eq '1m' || period eq '3m' || period eq '6m' || period eq 'ytd'}">
								<td><c:out value="${category_returns.returns_abs_7days eq 0 ? '-': category_returns.returns_abs_7days}"></c:out></td>
								<td><c:out value="${category_returns.returns_abs_1month eq 0 ? '-': category_returns.returns_abs_1month}"></c:out></td>
								<td><c:out value="${category_returns.returns_abs_3month eq 0 ? '-': category_returns.returns_abs_3month}"></c:out></td>
								<td><c:out value="${category_returns.returns_abs_6month eq 0 ? '-': category_returns.returns_abs_6month}"></c:out></td>
								<td><c:out value="${category_returns.returns_abs_ytd eq 0 ? '-': category_returns.returns_abs_ytd}"></c:out></td>
								</c:if>
								<c:if test="${period eq '1y' || period eq '3y' || period eq '5y' || period eq '10y' || period eq 'Since Inception'}">
								<td><c:out value="${category_returns.returns_abs_1year eq 0 ? '-': category_returns.returns_abs_1year}"></c:out></td>
								<td><c:out value="${category_returns.returns_cmp_3year eq 0 ? '-': category_returns.returns_cmp_3year}"></c:out></td>
								<td><c:out value="${category_returns.returns_cmp_5year eq 0 ? '-': category_returns.returns_cmp_5year}"></c:out></td>
								<td><c:out value="${category_returns.returns_cmp_10year eq 0 ? '-': category_returns.returns_cmp_10year}"></c:out></td>
								<td><c:out value="${category_returns.returns_cmp_inception eq 0 ? '-': category_returns.returns_cmp_inception}"></c:out></td>
								</c:if>
							</tr>    
						</c:if>
						<c:if test="${benchmark_returns != null}">       
							<tr>
								<td><c:out value="${benchmark_returns.benchmark_name}"></c:out></td>
								<td>-</td>
								<td>-</td>
								<td>-</td>
								<c:if test="${period eq '1w' || period eq '1m' || period eq '3m' || period eq '6m' || period eq 'ytd'}">
								<td><c:out value="${benchmark_returns.returns_abs_7days eq 0 ? '-': benchmark_returns.returns_abs_7days}"></c:out></td>
								<td><c:out value="${benchmark_returns.returns_abs_1month eq 0 ? '-': benchmark_returns.returns_abs_1month}"></c:out></td>
								<td><c:out value="${benchmark_returns.returns_abs_3month eq 0 ? '-': benchmark_returns.returns_abs_3month}"></c:out></td>
								<td><c:out value="${benchmark_returns.returns_abs_6month eq 0 ? '-': benchmark_returns.returns_abs_6month}"></c:out></td>
								<td><c:out value="${benchmark_returns.returns_abs_ytd eq 0 ? '-': benchmark_returns.returns_abs_ytd}"></c:out></td>
								</c:if>
								<c:if test="${period eq '1y' || period eq '3y' || period eq '5y' || period eq '10y' || period eq 'Since Inception'}">
								<td><c:out value="${benchmark_returns.returns_abs_1year eq 0 ? '-': benchmark_returns.returns_abs_1year}"></c:out></td>
								<td><c:out value="${benchmark_returns.returns_cmp_3year eq 0 ? '-': benchmark_returns.returns_cmp_3year}"></c:out></td>
								<td><c:out value="${benchmark_returns.returns_cmp_5year eq 0 ? '-': benchmark_returns.returns_cmp_5year}"></c:out></td>
								<td><c:out value="${benchmark_returns.returns_cmp_10year eq 0 ? '-': benchmark_returns.returns_cmp_10year}"></c:out></td>
								<td><c:out value="${benchmark_returns.returns_cmp_inception eq 0 ? '-': benchmark_returns.returns_cmp_inception}"></c:out></td>
								</c:if>
							</tr>
						</c:if>
					</tfoot>
				</table>
			</div>
		</div>
		

				
	</div>		           
		    </div>
		 </div>
    </section>
    
    

    </div>
    <!-- End Main -->