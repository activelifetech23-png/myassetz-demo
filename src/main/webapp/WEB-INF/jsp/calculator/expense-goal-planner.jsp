<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script src="https://code.highcharts.com/highcharts.js"></script>
<style>
	.page-heading {
	    padding-top: 6rem;
	    padding-bottom: 2rem;
	}
</style>
<style>
.member {
    box-shadow: 0px 5px 83px 0px rgb(9 29 62 / 15%);
}
/******************* Tools and calc **********************/

.tick {
    color: #000000;
    font-size: 9px;
    height: 11px;
    left: 0;
    line-height: 11px;
    margin-left: -24px;
    position: absolute;
    text-align: center;
  	letter-spacing: 0px;
  	width: 50px;
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

.hide {
    display: none !important;
}
.slider {
    width: 100% !important;
    box-shadow: none !important;
    margin-top: 10px;
}
.slider-track {
    background-color: #eee !important;
    background-image: none !important;
}
.slider-selection {
    background: #9f332f !important;
}
.slider-handle {
    opacity: 1 !important;
}

#emi input[type="text"] {
   margin-top: 0px;
	color: #172460;
	font-weight: bold;
	text-align: center;
	float: right;
	width: 100%;
	height: 40px;
	padding: 0px 10px !important;
	letter-spacing: 2px;
	border-radius: 0;
    border: 1px solid #d8d8d8;
    font-size: 14px;
}
.calc_div {
	margin: 0px auto;    
	background-color:#fff;
	margin-bottom: 5%;
	margin-top: 2%;
	box-shadow: 0px 0px 10px 5px #ccc;
	border-radius: 10px;
	padding-top: 3%;
}
#emi {
    float: left;
    width: 100%;
    border-right: 1px dotted #aaa;
    background: #fff;
    padding-right:30px;
}
.inside_emi {
    padding: 20px 30px;
}
.small_line {
    border-bottom: 1px dotted #aaa;
} 
#emipaymentsummary h4 {
    color: #333;
    font-size: 14px;
    margin: 0px;
    line-height: 25px;
    font-weight: normal;    
}
.emitotalinterest {
    border-bottom: 1px dotted #aaa;
    padding: 10px;
    text-align: center;
}
#emipaymentsummary {
    float: left;
    width: 100%;
    background: #fff;
}
#emipiechart {
    height: 300px;
    overflow: hidden;
    width: 100%;
    margin-bottom: 10px;
    text-align: center;
}
#emipaymentsummary p {
    font-size: 18px;
    font-weight: bold;
    color: #000;        
}

.steps {
	border-color: rgba(0, 0, 0, 0);
	border-style: none solid;
	border-width: 0 1px;
	margin: 0px 0px 35px !important;
	position: relative;
	width: 100%;
}

.highcharts-title tspan {
	letter-spacing: 0px;
}

.slider-handle{
	background-color: #fff;
    border: 2px solid #9f332f;
}

.service-box:after {
    background: #9c5553;
}
.inside_emi .ques{
	font-family: "Poppins", sans-serif;
    float: left;
    font-weight: 500 !important;
    color: #999;
    font-size: 0.84rem;
    padding-bottom: 5px;
}

.ques{
	font-family: "Poppins", sans-serif;
    font-weight: 500 !important;
    color: #999;
    padding-bottom: 5px;
}

.envision_action{
	font-family: "Poppins", sans-serif;
    font-size: 16px;
    text-decoration: underline;
    color: #ffffff;
    text-decoration-color: #f14141;
}

#tenurechoice {
    float: left;
    margin-left: 20px;
}

.toggle {
    background: url(../img/toggle-closed.png) no-repeat scroll 50% 50% rgba(0,0,0,0);
    cursor: pointer;
}
.toggle-open {
    background: url(../img/toggle-open.png) no-repeat scroll 50% 50% rgba(0,0,0,0);
    cursor: pointer;
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



.row-eq-height {
	  display: -webkit-box;
	  display: -webkit-flex;
	  display: -ms-flexbox;
	  display: flex;
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
.list-group-item .row > * {
    flex-shrink: 0;
    width: 100%;
    max-width: 100%;
    padding-right: calc(var(--bs-gutter-x) * .5);
    padding-left: calc(var(--bs-gutter-x) * .5);
    margin-top: var(--bs-gutter-y);
    font-weight: 700;
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
td a {
     color: #333;
    text-decoration: none;
}

/********************* Tools and calc end ******************/
</style>

<script type="text/javascript">
var years = "";
var dream_amount = "";
var inflation_rate = "";
var expected_return = "";
var savings_amount = "";
var accountMap = "";


$(document).ready(function(){

	years = '${years}';
	dream_amount = '${dream_amount}';
	inflation_rate = '${inflation_rate}';
	expected_return = '${expected_return}';
	savings_amount = '${savings_amount}';
	
	year = parseInt(years);
	dream_amount = parseInt(dream_amount);
	inflation = parseFloat(inflation_rate, 10);
	rate_of_return = parseFloat(expected_return, 10);
	savings_amount = parseInt(savings_amount);
	
	$('#years').val(year);
	$('#amount').val(numbersWithComma(dream_amount));
	$('#inc_rate').val(inflation);
	$('#interest').val(rate_of_return);
	$('#savings_amount').val(numbersWithComma(savings_amount));
	
	accountMap = '${accountMap}';	
	
	$("#amount_slider").slider({
	    min: 100000,
	    max: 10000000,
        tooltip: "show",
        step: 1,
        precision: 0,
        value: dream_amount
	}).on("slideStop", function(slideEvt) {		
		$("#amount").val(numbersWithComma(slideEvt.value));
		monthlySavingsAmount();
	});
	
	$("#years_slider").slider({
	    min: 1,
	    max: 100,
        tooltip: "show",
        step: 1,
        precision: 0,
        value: year
	}).on("slideStop", function(slideEvt) {
		$("#years").val(slideEvt.value);
		monthlySavingsAmount();
	});
	
	$("#increase_rate_slider").slider({
	    min: 5,
	    max: 15,
        tooltip: "show",
        step: 0.1,
        precision: 0,
        value: inflation
	}).on("slideStop", function(slideEvt) {
		$("#inc_rate").val(slideEvt.value);
		monthlySavingsAmount();
	});
	
	$("#interest_slider").slider({
		min: 5,
        max: 20,
        tooltip: "show",
        step: 0.1,
        precision: 1,
        value: rate_of_return
	}).on("slideStop", function(slideEvt) {
		$("#interest").val(slideEvt.value);
		monthlySavingsAmount();
	});
	
	$("#savings_amount_slider").slider({
	    min: 0,
	    max: 10000000,
        tooltip: "show",
        step: 1,
        precision: 0,
        value: savings_amount
	}).on("slideStop", function(slideEvt) {
		$("#savings_amount").val(numbersWithComma(slideEvt.value));
		monthlySavingsAmount();
	});
	
	$('input.number').change(function() {
		$(this).val(function(index, value) {
			value = value.replace(/,/g,'');
		    return numbersWithComma(value);
		});
	});
	
	monthlySavingsAmount();
	
});

function amountChange()
{
	var amount = $('#amount').val();
	amount = amount.replace(/,/g,'');
	$( "#amount_slider" ).slider("setValue",amount);
	monthlySavingsAmount();
}
function yearsChange()
{
	var years = $('#years').val();
	$( "#years_slider" ).slider("setValue",years);
	monthlySavingsAmount();
}
function increaseRateChange()
{
	var increaseRate = $('#inc_rate').val();
	$( "#increase_rate_slider" ).slider("setValue",increaseRate);
	monthlySavingsAmount();
}
function interestChange()
{
	var interest = $('#interest').val();
	$( "#interest_slider" ).slider("setValue",interest);
	monthlySavingsAmount();
}
function savingsAmountChange()
{
	var savingsAmount = $('#savings_amount').val();
	amount = amount.replace(/,/g,'');
	$( "#savings_amount_slider" ).slider("setValue",savingsAmount);
	monthlySavingsAmount();
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

function monthlySavingsAmount()
{
	var year = $('#years').val();
	var dream_amount = $('#amount').val();
	var inflation = $('#inc_rate').val();
	var rate_of_return = $('#interest').val();
	var savings_amount = $('#savings_amount').val();

	dream_amount = dream_amount.replace(/,/g, "");
	savings_amount = savings_amount.replace(/,/g, "");
	
	year = parseInt(year);
	dream_amount = parseInt(dream_amount);
	inflation = parseFloat(inflation, 10);
	rate_of_return = parseFloat(rate_of_return, 10);
	savings_amount = parseInt(savings_amount);
	
	if(savings_amount >= dream_amount)
	{
		alert("Please enter the savings amount less then the dream amount");
		return;
	}

	var target_dream_amount = 0;
	var target_savings_amount = 0;
	var target_amount = 0;
	var monthly_savings = 0;
	var invested_amount = 0;
	var total_earnings = 0;

	$.ajaxSetup({async:false});
	$.post("/tools-and-calculators/getGoalSettingCalcResult", {years : "" + year + "",dream_amount : "" + dream_amount + "",inflation_rate : "" + inflation + "",expected_return : "" + rate_of_return + "",savings_amount : "" + savings_amount + ""}, function(data)
    {
		var result = $.trim(data);
		var obj = jQuery.parseJSON(result);
		
		if(obj.status == 400)
		{
			alert(obj.msg);
			return false;
		}
		
		target_dream_amount = obj.target_dream_amount;
		target_savings_amount = obj.target_savings_amount;
		target_amount = obj.target_amount;
		monthly_savings = obj.monthly_savings;
		invested_amount = obj.invested_amount;
		total_earnings = obj.total_earnings;
		
    },'text');

	$('#res_dream_amount').html(numbersWithComma(target_dream_amount));
	$('#res_savings_amount').html(numbersWithComma(target_savings_amount));
	$('#res_target_amount').html(numbersWithComma(target_amount));
	$('#res_years').html(year);
	$('#res_years_1').html(year);
	$('#res_rate_return').html(rate_of_return);
	$('#res_monthly_amount').html(numbersWithComma(monthly_savings));
	$('#res_invest_amount').html(numbersWithComma(invested_amount));
	$('#res_earning_amount').html(numbersWithComma(total_earnings));
	renderChart(invested_amount, total_earnings);

}

function downloadResult()
{
	
	var amount = $('#amount').val();
	var years = $('#years').val();
	var inc_rate = $('#inc_rate').val();
	var interest=$('#interest').val();
	var savings_amount=$('#savings_amount').val();
	

	var res_dream_amount = $( "#res_dream_amount" ).html();
	var res_savings_amount = $( "#res_savings_amount" ).html();
	var res_target_amount = $( "#res_target_amount" ).html();
	var res_years = $( "#res_years" ).html();
	var res_monthly_amount=$("#res_monthly_amount").html();
	var res_invest_amount=$("#res_invest_amount").html();
	var res_earning_amount=$("#res_earning_amount").html();
	
	/* principal = numbersWithComma(principal); */
	var calc_url = window.location.href;
	
	
		var param = "?amount="+amount+"&years="+years+"&inc_rate="+inc_rate+"&interest="+interest+"&savings_amount="+savings_amount;
		param += "&res_dream_amount="+res_dream_amount+"&res_savings_amount="+res_savings_amount+"&res_target_amount="+res_target_amount+"&res_years="+res_years+"&res_monthly_amount="+res_monthly_amount+"&res_invest_amount="+res_invest_amount+"&res_earning_amount="+res_earning_amount+"&url="+calc_url;
		
		var url = '/tools-and-calculators/downloadGoalSettingCalcResult'+param;
		window.location = url;
		
		$('#send_email_model').modal('hide');
        setTimeout(function(){
        	swal({title:"",text:"Thanks for the Download."});
    	},1000);
	
}

function saveResult() 
{	
	var year = $('#years').val();
	var dream_amount = $('#amount').val();
	var inflation = $('#inc_rate').val();
	var rate_of_return = $('#interest').val();
	var savings_amount = $('#savings_amount').val();

	year = parseInt(year);
	dream_amount = parseInt(dream_amount);
	inflation = parseFloat(inflation, 10);
	rate_of_return = parseFloat(rate_of_return, 10);
	savings_amount = parseInt(savings_amount);
	
	var title = "Goal Setting Calculator - Goal of "+(dream_amount/100000)+" Lakhs after "+year+" yrs inflation "+inflation+"% and return "+rate_of_return+"%";
	var url = "/tools-and-calculators/goal-setting-calculator?dream_amount="+dream_amount+"&years="+year+"&inflation_rate="+inflation+"&expected_return="+rate_of_return+"&savings_amount="+savings_amount;	
	
	if(accountMap == undefined || accountMap == null || accountMap == "" || accountMap == "null")
	{
		advisorkhoj_result_title = title;
		advisorkhoj_result_url = url;
		
		$("#adv-contact-advisor-signin-signup").modal("show");
		
	}else
	{
		saveUserResult("Calculator",title, url);
	}
}

function renderChart(amount,total_interest)
{
	amount = parseFloat(amount);
	total_interest = parseFloat(total_interest);
	
	$('#emipiechart').highcharts({
		colors: ['#43433c', '#9f332f', '#596157', '#cfd186', '#24CBE5', '#64E572', 
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
  	    pointFormat: '{point.percentage:.1f}%'
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
              ['Amount Invested', amount],
              {
                  name: 'Total Growth',
                  y: total_interest,
                  sliced: true,
                  selected: true
              }
          ]
      }]
  });
}
</script>

<main>

    
        <!-- Section: inner-header -->
    <section class="header_color">
      <div class="container pt-120 pb-20">
        <!-- Section Content -->
        <div class="section-content">
          <div class="row text-center">
            <div class="col-md-12">
              <h2 class="title text-dark">Goal Setting Calculator</h2>
              <ol class="breadcrumb  text-black mt-10">
                <li><a href="#" class="title_header">Home</a></li>
                <li><a href="#" class="title_header">Tools & Calculators</a></li>
                <li class="active">Goal Setting Calculator</li>
              </ol>
            </div>
          </div>
        </div>
      </div>
    </section>

        <!-- Section -->
        <section class="section bg-lighter mb-2">
            <div class="container">
                <div class="row justify-content-lg-between">
                <div class="col-lg-7 wow fadeInRight" data-wow-duration="0.5s" data-wow-delay="0.1s">
                        <div class="row calculator">
                            <div class="col-sm-12 my-3">
                                <div class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                    <p class="m-0 pb-2">
                                    	What is the amount that you would like to spend on buying an item you dream - a big car or a foreign holiday or a house (Rs)
                                    </p>  
                                    <p class="m-0">
                                    	<input type="text" class="form-control" value="10000000" id="amount" maxlength="8" onchange="amountChange()" />
                                    </p>
                                    <p class="m-0">
                                    	<div id="amount_slider" style="margin:0px;"></div>
										<div class="steps" id="loanamountsteps">
											<span style="left: 0%;" class="tick">|<br />
											<span class="marker">1 Lakh</span></span><span style="left: 24.24%;" class="tick">|<br />
											<span class="marker">25 Lakhs</span></span><span style="left: 49.49%;" class="tick">|<br />
											<span class="marker">50 Lakhs</span></span><span style="left: 74.74%;" class="tick">|<br />
											<span class="marker">75 Lakhs</span></span><span style="left: 100%;" class="tick">|<br />
											<span class="marker">1 Crore</span></span>
										</div>
                                    </p>
                                </div>
                            </div>
                            
                            <div class="col-sm-12 my-3">
                                <div class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                    <p class="m-0 pb-2">
                                    	Afer how many years away would you need this amount?
                                    </p>  
                                    <p class="m-0">
                                    	<input type="text" class="form-control" value="30" id="years" maxlength="3" onchange="yearsChange()" />
                                    </p>
                                    <p class="m-0">
                                    	<div id="years_slider" style="margin:0px;"></div>
										<div class="steps" id="loantermsteps">
											<span style="left: 0%;" class="tick">|<br />
											<span class="marker">1</span></span><span style="left: 24.24%;" class="tick">|<br />
											<span class="marker">25</span></span><span style="left: 49.49%;" class="tick">|<br />
											<span class="marker">50</span></span><span style="left: 74.74%;" class="tick">|<br />
											<span class="marker">75</span></span><span style="left: 100%;" class="tick">|<br />
											<span class="marker">100</span></span>
										</div>
                                    </p>
                                </div>
                            </div>
                            
                            <div class="col-sm-12 my-3">
                                <div class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                    <p class="m-0 pb-2">
                                    	The expected rate of inflation over the years (% per annum)
                                    </p>  
                                    <p class="m-0">
                                    	<input type="text" class="form-control" value="8" id="inc_rate" maxlength="4" onchange="increaseRateChange()" />
                                    </p>
                                    <p class="m-0">
                                    	<div id="increase_rate_slider" style="margin:0px;"></div>
										<div class="steps">
											<span style="left: 0%;" class="tick">|<br />
											<span class="marker">5</span></span><span style="left: 25%;" class="tick">|<br />
											<span class="marker">7.5</span></span><span style="left: 50%;" class="tick">|<br />
											<span class="marker">10</span></span><span style="left: 75%;" class="tick">|<br />
											<span class="marker">12.5</span></span><span style="left: 100%;" class="tick">|<br />
											<span class="marker">15</span></span>
										</div>
                                    </p>
                                </div>
                            </div>
                            
                            <div class="col-sm-12 my-3">
                                <div class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                    <p class="m-0 pb-2">
                                    	What rate of return would you expect from your investment (% per annum)
                                    </p>  
                                    <p class="m-0">
                                    	<input type="text" class="form-control" value="12" id="interest" maxlength="4" onchange="interestChange()" />
                                    </p>
                                    <p class="m-0">
                                    	<div id="interest_slider" style="margin:0px;"></div>
										<div class="steps">
											<span style="left: 0%;" class="tick">|<br />
											<span class="marker">5</span></span><span style="left: 16.66%;" class="tick">|<br />
											<span class="marker">7.5</span></span><span style="left: 33.33%;" class="tick">|<br />
											<span class="marker">10</span></span><span style="left: 50%;" class="tick">|<br />
											<span class="marker">12.5</span></span><span style="left: 66.66%;" class="tick">|<br />
											<span class="marker">15</span></span><span style="left: 83.33%;" class="tick">|<br />
											<span class="marker">17.5</span></span><span style="left: 100%;" class="tick">|<br />
											<span class="marker">20</span></span>
										</div>
                                    </p>
                                </div>
                            </div>
                            
                            <div class="col-sm-12 my-3">
                                <div class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                    <p class="m-0 pb-2">
                                    	How much savings you have now? (Rs)
                                    </p>  
                                    <p class="m-0">
                                    	<input type="text" class="form-control" value="0" id="savings_amount" maxlength="8" onchange="savingsAmountChange()" />
                                    </p>
                                    <p class="m-0">
                                    	<div id="savings_amount_slider" style="margin:0px;"></div>
										<div class="steps" id="loanamountsteps">
											<span style="left: 0%;" class="tick">|<br />
											<span class="marker">0</span></span><span style="left: 25%;" class="tick">|<br />
											<span class="marker">25 Lakhs</span></span><span style="left: 50%;" class="tick">|<br />
											<span class="marker">50 Lakhs</span></span><span style="left: 75%;" class="tick">|<br />
											<span class="marker">75 Lakhs</span></span><span style="left: 100%;" class="tick">|<br />
											<span class="marker">1 Crore</span></span>
										</div>
                                    </p>
                                </div>
                            </div>
                            

                        </div>
                    </div>
                   <div class="col-lg-5 my-3 wow fadeInRight" data-wow-duration="0.5s" data-wow-delay="0.1s" style="visibility: visible; animation-duration: 0.5s; animation-delay: 0.1s; animation-name: fadeInRight;">

                        <div class="row pb-4">
                        <div class="col-sm-12">
							<div class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                <div id="emipiechart"></div>
							</div>
							</div>
						</div>
						
						<div class="card mb-5 text-center">
                                <div class="card-body p-0">
                                    <ul class="list-group list-group-flush">
                                        <li class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                            <div class="row">
                                                <span class="h6">Monthly SIP Amount</span>
                                            	<p class="text-muted text-sm mt-0 mb-0  d-lg-block">&#8377; <span id="res_monthly_amount"></span></p>
                                            </div>
                                        </li>
                                       <li class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                            <div class="row">
                                                <span class="h6">Total Amount Invested through SIP in 30 years</span>
                                            	<p class="text-muted text-sm mt-0 mb-0  d-lg-block">&#8377; <span class="text-theme-primary" id="res_invest_amount"></span></p>
                                            </div>
                                        </li>
                                        <li class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                            <div class="row">
                                                <span class="h6">Total Growth Amount</span>
                                            	<p class="text-muted text-sm mt-0 mb-0  d-lg-block">&#8377; <span class="text-theme-primary" id="res_earning_amount"></span></p>
                                            </div>
                                        </li>
                                        <li class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                            <div class="row">
                                                <span class="h6">Your targeted Dream Amount <br/>(Inflation adjusted)</span>
                                            	<p class="text-muted text-sm mt-0 mb-0  d-lg-block">&#8377; <span class="text-theme-primary" id="res_dream_amount"></span></p>
                                            </div>
                                        </li>
                                        <li class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                            <div class="row">
                                                <span class="h6">Growth of your Savings Amount <br/>(<span id="res_rate_return">12</span>% per annum)</span>
                                            	<p class="text-muted text-sm mt-0 mb-0  d-lg-block">&#8377; <span class="text-theme-primary" id="res_savings_amount">7,48,99,805<span class="text-theme-primary" id="res_target_wealth"></span></p>
                                            </div>
                                        </li>
                                        <li class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                            <div class="row">
                                                <span class="h6">Final Targeted Amount <br/>(Minus growth of your savings</span>
                                            	<p class="text-muted text-sm mt-0 mb-0  d-lg-block">&#8377; <span class="text-theme-primary" id="res_target_amount"></span></p>
                                            </div>
                                        </li>
                                        <li class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                            <div class="row">
                                                <span class="h6">Number of years to achieve your goal</span>
                                            	<p class="text-muted text-sm mt-0 mb-0  d-lg-block"><span class="text-theme-primary" id="res_years"></span> Years</p>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>


                    </div>
                    
                </div>
            </div>
        </section>
        <!-- End Section -->
  </main>