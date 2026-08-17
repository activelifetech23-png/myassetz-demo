<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script src="https://code.highcharts.com/highcharts.js"></script>
<style>
	.page-heading {
	    padding-top: 8rem;
	    padding-bottom: 2rem;
	}
	.text-theme-colored2 {
    color: #003399 !important;
}
</style>
<style>
.member {
    box-shadow: 0px 5px 83px 0px rgb(9 29 62 / 15%);
}
/******************* Tools and calc **********************/
.text-muted{
	color: green;
    font-weight: 600;
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
    background-color:#9f332f;
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


.service-box:after {
    background: #4c8552;
}

	
@media only screen and (max-width: 991px){
.pt-150 {
    padding-top: 22px !important;
}
}	
	
/********************* Tools and calc end ******************/
</style>

<script>
  var target_amount = "";
  var years = "";
  var expected_return = "";
  var accountMap = "";
  var lumpsum_amount = 0;
  $(document).ready(function(){
    target_amount = '50000000';
    years = '30';
    expected_return = '12';
    dream_amount = parseFloat(target_amount);
    rateofReturn = parseFloat(expected_return);
    years = parseInt(years);
    $('#amount').val(numbersWithComma(dream_amount));
    $('#years').val(years);
    $('#interest').val(rateofReturn);
    accountMap = '';
    $("#amount_slider").slider({
      min: 0,
      max: 1000000000,
      tooltip: "show",
      step: 1,
      precision: 0,
      value: dream_amount
    }).on("slideStop",
    function(slideEvt) {
      $("#amount").val(numbersWithComma(slideEvt.value));
      lumpsumAmountCalculator();
    });
    $("#years_slider").slider({
      min: 1,
      max: 100,
      tooltip: "show",
      step: 1,
      precision: 0,
      value: years
    }).on("slideStop",
    function(slideEvt) {
      $("#years").val(slideEvt.value);
      lumpsumAmountCalculator();
    });
    $("#interest_slider").slider({
      min: 0,
      max: 25,
      tooltip: "show",
      step: 0.1,
      precision: 1,
      value: rateofReturn
    }).on("slideStop",
    function(slideEvt) {
      $("#interest").val(slideEvt.value.toFixed(1));
      lumpsumAmountCalculator();
    });
    $("#top_up_slider").slider({
      min: 0,
      max: 100,
      tooltip: "show",
      step: 1,
      precision: 0,
      value: 10
    }).on("slideStop",
    function(slideEvt) {
      $("#top_up_percentage").val(slideEvt.value);
      lumpsumAmountCalculator();
    });
    lumpsumAmountCalculator();
  });
  var download_text = "";
  function downloadResult() {
    download_text = "download";
    $("#send_email_model").modal('show');
  }
  function amountChange() {
	  var amount = $('#amount').val();
	    amount = amount.replace(/,/g, ''); // Remove existing commas
	    var numericAmount = parseFloat(amount); // Convert to numeric value
	    var formattedAmount = numbersWithComma(numericAmount); // Format number with Indian comma
	    $("#amount").val(formattedAmount); // Update input field with formatted value

	    $("#amount_slider").slider("setValue", numericAmount);

	    lumpsumAmountCalculator();
  }
  function yearsChange() {
    var years = $('#years').val();
    $("#years_slider").slider("setValue", years);
    lumpsumAmountCalculator();
  }
  function interestChange() {
    var interest = $('#interest').val();
    $("#interest_slider").slider("setValue", interest);
    lumpsumAmountCalculator();
  }
  function topUpChange() {
    var top_up = $('#top_up_percentage').val();
    $("#top_up_slider").slider("setValue", top_up);
    monthlySavingsAmount();
  }
  function numbersWithComma(x) {
    x = x.toString();
    var afterPoint = '';
    if (x.indexOf('.') > 0) afterPoint = x.substring(x.indexOf('.'), x.length);
    x = Math.floor(x);
    x = x.toString();
    var lastThree = x.substring(x.length - 3);
    var otherNumbers = x.substring(0, x.length - 3);
    if (otherNumbers != '') lastThree = ',' + lastThree;
    var res = otherNumbers.replace(/\B(?=(\d{2})+(?!\d))/g, ",") + lastThree + afterPoint;
    return res;
  }
  function lumpsumAmountCalculator() {
    var years = $('#years').val();
    var dream_amount = $('#amount').val();
    var rateofReturn = $('#interest').val();
    dream_amount = dream_amount.replace(/,/g, '');
    dream_amount = parseFloat(dream_amount);
    rateofReturn = parseFloat(rateofReturn);
    years = parseInt(years);
    $.ajaxSetup({
      async: false
    });
    $.post("/tools-and-calculators/getLumpsumTargetCalcResult", {
      target_amount: "" + dream_amount + "",
      years: "" + years + "",
      expected_return: "" + rateofReturn + ""
    },
    function(data) {
      var result = $.trim(data);
      var obj = jQuery.parseJSON(result);
      if (obj.status == 400) {
        alert(obj.msg);
        return false;
      }
      lumpsum_amount = obj.lumpsum_amount;
    },
    'text');
    $('#res_dream_amount').html(numbersWithComma(dream_amount));
    $('#res_years').html(years);
    $('#res_lumpsum_amount').html(numbersWithComma(lumpsum_amount));
    var total_earnings = dream_amount - lumpsum_amount;
    renderChart(lumpsum_amount, total_earnings);
  }
  function saveResult() {
    var years = $('#years').val();
    var dream_amount = $('#amount').val();
    var rateofReturn = $('#interest').val();
    dream_amount = parseFloat(dream_amount);
    rateofReturn = parseFloat(rateofReturn);
    years = parseInt(years);
    var title = "Lumpsum Target Calculator - Save " + (lumpsum_amount / 100000) + " Lakhs to get " + (dream_amount / 100000) + " Lakhs after " + years + " years";
    var url = "/tools-and-calculators/lumpsum-target-calculator?target_amount=" + dream_amount + "&years=" + years + "&expected_return=" + rateofReturn;
    if (accountMap == undefined || accountMap == null || accountMap == "" || accountMap == "null") {
      advisorkhoj_result_title = title;
      advisorkhoj_result_url = url;
      $("#adv-contact-advisor-signin-signup").modal("show");
    } else {
      saveUserResult("Calculator", title, url);
    }
  }
  function renderChart(amount, total_interest) {
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
        data: [['Amount Invested', amount], {
          name: 'Total Growth',
          y: total_interest,
          sliced: true,
          selected: true
        }]
      }]
    });
  }

</script>
  
  
  <div class="main-content">

     <!-- Section: inner-header -->
    <section class="header_color">
      <div class="container pt-150 pb-10">
        <!-- Section Content -->
        <div class="section-content">
          <div class="row text-center">
            <div class="col-md-12">
              <h2 class="title title_header">Lumpsum Target Calculator</h2>
              <ol class="breadcrumb mt-10">
                <li><a href="/" class="title_header">Home</a></li>
                <li><a href="#" class="title_header">Tools & Calculators</a></li>
                <li class="active title_header">Lumpsum Target Calculator</li>
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
                                    	How much amount you want to save (Rs)
                                    </p>
                                    <p class="m-0">
                                    	<input type="text" class="form-control" value="5,00,00,000" id="amount" class="number" maxlength="13" onchange="amountChange()" />
                                    </p>
                                    <p class="m-0">
                                    	<div id="amount_slider" style="margin:0px;"></div>
										<div class="steps" id="loanamountsteps">
											<span style="left: 0%;" class="tick">|<br />
											<span class="marker">0</span></span><span style="left: 25%;" class="tick">|<br />
											<span class="marker">25 cr</span></span><span style="left: 50%;" class="tick">|<br />
											<span class="marker">50 cr</span></span><span style="left: 75%;" class="tick">|<br />
											<span class="marker">75 cr</span></span><span style="left: 100%;" class="tick">|<br />
											<span class="marker">100 cr</span></span>
										</div>
                                    </p>
                                </div>
                            </div>
                            
                            <div class="col-sm-12 my-3">
                               <div class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                    <p class="m-0 pb-2">
                                    	How many years after you need this amount (Years)
                                    </p>
                                    
                                    <p class="m-0">
                                    	<input type="text" class="form-control" value="30" id="years" maxlength="3" onchange="yearsChange()" />
                                    </p>
                                    
                                    <p class="m-0">
                                    	<div id="years_slider" style="margin:0px;"></div>
										<div class="steps" id="loantermsteps">
											<span style="left: 0%;" class="tick">|<br />
										<span class="marker">0</span></span><span style="left: 25%;" class="tick">|<br />
										<span class="marker">25</span></span><span style="left: 50%;" class="tick">|<br />
										<span class="marker">50</span></span><span style="left: 75%;" class="tick">|<br />
										<span class="marker">75</span></span><span style="left: 100%;" class="tick">|<br />
										<span class="marker">100</span></span>
										</div>
                                    </p>
                                </div>
                            </div>
                            
                            
                            <div class="col-sm-12 my-3">
                                <div class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                    <p class="m-0 pb-2">
                                    	Expected rate of return (% per annum)
                                    </p>
                                    
                                    <p class="m-0">
                                    	<input type="text" class="form-control" value="12.5" id="interest" maxlength="9" onchange="interestChange()" />
                                    </p>
                                    
                                    <p class="m-0">
                                    	<div id="interest_slider" style="margin:0px;"></div>
										<div class="steps">
											<span class="marker">0</span><span style="left: 10%;" class="tick">|<br />
											<span class="marker">2.5</span></span><span style="left: 20%;" class="tick">|<br />
											<span class="marker">5</span></span><span style="left: 30%;" class="tick">|<br />
											<span class="marker">7.5</span></span><span style="left: 40%;" class="tick">|<br />
											<span class="marker">10</span></span><span style="left: 50%;" class="tick">|<br />
											<span class="marker">12.5</span></span><span style="left: 60%;" class="tick">|<br />
											<span class="marker">15</span></span><span style="left: 70%;" class="tick">|<br />
											<span class="marker">17.5</span></span><span style="left: 80%;" class="tick">|<br />
											<span class="marker">20</span></span><span style="left: 90%;" class="tick">|<br />
											<span class="marker">22.5</span></span><span style="left: 99%;" class="tick">|<br />
											<span class="marker">25</span></span>
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
						
						<div class=" mb-5 text-center">
                                <div class="card-body p-0">
                                    <ul class="list-group list-group-flush">
                                        <li class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                            <div class="row">
                                                <span class="h6">Your Targeted Amount</span>
                                            	<p class="text-muted text-sm mt-0 mb-0  d-lg-block">&#8377; <span class="text-theme-primary" id="res_dream_amount"></span></p>
                                            </div>
                                        </li>
                                       <li class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                            <div class="row">
                                                <span class="h6">Number of years to achieve your goal</span>
                                            	<p class="text-muted text-sm mt-0 mb-0  d-lg-block"><span class="text-theme-primary" id="res_years">7,48,99,805</span> Years</p>
                                            </div>
                                        </li>
                                        <li class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                            <div class="row">
                                                <span class="h6">Lumpsum Investment Amount</span>
                                            	<p class="text-muted text-sm mt-0 mb-0  d-lg-block">&#8377; <span class="text-theme-primary" id="res_lumpsum_amount"></span></p>
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