<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script src="https://code.highcharts.com/highcharts.js"></script>

<!--
    Reuses the same .tick / .steps / .service-box / .slider / #emipiechart
    styles already defined in your global tools-and-calculators stylesheet.
    Only page-specific additions below.
-->
<style>
	.page-heading {
	    padding-top: 8rem;
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

.steps {
	border-color: rgba(0, 0, 0, 0);
	border-style: none solid;
	border-width: 0 1px;
	margin: 0px 0px 35px !important;
	position: relative;
	width: 100%;
}
.text-muted{
	color: green;
    font-weight: 600;
}
.highcharts-title tspan {
	letter-spacing: 0px;
}

.slider-handle{
	background-color: #4c8552;
    border: 2px solid #4c8552;
}

.service-box:after {
    background: #4c8552;
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
.list-group-item .row > * {
    flex-shrink: 0;
    width: 100%;
    max-width: 100%;
    padding-right: calc(var(--bs-gutter-x) * .5);
    padding-left: calc(var(--bs-gutter-x) * .5);
    margin-top: var(--bs-gutter-y);
    font-weight: 700;
}


@media only screen and (max-width: 991px){
.pt-150 {
    padding-top: 22px !important;
}
}
.text-theme-colored2 {
    color: #003399 !important;
}

/********************* Tools and calc end ******************/
</style>


<script>
$(document).ready(function(){

	var investNowAge = '${invest_now_age}';
	var investLaterAge = '${invest_later_age}';
	var endingAge = '${ending_age}';
	var sipAmount = '${sip_amount}';
	var expectedReturn = '${expected_return}';

	investNowAge = parseInt(investNowAge);
	investLaterAge = parseInt(investLaterAge);
	endingAge = parseInt(endingAge);
	sipAmount = parseInt(sipAmount);
	expectedReturn = parseFloat(expectedReturn);

	$("#invest_now_age_slider").slider({
		min: 10,
	    max: 100,
	    tooltip: "show",
	    step: 1,
	    value: investNowAge
	}).on("slideStop", function(slideEvt) {
		$("#invest_now_age").val(slideEvt.value);
		calculateCostOfDelay();
	});

	$("#invest_later_age_slider").slider({
		min: 10,
	    max: 100,
	    tooltip: "show",
	    step: 1,
	    value: investLaterAge
	}).on("slideStop", function(slideEvt) {
		$("#invest_later_age").val(slideEvt.value);
		calculateCostOfDelay();
	});

	$("#ending_age_slider").slider({
		min: 10,
	    max: 100,
	    tooltip: "show",
	    step: 1,
	    value: endingAge
	}).on("slideStop", function(slideEvt) {
		$("#ending_age").val(slideEvt.value);
		calculateCostOfDelay();
	});

	$("#sip_amount_slider").slider({
		min: 500,
	    max: 100000,
	    tooltip: "show",
	    step: 500,
	    value: sipAmount
	}).on("slideStop", function(slideEvt) {
		$("#sip_amount").val(numbersWithComma(slideEvt.value));
		calculateCostOfDelay();
	});

	$("#expected_return_slider").slider({
		min: 1,
	    max: 30,
	    tooltip: "show",
	    step: 0.5,
	    value: expectedReturn
	}).on("slideStop", function(slideEvt) {
		$("#expected_return").val(slideEvt.value);
		calculateCostOfDelay();
	});

	$('input.number').change(function() {
		$(this).val(function(index, value) {
			value = value.replace(/,/g,'');
		    return numbersWithComma(value);
		});
	});

	calculateCostOfDelay();
});

function investNowAgeChange()
{
	var val = $('#invest_now_age').val();
	$( "#invest_now_age_slider" ).slider("setValue", val);
	calculateCostOfDelay();
}
function investLaterAgeChange()
{
	var val = $('#invest_later_age').val();
	$( "#invest_later_age_slider" ).slider("setValue", val);
	calculateCostOfDelay();
}
function endingAgeChange()
{
	var val = $('#ending_age').val();
	$( "#ending_age_slider" ).slider("setValue", val);
	calculateCostOfDelay();
}
function sipAmountChange()
{
	var amount = $('#sip_amount').val();
	amount = amount.replace(/,/g, '');
	var numericAmount = parseFloat(amount);
	var formattedAmount = numbersWithComma(numericAmount);
	$("#sip_amount").val(formattedAmount);

	$("#sip_amount_slider").slider("setValue", numericAmount);
	calculateCostOfDelay();
}
function expectedReturnChange()
{
	var val = $('#expected_return').val();
	$( "#expected_return_slider" ).slider("setValue", val);
	calculateCostOfDelay();
}

function calculateCostOfDelay() {

    var investNowAge = parseInt($('#invest_now_age').val(), 10);
    var investLaterAge = parseInt($('#invest_later_age').val(), 10);
    var endingAge = parseInt($('#ending_age').val(), 10);

    var sipAmount = $('#sip_amount').val().replace(/,/g, "").trim();
    sipAmount = parseInt(sipAmount, 10);

    var expectedReturn = parseFloat($('#expected_return').val());

    if (isNaN(investNowAge) || isNaN(investLaterAge) || isNaN(endingAge) ||
        isNaN(sipAmount) || isNaN(expectedReturn)) {

        alert("Please enter valid values in all fields.");
        return;
    }

    if (endingAge <= investNowAge || endingAge <= investLaterAge) {
        alert("Ending age must be greater than both starting ages.");
        return;
    }

    if (sipAmount < 0) {
        alert("SIP amount cannot be negative.");
        return;
    }

    $.ajax({
        url: "/tools-and-calculators/getCostOfDelayResult",
        type: "POST",
        dataType: "json",
        data: {
            invest_now_age: investNowAge,
            invest_later_age: investLaterAge,
            ending_age: endingAge,
            sip_amount: sipAmount,
            expected_return: expectedReturn
        }
    })
    .done(function (obj) {

        if (obj.status == 400 || obj.status === "ERROR") {
            alert(obj.msg || obj.status_msg || "Unable to calculate.");
            return;
        }

        var yearsNow = Number(obj.years_now) || 0;
        var yearsLater = Number(obj.years_later) || 0;
        var investedNow = Number(obj.invested_now) || 0;
        var investedLater = Number(obj.invested_later) || 0;
        var finalValueNow = Number(obj.final_value_now) || 0;
        var finalValueLater = Number(obj.final_value_later) || 0;
        var wealthNow = Number(obj.wealth_now) || 0;
        var wealthLater = Number(obj.wealth_later) || 0;
        var costOfDelay = Number(obj.cost_of_delay) || 0;

        $('#res_years_now').html(yearsNow);
        $('#res_years_later').html(yearsLater);
        $('#res_invested_now').html(numbersWithComma(investedNow));
        $('#res_invested_later').html(numbersWithComma(investedLater));
        $('#res_final_value_now').html(numbersWithComma(finalValueNow));
        $('#res_final_value_later').html(numbersWithComma(finalValueLater));
        $('#res_wealth_now').html(numbersWithComma(wealthNow));
        $('#res_wealth_later').html(numbersWithComma(wealthLater));
        $('#res_cost_of_delay').html(formatLakh(costOfDelay));

        renderChart(wealthNow, wealthLater);
    })
    .fail(function (xhr) {
        var errorMessage = "Unable to calculate. Please try again.";

        if (xhr.responseJSON && xhr.responseJSON.msg) {
            errorMessage = xhr.responseJSON.msg;
        }

        alert(errorMessage);
    });
}

function formatLakh(num) {
	var lakh = num / 100000;
	return numbersWithComma(lakh.toFixed(2)) + ' Lakh';
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

function renderChart(wealthNow, wealthLater)
{
	wealthNow = parseFloat(wealthNow);
	wealthLater = parseFloat(wealthLater);

	$('#codchart').highcharts({
	    colors: ['#4c8552', '#f0a030'],
	    chart: {
	        type: 'column'
	    },
	    title: {
	        text: 'Wealth Creation Comparison'
	    },
	    xAxis: {
	        categories: ['Invest Now', 'Invest Later']
	    },
	    yAxis: {
	        title: {
	            text: 'Amount (\u20B9)'
	        }
	    },
	    legend: {
	        enabled: false
	    },
	    credits: {
	        enabled: false
	    },
	    tooltip: {
	        pointFormat: '\u20B9{point.y:,.0f}'
	    },
	    plotOptions: {
	        column: {
	            colorByPoint: true,
	            dataLabels: {
	                enabled: true,
	                format: '\u20B9{point.y:,.0f}'
	            }
	        }
	    },
	    series: [{
	        name: 'Wealth Creation',
	        data: [wealthNow, wealthLater]
	    }]
	});
}
</script>

<!-- Start main-content -->
  <div class="main-content">

    <!-- Section: inner-header -->
    <section class="header_color">
      <div class="container pt-150 pb-10">
        <div class="section-content">
          <div class="row text-center">
            <div class="col-md-12">
              <h2 class="title title_header text-dark">Cost of Delay Calculator</h2>
              <ol class="breadcrumb  text-black mt-10">
                <li><a href="/" class="title_header">Home</a></li>
                <li><a href="#" class="title_header">Tools & Calculators</a></li>
                <li class="active  title_header">Cost of Delay Calculator</li>
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

                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                <p class="icon-box-title">
                                	Invest Now - Starting Age (in years)
                                </p>
                                <p>
                                	<input type="text" class="form-control" value="25" id="invest_now_age" maxlength="3" onchange="investNowAgeChange()" />
                                </p>
                                <p>
                                	<div id="invest_now_age_slider" style="margin:0px;"></div>
									<div class="steps">
										<span style="left: 0%;" class="tick">|<br />
										<span class="marker">10</span></span><span style="left: 16.66%;" class="tick">|<br />
										<span class="marker">25</span></span><span style="left: 44.44%;" class="tick">|<br />
										<span class="marker">50</span></span><span style="left: 72.22%;" class="tick">|<br />
										<span class="marker">75</span></span><span style="left: 100%;" class="tick">|<br />
										<span class="marker">100</span></span>
									</div>
                                </p>
                            </div>
                        </div>

                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                <p class="icon-box-title">
                                	Invest Later - Starting Age (in years)
                                </p>
                                <p>
                                	<input type="text" class="form-control" value="30" id="invest_later_age" maxlength="3" onchange="investLaterAgeChange()" />
                                </p>
                                <p>
                                	<div id="invest_later_age_slider" style="margin:0px;"></div>
									<div class="steps">
										<span style="left: 0%;" class="tick">|<br />
										<span class="marker">10</span></span><span style="left: 16.66%;" class="tick">|<br />
										<span class="marker">25</span></span><span style="left: 44.44%;" class="tick">|<br />
										<span class="marker">50</span></span><span style="left: 72.22%;" class="tick">|<br />
										<span class="marker">75</span></span><span style="left: 100%;" class="tick">|<br />
										<span class="marker">100</span></span>
									</div>
                                </p>
                            </div>
                        </div>

                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                <p class="icon-box-title">
                                	SIP Amount - Monthly (Rs)
                                </p>
                                <p>
                                	<input type="text" class="form-control number" value="1,000" id="sip_amount" maxlength="10" onchange="sipAmountChange()" />
                                </p>
                                <p>
                                	<div id="sip_amount_slider" style="margin:0px;"></div>
									<div class="steps">
										<span style="left: 0%;" class="tick">|<br />
										<span class="marker">500</span></span><span style="left: 25%;" class="tick">|<br />
										<span class="marker">25K</span></span><span style="left: 50%;" class="tick">|<br />
										<span class="marker">50K</span></span><span style="left: 75%;" class="tick">|<br />
										<span class="marker">75K</span></span><span style="left: 100%;" class="tick">|<br />
										<span class="marker">1L</span></span>
									</div>
                                </p>
                            </div>
                        </div>

                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                <p class="icon-box-title">
                                	Expected Rate of Return (% per annum)
                                </p>
                                <p class="m-0">
                                	<input type="text" class="form-control" value="10" id="expected_return" maxlength="4" onchange="expectedReturnChange()" />
                                </p>
                                <p class="m-0">
                                	<div id="expected_return_slider" style="margin:0px;"></div>
									<div class="steps">
										<div style="left: 0%;" class="tick">|<br /> <span class="marker">1</span></div>
										<div style="left: 25%;" class="tick">|<br /> <span class="marker">8</span></div>
										<div style="left: 50%;" class="tick">|<br /> <span class="marker">15</span></div>
										<div style="left: 75%;" class="tick">|<br /> <span class="marker">22</span></div>
										<div style="left: 100%;" class="tick">|<br /> <span class="marker">30</span></div>
									</div>
                                </p>
                            </div>
                        </div>

                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                <p class="icon-box-title">
                                	SIP Ending Age (in years)
                                </p>
                                <p class="m-0">
                                	<input type="text" class="form-control" value="35" id="ending_age" maxlength="3" onchange="endingAgeChange()" />
                                </p>
                                <p class="m-0">
                                	<div id="ending_age_slider" style="margin:0px;"></div>
									<div class="steps" id="loantermsteps">
										<div style="left: 0%;" class="tick">|<br /> <span class="marker">10</span></div>
										<div style="left: 16.66%;" class="tick">|<br /> <span class="marker">25</span></div>
										<div style="left: 44.44%;" class="tick">|<br /> <span class="marker">50</span></div>
										<div style="left: 72.22%;" class="tick">|<br /> <span class="marker">75</span></div>
										<div style="left: 100%;" class="tick">|<br /> <span class="marker">100</span></div>
									</div>
                                </p>
                            </div>
                        </div>

                    </div>
                </div>

               <div class="col-lg-5 my-3 wow fadeInRight" data-wow-duration="0.5s" data-wow-delay="0.1s" style="visibility: visible; animation-duration: 0.5s; animation-delay: 0.1s; animation-name: fadeInRight;">

                    <div class="row pb-4">
                    <div class="col-sm-12">
						<div class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-30 border-1px">
                            <div id="codchart" style="height:300px;"></div>
						</div>
						</div>
					</div>

					<div class="cod-summary-box">
					    <div class="row">
					        <div class="col-xs-12 text-center">
					            <h2>Cost of Delay</h2>
								<h2><span class="cod-summary-value">&#8377; <span style="color:#0264D5;" id="res_cost_of_delay"></span></span></h2>
					        </div>
					        
					    </div>
					</div>

					<div class="card mb-5 text-center">
					    <div class="card-body p-0">
					        <ul class="list-group list-group-flush">
					            <li class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
					                <div class="row">
					                    <h5 class="icon-box-title m-0 mb-5">Total Years Invested</h5>
					                    <p class="text-muted text-sm mt-0 mb-0 d-lg-block">
					                        Invest Now: <span id="res_years_now"></span> Years &nbsp;|&nbsp;
					                        Invest Later: <span id="res_years_later"></span> Years
					                    </p>
					                </div>
					            </li>
					            <li class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
					                <div class="row">
					                    <h5 class="icon-box-title m-0 mb-5">Total Amount Invested</h5>
					                    <p class="text-muted text-sm mt-0 mb-0 d-lg-block">
					                        Invest Now: &#8377; <span class="text-theme-primary" id="res_invested_now"></span> &nbsp;|&nbsp;
					                        Invest Later: &#8377; <span class="text-theme-primary" id="res_invested_later"></span>
					                    </p>
					                </div>
					            </li>
					            <li class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
					                <div class="row">
					                    <h5 class="icon-box-title m-0 mb-5">Final Value of Your Investment</h5>
					                    <p class="text-muted text-sm mt-0 mb-0 d-lg-block">
					                        Invest Now: &#8377; <span class="text-theme-primary" id="res_final_value_now"></span> &nbsp;|&nbsp;
					                        Invest Later: &#8377; <span class="text-theme-primary" id="res_final_value_later"></span>
					                    </p>
					                </div>
					            </li>
					            <li class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
					                <div class="row">
					                    <h5 class="icon-box-title m-0 mb-5">Wealth Creation</h5>
					                    <p class="text-muted text-sm mt-0 mb-0 d-lg-block">
					                        Invest Now: &#8377; <span class="text-theme-primary" id="res_wealth_now"></span> &nbsp;|&nbsp;
					                        Invest Later: &#8377; <span class="text-theme-primary" id="res_wealth_later"></span>
					                    </p>
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

   </div>