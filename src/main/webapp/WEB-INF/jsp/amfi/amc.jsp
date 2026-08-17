<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

 <!--================Breadcrumb Area =================-->
        <section class="breadcrumb_area">
        	<div class="breadcrumb_bottom">
        		<div class="container">
					<ul class="nav">
						<li><a href="/">Home</a></li>
						<li><a href="#">Mutual Funds Research</a></li>
						<li class="active"><a href="/tools-and-calculators/become-a-crorepati">AMC</a></li>
					</ul>
				</div>
        	</div>
        </section>
        <!--================End Breadcrumb Area =================-->
        
        <!--================Client Image Area =================-->
        <section class="client_img_area business_process mt-5 Truuegro-mfresearch">
        	<div class="container">
        		<div class="row">
					<jsp:include page="../sidebar/mf-sidebar.jsp"></jsp:include>
        		</div>
        		<div class="row mt-3 pt-4" style="border-top: 1px dotted #aaa;font-size:12px;">
			 		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				 		<div class="panel panel-default adv-panel margin-top14 margin-bottom0">
						<div class="panel-heading padding-0 padding-left10">
						<h6 class="panel-title margin0 ak-bold">AMC</h6>
				        </div>
				        
				        <div class="panel-body">
							<div class="row pl-4 pr-4">
			                <div class="col-md-3 col-sm-4">
				              <div class="form-group amc">
				              <label class="bold-smaller">Select AMC</label>
				              <select id="sel-amc" multiple="multiple" name="sel-amc-multiselect[]" class="form-control">
					            <option value="5 Largest Fund Houses">5 Largest Fund Houses</option>
					            <option value="10 Largest Fund Houses">10 Largest Fund Houses</option>
					            <option value="15 Largest Fund Houses">15 Largest Fund Houses</option>
								<c:forEach items="${amcList}" var="amc_names">
								<c:choose>
								<c:when test="${amc_names eq 'Deutsche Mutual Fund'}">
								
								</c:when>					
								 <c:otherwise>
								   <option value="${amc_names}">${amc_names}</option>
								   </c:otherwise>
								   </c:choose>
								</c:forEach>
						      </select>
				              </div>
			                </div>
			                
			                <div class="col-md-3 col-sm-4">
				              <div class="form-group category">
				              <label class="bold-smaller">Select Category</label>
				              <select id="sel-category" multiple="multiple" class="form-control">
					            <option value="Equity: All">Equity: All</option>
					            <option value="Debt: All">Debt: All</option>
					            <option value="Hybrid: All">Hybrid: All</option>
					            <option value="Solution Oriented: All">Solution Oriented: All</option>
					            <option value="Others: All">Others: All</option>
								<c:forEach items="${schemeCategories}" var="cat">
									<option value="${cat}">${cat}</option>
								</c:forEach>
						      </select>
				              </div> 
			                </div>
			             
			                <div class="col-md-2 col-sm-3 justify-content-end align-self-end">
			                <div class="form-group ">
			                	<!-- <label class="bold-smaller width-100" style="margin: 0px;" >&nbsp;</label> -->
			                	<label class="bold block hidden-xs hidden-sm">&nbsp;</label>
							  <a href="javascript:void(0)" style="margin-top: -2px;" class="main_btn" onclick="getData()">Submit</a>
						    </div>
			                </div>   
			              </div>
				        </div> 
	
				 		</div>
			 		</div>
			 		
			<div class="col-md-12 col-sm-12 text-right mt-2">
				<c:choose>
				    <c:when test="${factsheet eq null &&  portfolio eq null}">
				    	<p class="font12 text-right"> There are no scheme documents available</p>
				    </c:when>
				    <c:otherwise>
				    	<c:if test="${factsheet ne null}" >
							<a class="blue-color" style="font-size:13px;font-size: 13px; background: #283178;padding: 3px 5px;color: #fff;" href="${factsheet.link}" target="_blank">Download Latest Fact Sheet</a>
				    	</c:if>
				    	<c:if test="${portfolio ne null}" >
							<a class="blue-color" style="font-size:13px;font-size: 13px; background: #0b9444;padding: 3px 5px;color: #fff;" href="${portfolio.link}" target="_blank">Download Latest Portfolio</a>
				    	</c:if>
				    </c:otherwise>
				</c:choose>
				
			</div>	
			 		
			<div class="col-md-12 col-sm-12 nopadding mt-2">	
           <div class="col-md-12 col-sm-12 remove-bootstrap-col-lr-padding table-responsive">
	       <table class="adv-table table table-striped table-responsive" style="width:100%" id="tbl_scheme_returns">
	        <thead>
	        	<tr>
	        		<th colspan="5"></th>
	        		<th colspan="9" class="text-center" style="vertical-align: middle;padding: 10px 0px;"><span style="background: #e9eaee;position: relative;top: 18px;z-index: 1;padding: 0 8px;">Return (%)</span><hr style="position: relative;top: -5px;"/></th>
	        		<th></th>
	        	</tr>
	            <tr>
	                <th>Scheme Name</th>
	                <th>Category</th>
	                <th>Launch Date</th>
	                <th>AUM (Crore)</th>
	                <th>Expense Ratio (%)</th>
	                <th>YTD</th>
	                <th>1 Mon</th>
	                <th>3 Mon</th>
	                <th>6 Mon</th>
	                <th>1 Yr</th>	
	                <th>3 Yrs</th>	
	                <th>5 Yrs</th>	
	                <th>10 Yrs</th>	
	                <th>Since Launch</th>		
	                <th>Action</th>				
	            </tr>
	            </thead>
	            <tbody>
	            <c:forEach items="${schemePerformances}" var="schemePerformances">	              
	              <tr>
	                <td><a href='/mutual-funds-research/<c:out value="${schemePerformances.scheme_amfi}"></c:out>' class="mutual-funds-anchor"><c:out value="${schemePerformances.scheme_amfi}"></c:out></a>
	                <c:if test="${not empty schemePerformances.url}">
	                | <a href='<c:out value="${schemePerformances.url}"></c:out>' target="_blank" style="color:#d81921;font-size:11px;">Invest Online</a>
	                </c:if>	
	                </td>
	                <td><c:out value="${schemePerformances.scheme_category}"></c:out></td>
	                <td class="nowrap"><fmt:formatDate pattern="dd-MM-yyyy" value="${schemePerformances.inception_date}" /></td>
	                <td><fmt:formatNumber type="number" maxFractionDigits="2" value="${schemePerformances.scheme_assets}"/></td>
	                <td><c:out value="${schemePerformances.ter}"></c:out></td>
	                <td><c:out value="${schemePerformances.returns_abs_ytd eq 0 ? '-': schemePerformances.returns_abs_ytd}"></c:out></td>
	                <td><c:out value="${schemePerformances.returns_abs_1month eq 0 ? '-': schemePerformances.returns_abs_1month}"></c:out></td>
	                <td><c:out value="${schemePerformances.returns_abs_3month eq 0 ? '-': schemePerformances.returns_abs_3month}"></c:out></td>
	                <td><c:out value="${schemePerformances.returns_abs_6month eq 0 ? '-': schemePerformances.returns_abs_6month}"></c:out></td>
	                <c:if test="${period eq '1y' || period eq '3y' || period eq '5y' || period eq '10y' || period eq 'Since Inception'}">
	                <td><c:out value="${schemePerformances.returns_abs_1year eq 0 ? '-': schemePerformances.returns_abs_1year}"></c:out></td>
	                <td><c:out value="${schemePerformances.returns_cmp_3year eq 0 ? '-': schemePerformances.returns_cmp_3year}"></c:out></td>
	                <td><c:out value="${schemePerformances.returns_cmp_5year eq 0 ? '-': schemePerformances.returns_cmp_5year}"></c:out></td>
	                <td><c:out value="${schemePerformances.returns_cmp_10year eq 0 ? '-': schemePerformances.returns_cmp_10year}"></c:out></td>
	                <td><c:out value="${schemePerformances.returns_cmp_inception eq 0 ? '-': schemePerformances.returns_cmp_inception}"></c:out></td>
	                <td style="text-align: center;vertical-align: middle;"><input data-toggle='tooltip' data-original-title="Select To Compare" type="checkbox" class="compareCheckBox" data-schemeName="${schemePerformances.scheme_amfi}" value="${schemePerformances.id}"/></td>
	                </c:if>
	            </tr>
	            </c:forEach>
	            </tbody>
	            
	             <c:choose>
	            <c:when test="${fn:contains(header['User-Agent'],'Mobile')}">
	            </c:when>
	            <c:otherwise>
					<tfoot> 
					<c:if test="${category_returns != null}"> 
					<tr>
		                <td>Category Average</td>
		                <td>-</td>
		                <td>-</td>
		                <td>-</td>
		                <td>-</td>
		                <td><c:out value="${category_returns.returns_abs_ytd eq 0 ? '-': category_returns.returns_abs_ytd}"></c:out></td>
		                <td><c:out value="${category_returns.returns_abs_1month eq 0 ? '-': category_returns.returns_abs_1month}"></c:out></td>
		                <td><c:out value="${category_returns.returns_abs_3month eq 0 ? '-': category_returns.returns_abs_3month}"></c:out></td>
		                <td><c:out value="${category_returns.returns_abs_6month eq 0 ? '-': category_returns.returns_abs_6month}"></c:out></td>
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
		            <tr class="text-center">
		                <td class="text-left"><c:out value="${benchmark_returns.benchmark_name}"></c:out></td>
		                <td>-</td>
		                <td>-</td>
		                <td>-</td>
		                <td>-</td>
		                <td><c:out value="${benchmark_returns.returns_abs_ytd eq 0 ? '-': benchmark_returns.returns_abs_ytd}"></c:out></td>
		                <td><c:out value="${benchmark_returns.returns_abs_1month eq 0 ? '-': benchmark_returns.returns_abs_1month}"></c:out></td>
		                <td><c:out value="${benchmark_returns.returns_abs_3month eq 0 ? '-': benchmark_returns.returns_abs_3month}"></c:out></td>
		                <td><c:out value="${benchmark_returns.returns_abs_6month eq 0 ? '-': benchmark_returns.returns_abs_6month}"></c:out></td>
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
	            </c:otherwise>
				</c:choose>
	       </table>
          </div>
		      </div>

        	</div>
		
        </section>
        
        
         <div class="camparePanelBtn" style="display: none;">
    	<a href="javascript:void(0);">Compare (<span id="compareSchemeIdslength">1</span>)</a>
    </div>
	<div id="comparePanel" class="row" style="">     	
	  	<div class="compareTitleBox col-md-1">
	  		<p><span id="noOfCompareSchemesId">1</span> ITEMS<br> TO COMPARE</p>
	  		<div class="compTitLink" style="font-size:11px;">
	             <a href="javascript:void(0);" onclick="removeAllCompare()">Remove</a> |
	             <a href="javascript:void(0);" onclick="hideShowComparePanel()" class="hidePanel">Hide</a>
	        </div>
	   </div>	   
	</div>
        
        <!--================End Client Image Area =================-->
         <style>
         
         	.amc .nice-select , .category .nice-select {
        		display: none;
        	}
         
	        #tbl_scheme_returns tfoot tr td {
			    background-color: #cad2dc;
			    font-weight: bold;
			}
		
			#comparePanel {
				position: fixed;
			    bottom: 0;
			    height: 96px;
			    width: 100%;
			    z-index: 99999;
			    background-color: #fff;
			    border-top: 1px solid #d3d3d3;
			    box-shadow: 1px 1px 5px 5px #d3d3d3;
			    margin: 0;
			}
			.compareTitleBox {
				margin-top: 10px;
			    text-align: center;
			    color: #01135c;
			    border-radius: 5px;
			}
			.compareProducts{
				font-weight: bold;
				box-shadow: 0px 0px 10px 0px #01135c;
				margin: 10px;
				max-width: 200px;
			}
			.compareButton {
				margin-top: 25px;
			    padding: 10px 20px;
			}
			.compareProducts p {
				margin-top: 10px;
			    font-size: 12px;
			    line-height: 1.42857143 !important;
			}
			.compareProducts a {
				display: block;
			    width: 12px;
			    height: 12px;
			    overflow: hidden;
			    text-indent: -9999999px;
			    background-image: url(/img/close.png);
			    background-repeat: no-repeat;
			    position: absolute;
			    top: -7px;
			    right: -8px;
			    cursor: pointer;
			}
			
			table.dataTable thead th, table.dataTable thead td {
    			padding: 10px 7px;
			}
		
        </style>
       
       <script>
var aumOrderedAmcList = new Array();
var schemeCategoriesList = new Array();
var idsToCompare = [];
$(document).ready(function(){
	
	$('#comparePanel').hide();
	
	var aumOrderedAmcStr = '${aumOrderedAmcList}';
	var schemeCategories = '${schemeCategories}';
	aumOrderedAmcStr = aumOrderedAmcStr.substring(1, aumOrderedAmcStr.length - 1);
	aumOrderedAmcList = aumOrderedAmcStr.split(',');
	schemeCategories = schemeCategories.substring(1, schemeCategories.length - 1);
	schemeCategoriesList = schemeCategories.split(',');
	
	
	console.log(schemeCategoriesList);

	var period = '${period}';
	var period_sort = 5;
	if(period == "1y" || period == "1w")
	{
		period_sort = 5;
	}
	if(period == "3y" || period == "1m")
	{
		period_sort = 6;
	}
	if(period == "5y" || period == "3m")
	{
		period_sort = 7;
	}
	if(period == "10y" || period == "6m")
	{
		period_sort = 8;
	}
	if(period == "Since Inception" || period == "ytd")
	{
		period_sort = 9;
	}
	
	$('#tbl_scheme_returns').dataTable({
		"pageLength": 50,
        "bPaginate": true,
        "bFilter": true,
        "bInfo": true,
        "bSort": true,
        fixedHeader: {
            headerOffset: 70
        },
        "aoColumnDefs": [
                         { 'bSortable': false, 'aTargets': [ 2 ] }
                      ],
        "columns": [
                    { "width": "55%", className: "text-left" },
                    { "width": "15%", className: "text-left" },
                    { "width": "5%", className: "text-center" },
                    { "width": "3%", className: "text-center" },
                    { "width": "3%", className: "text-center" },
                    { "width": "5%", className: "text-center" },
                    { "width": "7%", className: "text-center"},
                    { "width": "5%", className: "text-center" },
                    { "width": "5%", className: "text-center" },
                    { "width": "5%", className: "text-center" },
                    { "width": "5%", className: "text-center" },
                    { "width": "5%", className: "text-center" },
                    { "width": "5%", className: "text-center" },
                    { "width": "5%", className: "text-center" },
                    { "width": "1%", className: "text-center" },
                  ],
                  columnDefs: [
                      { width: 10, targets: 15 }
                  ],
                  "initComplete": function(settings, json) {
                      <c:if test="${fn:contains(header['User-Agent'],'Mobile')}">
                      var table = settings.oInstance.api();
                      setTimeout(function(){
                   	  table.rows(':not(.parent)').nodes().to$().find('td:first-child').trigger('click');
                      }, 1000);
                      </c:if>
                  }
    }).fnSort([period_sort,'desc']);
	
	$('#tbl_scheme_returns').on( 'draw.dt', function (e, settings) {
		<c:if test="${fn:contains(header['User-Agent'],'Mobile')}">
		var table = settings.oInstance.api();
		 setTimeout(function(){
		    table.rows(':not(.parent)').nodes().to$().find('td:first-child').trigger('click');
		 }, 1000);
		</c:if>
	});
	
	$('#sel-category').multiselect({
		 maxHeight: 200, 
		 nonSelectedText: 'Select Category',
		 buttonWidth: '100%',
		 includeSelectAllOption : true,
		 onChange: function(option, checked, select) {
			if($(option).val() == "Equity: All"){
				 if(checked == true){
					 equitySelect();
				 }
				 else{
					 equityUnselect();
				 }
			}
			
			if($(option).val() == "Debt: All"){
				 if(checked == true){
					 debtSelect();
				 }
				 else{
					 debtUnselect();
				 }
			}
			
			if($(option).val() == "Hybrid: All"){
				 if(checked == true){
					 hybridSelect();
				 }
				 else{
					 hybridUnselect();
				 }
			}
			
			if($(option).val() == "Solution Oriented: All"){
				 if(checked == true){
					 solutionSelect();
				 }
				 else{
					 solutionUnselect();
				 }
			}
			
			if($(option).val() == "Others: All"){
				 if(checked == true){
					 othersSelect();
				 }
				 else{
					 othersUnselect();
				 }
			}
			
			
		 }
	 });
	
	function equitySelect(){
		$('#sel-category').multiselect('updateButtonText');
		console.log("ljlj->"+schemeCategoriesList)
		var values = [];
		for(i=0;i<schemeCategoriesList.length;i++){
			if(schemeCategoriesList[i].indexOf("Equity:") !== -1){
				values.push(schemeCategoriesList[i].trim());
			}
		}
		$('#sel-category').multiselect('select', values);
	}
	function equityUnselect(){
		$('#sel-category').multiselect('updateButtonText');
		console.log("ljlj->"+schemeCategoriesList)
		var values = [];
		for(i=0;i<schemeCategoriesList.length;i++){
			if(schemeCategoriesList[i].indexOf("Equity:") !== -1){
				values.push(schemeCategoriesList[i].trim());
			}
		}
		$('#sel-category').multiselect('deselect', values);
	}
	
	
	function debtSelect(){
		$('#sel-category').multiselect('updateButtonText');
		var values = [];
		for(i=0;i<schemeCategoriesList.length;i++){
			if(schemeCategoriesList[i].indexOf("Debt:") !== -1){
				values.push(schemeCategoriesList[i].trim());
			}
		}
		$('#sel-category').multiselect('select', values);
	}
	function debtUnselect(){
		$('#sel-category').multiselect('updateButtonText');
		var values = [];
		for(i=0;i<schemeCategoriesList.length;i++){
			if(schemeCategoriesList[i].indexOf("Debt:") !== -1){
				values.push(schemeCategoriesList[i].trim());
			}
		}
		$('#sel-category').multiselect('deselect', values);
	}
	
	function hybridSelect(){
		$('#sel-category').multiselect('updateButtonText');
		var values = [];
		for(i=0;i<schemeCategoriesList.length;i++){
			if(schemeCategoriesList[i].indexOf("Hybrid:") !== -1){
				values.push(schemeCategoriesList[i].trim());
			}
		}
		$('#sel-category').multiselect('select', values);
	}
	function hybridUnselect(){
		$('#sel-category').multiselect('updateButtonText');
		var values = [];
		for(i=0;i<schemeCategoriesList.length;i++){
			if(schemeCategoriesList[i].indexOf("Hybrid:") !== -1){
				values.push(schemeCategoriesList[i].trim());
			}
		}
		$('#sel-category').multiselect('deselect', values);
	}
	
	function solutionSelect(){
		$('#sel-category').multiselect('updateButtonText');
		var values = [];
		values.push("Childrens Fund");
		values.push("Retirement Fund");
		$('#sel-category').multiselect('select', values);
	}
	function solutionUnselect(){
		$('#sel-category').multiselect('updateButtonText');
		var values = [];
		values.push("Childrens Fund");
		values.push("Retirement Fund");
		$('#sel-category').multiselect('deselect', values);
	}
	
	function othersSelect(){
		$('#sel-category').multiselect('updateButtonText');
		var values = [];
		values.push("ETFs");
		values.push("Fund of Funds-Domestic");
		values.push("Fund of Funds-Overseas");
		values.push("Index Fund");
		$('#sel-category').multiselect('select', values);
	}
	function othersUnselect(){
		$('#sel-category').multiselect('updateButtonText');
		var values = [];
		values.push("ETFs");
		values.push("Fund of Funds-Domestic");
		values.push("Fund of Funds-Overseas");
		values.push("Index Fund");
		$('#sel-category').multiselect('deselect', values);
	}
	
	

	$('#sel-amc').multiselect({
		 maxHeight: 200, 
		 buttonWidth: '100%',
		 nonSelectedText: 'Select AMC',
		 includeSelectAllOption : true,
		 onChange: function(option, checked, select) {
			 if($(option).val() == "5 Largest Fund Houses")
			 {
				 if(checked == true)
				 {
					 selectTopFundHouses(5);
				 }
				 else
				 {
					 $('#sel-amc').multiselect('deselectAll', true);
					 $('#sel-amc').multiselect('updateButtonText');
				 }
			 }
			 if($(option).val() == "10 Largest Fund Houses")
			 {
				 if(checked == true)
				 {
					 selectTopFundHouses(10);
				 }
				 else
				 {
					 $('#sel-amc').multiselect('deselectAll', true);
					 $('#sel-amc').multiselect('updateButtonText');
				 }
			 }
			 if($(option).val() == "15 Largest Fund Houses")
			 {
				 if(checked == true)
				 {
					 selectTopFundHouses(15);
				 }
				 else
				 {
					 $('#sel-amc').multiselect('deselectAll', true);
					 $('#sel-amc').multiselect('updateButtonText');
				 }
			 }
		 }
	 });
		
	setTimeout(function(){ selectALLValues(); }, 1000);
	
	
	$('.compareCheckBox').change(function() {
	 	var val = $(this).val();
	 	var schemeName = $(this).attr('data-schemeName');
	 	var compareHtml = $('#comparePanel').html();
 		var addFundToCompareHtml = '<div class="col-md-2 compareProducts" style="margin:10px;"> ' +
        		' <p title="'+$(this).attr('data-schemeName')+'">'+$(this).attr('data-schemeName')+'</p> ' +
        		' <a onclick="showDiv('+val+',&quot;'+$(this).attr('data-schemeName')+'&quot;)" class="compareProRemove"></a>' + 
            	' </div>';
        var compareButtonHtml = '';
	    if($(this).is(":checked")) {		    	 
     		idsToCompare.push(schemeName);
     		if(idsToCompare.length < 2) {
     			 compareButtonHtml = '<div class="col-md-1 pull-right cmButton"><input class="btn btn-danger compareButton" onclick="compareScheme()" id="compareMFs" disabled="" value="Compare" type="button"></div>';
     		} else {
     			 compareButtonHtml = '<div class="col-md-1 pull-right cmButton"><input class="btn btn-danger compareButton" onclick="compareScheme()" id="compareMFs" value="Compare" type="button"></div>';
     		}
     		  if(idsToCompare.length > 5) {
  	    		$(this).prop('checked', false);
  	    		var index = idsToCompare.indexOf(schemeName);
  		        if (index !== -1) {
  		        		idsToCompare.splice(index, 1);
  		        }
  	    		 swal({title:"",text:"You can select upto 5 funds for comparison"});
  	    		 return;
  	    	}   
     		 if(idsToCompare.length < 3) {
     			 var disabledCompareButtonHtml = '<div class="col-md-1 pull-right cmButton"><input class="btn btn-danger compareButton" onclick="compareScheme()" id="compareMFs" disabled="" value="Compare" type="button"></div>';
     			compareHtml = compareHtml.replace(disabledCompareButtonHtml, '');	     			
     		 } else {
     			compareHtml = compareHtml.replace(compareButtonHtml, '');
     		 }
     		$('#comparePanel').html(compareHtml + addFundToCompareHtml + compareButtonHtml);
	            	 
	                
        } else {
        	var index = idsToCompare.indexOf(schemeName);
        	if (index !== -1) {
        		idsToCompare.splice(index, 1);
        		compareButtonHtml = '<div class="col-md-1 pull-right cmButton"><input class="btn btn-danger compareButton" onclick="compareScheme()" id="compareMFs" value="Compare" type="button"></div>';
        		compareHtml = compareHtml.replace(compareButtonHtml, '');
        		if(idsToCompare.length < 2) {
        			compareButtonHtml = '<div class="col-md-1 pull-right cmButton"><input class="btn btn-danger compareButton" onclick="compareScheme()" id="compareMFs" disabled="" value="Compare" type="button"></div>';
        		}
        		compareHtml = compareHtml.replace(compareButtonHtml, '');
	     		 
        		compareHtml = compareHtml.replace(addFundToCompareHtml, '');
        		compareHtml = compareHtml.replace(compareButtonHtml, '');
        		if(idsToCompare.length < 2) { 
        			compareButtonHtml = '<div class="col-md-1 pull-right cmButton"><input class="btn btn-danger compareButton" onclick="compareScheme()" id="compareMFs" disabled="" value="Compare" type="button"></div>';
        		}	        		
		        $('#comparePanel').html(compareHtml + compareButtonHtml);			        
        	}
        }	
	    $('#noOfCompareSchemesId').text(''+idsToCompare.length);		    
	    if(idsToCompare.length > 0) {
	    	$('#comparePanel').show();
	    } else {
	    	$('#comparePanel').hide();
	    }
 	});	
	
	$('#compareMFs').hide();
	
	
});

function selectALLValues()
{
	var amc_name = '${amc}';
	var category = '${category}';
	
	if(amc_name != '' && category != '')
	{
		var amc_array = amc_name.split(",");
		for(var k=0;k<amc_array.length;k++)
		{
			var amc = amc_array[k];
			amc_array[k] = amc;
		}
		$("#sel-amc").val(amc_array);
		$("#sel-amc").multiselect("refresh");
		
		var category_array = category.split(",");
		$("#sel-category").val(category_array);
		$("#sel-category").multiselect("refresh");
	}
}

function selectTopFundHouses(topcount)
{
	$('#sel-amc').multiselect('deselectAll', true);
	$('#sel-amc').multiselect('updateButtonText');
	var values = [];
    for(i=0;i<topcount;i++)
    {   
    	values.push(aumOrderedAmcList[i].trim());
    }
    values.push(topcount + " Largest Fund Houses");
    $('#sel-amc').multiselect('select', values);
}

function getData()
{
	var amc = $("#sel-amc").val();
 	var category = $("#sel-category").val();
 	var period = $("#sel_period").val();
 	var type = $("#sel_type").val();
 	var mode = "Growth";
 	
 	if(amc == null || amc == "")
    {
 		$("#adv-alert-msg").html("Please select Asset Management Company (AMC)");
   	    $("#adv-alert").modal('show');
   	    return false;
    }	
 	
 	if(category == null || category == "")
    {
 		$("#adv-alert-msg").html("Please select Category");
   	    $("#adv-alert").modal('show');
   	    return false;
    }
 	
	for(var k=0;k<amc.length;k++)
	{
		var amc_name = amc[k];
		amc_name = encodeURIComponent(amc_name);
		amc[k] = amc_name;
	}
	
 	top.location =  "/mutual-funds-research/amc?amc="+amc+"&category="+category+"&period=1y&type=Open&mode="+mode;
}

function downloadXl()
{
	var amc = $("#sel-amc").val();
 	var category = $("#sel-category").val();
 	var period = $("#sel_period").val();
 	var type = $("#sel_type").val();
 	var mode = "Growth";
 	
 	if(amc == null || amc == "")
    {
 		$("#adv-alert-msg").html("Please select Asset Management Company (AMC)");
   	    $("#adv-alert").modal('show');
   	    return false;
    }	
 	
 	if(category == null || category == "")
    {
 		$("#adv-alert-msg").html("Please select Category");
   	    $("#adv-alert").modal('show');
   	    return false;
    }
 	
	for(var k=0;k<amc.length;k++)
	{
		var amc_name = amc[k];
		amc_name = encodeURIComponent(amc_name);
		amc[k] = amc_name;
	}
	
 	//top.location =  "/mutual-funds-research/downloadBestPerformingMutualFundsTrailingReturnsAmcWiseXl?amc="+amc+"&category="+category+"&period="+period+"&type="+type+"&mode="+mode;
 	
 	var path = "/mutual-funds-research/downloadBestPerformingMutualFundsTrailingReturnsAmcWiseXl?amc="+amc+"&category="+category+"&period="+period+"&type="+type+"&mode="+mode;
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
	    	    	top.location =  "/mutual-funds-research/downloadBestPerformingMutualFundsTrailingReturnsAmcWiseXl?amc="+amc+"&category="+category+"&period="+period+"&type="+type+"&mode="+mode+"&download=yes";
	    	    }
	        }
	    }
	};
	xhr.send(null);
}

function saveResult() 
{	
	var amc = $("#sel-amc").val();
 	var category = $("#sel-category").val();
 	var period = $("#sel_period :selected").text();
 	var type = $("#sel_type").val();
 	var mode = "Growth";
	
	var accountMap = '${accountMap}';
	var title = "Best Performing Mutual Fund - AMC Wise -> Amc - " + amc + ", Category = " + category + ", Period = " + period + ", Type = " + type + " Ended";
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

function openLogin(){
	
	var amc = $("#sel-amc").val();
 	var category = $("#sel-category").val();
 	var period = $("#sel_period").val();
 	var type = $("#sel_type").val();
 	var mode = "Growth";
 	
 	if(amc == null || amc == "")
    {
 		$("#adv-alert-msg").html("Please select Asset Management Company (AMC)");
   	    $("#adv-alert").modal('show');
   	    return false;
    }	
 	
 	if(category == null || category == "")
    {
 		$("#adv-alert-msg").html("Please select Category");
   	    $("#adv-alert").modal('show');
   	    return false;
    }
 	
	for(var k=0;k<amc.length;k++)
	{
		var amc_name = amc[k];
		amc_name = encodeURIComponent(amc_name);
		amc[k] = amc_name;
	}
	
	downloadPath = "/mutual-funds-research/downloadBestPerformingMutualFundsTrailingReturnsAmcWiseXl?amc="+amc+"&category="+category+"&period="+period+"&type="+type+"&mode="+mode;
	imageDownload = "no";
	chartId = "";
	filename = "";
	$("#adv-login").modal("show");
}

function showDiv(val, schemeName) {
	var compareHtml = $('#comparePanel').html();
   	var addFundToCompareHtml = '<div class="col-md-2 compareProducts" style="margin:10px;"> ' +
     		' <p title="'+schemeName+'">'+schemeName+'</p> ' +
     		' <a onclick="showDiv('+val+',&quot;'+schemeName+'&quot;)" class="compareProRemove"></a>' + 
         	' </div>';
   	var compareButtonHtml = '<div class="col-md-1 pull-right cmButton"><input class="btn btn-danger compareButton" onclick="compareScheme()" id="compareMFs" value="Compare" type="button"></div>';
   	var index = idsToCompare.indexOf(schemeName);
   	if (index !== -1) {
		idsToCompare.splice(index, 1);
		compareHtml = compareHtml.replace(addFundToCompareHtml, '');
		compareHtml = compareHtml.replace(compareButtonHtml, '');
        $('#comparePanel').html(compareHtml + compareButtonHtml);
        $('#noOfCompareSchemesId').text(''+idsToCompare.length);
        $('input:checkbox[value="' + val + '"]').prop('checked', false);
	}
   	
   	alert(idsToCompare.length);
   	
   	if(idsToCompare.length > 0) {
   		$('#comparePanel').show();
   		$('.cmButton').remove();
   	} else {
   		$('#comparePanel').hide();
   		$('.cmButton').remove();
    }
}

function removeAllCompare() {
	$('#comparePanel').hide();
	var htmlStr = '<div class="compareTitleBox col-md-1">' +
	 			  '<p><span id="noOfCompareSchemesId">1</span> ITEMS<br> TO COMPARE</p>' +
	  			  '<div class="compTitLink" style="font-size:11px;">' +
	              '<a href="javascript:void(0);" onclick="removeAllCompare()">Remove</a> |' +
	              '<a href="javascript:void(0);" onclick="hideShowComparePanel()" class="hidePanel">Hide</a></div></div>';
	$('#comparePanel').html(htmlStr);
	$('input:checkbox').prop('checked', false);
	idsToCompare = [];
}

function compareScheme() {
	top.location = "/mutual-funds-research/compare-funds?idsToCompare="+idsToCompare;
}

</script>