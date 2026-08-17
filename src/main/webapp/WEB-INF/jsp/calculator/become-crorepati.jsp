<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script src="https://code.highcharts.com/highcharts.js"></script>
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

	var currentAge = '${current_age}';
	var retireAge = '${retirement_age}';
	var retireAmount = '${wealth_amount}';
	var inflation = '${inflation_rate}';
	var rate = '${expected_return}';
	var savingsAmount = '${savings_amount}';
	
	currentAge = parseInt(currentAge);
	retireAge = parseInt(retireAge);
	retireAmount = parseInt(retireAmount);
	inflation = parseFloat(inflation);
	rate = parseFloat(rate);
	savingsAmount = parseInt(savingsAmount);
	
	$("#amount_slider").slider({
		min: 0,
	    max: 1000000000,
	    tooltip: "show",
	    step: 1,
	    value: retireAmount
	}).on("slideStop", function(slideEvt) {		
		$("#amount").val(numbersWithComma(slideEvt.value));
		calculateWealthy();
	});
	
	$("#current_age_slider").slider({				
		min: 10,
	    max: 100,
	    tooltip: "show",
	    step: 1,
	    value: currentAge
	}).on("slideStop", function(slideEvt) {		
		$("#current_age").val(slideEvt.value);
		calculateWealthy();
	});
	
	$("#retire_age_slider").slider({
		min: 10,
	    max: 100,
	    tooltip: "show",
	    step: 1,
	    value: retireAge
	}).on("slideStop", function(slideEvt) {
		$("#retire_age").val(slideEvt.value);
		calculateWealthy();
	});
	
	$("#increase_rate_slider").slider({
		min: 0,
	    max: 40,
	    tooltip: "show",
	    step: 0.1,
	    value: inflation
	}).on("slideStop", function(slideEvt) {
		$("#inc_rate").val(slideEvt.value);
		calculateWealthy();
	});
	
	$("#interest_slider").slider({
		min: 5,
	    max: 20,
	    tooltip: "show",
	    step: 0.1,
	    value: rate
	}).on("slideStop", function(slideEvt) {
		$("#interest").val(slideEvt.value);
		calculateWealthy();
	});
	
	$("#savings_amount_slider").slider({
		min: 0,
	    max: 10000000,
	    tooltip: "show",
	    step: 1,
	    value: savingsAmount
	}).on("slideStop", function(slideEvt) {
		$("#savings_amount").val(numbersWithComma(slideEvt.value));
		calculateWealthy();
	});
	
	$('input.number').change(function() {
		$(this).val(function(index, value) {
			value = value.replace(/,/g,'');
		    return numbersWithComma(value);
		});
	});

	calculateWealthy();
});


function amountChange()
{
	var amount = $('#amount').val();
    amount = amount.replace(/,/g, ''); // Remove existing commas
    var numericAmount = parseFloat(amount); // Convert to numeric value
    var formattedAmount = numbersWithComma(numericAmount); // Format number with Indian comma
    $("#amount").val(formattedAmount); // Update input field with formatted value

    $("#amount_slider").slider("setValue", numericAmount);

    calculateWealthy();
}
function currentAgeChange()
{
	var currentAge = $('#current_age').val();
	$( "#current_age_slider" ).slider("setValue",currentAge);
	calculateWealthy();
}
function retireAgeChange()
{
	var retireAge = $('#retire_age').val();
	$( "#retire_age_slider" ).slider("setValue",retireAge);
	calculateWealthy();
}
function increaseRateChange()
{
	var increaseRate = $('#inc_rate').val();
	$( "#increase_rate_slider" ).slider("setValue",increaseRate);
	calculateWealthy();
}
function interestChange()
{
	var interest = $('#interest').val();
	$( "#interest_slider" ).slider("setValue",interest);
	calculateWealthy();
}
function savingsAmountChange()
{
	var savingsAmount = $('#savings_amount').val();
    savingsAmount = savingsAmount.replace(/,/g, ''); // Remove existing commas
    var numericAmount = parseFloat(savingsAmount); // Convert to numeric value
    var formattedAmount = numbersWithComma(numericAmount); // Format number with Indian comma
    $("#savings_amount").val(formattedAmount); // Update input field with formatted value

    $("#savings_amount_slider").slider("setValue", numericAmount);

    calculateWealthy();
}
function calculateWealthy() {

    var currentAge = parseInt($('#current_age').val(), 10);
    var retireAge = parseInt($('#retire_age').val(), 10);

    var retireAmount = $('#amount').val().replace(/,/g, "").trim();
    var savingsAmount = $('#savings_amount').val().replace(/,/g, "").trim();

    retireAmount = parseInt(retireAmount, 10);
    savingsAmount = parseInt(savingsAmount, 10);

    var rate = parseFloat($('#interest').val());
    var inflation = parseFloat($('#inc_rate').val());

    if (isNaN(currentAge) || isNaN(retireAge) ||
        isNaN(retireAmount) || isNaN(savingsAmount) ||
        isNaN(rate) || isNaN(inflation)) {

        alert("Please enter valid values in all fields.");
        return;
    }

    if (currentAge <= 0) {
        alert("Please enter a valid current age.");
        return;
    }

    if (retireAge <= currentAge) {
        alert("Retirement age must be greater than current age.");
        return;
    }

    if (retireAmount < 0 || savingsAmount < 0) {
        alert("Amounts cannot be negative.");
        return;
    }

    /*
     * Do not check:
     * savingsAmount >= retireAmount
     *
     * The backend calculates future value of both amounts. Current savings
     * can be more than the current retirement goal and still be valid.
     */
    $.ajax({
        url: "/tools-and-calculators/getCrorepatiResult",
        type: "POST",
        dataType: "json",
        data: {
            current_age: currentAge,
            retirement_age: retireAge,
            wealth_amount: retireAmount,
            inflation_rate: inflation,
            expected_return: rate,
            savings_amount: savingsAmount
        }
    })
    .done(function (obj) {

        if (obj.status == 400 || obj.status === "ERROR") {
            alert(obj.msg || obj.status_msg || "Unable to calculate.");
            return;
        }

        var targetWealth = Number(obj.target_wealth) || 0;
        var targetSavings = Number(obj.target_savings) || 0;
        var targetAmount = Number(obj.target_amount) || 0;
        var years = Number(obj.years) || 0;
        var expectedReturn = Number(obj.expected_return) || 0;
        var monthlySavings = Number(obj.monthly_savings) || 0;
        var investedAmount = Number(obj.invested_amount) || 0;
        var totalEarnings = Number(obj.total_earnings) || 0;

        $('#res_target_wealth').html(numbersWithComma(targetWealth));
        $('#res_target_savings').html(numbersWithComma(targetSavings));
        $('#res_target_amount').html(numbersWithComma(targetAmount));
        $('#res_years').html(years);
        $('#res_years_1').html(years);
        $('#res_rate_return').html(expectedReturn);
        $('#res_monthly_savings').html(numbersWithComma(monthlySavings));
        $('#res_invested_amount').html(numbersWithComma(investedAmount));
        $('#res_earning_amount').html(numbersWithComma(totalEarnings));

        renderChart(investedAmount, totalEarnings);
    })
    .fail(function (xhr) {
        var errorMessage = "Unable to calculate. Please try again.";

        if (xhr.responseJSON && xhr.responseJSON.msg) {
            errorMessage = xhr.responseJSON.msg;
        }

        alert(errorMessage);
    });
}

function downloadResult() {

	var wealth_amount = $('#amount').val();
	var current_age = $('#current_age').val();
	var wealth_age = $('#retire_age').val();
	var price_increase_rate = $('#inc_rate').val();
	var rate_of_return = $('#interest').val();
	var savings_amount = $('#savings_amount').val();

	var target_wealth = $('#res_target_wealth').html();
	var target_savings = $('#res_target_savings').html();
	var target_amount = $('#res_target_amount').html();
	var years = $('#res_years').html();
	var monthly_savings = $('#res_monthly_savings').html();
	var invested_amount = $('#res_invested_amount').html();
	var total_earnings = $('#res_earning_amount').html();

	//wealth_amount = numbersWithComma(wealth_amount);
	//savings_amount = numbersWithComma(savings_amount);
	var calc_url = window.location.href;

	var param = "?wealth_amount=" + wealth_amount + "&current_age="
			+ current_age + "&wealth_age=" + wealth_age
			+ "&price_increase_rate=" + price_increase_rate
			+ "&rate_of_return=" + rate_of_return + "&savings_amount="
			+ savings_amount;
	param += "&target_wealth=" + target_wealth + "&target_savings="
			+ target_savings + "&target_amount=" + target_amount
			+ "&years=" + years + "&monthly_savings=" + monthly_savings
			+ "&invested_amount=" + invested_amount + "&total_earnings="
			+ total_earnings + "&url=" + calc_url;

	var url = '/tools-and-calculators/downloadCrorepatiCalcResult'
			+ param;
	window.location = url;

	$('#send_email_model').modal('hide');
	setTimeout(function() {
		swal({title : "",text : "Thanks for the Download."});
	}, 1000);

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

function renderChart(amount,total_interest)
{
	amount = parseFloat(amount);
	total_interest = parseFloat(total_interest);
	
	$('#emipiechart').highcharts({
		 colors: ['#4c8552', '#003399', '#FF8900', '#DDDF00', '#24CBE5', '#64E572', 
		       '#FF9655', '#FFF263', '#6AF9C4'],
      chart: {
          plotBackgroundColor: null,
          plotBorderWidth: null,
          plotShadow: false
      },
      title: {
          text: 'Break-up of Total Payment'
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

<!-- Start main-content -->
  <div class="main-content">

    <!-- Section: inner-header -->
    <section class="header_color">
      <div class="container pt-150 pb-10">
        <!-- Section Content -->
        <div class="section-content">
          <div class="row text-center">
            <div class="col-md-12">
              <h2 class="title title_header text-dark">Become A Crorepati Calculator</h2>
              <ol class="breadcrumb  text-black mt-10">
                <li><a href="/" class="title_header">Home</a></li>
                <li><a href="#" class="title_header">Tools & Calculators</a></li>
                <li class="active  title_header">Become A Crorepati Calculator</li>
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
                            <div class="col-xs-12 col-sm-12 col-md-12">
                                <div class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                    <p class="icon-box-title">
                                    	How many Crores (at current value) you would need to consider yourself wealthy (Rs)
                                    </p>
                                    
                                    <p>
                                    	<input type="text" class="form-control" value="5,00,00,000" class="number" id="amount" maxlength="15" onchange="amountChange()" />
                                    </p>
                                    
                                    <p>
                                    	<div id="amount_slider" style="margin:0px;"></div>
										<div class="steps">
											<span style="left: 0%;" class="tick">|<br />
											<span class="marker">0</span></span><span style="left: 25%;" class="tick">|<br />
											<span class="marker">25 Crores</span></span><span style="left: 50%;" class="tick">|<br />
											<span class="marker">50 Crores</span></span><span style="left: 75%;" class="tick">|<br />
											<span class="marker">75 Crores</span></span><span style="left: 100%;" class="tick">|<br />
											<span class="marker">100 Crores</span></span>
										</div>
                                    </p>
                                </div>
                            </div>
                            
                           <div class="col-xs-12 col-sm-12 col-md-12">
                                <div class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                    <p class="icon-box-title">
                                    	Your current age (in years)
                                    </p>
                                    
                                    <p>
                                    	<input type="text" class="form-control" value="30" id="current_age" maxlength="3" onchange="currentAgeChange()" />
                                    </p>
                                    
                                    <p>
                                    	<div id="current_age_slider" style="margin:0px;"></div>
										<div class="steps" id="loantermsteps">
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
                                    	The age when you want to become a Crorepati (in years)
                                    </p>
                                    
                                    <p class="m-0">
                                    	<input type="text" class="form-control" value="60" id="retire_age" maxlength="3" onchange="retireAgeChange()" />
                                    </p>
                                    
                                    <p class="m-0">
                                    	<div id="retire_age_slider" style="margin:0px;"></div>
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
                            <div class="col-xs-12 col-sm-12 col-md-12">
                                <div class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                    <p class="icon-box-title">
                                    	The expected rate of inflation over the years (% per annum)
                                    </p>
                                    
                                    <p class="m-0">
                                    	<input type="text" class="form-control" value="5" id="inc_rate" maxlength="4" onchange="increaseRateChange()" />
                                    </p>
                                    
                                    <p class="m-0">
                                    	<div id="increase_rate_slider" style="margin:0px;"></div>
										<div class="steps">
											<span class="marker">0</span></span><span style="left: 25%;" class="tick">|<br />
											<span class="marker">10</span></span><span style="left: 50%;" class="tick">|<br />
											<span class="marker">20</span></span><span style="left: 75%;" class="tick">|<br />
											<span class="marker">30</span></span><span style="left: 100%;" class="tick">|<br />
											<span class="marker">40</span></span>
										</div>
                                    </p>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-12">
                                <div class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                    <p class="icon-box-title">
                                    	What rate of return would you expect your SIP investment to generate (% per annum)
                                    </p>
                                    
                                    <p class="m-0">
                                    	<input type="text" class="form-control" value="12" id="interest" maxlength="4" onchange="interestChange()" />
                                    </p>
                                    
                                    <p class="m-0">
                                    	<div id="interest_slider" style="margin:0px;"></div>
										<div class="steps">
											<div style="left: 0%;" class="tick">|<br /> <span class="marker">5</span></div>
											<div style="left: 16.66%;" class="tick">|<br /> <span class="marker">7.5</span></div>
											<div style="left: 33.33%;" class="tick">|<br /> <span class="marker">10</span></div>
											<div style="left: 50%;" class="tick">|<br /> <span class="marker">12.5</span></div>
											<div style="left: 66.66%;" class="tick">|<br /> <span class="marker">15</span></div>
											<div style="left: 83.33%;" class="tick">|<br /> <span class="marker">17.5</span></div>
											<div style="left: 100%;" class="tick">|<br /> <span class="marker">20</span></div>
										</div>
                                    </p>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-12">
                                <div class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                    <p class="icon-box-title">
                                    	How much savings you have now (Rs)
                                    </p>
                                    
                                    <p class="m-0">
                                    	<input type="text" class="form-control" class="number" value="25,00,000" id="savings_amount" maxlength="13" onchange="savingsAmountChange()" />
                                    </p>
                                    
                                    <p class="m-0">
                                    	<div id="savings_amount_slider" style="margin:0px;"></div>
										<div class="steps">
											<span class="marker">0</span></span><span style="left: 25%;" class="tick">|<br />
											<span class="marker">25L</span></span><span style="left: 50%;" class="tick">|<br />
											<span class="marker">50L</span></span><span style="left: 75%;" class="tick">|<br />
											<span class="marker">75L</span></span><span style="left: 100%;" class="tick">|<br />
											<span class="marker">1 Crores</span></span>
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
                                <div id="emipiechart"></div>
							</div>
							</div>
						</div>
						
						<div class="card mb-5 text-center">
						    <div class="card-body p-0">
						        <ul class="list-group list-group-flush">
						            <li class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
						                <div class="row">
						                    <h5 class="icon-box-title m-0 mb-5">Monthly SIP Amount</h5>
						                    <p class="text-muted text-sm mt-0 mb-0 d-lg-block">&#8377; <span id="res_monthly_savings"></span> ( <span id="res_years"></span> years you need to save )</p>
						                </div>
						            </li>
						            <li class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
						                <div class="row">
						                    <h5 class="icon-box-title m-0 mb-5">Total Amount Invested through SIP in <span id="res_years_1">30</span> years</h5>
						                    <p class="text-muted text-sm mt-0 mb-0 d-lg-block">&#8377; <span class="text-theme-primary" id="res_invested_amount"></span></p>
						                </div>
						            </li>
						            <li class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
						                <div class="row">
						                    <h5 class="icon-box-title m-0 mb-5">Total Growth Amount</h5>
						                    <p class="text-muted text-sm mt-0 mb-0 d-lg-block">&#8377; <span class="text-theme-primary" id="res_earning_amount"></span></p>
						                </div>
						            </li>
						            <li class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
						                <div class="row">
						                    <h5 class="icon-box-title m-0 mb-5">Your targeted Wealth Amount (Inflation adjusted)</h5>
						                    <p class="text-muted text-sm mt-0 mb-0 d-lg-block">&#8377; <span class="text-theme-primary" id="res_target_wealth"></span></p>
						                </div>
						            </li>
						            <li class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
						                <div class="row">
						                    <h5 class="icon-box-title m-0 mb-5">Growth of your Savings Amount (<span id="res_rate_return">12</span>% per annum)</h5>
						                    <p class="text-muted text-sm mt-0 mb-0 d-lg-block">&#8377; <span class="text-theme-primary" id="res_target_savings"></span></p>
						                </div>
						            </li>
						            <li class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
						                <div class="row">
						                    <h5 class="icon-box-title m-0 mb-5">Final Targeted Amount (Minus growth of your savings)</h5>
						                    <p class="text-muted text-sm mt-0 mb-0 d-lg-block">&#8377; <span class="text-theme-primary" id="res_target_amount"></span></p>
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