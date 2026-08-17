<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    

<script type="text/javascript" src="<c:url value="/vendor/date-format/date.format.js"/>"></script>

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
#latest_nav tfoot tr td{
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
#latest_nav thead tr th{
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
	
	var amcname = '${amcname}';
	var category = '${category}';
	
	amcname = encodeURIComponent(amcname);
	
	var table = $('#latest_nav').dataTable( {  
        "bServerSide": true,
        "sAjaxSource": "/mutual-funds-research/getLatestNav?amcname=" + amcname+"&category="+category,
        "bProcessing": true,
        "bSort": false,
        "pageLength" : 25
    });	
	
});

function changeAmcCompany()
{
    var amc = $("#sel_amc").val();
    
    $.ajaxSetup({async:true});
	$.post("/mutual-funds-research/getSchemeCategoriesByAmcCompany", {amc : "" + amc + ""}, function(data)
    {
		var schemeCategories = $.trim(data);
		var schemeCategories_obj = jQuery.parseJSON(schemeCategories);
		var schemeCategories_array = $.makeArray(schemeCategories_obj);
		var html = "<option value='All'>All</option>";
		for (var i = 0; i < schemeCategories_array.length; i++)
	    {
			if(schemeCategories_array[i] != "Fixed Maturity Plans")
			{
				html += '<option value="' + schemeCategories_array[i]+ '">' + schemeCategories_array[i] + '</option>';
			}
			
	    }
		$("#sel_schemeCategories").html(html);
    },'text');
}

$(function(){
	$('#sip-submit').click(function(e){
	 	e.preventDefault();

	 	var amc = $("#sel_amc").val();
	 	var category = $("#sel_schemeCategories").val();
	 	
	 	amc = encodeURIComponent(amc);
	 	
	 	document.location.href = "/mutual-funds-research/latest-NAV-mutual-funds?amcname=" +amc+"&category="+category;
	 	
	 	return false;
	});
})

function downloadXl()
{
	var amc = $("#sel_amc").val();
 	var category = $("#sel_schemeCategories").val();
 	
 	amc = encodeURIComponent(amc);
 	
 	top.location =  "/mutual-funds-research/downloadLatestNavMutualFundsXl?amc="+amc+"&category="+category;
 	return false;
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
            <h1 class="pagetitle__heading">Latest Nav</h1>
            <nav>
              <ol class="breadcrumb mb-0">
                <li class="breadcrumb-item"><a href="/">Home</a></li>
                <li class="breadcrumb-item"><a href="/tools-and-calculators/become-a-crorepati">Mutual Funds Research</a></li>
                <li class="breadcrumb-item active" aria-current="page">Latest Nav</li>
              </ol>
            </nav>
          </div><!-- /.col-12 -->
        </div><!-- /.row -->
      </div><!-- /.container -->
    </section><!-- /.page-title -->
        
		<section class="section pt-4 pb-8" style="background-color:#fff;">
		
`<div class="container card shadow mb-4">
   <h6 class="card-header mf-research-header">
     Latest Nav
   </h6>
   <div class="card-body mf-research-body">
								<div class="row marginBottom30">
						<div class="col-md-4 col-sm-4">
							<div class="form-group">
	            <label class="no-bold">Select AMC</label>
	            <select id="sel_amc" class="form-control form-select" onchange="changeAmcCompany()">
	                <option value="All">All</option>
					<c:forEach items="${amcList}" var="amc">
					 <c:choose>
					    <c:when test="${amc eq 'Deutsche Mutual Fund'}">
					    </c:when>
		                <c:when test="${amc eq amcname}">
		                  <option selected="selected" value="${amc}">${amc}</option>
		                </c:when>
		                <c:otherwise>
		                  <option value="${amc}">${amc}</option>
		                </c:otherwise>
		             </c:choose>
					</c:forEach>
				</select>
	            </div>
           </div>
            
		<div class="col-md-4 col-sm-4">
        <div class="form-group">
          <label class="no-bold">Select Category</label>
          <select id="sel_schemeCategories" class="form-control form-select" data-width="100%">  
          	<option value="All">All</option>
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
            
             <div class="col-md-2 col-sm-2">
							<div class="form-group ">
							<label class="no-bold">&nbsp;</label><br>
			      <a href="#" id="sip-submit" class="btn btn-primary" data-style="expand-right" data-size="l"><span class="ladda-label">Submit</span></a>
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
					<table class="table table-flush" id="latest_nav">
					<thead class="thead-light">
	            <tr>
	                <th>Scheme Name</th>
	                <th>NAV (Rs)</th>
	                <th>NAV Date</th>				
	            </tr>
	        </thead>	            
	       </table>		
	  </div>  
</div>
			</div>
		</div>
		

				
	</div>
</section>
    </main>
    <!-- End Main -->