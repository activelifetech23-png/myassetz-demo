<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-slider/11.0.2/css/bootstrap-slider.css"/> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-slider/11.0.2/bootstrap-slider.js"></script> -->
<!-- <script src="https://code.highcharts.com/stock/highstock.js"></script> -->
<script src="https://code.iconify.design/iconify-icon/1.0.2/iconify-icon.min.js"></script>

<style>
.form-control:focus{
	color: #718096;
    background-color: #fff !important;
    border:1px solid #8099e6;
    outline: 0;
    box-shadow: unset;
}

.swp-btn{
	background:#4c8552;
	color:#fff;
	border:2px solid #4c8552;
}
.breadcrumb > li + li::before {
    content: "\f22d" !important;
    font-family: fontawesome;
    font-size: 9px;
}
.breadcrumb>li+li:before {
    padding: 0 5px;
    color: #fff !important;
    content: "/\00a0";
}
.bread-bg {
    background-color: #43666F;
    padding-top:55px;
    color: white;
}
.filt-bg{
    padding: 5px;
    border: none;
    border-radius: 10px 10px 0px 0px;
    
}
.form-control{
	background-color: #fff;
	border: 1px solid #bcc1c3;
}
.cal-res-card {
    background-color: #2c3f44;
    border-radius: 10px;
}
.cat-tit{
font-weight: 600;
}
.result-box {
    background: #f7fdfd;
}
.carousel-nav button.active {
  	color: #fff !important;
	background-image: linear-gradient(-45deg,#30494F,#43666F) !important;
}
.theadhead{
    vertical-align: bottom;
    background: #003399;
    color: #fff !important;
}
.paddingline {
    line-height: 20px;
    color: #666;
    margin-bottom: 10px;
    text-align: justify;
    font-size: 11px;
}
</style>


<script type="text/javascript">

$(document).ready(function(){
	calculateSwp();
	
	//client_name = '${client_name}';
	client_name = 'eureka';
	//lumpsumamtChanged();
    //withdrawalChanged();
});

function lumpsumamtChanged()
{
	var lumpsum_amt = $('#txt_lumpsum_amt').val();
	lumpsum_amt = lumpsum_amt.replace(/,/g,'');
	$('#txt_lumpsum_amt').val(numbersWithComma(lumpsum_amt));
}
function withdrawalChanged()
{
	var withdrawal_amt = $('#txt_withdrawal_amt').val();
	withdrawal_amt = withdrawal_amt.replace(/,/g,'');
	$('#txt_withdrawal_amt').val(numbersWithComma(withdrawal_amt));
}
function calculateSwp()
{
	var lumpsum_amt = $('#txt_lumpsum_amt').val();
	var withdrawal_amt = $('#txt_withdrawal_amt').val();
	var withdrawal_period = $('#txt_withdrawal_period').val();
	var rateofReturn = $('#txt_return').val();

	//lumpsum_amt = lumpsum_amt.replace(/,/g,"");
	//withdrawal_amt = withdrawal_amt.replace(/,/g,"");
	
	
	lumpsum_amt = parseInt(lumpsum_amt);
	withdrawal_amt = parseInt(withdrawal_amt);
	withdrawal_period = parseInt(withdrawal_period);
    rateofReturn = parseFloat(rateofReturn, 10);
    
    
    if(lumpsum_amt < 10000)
    {    	
		$("#adv-alert-msg").html("Enter valid investment amount. Investment amount greater than 10,000 rupees only allowed.");
   	    $("#adv-alert").modal('show');
		return;
    }
    if(withdrawal_amt < 500)
    {    	
		$("#adv-alert-msg").html("Enter valid withdrawal amount. Withdrawal amount greater than 500 rupees only allowed.");
   	    $("#adv-alert").modal('show');
		return;
    }
    
	var total_withdrawal_amt = 0;
	var profit = 0;
	var balance_amt = 0;
	var cash_flow_list = 0;
	
	$.ajaxSetup({async:false});
	$.post("/tools-and-calculators/getSwpCalcResult", {lumpsum_amount : "" + lumpsum_amt + "",withdrawal_amount : "" + withdrawal_amt + "",interest_rate : "" + rateofReturn + "",period : "" + withdrawal_period + ""}, function(data)
    {
		console.log("swv result++++++++++++",data);
		var result = $.trim(data);
		var obj = jQuery.parseJSON(result);
		
		if(obj.status == 400)
		{
			alert(obj.msg);
			return false;
		}
		
		total_withdrawal_amt = obj.total_withdrawal_amount;
		profit = obj.total_profit;
		balance_amt = obj.total_balance_amount;
		cash_flow_list = obj.cash_flow_list;
		
    },'text');
	
	var array = $.makeArray(cash_flow_list);
    
    var str = "";
    str += '<table class="table table-bordered table-striped"><thead class="theadhead">';
    str += '<tr><th class="text-center">Month</th><th class="text-right">Balance at Begin</th><th class="text-right">Withdrawal</th><th class="text-right">Interest Earned</th><th class="text-right">Balance at End</th></tr>';
    str += '</thead><tbody>';
    for(var k=0;k<array.length;k++) 
    {
    	var balance_in_amt = array[k].balance_amt;
		var withdrawal_amt = array[k].withdrawal_amt;
		var interest_earned = array[k].interest_earned;
		var month_end_balance = array[k].month_end_balance;
		
    	str += '<tr>';
    	str += '<td class="text-center">'+ (k+1) +'</td>';
    	str += '<td class="text-right">'+ numbersWithComma(balance_in_amt.toFixed(0)) +'</td>';
    	str += '<td class="text-right">'+ numbersWithComma(withdrawal_amt.toFixed(0)) +'</td>';
    	str += '<td class="text-right">'+ numbersWithComma(interest_earned.toFixed(0)) +'</td>';
    	str += '<td class="text-right">'+ numbersWithComma(month_end_balance.toFixed(0)) +'</td>';
    	str += '</tr>';
    }
    str += '</tbody></table>';
	
    $('#res_amount_invest').html(numbersWithComma(lumpsum_amt.toFixed(0)));
    $('#res_withdrawal_amt').html(numbersWithComma(withdrawal_amt.toFixed(0)));
    $('#res_rate_of_return').html(rateofReturn);
    $('#res_period').html(withdrawal_period);
    $('#res_total_withdrawal').html(numbersWithComma(total_withdrawal_amt.toFixed(0)));
	$('#res_total_final_value').html(numbersWithComma(balance_amt.toFixed(0)));
	$('#res_total_profit').html(numbersWithComma(profit.toFixed(0)));
	
	$('#swp_table_result').html(str);
	
	profit = parseFloat(profit);
	
	renderChart(lumpsum_amt, profit);
	
}




 function renderChart(amount, total_interest)
{
	amount = parseFloat(amount);
	total_interest = parseFloat(total_interest);
	
	$('#emipiechart').highcharts({
		 colors: ['#003399', '#4c8552', '#FF8900', '#DDDF00', '#24CBE5', '#64E572', 
       '#FF9655', '#FFF263', '#6AF9C4'],
      chart: {
          plotBackgroundColor: null,
          plotBorderWidth: null,
          plotShadow: false
      },
      title: {
          text: ''
      },
      legend: {
          borderWidth: 1,
          borderRadius: 5,
      },
      credits: {
          enabled: false
      },
      tooltip: {
    	  pointFormat: '{point.y}'
      },
      plotOptions: {
          pie: {
              allowPointSelect: true,
              cursor: 'pointer',
              dataLabels: {
                  enabled: false,
                  color: '#000000',
                  connectorColor: '#000000',
                  format: '<b>{point.name}</b>: {point.percentage:.1f} %'
              },
              showInLegend: true
          }
      },
      series: [{
          type: 'pie',
          data: [
              ['Invested Amount', amount],
              {
                  name: 'Profit',
                  y: total_interest,
                  sliced: true,
                  selected: true
              }
          ]
      }]
  });
}
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
var download_text = "";
/* function downloadResult()
{
	download_text = "download";
	$("#send_email_model").modal('show');
} */
/* function emailResult()
{
	download_text = "email";
	$("#send_email_model").modal('show');
} */

/* var async = async || [];
async.push(["ready",function (){
    $(".send_email_form").find("input").jqBootstrapValidation(
    {
		preventSubmit: true,
		submitSuccess: function($form, event) {
		    event.preventDefault();
		    
		    var radio_value = $("input[type='radio'][name='inves_calc']:checked").val();
			if(radio_value == undefined)
			{
				$("#adv-alert-msg").html("Please choose Are you an Investor or Distributor?");
			    $("#adv-alert").modal('show');
		   	 	return false;
			}
		    var email = $("#send_email_id").val();
		    if(email == "")
		    {
		   		 $("#adv-alert-msg").html("Please enter email address!");
	        	 $("#adv-alert").modal('show');
		   		 return false;
		    }
		    if(!validateEmail(email))
		    {
		    	$("#adv-alert-msg").html("Please enter valid email address!");
	        	$("#adv-alert").modal('show');
		   	 	return false;
		    }
		    
			var flag = false;
		    
		    $.ajaxSetup({async:false});
		    $.post("/verifyEmail", {email : "" + email + ""}, function(data)
	   	    {
	   			var result = $.trim(data);
	   	        if(result == "false")
	   	        {
	   	        	flag = true;
	   	        	$("#adv-alert-msg").html("Please enter valid email address!");
		        	$("#adv-alert").modal('show');
	   	       	 	return false;
	   	        }
	   	    }, "text");
		    
		    if(flag == true)
	    	{
		    	return false;
	    	}
		   	
		    var page = "CAGR Calculator - "+download_text;
		    
		    $.ajaxSetup({async:false});
			$.post("/subscribeForEmail", {email : "" + email + "", user_type : "" + radio_value + "", page : "" + page + "" }, function(data)
		    {
		    }, "text");
		    
		    init_download(email);
		}
    });
}]); */

function downloadResult() 
{
	var lumpsum_amt = $('#txt_lumpsum_amt').val();
	var withdrawal_amt = $('#txt_withdrawal_amt').val();
	var withdrawal_period = $('#txt_withdrawal_period').val();
	var rateofReturn = $('#txt_return').val();
	
	//lumpsum_amt = numbersWithComma(lumpsum_amt.replace(/,/g,''));
	//withdrawal_amt = numbersWithComma(withdrawal_amt.replace(/,/g,''));
	
	//lumpsum_amt = numbersWithComma(lumpsum_amt);
	//withdrawal_amt = numbersWithComma(withdrawal_amt);
	
	var res_amount_invest = $('#res_amount_invest').html();
	var res_withdrawal_amt = $('#res_withdrawal_amt').html();
	var res_rate_of_return = $('#res_rate_of_return').html();
	var res_period = $('#res_period').html();
	var res_total_withdrawal = $('#res_total_withdrawal').html();
	var res_total_final_value = $('#res_total_final_value').html();
	var res_total_profit = $('#res_total_profit').html();
	
	var calc_url = window.location.href;
	
	var param = "?lumpsum_amt="+lumpsum_amt+"&withdrawal_amt="+withdrawal_amt+"&withdrawal_period="+withdrawal_period+"&rateofReturn="+rateofReturn;
	param +="&res_amount_invest="+res_amount_invest+"&res_withdrawal_amt="+res_withdrawal_amt+"&res_rate_of_return="+res_rate_of_return+"&res_period="+res_period+"&res_total_withdrawal="+res_total_withdrawal+"&res_total_final_value="+res_total_final_value+"&res_total_profit="+res_total_profit+"&client_name="+client_name;
	
	//var url = '<c:url value="/downloadswpCalcResult" />'+param;
	//window.location = url;
	
	
	var url = '<c:url value="/tools-and-calculators/downloadswpCalcResult" />'+param;
		
		Object.assign(document.createElement("a"), {
			target: "_blank",
			href: url
		}).click();
	
	

}

</script>

<section class="header_color">
   <div class="container pt-150 pb-10">
     <!-- Section Content -->
    <div class="section-content">
      <div class="row text-center">
        <div class="col-md-12">
          <h2 class="title title_header text-dark">SWP Calculator</h2>
          <ol class="breadcrumb  text-black mt-10">
            <li><a href="/" class="title_header">Home</a></li>
            <li><a href="#" class="title_header">Tools & Calculators</a></li>
            <li class="active  title_header">SWP Calculator</li>
          </ol>
        </div>
      </div>
    </div>
  </div>
</section>
<section class="bg-light">
	<div class="container">
		<div class="row">
			<div class="col-lg-6">
				<div class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
					<div class="card-body">
						<div class="row mb-40">
							<div class="col-lg-7">
								 <p class="mb-0 cat-tit text-left">Total Investment Amount (Rs)</p>
							</div>
							<div class="col-lg-5">
								<input type="text" value="${lumpsum_amount}" id="txt_lumpsum_amt" class="form-control border-0 form-control-sm text-right calc-value" maxlength="10"/>
							</div>
						</div>
						<div class="row mb-40">
							<div class="col-lg-7">
								<p class="mb-0 cat-tit text-left">Withdrawal Per Month (Rs)</p>
							</div>
							<div class="col-lg-5">
								 <input type="text" value="${withdrawal_amount}" id="txt_withdrawal_amt" class="form-control border-0 form-control-sm text-right calc-value" maxlength="7">
							</div>
						</div>
						<div class="row mb-40">
							<div class="col-lg-7">
								<p class="mb-0 cat-tit text-left">Withdrawal period(Yrs)</p> 
							</div>
							<div class="col-lg-5">
								 <input type="text" value="${period}" id="txt_withdrawal_period" class="form-control border-0 form-control-sm text-right calc-value" maxlength="4">
							</div>
						</div>
						<div class="row mb-40">
							<div class="col-lg-7">
								<p class="mb-0 cat-tit text-left">Expected Rate of Return(%)</p> 
							</div>
							<div class="col-lg-5">
								<input type="text" value="${interest_rate}" id="txt_return" class="form-control border-0 form-control-sm text-right calc-value" maxlength="4">
							</div>
						</div>
						<div class="row">
							<div class="col-lg-7">
								<a href="javascript:void(0)" class="btn swp-btn rounded-2 py-2 px-5" onclick="calculateSwp()">Submit</a>
							</div>
							<div class="col-lg-5">
								
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
					<div class="emipiechart" id="emipiechart" style="height: 300px !important;"></div>
				</div>
			</div>
		</div>
		<div class="row ">
			<div class="col-lg-12">
				<div class="service-box icon-box iconbox-theme-colored mt-40 bg-white p-30 mb-10 border-1px">
					 <div class="panel-container show">
	                <div class="table-responsive">
	                   	<table class="table table-bordered table-striped" cellspacing="0" width="100%" style="margin:0px !important;">
							<thead class="theadhead">
								<tr>
								<th>Total Invested Amount</th>
								<th>Withdrawal Amount per Month</th>
								<th>Expected Rate of Return</th>
								<th>Withdrawal period</th>
								<th>Total Withdrawal Amount</th>
								<th>Final Balance Amount</th>
								<th>Total Profit</th>
								</tr>				
							</thead>
							<tbody>
								<tr>
								<td width="100">Rs. <span id="res_amount_invest"></span></td>
								<td width="50">Rs. <span id="res_withdrawal_amt"></span></td>
								<td width="50"><span id="res_rate_of_return"></span>%</td>
								<td width="50"><span id="res_period"></span> Years</td>
								<td width="100">Rs. <span id="res_total_withdrawal"></span></td>
								<td width="100">Rs. <span id="res_total_final_value"></span></td>
								<td width="100">Rs. <span id="res_total_profit"></span></td>
								</tr>
							</tbody>
						</table>
						
						<div id="swp_table_result" class="mt-4"></div>
						
	                </div>
	             </div>
			 </div>
				</div>
			</div>
		</div>
</section>


<%--                                                                
<section class="section pt-4 pb-0">
    <div class="container">
        <div class="row filt-bg" style="margin-bottom: 0px;">
            <div class="col-lg-10 col-md-10 col-sm-12">
                <div class="row">
                    <h5 style="margin-bottom: 0px;padding-left: 5px;padding-right: 5px;" >SWP Calculator</h5>
                </div>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-12 text-end">
                 <a onClick="downloadResult()" href="javascript:;" style="float: right;color:blue;"><img class="p-1" src="/img/my-img/download.svg"></a>
            </div>
        </div>
        <div class="row shadow-lg align-items-center cal-det-bg bg-white">
            <div class="col-lg-8 col-md-6 col-sm-12 cal-bor-rit">
                <div class="px-6 py-8">
                    <div class="mb-8">
                        <div class="row align-items-center">
                            <div class="col-lg-9 col-sm-6">
                                <p class="mb-0 cat-tit text-left">Total Investment Amount (Rs)</p>
                            </div>
                            <div class="col-lg-3 col-sm-6">
                                <input type="text" value="${lumpsum_amount}" id="txt_lumpsum_amt" class="form-control border-0 form-control-sm text-right calc-value" maxlength="10"/>
                            </div>
                        </div>
                    </div>
                    <div class="mb-8">
                        <div class="row align-items-center">
                            <div class="col-lg-9 col-sm-6">
                                <p class="mb-0 cat-tit text-left">Withdrawal Per Month (Rs)</p>
                            </div>
                            <div class="col-lg-3 col-sm-6">
                                <input type="text" value="${withdrawal_amount}" id="txt_withdrawal_amt" class="form-control border-0 form-control-sm text-right calc-value" maxlength="7">
                            </div>
                        </div>
                    </div>
                    <div class="mb-8">
                        <div class="row align-items-center">
                            <div class="col-lg-9 col-sm-6">
                                <p class="mb-0 cat-tit text-left">Withdrawal period(Yrs)</p> 
                            </div>
                            <div class="col-lg-3 col-sm-6">
                                <input type="text" value="${period}" id="txt_withdrawal_period" class="form-control border-0 form-control-sm text-right calc-value" maxlength="4">
                            </div>
                        </div>
                    </div>
                    <div class="mb-8">
                        <div class="row align-items-center">
                            <div class="col-lg-9 col-sm-6">
                                <p class="mb-0 cat-tit text-left">Expected Rate of Return(%)</p> 
                            </div>
                            <div class="col-lg-3 col-sm-6">
                                <input type="text" value="${interest_rate}" id="txt_return" class="form-control border-0 form-control-sm text-right calc-value" maxlength="4">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
						<a href="javascript:void(0)" class="btn swp-btn rounded-2 py-2 px-5" onclick="calculateSwp()">Submit</a>
					</div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12">
                <div class="container">
					<div class="emipiechart" id="emipiechart" style="height: 300px !important;"></div>
				</div>
            </div>
        </div>
    </div>
</section>
<!-- End Section -->
<!-- Section -->
<section class="section pt-6 pb-3">
    <div class="container">
        <div class="row align-items-center wow fadeInUp" id="emipaymentsummary">
            <div class="col-xl-12 px-0 col-lg-12 col-md-12 mt-5">
			 <div class="panel">
			 	 <div class="panel-container show">
	                <div class="table-responsive">
	                   	<table class="table table-bordered table-striped" cellspacing="0" width="100%" style="margin:0px !important;">
							<thead class="theadhead">
								<tr>
								<th>Total Invested Amount</th>
								<th>Withdrawal Amount per Month</th>
								<th>Expected Rate of Return</th>
								<th>Withdrawal period</th>
								<th>Total Withdrawal Amount</th>
								<th>Final Balance Amount</th>
								<th>Total Profit</th>
								</tr>				
							</thead>
							<tbody>
								<tr>
								<td width="100">Rs. <span id="res_amount_invest"></span></td>
								<td width="50">Rs. <span id="res_withdrawal_amt"></span></td>
								<td width="50"><span id="res_rate_of_return"></span>%</td>
								<td width="50"><span id="res_period"></span> Years</td>
								<td width="100">Rs. <span id="res_total_withdrawal"></span></td>
								<td width="100">Rs. <span id="res_total_final_value"></span></td>
								<td width="100">Rs. <span id="res_total_profit"></span></td>
								</tr>
							</tbody>
						</table>
						
						<div id="swp_table_result" class="mt-4"></div>
						
	                </div>
	             </div>
			 </div>
		</div>
        </div>
    </div>
</section>

<section>
	<div class="container">
		<div class="row pb-4">
			<div class="col-lg-12 px-0">
				<p class="paddingline"><b>Disclaimer</b>: We have gathered all the data, information, statistics from the sources believed to be highly reliable and true. All necessary precautions have been taken to avoid any error, lapse or insufficiency; however, no representations or warranties are made (express or implied) as to the reliability, accuracy or completeness of such information. We cannot be held liable for any loss arising directly or indirectly from the use of, or any action taken in on, any information appearing herein. The user is advised to verify the contents of the report independently.</p>
       			<p class="paddingline">Returns less than 1 year are in absolute (%) and greater than 1 year are compounded annualised (CAGR %). SIP returns are shown in XIRR (%).</p>
       			<p class="paddingline">The Risk Level of any of the schemes must always be commensurate with the risk profile, investment objective or financial goals of the investor concerned. Mutual Fund Distributors (MFDs) or Registered Investment Advisors (RIAs) should assess the risk profile and investment needs of individual investors into consideration and make scheme(s) or asset allocation recommendations accordingly.</p>
       			<p class="paddingline"><b>Mutual Fund investments are subject to market risks, read all scheme related documents carefully</b>. Past performance may or may not be sustained in the future. Investors should always invest according to their risk profile and consult with their mutual fund distributors or financial advisor before investing.</p>
			</div>
		</div>
	</div>
</section> --%>

<!-- End Section -->
<!-- Section -->
