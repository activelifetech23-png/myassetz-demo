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
.text-theme-colored2 {
    color: #003399 !important;
}
.member {
    box-shadow: 0px 5px 83px 0px rgb(9 29 62 / 15%);
}
/******************* Tools and calc **********************/
.text-muted{
	color: green;
    font-weight: 600;
}
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
    color: #fff !important;
    content: "/\00a0";
}
.title_header{
    color: #fff !important;
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
    background: #003399 !important;
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

.service-box:after {
    background: #4c8552;
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
	background-color: #4c8552;
    border: 2px solid #4c8552;
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
 td a {
     color: #333;
    text-decoration: none;
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

.table-bordered>thead>tr>td, .table-bordered>thead>tr>th {
    border-bottom-width: 2px;
    background-color:#003399;
	color:#fff;
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
 background: #003399 !important;
}
td a {
     color: #333;
    text-decoration: none;
}

@media only screen and (max-width: 991px){
.pt-150 {
    padding-top: 22px !important;
}
}	
	

/********************* Tools and calc end ******************/
</style>

<script>

var sip_amount = "";
var interest_rate = "";
var period = "";
var sip_stepup_value = "";
var accountMap = "";

$(document).ready(function(){

	sip_amount = '${sip_amount}';
	interest_rate = '${interest_rate}';
	period = '${period}';
	sip_stepup_value = '${sip_stepup_value}';
	
	sipAmount = parseInt(sip_amount);
	rateofReturn = parseFloat(interest_rate);
	sipMonth = parseInt(period);
	sipstepup = parseInt(sip_stepup_value);
	
	$('#sipamount').val(numbersWithComma(sipAmount));
	$('#sipinterest').val(rateofReturn);
	$('#sipmonth').val(sipMonth);
	$('#sipstepup').val(sipstepup);
	
	accountMap = '${accountMap}';	
	
	$("#amount_slider").slider({
        min: 0,
        max: 10000000,
        tooltip: "hide",
        step: 1,
        precision: 0,
        value: sipAmount
	}).on("slideStop", function(slideEvt) {
		$("#sipamount").val(numbersWithComma(slideEvt.value));
		calculateSIP();
	});
	
	$("#month_slider").slider({
        min: 0,
        max: 450,
        tooltip: "hide",
        step: 1,
        precision: 0,
        value: sipMonth
	}).on("slideStop", function(slideEvt) {
		$("#sipmonth").val(slideEvt.value);
		calculateSIP();
	});
	
	$("#interest_slider").slider({
        min: 5,
        max: 20,
        tooltip: "hide",
        step: 0.1,
        precision: 1,
        value: rateofReturn
	}).on("slideStop", function(slideEvt) {
		var value = slideEvt.value;
		value = Math.round(value * 100) / 100;
		$( "#sipinterest" ).val(value);
		calculateSIP();
	});
	
	$("#stepup_slider").slider({
        min: 0,
        max: 60,
        tooltip: "hide",
        step: 1,
        precision: 0,
        value: sipstepup
	}).on("slideStop", function(slideEvt) {
		var value = slideEvt.value;
		value = Math.round(value * 100) / 100;
		$( "#sipstepup" ).val(value);
		calculateSIP();
	});
	
	$('input.number').change(function() {
		$(this).val(function(index, value) {
			value = value.replace(/,/g,'');
		    return numbersWithComma(value);
		});
	});

	calculateSIP();
	
});

function amountChange()
{
	var amount = $('#sipamount').val();
    amount = amount.replace(/,/g, ''); // Remove existing commas
    var numericAmount = parseFloat(amount); // Convert to numeric value
    var formattedAmount = numbersWithComma(numericAmount); // Format number with Indian comma
    $("#sipamount").val(formattedAmount); // Update input field with formatted value

    $("#amount_slider").slider("setValue", numericAmount);

    calculateSIP();
}
function interestChange()
{
	var interest = $('#sipinterest').val();
	$( "#interest_slider" ).slider("setValue",interest);
	calculateSIP();
}
function stepUpChange()
{
	var stepup = $('#sipstepup').val();
	$( "#stepup_slider" ).slider("setValue",stepup);
	calculateSIP();
}
function monthChange()
{
	var month = $('#sipmonth').val();
	$( "#month_slider" ).slider("setValue", month);
	calculateSIP();
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
/* var sipAmount = 0;
var rateofReturn = 0;
var sipMonth = 0;
var sipstepup = 0; */

function calculateSIP()
{
	var sipAmount = $('#sipamount').val();
	var rateofReturn = $('#sipinterest').val();
	var sipMonth = $('#sipmonth').val();
	var sipstepup = $('#sipstepup').val();
	
	sipAmount = sipAmount.replace(/,/g, "");
	
	sipAmount = parseInt(sipAmount);
	sipMonth = parseInt(sipMonth);
	rateofReturn = parseFloat(rateofReturn,10);
	sipstepup = parseFloat(sipstepup,10);

	var invested_amount = 0;
	var growth_value = 0;
	var maturity_amount = 0;
	var stepup_invested_amount = 0;
	var stepup_growth_value = 0;
	var stepup_maturity_amount = 0;
	var html = "";
    html += '<table class="table table-striped table-bordered"><thead><tr><th>Year</th><th style="text-align:right;">SIP Amount / Month</th><th style="text-align:right;">Invested Amount / Year</th><th style="text-align:right;">Total Invested Amount</th></tr></thead><tbody>';
	
	$.ajaxSetup({async:false});
	$.post("/tools-and-calculators/getSIPCalcStepUpResult", {sip_amount : "" + sipAmount + "",interest_rate : "" + rateofReturn + "",period : "" + sipMonth + "",sip_stepup_value : "" + sipstepup + ""}, function(data)
    {
		var result = $.trim(data);
		var obj = jQuery.parseJSON(result);
		
		if(obj.status == 400)
		{
			alert(obj.msg);
			return false;
		}
		
		invested_amount = obj.invested_amount;
		growth_value = obj.growth_value;
		maturity_amount = obj.maturity_amount;
		stepup_invested_amount = obj.stepup_invested_amount;
		stepup_growth_value = obj.stepup_growth_value;
		stepup_maturity_amount = obj.stepup_maturity_amount;
		var list = obj.list;
		var array = $.makeArray(list);
		
		for(var k=0;k<array.length;k++)
		{
			var year = array[k].year;
			var sip_amount_per_month = array[k].sip_amount_per_month;
			var invested_amount_per_year = array[k].invested_amount_per_year;
			var total_invested_amount = array[k].total_invested_amount;
			
			html += '<tr><td>'+year+'</td><td style="text-align:right;">'+numbersWithComma(sip_amount_per_month)+'</td><td style="text-align:right;">'+numbersWithComma(invested_amount_per_year)+'</td><td style="text-align:right;">'+numbersWithComma(total_invested_amount)+'</td></tr>';
		}
		
    },'text');
	
	html += '</tbody></table>';
	
    $('#res_amount_invest').html(numbersWithComma(invested_amount));
    $('#res_total_interest').html(numbersWithComma(growth_value));
	$('#res_total_amount').html(numbersWithComma(maturity_amount));
	
	$('#res_amount_invest_stepup').html(numbersWithComma(stepup_invested_amount));
    $('#res_total_interest_stepup').html(numbersWithComma(stepup_growth_value));
	$('#res_total_amount_stepup').html(numbersWithComma(stepup_maturity_amount));
	$('#summary_div').html(html);
	
 	renderChart(invested_amount, growth_value); 

}
function downloadResult()
{	
	sipAmount = numbersWithComma(sipAmount);
	invested_amount = $('#res_amount_invest_stepup').html();
	growth_value = $('#res_total_interest_stepup').html();
	maturity_amount = $('#res_total_amount_stepup').html();
	
/* 	alert("sipAmount = " + sipAmount);
	alert("invested_amount = " + invested_amount);
	alert("growth_value = " + growth_value);
	alert("maturity_amount = " + maturity_amount); */
	
	var calc_url = window.location.href;

    var param = "?sipamount="+sipAmount+"&sipinterest="+rateofReturn+"&sipmonth="+sipMonth;
	param += "&invest_amount="+invested_amount+"&interest_total="+growth_value+"&final_amount="+maturity_amount+"&url="+calc_url;
	
	var url = '/tools-and-calculators/downloadSIPStepUpCalcResult'+param;
	window.location = url;

       setTimeout(function(){
    	   swal({title:"",text:"Thanks for the Download."});
   	},1000);
}
function renderChart(amount,total_interest)
{
	amount = parseFloat(amount);
	total_interest = parseFloat(total_interest);
	
	$('#emipiechart').highcharts({
		colors: ['#4c8552', '#003399', '#596157', '#cfd186', '#24CBE5', '#64E572', 
		       '#FF9655', '#FFF263', '#6AF9C4'],
      chart: {
          plotBackgroundColor: null,
          plotBorderWidth: null,
          plotShadow: false
      },
      title: {
          text: ''
      },
      tooltip: {
  	    pointFormat: '{point.percentage:.1f}%'
      },
      legend: {
          borderWidth: 1,
          borderRadius: 5,
      },
      credits: {
          enabled: false
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
              ['Total SIP Amount Invested', amount],
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


  <section class="header_color">
      <div class="container pt-150 pb-10">
        <!-- Section Content -->
        <div class="section-content">
          <div class="row text-center">
            <div class="col-md-12">
              <h2 class="title title_header">Mutual Fund SIP Calculator Step Up</h2>
              <ol class="breadcrumb mt-10">
                <li><a href="/" class="title_header">Home</a></li>
                <li><a href="#" class="title_header">Tools & Calculators</a></li>
                <li class="active title_header">Mutual Fund SIP Calculator Step Up</li>
              </ol>
            </div>
          </div>
        </div>
      </div>
    </section>



        <!-- Section -->
        <section class="section bg-lighter pt-5">
            <div class="container">
                <div class="row justify-content-lg-between">
                <div class="col-lg-7 wow fadeInRight" data-wow-duration="0.5s" data-wow-delay="0.1s">
                        <div class="row calculator">
                            <div class="col-sm-12 my-3">
                                <div class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                    <p class="m-0 pb-2">
                                    	How much you can invest through monthly SIP? (Rs)
                                    </p>
                                    <p class="m-0">
                                    	<input type="text" class="form-control" value="25000" id="sipamount" maxlength="13" onchange="amountChange()" />
                                    </p>
                                    <p class="m-0">
                                    	<div id="amount_slider" style="margin:0px;"></div>
										<div class="steps" id="loanamountsteps">
											<span style="left: 0%;" class="tick">|<br />
											<span class="marker">0</span></span><span style="left: 25%;" class="tick">|<br />
											<span class="marker">25l</span></span><span style="left: 50%;" class="tick">|<br />
											<span class="marker">50l</span></span><span style="left: 75%;" class="tick">|<br />
											<span class="marker">75l</span></span><span style="left: 100%;" class="tick">|<br />
											<span class="marker">1Cr</span></span>
										</div>
                                    </p>
                                </div>
                            </div>
                            
                            <div class="col-sm-12 my-3">
                                <div class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                    <p class="m-0 pb-2">
                                    	How many months will you continue the SIP?
                                    </p>
                                    <p class="m-0">
                                    	<input type="text" class="form-control" value="120" id="sipmonth" maxlength="3" onchange="monthChange()" />
                                    </p>
                                    <p class="m-0">
                                    	<div id="month_slider" style="margin:0px;"></div>
										<div class="steps" id="loantermsteps">
											<span style="left: 0%;" class="tick">|<br />
											<span class="marker">0</span></span><span style="left: 16.66%;" class="tick">|<br />
											<span class="marker">75</span></span><span style="left: 33.33%;" class="tick">|<br />
											<span class="marker">150</span></span><span style="left: 50%;" class="tick">|<br />
											<span class="marker">225</span></span><span style="left: 66.66%;" class="tick">|<br />
											<span class="marker">300</span></span><span style="left: 83.33%;" class="tick">|<br />
											<span class="marker">375</span></span><span style="left: 100%;" class="tick">|<br />
											<span class="marker">450</span></span>
										</div>
                                    </p>
                                </div>
                            </div>
                            
                            <div class="col-sm-12 my-3">
                                <div class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                    <p class="m-0 pb-2">
                                    	What rate of return do you expect? (% per annum)
                                    </p>
                                    <p class="m-0">
                                    	<input type="text" class="form-control" value="12.5" id="sipinterest" maxlength="4" onchange="interestChange()" />
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
                                    	How much percentage step up monthly SIP? (% per annum)
                                    </p>
                                    <p class="m-0">
                                    	<input type="text" class="form-control" value="10" id="sipstepup" maxlength="2" onchange="stepUpChange()" />
                                    </p>
                                    <p class="m-0">
                                    	<div id="stepup_slider" style="margin:0px;"></div>
										<div class="steps">		
											<span style="left: 0%;" class="tick">|<br />
											<span class="marker">0</span></span><span style="left: 25%;" class="tick">|<br />
											<span class="marker">15</span></span><span style="left: 50%;" class="tick">|<br />
											<span class="marker">30</span></span><span style="left: 75%;" class="tick">|<br />
											<span class="marker">45</span></span><span style="left: 100%;" class="tick">|<br />
											<span class="marker">60</span></span>
											
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
						
						<div class="mb-5 text-center">
                                <div class="card-body p-0">
                                    <ul class="list-group list-group-flush">
                                        <li class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                            <div class="row">
                                                <span class="h6">Total SIP Amount Invested with out step up</span>
                                            	<p class="text-muted text-sm mt-0 mb-0  d-lg-block">&#8377; <span class="text-theme-primary" id="res_amount_invest"></span></p>
                                            </div>
                                        </li>
                                       <li class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                            <div class="row">
                                                <span class="h6">Total Growth with out <br/>step up</span>
                                            	<p class="text-muted text-sm mt-0 mb-0  d-lg-block">&#8377; <span class="text-theme-primary" id="res_total_interest"></span></p>
                                            </div>
                                        </li>
                                        <li class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                            <div class="row">
                                                <span class="h6">Total Future Value(Your SIP Investment Amount + Growth) with out step up</span>
                                            	<p class="text-muted text-sm mt-0 mb-0  d-lg-block">&#8377; <span class="text-theme-primary" id="res_total_amount"></span></p>
                                            </div>
                                        </li>
                                        <li class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                            <div class="row">
                                                <span class="h6">Total SIP Amount Invested with <br/>step up</span>
                                            	<p class="text-muted text-sm mt-0 mb-0  d-lg-block">&#8377; <span class="text-theme-primary" id="res_amount_invest_stepup"></span></p>
                                            </div>
                                        </li>
                                        <li class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                            <div class="row">
                                                <span class="h6">Total Growth with <br/>step up</span>
                                            	<p class="text-muted text-sm mt-0 mb-0  d-lg-block">&#8377; <span class="text-theme-primary" id="res_total_interest_stepup">7,48,99,805<span class="text-theme-primary" id="res_target_wealth"></span></p>
                                            </div>
                                        </li>
                                        <li class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                            <div class="row">
                                                <span class="h6">Total Future Value(Your SIP Investment Amount + Growth) with step up</span>
                                            	<p class="text-muted text-sm mt-0 mb-0  d-lg-block">&#8377; <span class="text-theme-primary" id="res_total_amount_stepup"></span></p>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>


                    </div>
                    </div>
                    <div class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                    <h5>SIP Calculator Step Up Amount Invested Summary</h5>
					<div class="table-responsive marginTop15 mt-3" id="summary_div">
                    </div>
                    
                </div>
            </div>
        </section>
        <!-- End Section -->
  </main>