<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
    background: #20C7BA;
    color: #ffffff;
    font-size: 14px;
    padding: 10px;
}
.card {
    box-shadow: 0 0 0 0.05rem rgb(8 60 130 / 6%), 0 0 1.25rem rgb(30 34 40 / 4%);
    border: 0;
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
</style>

<script>
function changeAmcCompany()
{
    var amc = $("#sel_amcCompanies").val();
    $.ajaxSetup({async:true});
	$.post("/mutual-funds-research/getSchemeCategoriesByAmcCompany", {amc : "" + amc + ""}, function(data)
    {
		var schemeCategories = $.trim(data);
		var schemeCategories_obj = jQuery.parseJSON(schemeCategories);
		var schemeCategories_array = $.makeArray(schemeCategories_obj);
		var html = "";
		html += '<option value="All">All</option>';
		for (var i = 0; i < schemeCategories_array.length; i++)
	    {
			if(schemeCategories_array[i] != "Fixed Maturity Plans")
			{
				html += '<option value="' + schemeCategories_array[i]+ '">' + schemeCategories_array[i] + '</option>';
			}
			
	    }
		$("#sel_schemeCategories").html(html);
		//$('#sel_schemeCategories').selectpicker('refresh');
		$("#sel_schemes").multiselect('dataprovider', new Array());
    },'text');
}

$(document).ready(function(){
	$('#tbl_nav_change').dataTable({
		"pageLength": 25,
        "bPaginate": true,
        "bFilter": true,
        "bInfo": true,
        "bSort": true,
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
    }).fnSort([6,'desc']);
	
	$('#tbl_scheme_returns').on( 'draw.dt', function (e, settings) {
		<c:if test="${fn:contains(header['User-Agent'],'Mobile')}">
		var table = settings.oInstance.api();
		 setTimeout(function(){
		    table.rows(':not(.parent)').nodes().to$().find('td:first-child').trigger('click');
		 }, 1000);
		</c:if>
	});
	
});

function showLatestNavChanges()
{
	var option = $("#sel_option").val(); 	
	var amc = $("#sel_amcCompanies").val(); 	
 	var category = 	$("#sel_schemeCategories").val();
 	
 	amc = encodeURIComponent(amc);
 	
 	document.location = "/mutual-funds-research/latest-Mutual-Funds-NAV-52-week-high-nav?category=" + category + "&amc=" + amc+ "&option=" + option;
}

function downloadXl()
{
	var option = $("#sel_option").val(); 	
	var amc = $("#sel_amcCompanies").val(); 	
 	var category = 	$("#sel_schemeCategories").val();
 	
 	amc = encodeURIComponent(amc);
 	
 	//document.location = "/mutual-funds-research/downloadMutualFundNAVChanges?category=" + category + "&amc=" + amc+ "&option=" + option;
 	var path = "/mutual-funds-research/downloadMutualFundNAVChanges?category=" + category + "&amc=" + amc+ "&option=" + option;
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
	    	    	top.location =  "/mutual-funds-research/downloadMutualFundNAVChanges?category=" + category + "&amc=" + amc+ "&option=" + option+"&download=yes";
	    	    }
	        }
	    }
	};
	xhr.send(null);
}

function openLogin(){
	
	var option = $("#sel_option").val(); 	
	var amc = $("#sel_amcCompanies").val(); 	
 	var category = 	$("#sel_schemeCategories").val();
 	
 	amc = encodeURIComponent(amc);
 	
 	downloadPath = "/mutual-funds-research/downloadMutualFundNAVChanges?category=" + category + "&amc=" + amc+ "&option=" + option;
 	imageDownload = "no";
	chartId = "";
	filename = "";
	
	$("#adv-login").modal("show");
}

function saveResult() 
{	
	var option = $("#sel_option").val(); 	
	var amc = $("#sel_amcCompanies").val(); 	
 	var category = 	$("#sel_schemeCategories").val();
    
	var accountMap = '${accountMap}';
	var title = "Mutual Fund NAV Changes -> AMC = " + amc + ", Category = " + category + ", option = " + option;
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
    <!-- ========================
       page title 
    =========================== -->
    <section class="page-title page-title-layout5">
      <div class="bg-img"><img src="/images/backgrounds/6.jpg" alt="background"></div>
      <div class="container">
        <div class="row">
          <div class="col-12">
            <h1 class="pagetitle__heading">Mutual Fund NAV Changes</h1>
            <nav>
              <ol class="breadcrumb mb-0">
                <li class="breadcrumb-item"><a href="/">Home</a></li>
                <li class="breadcrumb-item"><a href="/mutual-funds-research/top-performing-mutual-funds">Mutual Funds Research</a></li>
                <li class="breadcrumb-item active" aria-current="page">Mutual Fund NAV Changes</li>
              </ol>
            </nav>
          </div><!-- /.col-12 -->
        </div><!-- /.row -->
      </div><!-- /.container -->
    </section><!-- /.page-title -->

    <!-- ========================
       Doctors Timetable
    ========================== -->
    <!-- ========================
        Team layout 1
    ========================== -->
    <section class="team-layout1">
      <div class="container">
        <div class="row">

          <!-- Member #1 -->
          <div class="col-lg-12">
					<div class="col-lg-12 p-0">
				 		<div class="card mb-5">
						<h6 class="card-header mf-research-header">
				        	Mutual Fund NAV Changes
						 </h6>
				        
				        <div class="card-body mf-research-body">
													<div class="col-md-12 col-sm-12 margin-top5 nopadding">
				        <div class="row pl-4 pr-4">
				           
				        <div class="col-md-4 col-sm-4">
				        <div class="form-group">
				          <label class="bold-smaller">Select Option</label>
					        <select id="sel_option" class="form-control" data-width="100%">
					        <option <c:if test="${option eq 'Latest NAV vs 52 Week Highest NAV' }"><c:out value="selected=\'selected\'" /></c:if> value="Latest NAV vs 52 Week Highest NAV">Latest NAV vs 52 Week Highest NAV</option>
					        <option <c:if test="${option eq 'Latest NAV vs 52 Week Lowest NAV' }"><c:out value="selected=\'selected\'" /></c:if> value="Latest NAV vs 52 Week Lowest NAV">Latest NAV vs 52 Week Lowest NAV</option>
						    </select>
						</div>
						</div>
				            
				        <div class="col-md-3 col-sm-3">
				        <div class="form-group">
				          <label class="bold-smaller width-100">Select AMC</label>
					        <select id="sel_amcCompanies" class="form-control" onchange="changeAmcCompany()" data-width="100%">
							<option value="All">All</option>
							<c:forEach items="${amcCompanies}" var="amc_name">			
							<c:choose>			    
				                <c:when test="${amc_name eq amc}">
				                <option selected="selected" value="<c:out value="${amc_name}"></c:out>"><c:out value="${amc_name}"></c:out></option>
				                </c:when>
				                <c:otherwise>
				                <option value="<c:out value="${amc_name}"></c:out>"><c:out value="${amc_name}"></c:out></option>
				                </c:otherwise>
							</c:choose>
							
							</c:forEach>
						    </select>
						</div>
						</div>
						
						<div class="col-md-3 col-sm-3">
				        <div class="form-group">
				          <label class="bold-smaller">Select Category</label>
				          <select id="sel_schemeCategories" class="form-control" data-width="100%">  
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
				        
				        <div class="col-md-2 col-sm-2 justify-content-end align-self-end">
				          <div class="form-group">
				            <label class="bold block hidden-xs">&nbsp;</label>
							<a id="btn-submit" href="javascript:void(0)" class="btn btn__secondary btn__rounded" onclick="showLatestNavChanges()">Submit</a>
					      </div>
				         </div>
				         
						</div>
						</div>
				        </div> 
	
				 		</div>
			 		</div>

					<div class="row mt-40">
				     <div class="col-xs-12 col-md-12 col-sm-12 ">
				     	       <table class="adv-table table table-striped table-responsive mf-research-table table-bordered" style="width:100%" id="tbl_nav_change">
					        <thead>
					            <tr>
					                <th>Scheme Name</th>
					                <th class="text-center">Inception Date</th>
					                <th class="text-center">Latest NAV Date</th>
					                <th class="text-center">Latest NAV</th>
					                <c:choose>
					                <c:when test="${option == 'Latest NAV vs 52 Week Highest NAV'}">
					                <th class="text-center">52 Week Highest NAV Date</th>
					                <th class="text-center">52 Week Highest NAV</th>
					                </c:when>
					                <c:when test="${option == 'Latest NAV vs 52 Week Lowest NAV'}">
					                <th class="text-center">52 Week Lowest NAV Date</th>
					                <th class="text-center">52 Week Lowest NAV</th>
					                </c:when>
					                <c:otherwise>
					                <th class="text-center">Previous Month Closing NAV Date</th>
					                <th class="text-center">Previous Month Closing NAV</th>
					                </c:otherwise>
					                </c:choose>
					                <th class="text-center">Change Percentage (%)</th>				
					            </tr>
					            </thead>
					            <tbody>
					            <c:forEach items="${schemeNavChanges}" var="schemeNavChange">	              
					              <tr>
					                <td><a href='/mutual-funds-research/<c:out value="${schemeNavChange.scheme_amfi_url}"></c:out>' class="mutual-funds-anchor"><c:out value="${schemeNavChange.scheme_name}"></c:out></a>					                
					                </td>
					                <td class="nowrap text-center"><fmt:formatDate pattern="dd-MM-yyyy" value="${schemeNavChange.scheme_inception_date}" /></td>
					                <td class="nowrap text-center"><fmt:formatDate pattern="dd-MM-yyyy" value="${schemeNavChange.latest_nav_date}" /></td>
					                <td class="text-center"><c:out value="${schemeNavChange.latest_nav}"></c:out></td>
					                <c:choose>
					                <c:when test="${option == 'Latest NAV vs 52 Week Highest NAV'}">
					                <td class="nowrap text-center"><fmt:formatDate pattern="dd-MM-yyyy" value="${schemeNavChange.highest_nav_date}" /></td>
					                <td class="text-center"><c:out value="${schemeNavChange.highest_nav}"></c:out></td>
					                <c:choose>
					                <c:when test="${schemeNavChange.highest_change_percentage == 0}">
					                <td class="text-center">
					                <fmt:formatNumber type="number" minFractionDigits="2" maxFractionDigits="2" value="${schemeNavChange.highest_change_percentage}"/>
					                </td>
					                </c:when>
					                <c:otherwise>
					                <td class="text-center">
					                <fmt:formatNumber type="number" minFractionDigits="2" maxFractionDigits="2" value="${schemeNavChange.highest_change_percentage}"/>
					               	<i class="fa fa-long-arrow-down color-red" style="margin-left:5px;"></i>
					                </td>
					                </c:otherwise>
					                </c:choose>
					                </c:when>
					                <c:when test="${option == 'Latest NAV vs 52 Week Lowest NAV'}">
					                <td class="nowrap text-center"><fmt:formatDate pattern="dd-MM-yyyy" value="${schemeNavChange.lowest_nav_date}" /></td>
					                <td><c:out value="${schemeNavChange.lowest_nav}"></c:out></td>
					                <c:choose>
					                <c:when test="${schemeNavChange.lowest_change_percentage == 0}">
					                <td class="text-center">
					                <fmt:formatNumber type="number" minFractionDigits="2" maxFractionDigits="2" value="${schemeNavChange.lowest_change_percentage}"/>
					                </td>
					                </c:when>
					                <c:otherwise>
					                <td class="text-center">
					                <fmt:formatNumber type="number" minFractionDigits="2" maxFractionDigits="2" value="${schemeNavChange.lowest_change_percentage}"/>
					               	<i class="fa fa-long-arrow-up text-success" style="margin-left:5px;"></i>
					                </td>
					                </c:otherwise>
					                </c:choose>
					                </c:when>
					                <c:otherwise>
					                <td><fmt:formatDate pattern="dd-MM-yyyy" value="${schemeNavChange.prev_month_nav_date}" /></td>
					                <td><c:out value="${schemeNavChange.prev_month_nav}"></c:out></td>
					                <c:choose>
					                <c:when test="${schemeNavChange.prev_month_change_percentage == 0}">
					                <td>
					                <fmt:formatNumber type="number" minFractionDigits="2" maxFractionDigits="2" value="${schemeNavChange.prev_month_change_percentage}"/>
					                </td>
					                </c:when>
					                <c:when test="${schemeNavChange.prev_month_change_percentage > 0}">
					                <td>
					                <fmt:formatNumber type="number" minFractionDigits="2" maxFractionDigits="2" value="${schemeNavChange.prev_month_change_percentage}"/>
					                <i class="fa fa-long-arrow-up text-success" style="margin-left:5px;"></i>
					                </td>
					                </c:when>
					                <c:otherwise>
					                <td>
					                <fmt:formatNumber type="number" minFractionDigits="2" maxFractionDigits="2" value="${schemeNavChange.prev_month_change_percentage}"/>
					               	<i class="fa fa-long-arrow-down color-red" style="margin-left:5px;"></i>
					                </td>
					                </c:otherwise>
					                </c:choose>
					                </c:otherwise>
					                </c:choose>
					            </tr>
					            </c:forEach>
					            </tbody>
					       </table>
				        </div>
	       		</div>
			 		
          </div><!-- /.col-lg-4 -->

        </div> <!-- /.row -->
      </div><!-- /.container -->
    </section><!-- /.Team layout 1  -->