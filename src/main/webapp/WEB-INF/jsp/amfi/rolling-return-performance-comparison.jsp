<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

 <!--================Breadcrumb Area =================-->
        <section class="breadcrumb_area">
        	<div class="breadcrumb_bottom">
        		<div class="container">
					<ul class="nav">
						<li><a href="/">Home</a></li>
						<li><a href="#">Tools & Calculators</a></li>
						<li class="active"><a href="/tools-and-calculators/become-a-crorepati">Rolling Return vs Other Benchmark</a></li>
					</ul>
				</div>
        	</div>
        </section>
        <!--================End Breadcrumb Area =================-->
        
        <!--================Client Image Area =================-->
        <section class="client_img_area business_process mt-5  Truuegro-mfresearch">
        	<div class="container">
        		<div class="row">
					<jsp:include page="../sidebar/mf-sidebar.jsp"></jsp:include>
        		</div>
        		<div class="row mt-3 pt-4" style="border-top: 1px dotted #aaa;font-size:12px;">
			 		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				 		<div class="panel panel-default adv-panel margin-top14 margin-bottom0">
						<div class="panel-heading padding-0 padding-left10">
							<h6 class="panel-title margin0 ak-bold">Rolling Return Performance Comparison</h6>
				        </div>
				        
				        <div class="panel-body">
					<div class="row pl-4 pr-4">
					<div class="col-md-6 col-sm-6">
			           <div class="form-group">
			              <label class="bold-smaller">Select Category</label>
			              <select id="sel_schemeCategories" class="form-control" onchange="categoryChanged()" data-width="100%">
						    <option <c:if test="${category eq 'Equity: Multi Cap' }"><c:out value="selected=\'selected\'" /></c:if> value="Equity: Multi Cap" >Equity: Multi Cap</option>
						    <option <c:if test="${category eq 'Equity: Large Cap' }"><c:out value="selected=\'selected\'" /></c:if> value="Equity: Large Cap">Equity: Large Cap</option>
						    <option <c:if test="${category eq 'Equity: Mid Cap' }"><c:out value="selected=\'selected\'" /></c:if> value="Equity: Mid Cap">Equity: Mid Cap</option>
						    <option <c:if test="${category eq 'Equity: ELSS' }"><c:out value="selected=\'selected\'" /></c:if> value="Equity: ELSS">Equity: ELSS</option>
						    <option <c:if test="${category eq 'Equity: Small Cap' }"><c:out value="selected=\'selected\'" /></c:if> value="Equity: Small Cap">Equity: Small Cap</option>
						    <option <c:if test="${category eq 'Equity: Large and Mid Cap' }"><c:out value="selected=\'selected\'" /></c:if> value="Equity: Large and Mid Cap">Equity: Large and Mid Cap</option>
						    <option <c:if test="${category eq 'Equity: Value' }"><c:out value="selected=\'selected\'" /></c:if> value="Equity: Value">Equity: Value</option>
						    <option <c:if test="${category eq 'Equity: Focused' }"><c:out value="selected=\'selected\'" /></c:if> value="Equity: Focused">Equity: Focused</option>
						   </select>
			           </div>
			        </div>
			        
			        <div class="col-md-6 col-sm-6">
					<div id="div_txt_funds">             
			        <div id="div_fund_1" class="form-group fund">
			        <label class="bold-smaller width-100">Fund 1</label>
			        <input id="txt_fund_compare1" type="text" class="txt_fund form-control">
			        </div>	              
			        </div>
			        
					<div id="add_more_funds">
					<div class="form-group">
					<a href="javascript:void(0);" class="stepsAddmore" onclick="addMoreFund()"><i class="fa fa-plus-square marginRight10"></i> Add another fund (upto <span id="fund_count">4</span>)</a>
			 		</div>
					</div>
					
			        </div>
				        
			        </div>
					
			        <div class="row pl-4 pr-4">
			        
			        <div class="col-md-4 col-sm-4">
			        <div class="form-group">
			          <label class="bold-smaller">Select Start Date</label>
			          <input type="text" id="txt_start_date" value="${start_date}" class="form-control datepicker no-radius" />
			        </div>
			        </div>
			        
			        <div class="col-md-4 col-sm-4">
			       	   <div class="form-group">
			            <label class="bold-smaller block">Select Rolling Return Period
			            <i class="fa fa-question-circle" data-toggle="tooltip" title="The Rolling Return period should correspond to your typical investment holding period. For example, if you hold your investment for 3 years, then select 3 years in the Rolling Return Period"></i>
			            </label>
			            <select id="sel_period" class="form-control" data-width="100%">
			            	<option value="1 Month" <c:if test="${period eq '1 Month' }"><c:out value="selected" /></c:if>>1 Month</option>
							<option value="1 Year" <c:if test="${period eq '1 Year' }"><c:out value="selected" /></c:if>>1 Year</option>
							<option value="2 Year" <c:if test="${period eq '2 Year' }"><c:out value="selected" /></c:if>>2 Years</option>
			            	<option value="3 Year" <c:if test="${period eq '3 Year' }"><c:out value="selected" /></c:if>>3 Years</option>
			            	<option value="5 Year" <c:if test="${period eq '5 Year' }"><c:out value="selected" /></c:if>>5 Years</option>
			            	<option value="7 Year" <c:if test="${period eq '7 Year' }"><c:out value="selected" /></c:if>>7 Years</option>
			            	<option value="10 Year" <c:if test="${period eq '10 Year' }"><c:out value="selected" /></c:if>>10 Years</option>
			            	<option value="15 Year" <c:if test="${period eq '15 Year' }"><c:out value="selected" /></c:if>>15 Years</option>
						</select>
			          </div>
			        </div> 
			        
					<div class="col-md-3 col-sm-3 justify-content-end align-self-end">
						<div class="form-group">
						<label class="bold block hidden-xs">&nbsp;</label>
				        <a href="javascript:void(0)" id="submit_btn" class="main_btn" onclick="showResult()" data-style="expand-right" data-size="l"><span class="ladda-label">Submit</span></a>
				        </div>
					</div>
			        
			        </div>	
				        </div> 
	
				 		</div>
			 		</div>
			 		
			 		<div class="row">
				  	<div class="col-xs-12 col-md-12 col-sm-12 margin-bottom10 margin-top10">
				  		<div class="col-md-12 col-sm-12 col-xs-12 padding-0">	
			        	<h5 class="font-size-20 bold-smaller15 margin-bottom0 mt-4 mb-3" style="line-height: 15px;">Rolling Returns</h5>
			        	</div>
			      	</div>
		      		</div>
		      		</div>
		      		<div class="row">
					<div class="col-md-12 col-sm-12 remove-bootstrap-col-lr-padding table-responsive nopadding">
				      <div class="col-md-12"> 
				            <div class="panel panel-default adv-panel">
				            <div class="panel-body padding0 relative text-center" id="rolling-returns-container-div">
							  <i id="rolling-returns-spinner" class="fa fa-cog fa-spin fa-2x" style="margin-top: 100px;margin-bottom: 100px;"></i>
				              <div id="rolling-returns-container" style="width:100%;"></div>              
				            </div>
				         </div>    
				     </div>
				     </div>
				     
				     <div class="col-md-12 col-sm-12 table-responsive nopadding mt-4">
					<div class="col-md-12 col-sm-12">
				        <p style="text-align:justify;font-size:14px;">Rolling returns are the annualized returns of the scheme taken for a specified period (rolling returns period) 
				        on every day/week/month and taken till the last day of the duration. In this chart we are showing the annualized returns over the 
				        rolling returns period on every day from the start date and comparing it with the benchmark. Rolling returns is the best measure of a fund's performance. 
				        Trailing returns have a recency bias and point to point returns are specific to the period in consideration. Rolling returns, on the other hand, 
				        measures the fund's absolute and relative performance across all timescales, without bias.</p>
					</div>
					</div>
	       		</div>
	       		
	       		<!-- Disqus Starts Here -->
				<!-- <div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 pl-30 ">
						<div id="disqus_thread"></div>
						<script>						
						var disqus_config = function () {
						this.page.url = 'https://www.meetTruuegro.com/mutual-funds-research/rolling-return-performance-comparison';
						this.page.identifier = 'rolling-return-performance-comparison';
						};
					
						(function() {
						var d = document, s = d.createElement('script');
						s.src = 'https://www-meetTruuegro-com.disqus.com/embed.js';
						s.setAttribute('data-timestamp', +new Date());
						(d.head || d.body).appendChild(s);
						})();
						</script>
						<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
					</div>
				</div> -->
            <!-- Disqus Ends Here -->
        		
        	</div>
        </section>
        <!--================End Client Image Area =================-->
<script>
$(document).ready(function(){
	
	initializeTypeAhead();
	
	var fund = '${schemes}';
	if(fund != "")
	{
		var fund_array = fund.split(",");
		for(var k=0;k<fund_array.length;k++)
		{
			var fund_name = fund_array[k];
			
			if(k == 0)
			{
				$("#txt_fund_compare1").val(fund_name);
			}
			if(k == 1)
			{
				addMoreFund();
				$("#txt_fund_compare2").val(fund_name);
			}
			if(k == 2)
			{
				addMoreFund();
				$("#txt_fund_compare3").val(fund_name);
			}
			if(k == 3)
			{
				addMoreFund();
				$("#txt_fund_compare4").val(fund_name);
			}
			if(k == 4)
			{
				addMoreFund();
				$("#txt_fund_compare5").val(fund_name);
			}
		}
	}
	
	$('.datepicker').datepicker({
		format: 'dd-mm-yyyy',
		endDate: '-1d',
		autoclose:true,
		disableTouchKeyboard:true
	});
	
	calculateRollingReturns();
	
	 $('[data-toggle="tooltip"]').tooltip();
	 
	 $("#save_img").on('click', function () {
			
		 var category = $("#sel_schemeCategories").val();
		 	var fundname1 = $("#txt_fund_compare1").val();
		 	var startDate = $("#txt_start_date").val();
		    var period = $("#sel_period").val();
			var fundname2 = "";
			var fundname3 = "";
			var fundname4 = "";
			var fundname5 = "";
			var fund_array = new Array();
			
			if(category == null || category == "")
		 	{
		 		$("#adv-alert-msg").html("Please select category");
		   	    $("#adv-alert").modal('show');
				return;
		 	}
			if(fundname1 == "")
			{
				$("#adv-alert-msg").html("Please enter value for fund 1");
		   	    $("#adv-alert").modal('show');
				return;
			}else{
				fund_array.push(fundname1);
			}
			if($("#txt_fund_compare2").length != 0)
			{
				fundname2 = $("#txt_fund_compare2").val();
				if(fundname2 == "")
				{
					$("#adv-alert-msg").html("Please enter value for fund 2");
			   	    $("#adv-alert").modal('show');
					return;
				}else{
					fund_array.push(fundname2);
				}
			}
			if($("#txt_fund_compare3").length != 0)
			{
				fundname3 = $("#txt_fund_compare3").val();
				if(fundname3 == "")
				{
					$("#adv-alert-msg").html("Please enter value for fund 3");
			   	    $("#adv-alert").modal('show');
					return;
				}else{
					fund_array.push(fundname3);
				}
			}
			if($("#txt_fund_compare4").length != 0)
			{
				fundname4 = $("#txt_fund_compare4").val();
				if(fundname4 == "")
				{
					$("#adv-alert-msg").html("Please enter value for fund 4");
			   	    $("#adv-alert").modal('show');
					return;
				}else{
					fund_array.push(fundname4);
				}
			}
			if($("#txt_fund_compare5").length != 0)
			{
				fundname5 = $("#txt_fund_compare5").val();
				if(fundname5 == "")
				{
					$("#adv-alert-msg").html("Please enter value for fund 5");
			   	    $("#adv-alert").modal('show');
					return;
				}else{
					fund_array.push(fundname5);
				}
			}
		 	if(startDate == null || startDate == "")
		    {
		 		$("#adv-alert-msg").html("Please select start date");
		   	    $("#adv-alert").modal('show');
		   	    return false;
		    }
		 	if(period == null || period == "")
		    {
		 		$("#adv-alert-msg").html("Please select period");
		   	    $("#adv-alert").modal('show');
		   	    return false;
		    }
			
	       /*  html2canvas(document.querySelector("#rolling-returns-container")).then(canvas => {
				getCanvas = canvas;     //or whatever you want to execute
				var imgageData = getCanvas.toDataURL("image/png");
				img = imgageData.replace('data:image/png;base64,', '');
				$.ajaxSetup({async:false});
				$.post("/mutual-funds-research/base64toimage", {base64image : img, filename:"rolling-return-performance-comparison"}, function(data){
					top.location = "/mutual-funds-research/downloadRollingReturnPerformanceComparison?category="+category+"&schemes="+fund_array+"&period="+period+"&start_date="+startDate;
				},'text');
	        }); */
	        
	        
	        var path = "/mutual-funds-research/downloadRollingReturnPerformanceComparison?category="+category+"&schemes="+fund_array+"&period="+period+"&start_date="+startDate;
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
	    	    	    	html2canvas(document.querySelector("#rolling-returns-container")).then(canvas => {
	    	    				getCanvas = canvas;     //or whatever you want to execute
	    	    				var imgageData = getCanvas.toDataURL("image/png");
	    	    				img = imgageData.replace('data:image/png;base64,', '');
	    	    				$.ajaxSetup({async:false});
	    	    				$.post("/mutual-funds-research/base64toimage", {base64image : img, filename:"rolling-return-performance-comparison"}, function(data){
	    	    					top.location = "/mutual-funds-research/downloadRollingReturnPerformanceComparison?category="+category+"&schemes="+fund_array+"&period="+period+"&start_date="+startDate+"&download=yes";
	    	    				},'text');
	    	    	        });
	    	    	    }
	    	        }
	    	    }
	    	};
	    	xhr.send(null);
	        
	   });
});

function openLogin(){
	var category = $("#sel_schemeCategories").val();
 	var fundname1 = $("#txt_fund_compare1").val();
 	var startDate = $("#txt_start_date").val();
    var period = $("#sel_period").val();
	var fundname2 = "";
	var fundname3 = "";
	var fundname4 = "";
	var fundname5 = "";
	var fund_array = new Array();
	
	if(category == null || category == "")
 	{
 		$("#adv-alert-msg").html("Please select category");
   	    $("#adv-alert").modal('show');
		return;
 	}
	if(fundname1 == "")
	{
		$("#adv-alert-msg").html("Please enter value for fund 1");
   	    $("#adv-alert").modal('show');
		return;
	}else{
		fund_array.push(fundname1);
	}
	if($("#txt_fund_compare2").length != 0)
	{
		fundname2 = $("#txt_fund_compare2").val();
		if(fundname2 == "")
		{
			$("#adv-alert-msg").html("Please enter value for fund 2");
	   	    $("#adv-alert").modal('show');
			return;
		}else{
			fund_array.push(fundname2);
		}
	}
	if($("#txt_fund_compare3").length != 0)
	{
		fundname3 = $("#txt_fund_compare3").val();
		if(fundname3 == "")
		{
			$("#adv-alert-msg").html("Please enter value for fund 3");
	   	    $("#adv-alert").modal('show');
			return;
		}else{
			fund_array.push(fundname3);
		}
	}
	if($("#txt_fund_compare4").length != 0)
	{
		fundname4 = $("#txt_fund_compare4").val();
		if(fundname4 == "")
		{
			$("#adv-alert-msg").html("Please enter value for fund 4");
	   	    $("#adv-alert").modal('show');
			return;
		}else{
			fund_array.push(fundname4);
		}
	}
	if($("#txt_fund_compare5").length != 0)
	{
		fundname5 = $("#txt_fund_compare5").val();
		if(fundname5 == "")
		{
			$("#adv-alert-msg").html("Please enter value for fund 5");
	   	    $("#adv-alert").modal('show');
			return;
		}else{
			fund_array.push(fundname5);
		}
	}
 	if(startDate == null || startDate == "")
    {
 		$("#adv-alert-msg").html("Please select start date");
   	    $("#adv-alert").modal('show');
   	    return false;
    }
 	if(period == null || period == "")
    {
 		$("#adv-alert-msg").html("Please select period");
   	    $("#adv-alert").modal('show');
   	    return false;
    }
	   
 	downloadPath = "/mutual-funds-research/downloadRollingReturnPerformanceComparison?category="+category+"&schemes="+fund_array+"&period="+period+"&start_date="+startDate;
	imageDownload = "yes";
	chartId = "#rolling-returns-container";
	filename = "rolling-return-performance-comparison";
	
	$("#adv-login").modal("show");
}

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
	            url: '../mutual-funds-research/autoSuggestAllMfSchemes',
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
function addMoreFund()
{
	var fundname1 = $("#txt_fund_compare1").val();
	if(fundname1 == "")
	{
		$("#adv-alert-msg").html("Enter an value for Fund 1");
   	    $("#adv-alert").modal('show');
		return;
	}
	var fundname2 = $("#txt_fund_compare2").val();
	if(fundname2 == "")
	{
		$("#adv-alert-msg").html("Enter an value for Fund 2");
   	    $("#adv-alert").modal('show');
		return;
	}
	var fundname3 = $("#txt_fund_compare3").val();
	if(fundname3 == "")
	{
		$("#adv-alert-msg").html("Enter an value for Fund 3");
   	    $("#adv-alert").modal('show');
		return;
	}
	var fundname4 = $("#txt_fund_compare4").val();
	if(fundname4 == "")
	{
		$("#adv-alert-msg").html("Enter an value for Fund 4");
   	    $("#adv-alert").modal('show');
		return;
	}
	var fundname5 = $("#txt_fund_compare5").val();
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
		$("#add_more_funds").hide();
	}else{
		$("#add_more_funds").show();
	}

	if(count == 2)
	{
		var friends_html = '<div id="div_fund_' + count + '" class="form-group fund">';
		friends_html += '<label class="bold-smaller">Fund '+ count +'</label>';
		friends_html += '<div class="input-group">';
		friends_html += '<input id="txt_fund_compare' + count + '" type="text" class="txt_fund form-control">';
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
			friends_html += '<input id="txt_fund_compare' + count + '" type="text" class="txt_fund form-control">';
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
			friends_html += '<input id="txt_fund_compare' + count + '" type="text" class="txt_fund form-control">';
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
			friends_html += '<input id="txt_fund_compare' + count + '" type="text" class="txt_fund form-control">';
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
			friends_html += '<input id="txt_fund_compare' + count + '" type="text" class="txt_fund form-control">';
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
			friends_html += '<input id="txt_fund_compare' + count + '" type="text" class="txt_fund form-control">';
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
			friends_html += '<input id="txt_fund_compare' + count + '" type="text" class="txt_fund form-control">';
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
			friends_html += '<input id="txt_fund_compare' + count + '" type="text" class="txt_fund form-control">';
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
			friends_html += '<input id="txt_fund_compare' + count + '" type="text" class="txt_fund form-control">';
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
			friends_html += '<input id="txt_fund_compare' + count + '" type="text" class="txt_fund form-control">';
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
			friends_html += '<input id="txt_fund_compare' + count + '" type="text" class="txt_fund form-control">';
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
			friends_html += '<input id="txt_fund_compare' + count + '" type="text" class="txt_fund form-control">';
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
			friends_html += '<input id="txt_fund_compare' + count + '" type="text" class="txt_fund form-control">';
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
     		$("#add_more_funds").hide();
     	}else{
     		$("#add_more_funds").show();
     	}
}
function showResult()
{	
    var category = $("#sel_schemeCategories").val();
 	var fundname1 = $("#txt_fund_compare1").val();
 	var startDate = $("#txt_start_date").val();
    var period = $("#sel_period").val();
	var fundname2 = "";
	var fundname3 = "";
	var fundname4 = "";
	var fundname5 = "";
	var fund_array = new Array();
	
	if(category == null || category == "")
 	{
 		$("#adv-alert-msg").html("Please select category");
   	    $("#adv-alert").modal('show');
		return;
 	}
	if(fundname1 == "")
	{
		$("#adv-alert-msg").html("Please enter value for fund 1");
   	    $("#adv-alert").modal('show');
		return;
	}else{
		fund_array.push(fundname1);
	}
	if($("#txt_fund_compare2").length != 0)
	{
		fundname2 = $("#txt_fund_compare2").val();
		if(fundname2 == "")
		{
			$("#adv-alert-msg").html("Please enter value for fund 2");
	   	    $("#adv-alert").modal('show');
			return;
		}else{
			fund_array.push(fundname2);
		}
	}
	if($("#txt_fund_compare3").length != 0)
	{
		fundname3 = $("#txt_fund_compare3").val();
		if(fundname3 == "")
		{
			$("#adv-alert-msg").html("Please enter value for fund 3");
	   	    $("#adv-alert").modal('show');
			return;
		}else{
			fund_array.push(fundname3);
		}
	}
	if($("#txt_fund_compare4").length != 0)
	{
		fundname4 = $("#txt_fund_compare4").val();
		if(fundname4 == "")
		{
			$("#adv-alert-msg").html("Please enter value for fund 4");
	   	    $("#adv-alert").modal('show');
			return;
		}else{
			fund_array.push(fundname4);
		}
	}
	if($("#txt_fund_compare5").length != 0)
	{
		fundname5 = $("#txt_fund_compare5").val();
		if(fundname5 == "")
		{
			$("#adv-alert-msg").html("Please enter value for fund 5");
	   	    $("#adv-alert").modal('show');
			return;
		}else{
			fund_array.push(fundname5);
		}
	}
 	if(startDate == null || startDate == "")
    {
 		$("#adv-alert-msg").html("Please select start date");
   	    $("#adv-alert").modal('show');
   	    return false;
    }
 	if(period == null || period == "")
    {
 		$("#adv-alert-msg").html("Please select period");
   	    $("#adv-alert").modal('show');
   	    return false;
    }
 	
 	var date_arr = startDate.split("-");
 	var start_date_str = date_arr[2] + "-" + date_arr[1] + "-" + date_arr[0];
 	var start_date_init = new Date(start_date_str);
	
	var ele = document.getElementById("submit_btn");
/*  	var l = Ladda.create(ele);
 	l.start(); */
	
	var flag = false;
	for(var k=0;k<fund_array.length;k++)
	{
		var scheme = fund_array[k];
		var schemeName = encodeURIComponent(scheme);
		
		$.ajaxSetup({async:false});
		$.post("/mutual-funds-research/getSchemeStartAndEndDate", {scheme_name : "" + schemeName + ""}, function(data)
	    {
			var schemes = $.trim(data);
			var schemes_obj = jQuery.parseJSON(schemes);
			var schemes_array = $.makeArray(schemes_obj);
			var inception_date =  new Date(schemes_array[0]);
			if(start_date_init < inception_date)
			{
				$("#adv-alert-msg").html(scheme+" inception date is "+ inception_date.format("dd-mm-yyyy") +". Please select a start date which is greater than or equal to scheme inception date.");
		   	    $("#adv-alert").modal('show');
		   	 	flag = true;
				return false;
			}
	    },'text');
		
		if(flag)
		{
			break;
		}
	}
	
	/* l.stop(); */
	
	if(flag)
	{
		return false;
	}
	
 	top.location = "/mutual-funds-research/rolling-return-performance-comparison?category="+category+"&schemes="+fund_array+"&period="+period+"&start_date="+startDate;
}
function calculateRollingReturns(){
	
	var category = $("#sel_schemeCategories").val();
 	var fundname1 = $("#txt_fund_compare1").val();
 	var startDate = $("#txt_start_date").val();
    var period = $("#sel_period").val();
	var fundname2 = "";
	var fundname3 = "";
	var fundname4 = "";
	var fundname5 = "";
	var fund_array = new Array();
	
	if(fundname1 == "")
	{
		$("#adv-alert-msg").html("Please enter value for fund 1");
   	    $("#adv-alert").modal('show');
		return;
	}else{
		fund_array.push(fundname1);
	}
	if($("#txt_fund_compare2").length != 0)
	{
		fundname2 = $("#txt_fund_compare2").val();
		if(fundname2 == "")
		{
			$("#adv-alert-msg").html("Please enter value for fund 2");
	   	    $("#adv-alert").modal('show');
			return;
		}else{
			fund_array.push(fundname2);
		}
	}
	if($("#txt_fund_compare3").length != 0)
	{
		fundname3 = $("#txt_fund_compare3").val();
		if(fundname3 == "")
		{
			$("#adv-alert-msg").html("Please enter value for fund 3");
	   	    $("#adv-alert").modal('show');
			return;
		}else{
			fund_array.push(fundname3);
		}
	}
	if($("#txt_fund_compare4").length != 0)
	{
		fundname4 = $("#txt_fund_compare4").val();
		if(fundname4 == "")
		{
			$("#adv-alert-msg").html("Please enter value for fund 4");
	   	    $("#adv-alert").modal('show');
			return;
		}else{
			fund_array.push(fundname4);
		}
	}
	if($("#txt_fund_compare5").length != 0)
	{
		fundname5 = $("#txt_fund_compare5").val();
		if(fundname5 == "")
		{
			$("#adv-alert-msg").html("Please enter value for fund 5");
	   	    $("#adv-alert").modal('show');
			return;
		}else{
			fund_array.push(fundname5);
		}
	}
	
	var scheme_array = new Array();
	for(var k=0;k<fund_array.length;k++)
	{
		var scheme = fund_array[k];
		var schemeName = encodeURIComponent(scheme);
		scheme_array.push(schemeName);
	}
	
	$("#rolling-returns-container").hide();
	$("#rolling-returns-spinner").removeClass("hidden");
	
	var data_array = new Array();

	$.ajaxSetup({async:false});
	$.post("/mutual-funds-research/getMutualFundRollingReturnVsBenchmark", {category : "" +category,schemes : "" + scheme_array + "",start_date : "" + startDate + "",period : "" + period + ""}, function(data)
    {
		var result = $.trim(data);
		if(result == null || result == "null" || result == "")
		{
			$("#adv-alert-msg").html("Choose a period lesser than "+period+" or change the start date to "+period+" back form now.");
	   	    $("#adv-alert").modal('show');
	   	    return false;
		}
		var obj = jQuery.parseJSON(result);
		data_array = $.makeArray(obj);
		
    },'text'); 
	
	var master_array = new Array();
	var colors =  ['#2B3292','#5cb85c','#00BFFF','#8c648c','#f062f0','#0A9BF5','#999999','#3b0066'];
	
	for(var k=0;k<data_array.length;k++)
	{
		var obj = data_array[k];
		var value_array = $.makeArray(obj);
		var scheme_data = new Array();
		var name = value_array[0].scheme_name;
		
		var color_name = "";		
		if(name == "CNX 500" || name == "NIFTY 50 TRI" || name == "CNX Midcap")
		{
			color_name = "#db9b15";
		}else{			
			color_name = colors[k];
		}
		
		for(var m=0;m<value_array.length;m++)
		{
			var nav_date = value_array[m].nav_date;
			nav_date = new Date(nav_date).getTime();
			var scheme_rolling_returns = value_array[m].scheme_rolling_returns;
			
			if(scheme_rolling_returns!=null && scheme_rolling_returns!="")
			{
				var scheme_arr = new Array();
				scheme_arr.push(nav_date);
				scheme_arr.push(scheme_rolling_returns);
				scheme_data.push(scheme_arr);
			}
		}
		
		if(scheme_data.length > 0)
		{
			var obj = {
			        name : name,
			        data : scheme_data,
			        color : color_name
			};
			master_array.push(obj);
		}
	}
	
	var container_width = $("#rolling-returns-container-div").width();

    $('#rolling-returns-container').highcharts('StockChart', {
    	
	    	rangeSelector : {
	            enabled: false
	        },
	        navigator: {
	            enabled: false
	        },
	        credits: {
	            enabled: false
	        },
	        scrollbar : {
                enabled : false
            },
            xAxis: {
            	type: 'datetime',
            	labels: {
                    formatter: function() {
                        var monthStr = Highcharts.dateFormat('%b %Y', this.value);
                        var values = monthStr.split(' ');
                        if(values.length > 1 && (period == "1 Year" || period == "3 Year" || period == "5 Year" || period == "10 Year" || period == "15 Year" || period == "2 Year" || period == "7 Year"))
                        {
                        	var period_int = 1;
                        	if(period == "1 Year")
                        	{
                        		period_int = 1;
                        	}else if(period == "3 Year")
                        	{
                        		period_int = 3;
                        	}else if(period == "5 Year")
                        	{
                        		period_int = 5;
                        	}else if(period == "10 Year")
                        	{
                        		period_int = 10;
                        	}else if(period == "2 Year")
                        	{
                        		period_int = 2;
                        	}else if(period == "7 Year")
                        	{
                        		period_int = 7;
                        	}else
                        	{
                        		period_int = 15;
                        	}
                        	var add_value = parseInt(values[1])+period_int;
                        	if(add_value.length == 1)
                            {
                        		add_value = "0"+add_value;
                            }
                        	return monthStr+"<br>to<br>"+values[0]+" "+add_value;
                        }else{
                        	return values;
                        }
                    },
                    style: {
                        fontSize:'10px'
                    }
            }
            },
            yAxis: {
            	opposite:false, 
            	labels: {
                    formatter: function() {
                        return this.value + '%';
                    }
                }
            },
            plotOptions: {
                series: {
                    connectNulls: true,
                    dataGrouping: {
                        enabled: false
                    }
                }
            },
            legend: {
              	 enabled: true
            },
            tooltip: {
				formatter: function() {
					var str = '';
            		if(period == "1 Year" || period == "3 Year" || period == "5 Year" || period == "10 Year" || period == "15 Year" || period == "2 Year" || period == "7 Year")
                    {
            			var dateMonthStr = Highcharts.dateFormat('%b %d', new Date(this.x));
                		var yearStr = Highcharts.dateFormat('%Y', new Date(this.x));
                		var year_int = parseInt(yearStr);
                		
                    	var period_int = 1;
                    	if(period == "1 Year")
                    	{
                    		period_int = 1;
                    	}else if(period == "3 Year")
                    	{
                    		period_int = 3;
                    	}else if(period == "5 Year")
                    	{
                    		period_int = 5;
                    	}else if(period == "10 Year")
                    	{
                    		period_int = 10;
                    	}else if(period == "2 Year")
                    	{
                    		period_int = 2;
                    	}else if(period == "7 Year")
                    	{
                    		period_int = 7;
                    	}else
                    	{
                    		period_int = 15;
                    	}
                    	year_int = year_int + period_int;
                    	str = Highcharts.dateFormat('%b %d, %Y', new Date(this.x)) + ' - '+ dateMonthStr + ', '+ year_int + '<br/>'
                    }else
                    {
                    	str = Highcharts.dateFormat('%b %d, %Y', new Date(this.x)) + '<br/>'
                    }
            		$.each(this.points, function (i, point) {
            			str += '<span style="color: ' + point.series.color + '">' + point.series.name + ':</span><b>' + Highcharts.numberFormat(point.y, 2)+'%</b><br/>';
                    });
                    return str;
				}
            },
            series: master_array,
            chart: {
            	events: {
            	load: function(event) {
            		$("#rolling-returns-spinner").addClass("hidden");
            		$("#rolling-returns-container").show();            		
            	}
            	},
                width : container_width,
                backgroundColor: "#FFF"
            }
        }); 
}

function saveResult() 
{	
	var fund = '${schemes}';
	var category = $("#sel_schemeCategories").val();
 	var fundname1 = $("#txt_fund_compare1").val();
 	var startDate = $("#txt_start_date").val();
    var period = $("#sel_period").val();
	var fundname2 = "";
	var fundname3 = "";
	var fundname4 = "";
	var fundname5 = "";
    
	var accountMap = '${accountMap}';
	var title = "Rolling Return Performance Comparison -> Category = " + category + ", Schemes = " + fund + ", Start Date = " + startDate + ", Rolling Return Period = " + period;
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
function categoryChanged()
{	
	$("#txt_fund_compare1").val(""); 
	$("#txt_fund_compare2").val(""); 
	$("#txt_fund_compare3").val(""); 
	$("#txt_fund_compare4").val(""); 
	$("#txt_fund_compare5").val(""); 
}
</script>