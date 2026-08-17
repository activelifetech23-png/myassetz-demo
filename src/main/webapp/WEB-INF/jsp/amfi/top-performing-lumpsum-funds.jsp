<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    

<style>
.title_header {
    color: #000 !important;
}
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
	padding:11px 15px;
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
</style>

<script>
$(document).ready(function(){
	
	$('#tbl_scheme_returns').dataTable({
		"pageLength": 10,
        "bPaginate": true,
        "bFilter": true,
        "bInfo": true,
        "bSort": true,
        "columns": [
        	{ "width": "50%" },
            { "width": "15%" },
            { "width": "5%" },
            { "width": "10%" },
            { "width": "5%" },
            { "width": "5%" },
            { "width": "10%" }
                  ],
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
	var amount = $.trim($("#sel_sip_amount").val());
 	
	top.location =  "/mutual-funds-research/top-performing-lumpsum-funds?category="+category+"&period="+period+"&amount="+amount;
}
</script>

<div class="main-content">
	 <!-- Section: inner-header -->
    <section class="header_color">
      <div class="container pt-120 pb-20">
        <!-- Section Content -->
        <div class="section-content">
          <div class="row text-center">
            <div class="col-md-12">
              <h2 class="title text-dark">Mutual Fund Lumpsum Returns</h2>
              <ol class="breadcrumb  text-black mt-10">
                <li><a href="#" class="title_header">Home</a></li>
                <li><a href="#" class="title_header">Mutual Funds Research</a></li>
                <li class="active text-gray-silver title_header">Mutual Fund Lumpsum Returns</li>
              </ol>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <section class="section bg-lighter mb-2">
		<div class="container">
		   <div class="row justify-content-lg-between">
		   	`<div class="container service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">

						<h6 class="card-header mf-research-header font-18">
				        	<c:choose>
						  	<c:when test="${category_name eq ''}">
						  		Mutual Fund Lumpsum Returns
						  	</c:when>
						  	<c:otherwise>
						  		Mutual Fund Lumpsum Returns - ${category_name}
						  	</c:otherwise>
						  	</c:choose>
						 </h6>
				        
				        <div class="card-body mf-research-body">
						<div class="row pl-0 pr-4">
						<div class="col-md-4 col-sm-4">
			        		<div class="form-group">
			        			<label class="bold-smaller">Select Category</label>
					            <select id="sel_schemeCategories" class="form-control">
					             <c:forEach var="cat" items="${schemeCategories}" varStatus="status">
					               <c:choose>
					                <c:when test="${cat eq category}">
					                  <option selected="selected" value="${cat}">${cat}</option>
					                </c:when>
					                <c:otherwise>
					                <c:if test="${cat != 'Fixed Maturity Plans' && cat != 'Gold Funds'}">
					                  <option value="${cat}">${cat}</option>
					                </c:if>
					                </c:otherwise>
					               </c:choose>
					             </c:forEach>
					           </select>
			        		</div>
			        	</div>
			        	
			        	<div class="col-md-2 col-sm-3">
			        		<div class="form-group">
				              <label class="bold-smaller block">Select Period</label>
					             <select id="sel_period" class="form-control" data-width="100%">
								    <option <c:if test="${period eq '1' }"><c:out value="selected=\'selected\'" /></c:if> value="1">1 Year</option>
								    <option <c:if test="${period eq '2' }"><c:out value="selected=\'selected\'" /></c:if> value="2">2 Years</option>
								    <option <c:if test="${period eq '3' }"><c:out value="selected=\'selected\'" /></c:if> value="3">3 Years</option>
								    <option <c:if test="${period eq '4' }"><c:out value="selected=\'selected\'" /></c:if> value="4">4 Years</option>
								    <option <c:if test="${period eq '5' }"><c:out value="selected=\'selected\'" /></c:if> value="5">5 Years</option>
								    <option <c:if test="${period eq '6' }"><c:out value="selected=\'selected\'" /></c:if> value="6">6 Years</option>
								    <option <c:if test="${period eq '7' }"><c:out value="selected=\'selected\'" /></c:if> value="7">7 Years</option>
								    <option <c:if test="${period eq '8' }"><c:out value="selected=\'selected\'" /></c:if> value="8">8 Years</option>
								    <option <c:if test="${period eq '9' }"><c:out value="selected=\'selected\'" /></c:if> value="9">9 Years</option>
								    <option <c:if test="${period eq '10' }"><c:out value="selected=\'selected\'" /></c:if> value="10">10 Years</option>
								    <option <c:if test="${period eq '11' }"><c:out value="selected=\'selected\'" /></c:if> value="11">11 Years</option>
								    <option <c:if test="${period eq '12' }"><c:out value="selected=\'selected\'" /></c:if> value="12">12 Years</option>
								    <option <c:if test="${period eq '13' }"><c:out value="selected=\'selected\'" /></c:if> value="13">13 Years</option>
								    <option <c:if test="${period eq '14' }"><c:out value="selected=\'selected\'" /></c:if> value="14">14 Years</option>
								    <option <c:if test="${period eq '15' }"><c:out value="selected=\'selected\'" /></c:if> value="15">15 Years</option>
								    <option <c:if test="${period eq '16' }"><c:out value="selected=\'selected\'" /></c:if> value="16">16 Years</option>
								    <option <c:if test="${period eq '17' }"><c:out value="selected=\'selected\'" /></c:if> value="17">17 Years</option>
								    <option <c:if test="${period eq '18' }"><c:out value="selected=\'selected\'" /></c:if> value="18">18 Years</option>
								    <option <c:if test="${period eq '19' }"><c:out value="selected=\'selected\'" /></c:if> value="19">19 Years</option>
								    <option <c:if test="${period eq '20' }"><c:out value="selected=\'selected\'" /></c:if> value="20">20 Years</option>
								    <option <c:if test="${period eq '21' }"><c:out value="selected=\'selected\'" /></c:if> value="21">21 Years</option>
								    <option <c:if test="${period eq '22' }"><c:out value="selected=\'selected\'" /></c:if> value="22">22 Years</option>
								  </select>
				           </div>
			        	</div>
			        	
			        	<div class="col-md-2 col-sm-2">
				           <div class="form-group">
				               <label class="bold-smaller">Select Amount</label>
				             <select id="sel_sip_amount" onchange="onSipParameterChange()" class="form-control" data-width="100%">              
				                  <option <c:if test="${amount eq '10000' }"><c:out value="selected=\'selected\'" /></c:if> value="10000">10000</option>
				                  <option <c:if test="${amount eq '25000' }"><c:out value="selected=\'selected\'" /></c:if> value="25000">25000</option>
				                  <option <c:if test="${amount eq '50000' }"><c:out value="selected=\'selected\'" /></c:if> value="50000">50000</option>
				                  <option <c:if test="${amount eq '100000' }"><c:out value="selected=\'selected\'" /></c:if> value="100000">100000</option>
				                  <option <c:if test="${amount eq '200000' }"><c:out value="selected=\'selected\'" /></c:if> value="200000">200000</option>
				                  <option <c:if test="${amount eq '300000' }"><c:out value="selected=\'selected\'" /></c:if> value="300000">300000</option>
				                  <option <c:if test="${amount eq '500000' }"><c:out value="selected=\'selected\'" /></c:if> value="500000">500000</option>
				                  <option <c:if test="${amount eq '1000000' }"><c:out value="selected=\'selected\'" /></c:if> value="1000000">1000000</option>
				                  <option <c:if test="${amount eq '1500000' }"><c:out value="selected=\'selected\'" /></c:if> value="1500000">1500000</option>
				                  <option <c:if test="${amount eq '2500000' }"><c:out value="selected=\'selected\'" /></c:if> value="2500000">2500000</option>
				             </select>
				           </div>
				        </div>
				        
				        <div class="col-md-2 col-sm-2 justify-content-end align-self-end">
				          <div class="form-group">
				            <label class="bold block hidden-xs">&nbsp;</label>
				            <br/>
							<a href="javascript:void(0)" class="btn btn-primary btn-submit" onclick="getData()">Submit</a>
					      </div>
				        </div>
				        </div> 
				        </div> 

			 	
  
</div>
		
	<div class="container service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
		<div class="row marginBottom20">
			<div class="col-md-12 table-responsive">
								       <table class="adv-table table table-striped table-bordered table-responsive mf-research-table" style="width:100%" id="tbl_scheme_returns">
				       		<thead>
				        	<c:choose>
								<c:when test="${fn:contains(header['User-Agent'],'Mobile')}">
								    <tr>
						                <th data-priority="1">Scheme Name</th>
						    	        <th>Launch Date</th>
						    	        <th>AUM (Crore)</th>
						                <th>Expense Ratio (%)</th>
						    	        <th data-priority="2">Invested Amount</th>
						    	        <th data-priority="3">Current Value</th>
						    	        <th data-priority="4">Annualized Return (%)</th>						
						             </tr>		  
								</c:when>
								<c:otherwise>
									 <tr>
						                <th>Scheme Name</th>
						    	        <th>Launch Date</th>
						    	        <th>AUM (Crore)</th>
						                <th>Expense Ratio (%)</th>
						    	        <th>Invested Amount</th>
						    	        <th>Current Value</th>
						    	        <th>Annualized Return (%)</th>						
						             </tr>		            
								</c:otherwise>
							</c:choose>
				            </thead>
				            <tbody>
				             <c:forEach items="${schemePerformances}" var="schemePerformances">	              
				             <tr>
				                <td><a href='/mutual-funds-research/fund-card?scheme=<c:out value="${schemePerformances.scheme_amfi_url}"></c:out>' class="mutual-funds-anchor"><c:out value="${schemePerformances.scheme_name}"></c:out></a>
				                <c:if test="${not empty schemePerformances.url}">
				                | <a href='<c:out value="${schemePerformances.url}"></c:out>' target="_blank" style="color:#d81921;font-size:11px;">Invest Online</a>
				                </c:if>
				                </td>
				                <td><fmt:formatDate pattern="dd-MM-yyyy" value="${schemePerformances.inception_date}" /></td>
								<td class="text-right units_comma_fixed">
						    	<c:choose>
						    	<c:when test="${schemePerformances.scheme_assets eq 0}">
						    		-
						    	</c:when>
						    	<c:otherwise>
						    		${schemePerformances.scheme_assets}
						    	</c:otherwise>
						    	</c:choose>
						    	</td>
				                <td class="text-right">
						    	<c:choose>
						    	<c:when test="${schemePerformances.ter eq 0}">
						    		-
						    	</c:when>
						    	<c:otherwise>
						    		<c:out value="${schemePerformances.ter}"/>
						    	</c:otherwise>
						    	</c:choose>
						    	</td>
				                <td class="text-right comma_fixed">${schemePerformances.current_cost}</td>
				                <td class="text-right comma_fixed">${schemePerformances.current_value}</td>
				                <td class="text-right"><c:out value="${schemePerformances.returns}"></c:out></td>
				            </tr>
				            </c:forEach>
				            </tbody>
							
							<c:choose>
				            <c:when test="${fn:contains(header['User-Agent'],'Mobile')}">
				            </c:when>
				            <c:otherwise>
							<c:if test="${benchmark_returns != null}">
							<tfoot>  
				            <tr>
				                <td><c:out value="${benchmark_returns.scheme_name}"></c:out></td>
				                <td><fmt:formatDate pattern="dd-MM-yyyy" value="${benchmark_returns.inception_date}" /></td>
				                <td class="text-right">-</td>
				                <td class="text-right">-</td>
				                <td class="text-right comma_fixed"><c:out value="${benchmark_returns.current_cost}"></c:out></td>
				                <td class="text-right comma_fixed"><c:out value="${benchmark_returns.current_value}"></c:out></td>
				                <td class="text-right"><c:out value="${benchmark_returns.returns}"></c:out></td>
				            </tr>
				            </tfoot>
				            </c:if>
				            </c:otherwise>
				            </c:choose> 
				       </table>
			</div>
		</div>
		

				
	</div>
		   </div>
		 </div>
	</section>
    
</div>