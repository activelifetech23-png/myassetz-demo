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
<style type="text/css">
.inside_emi{
	padding:10px;
}
.small_line{
	border-bottom: 1px solid #cecece;
	clear: both;
}

.row-eq-height {
	  display: -webkit-box;
	  display: -webkit-flex;
	  display: -ms-flexbox;
	  display: flex;
	}
/* #emi {
    box-shadow: 0 0 5px 0 rgba(213, 213, 213, 1) inset;
} */
#emipaymentsummary {
    border: 1px solid #DDDDDD;
    margin-bottom:20px;
}
 #emitotalinterest {
    border-bottom: 1px dotted #DBDAD7;
    padding: 10px;
    text-align: center;
}
#emitotalamount {
    padding: 10px;
    text-align: center;
}
/* #emipaymentsummary h4 {
    color: #888888;
    font-size:12px;
    margin-bottom:10px;
    margin-top:0px;
} */
/* #emipaymentsummary p {
    font-size: 12px;
    font-weight: bold;
    margin:0px;
} */
.centerPageH1{
	margin-bottom:20px;
}
.download_calc{
	padding:10px;
	text-align:center;
}
.margintop20
{
margin-top:20px;
}
#res_amount,#res_rate,#res_loan_amount,#res_future_amount,#res_insurance_cover{
	color:#262a5a;
}
.inside_head {
    font-size: 12px;
    margin-top: 0px;
}
.textbox {
    background: none repeat scroll 0 0 #FCFCFC;
    border: 1px solid #DBDAD7;
    font-size: 14px;
    color: #1462af;
    text-align: center;
	font-weight: 600;
	padding: 7px;
	margin: 0 0 0 35px;
}
.slider {
    margin-top: -6px;
    margin-bottom: 0px;
}
.inside_head_textbox {
    text-align: right;
    margin-top: 10px;
    margin-left: -13px;
}
#emibarchart {
    float: left;
    height: 400px;
    text-align: center;
    width: 100%;
    border:1px solid #DBDAD7;
    padding:10px;
    margin-top:20px;
}
.chart_calendar{
	background-color:#EDEDED;
	border:1px solid #DBDAD7;
	padding:5px 0px;
	margin-bottom:20px;
	text-align:center;
	font-weight:bold;
	margin-top:20px;
}
.chart_calendar span{
	margin-right:20px;
}
.chart_calendar input[type="text"]{
	height:30px;
}
.entry-content{
	text-align:justify;
}
.ui-datepicker select {
	color: #000;
}
.ui-datepicker-calendar {
    display: none;
}
.centerPageH1{
	margin-bottom:20px;
}
.clear{
	clear:both;
}
.margintop20
{
margin-top:20px;
}
#res_total_amount,#res_total_interest,#res_amount_invest{
	
	color:#262a5a;
}
.inside_head {
    font-size: 12px;
    margin-top: 12px;
    font-weight: 600;
}
.textbox {
    background: none repeat scroll 0 0 #FCFCFC;
    border: 1px solid #DBDAD7;
    font-size: 14px;
    color: #1462af;
    text-align: center;
	font-weight: 600;
	padding: 7px;
}
.slider {
    margin-top: -15px;
    margin-top: 0px;
    margin-bottom: 9px;
}
.inside_head_textbox {
    text-align: right;
    margin-top: 16px;
}
.btn-primary:hover {
    background: #ffae11 !important;
    color: #fff !important;
    border-color: #ffae11 !important;
}

.btn-primary {
    color: #fff !important;
}
rect.highcharts-background {
    fill: #fafafa !important;
}
.input-text {
    outline: currentcolor none 0px;
    background: #fff none repeat scroll 0% 0%;
    color: inherit;
}
text.highcharts-title {
    font-size: 13px !important;
    font-weight: bold !important;
}
#emipiechart {
	min-width: 310px;
    max-width: 1200px;
    height: 380px;
    margin: 0 auto;
    margin: -73px 0 0 0px;
    
}
.calculator-head {
    font-size: 13px;
    margin-top: 12px;
    font-weight: 600;
}
.calculator-titles {
    /* display: flex;  */
    -moz-box-align: center;
    align-items: center;
    -moz-box-pack: justify;
    justify-content: space-between;
} 
.calculator-input {
    font-size: 17px;
    color: rgba(17, 20, 28, 0.8);
    letter-spacing: 0.3px;
    margin: 0px;
	text-align:right;
}
.calculator-sec {
    padding: 40px 25px;
    width: 55%;
}
.calculator-ans {
    display: flex;
    flex-direction: column;
    -moz-box-pack: justify;
    justify-content: inherit;
    width: 45%;
    padding: 50px 25px;
    }
    #res_amount,#res_rate,#res_loan_amount,#res_future_amount,#res_insurance_cover{
color:#262a5a;
}
.calc-title-ans {
    font-size: 12px !important;
    font-weight: bold !important;
    margin: 4px 0px 4px 0px !important;
}
@media (max-width: 768px) {
	.section {
    padding-top: 3rem;
    padding-bottom: 3rem;
    margin: -45px 0 0 0;
}
	.calculator {
    margin: 10px auto 0px;
    }
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
</style>

<script type="text/javascript">
var current_tab_value = 1;

/* var annual_income_expense = "";
var expected_increase_income_expense = "";
var loan_amount = "";
var accountMap = "";
var insurance_cover = 0;
var no_years = "";

var async = async || [];
async.push(["ready",function (){
	
	annual_income_expense = '${annual_income_expense}';
	expected_increase_income_expense = '${expected_increase_income_expense}';
	loan_amount = '${loan_amount}';
	no_years = '${no_years}';
	
	amount = parseInt(annual_income_expense);
	rate = parseFloat(expected_increase_income_expense,10);
	loan_amount = parseInt(loan_amount);
	no_years = parseInt(no_years);
	
	$('#amount').val(amount);
	$('#rate').val(rate);
	$('#year').val(no_years);
	
	accountMap = '${accountMap}'; */

$(document).ready(function(){
	
	$("#amount_slider").ionRangeSlider({
	    min: 100000,
	    max: 10000000,
	    from: 2500000,
	    step: 1000,
	    hide_min_max: true,
	    hide_from_to: true,
	    onChange: function (data) {
            $("#amount").val("");
            $("#amount").val(numbersWithComma(data.from));
        },
	    onFinish: function (data) {
            $("#amount").val("");
            $("#amount").val(numbersWithComma(data.from));
            calculateValue();
        }
	});
	
	$("#rate_slider").ionRangeSlider({
	    min: 0,
	    max: 30,
	    from: 10,
	    step: 0.1,
	    hide_min_max: true,
	    hide_from_to: true,
	    onChange: function (data) {
            $("#rate").val("");
            $("#rate").val(data.from);
        },
	    onFinish: function (data) {
            $("#rate").val("");
            $("#rate").val(data.from);
            calculateValue();
        }
	});
		
	$("#loan_amount_slider").ionRangeSlider({
	    min: 0,
	    max: 10000000,
	    from: 0,
	    step: 1000,
	    hide_min_max: true,
	    hide_from_to: true,
	    onChange: function (data) {
            $("#loan_amount").val("");
            $("#loan_amount").val(numbersWithComma(data.from));
        },
	    onFinish: function (data) {
            $("#loan_amount").val("");
            $("#loan_amount").val(numbersWithComma(data.from));
            calculateValue();
        }
	});
	
	$("#year_slider").ionRangeSlider({
	    min: 1,
	    max: 30,
	    from: 10,
	    step: 1,
	    hide_min_max: true,
	    hide_from_to: true,
	    onChange: function (data) {
            $("#year").val("");
            $("#year").val(data.from);
        },
	    onFinish: function (data) {
            $("#year").val("");
            $("#year").val(data.from);
            calculateValue();
        }
	});
	
	/* $('input.number').change(function() {
		$(this).val(function(index, value) {
			value = value.replace(/,/g,'');
		    return numbersWithComma(value);
		});
	}); */

	calculateValue();
	
});

function amountChange()
{	
	var amount = $('#amount').val();
	amount = amount.replace(/,/g,'');
	var slider = $("#amount_slider").data("ionRangeSlider");
	slider.update({
	    from: amount
	});
	calculateValue();
}
function rateChange()
{	
	var rate = $('#rate').val();
	var slider = $("#rate_slider").data("ionRangeSlider");
	slider.update({
	    from: rate
	});
	calculateValue();
}
function loanAmountChange()
{
	var loan_amount = $('#loan_amount').val();
	loan_amount = loan_amount.replace(/,/g,'');
	var slider = $("#loan_amount_slider").data("ionRangeSlider");
	slider.update({
	    from: loan_amount
	});
	calculateValue();
}
function yearChange()
{
	var year = $('#year').val();
	year = year.replace(/,/g,'');
	var slider = $("#year_slider").data("ionRangeSlider");
	slider.update({
	    from: year
	});
	calculateValue();
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
function calculateValue()
{
	var amount = $('#amount').val();
	var rate = $('#rate').val();
	var loan_amount = $('#loan_amount').val();
	var year = $('#year').val();
	
	amount = amount.replace(/,/g,'');
	loan_amount = loan_amount.replace(/,/g,'');
	
	amount = parseInt(amount);
	rate = parseFloat(rate,10);
	loan_amount = parseInt(loan_amount);
	year = parseInt(year);
	
    var future_income = 0;
	var insurance_cover = 0;
	
	$.ajaxSetup({async:false});
	$.post("/tools-and-calculators/getHumanLifeValueCalcResult", {annual_income_expense : "" + amount + "",expected_increase_income_expense : "" + rate + "",loan_amount : "" + loan_amount + "",no_years : "" + year + ""}, function(data)
    {
		var result = $.trim(data);
		var obj = jQuery.parseJSON(result);
		
		if(obj.status == 400)
		{
			alert(obj.msg);
			return false;
		}
		future_income = obj.cumulative_income_expense;
		insurance_cover = obj.life_cover_value;
    },'text');
	
	$('#res_amount').html(numbersWithComma(amount));
	$('#res_rate').html(numbersWithComma(rate));
	$('#no_years').html(year);
	$('#res_loan_amount').html(numbersWithComma(loan_amount));
	$('#res_future_amount').html(numbersWithComma(future_income));
	$('#res_insurance_cover').html(numbersWithComma(insurance_cover));	
	
}

function downloadResult()
{
	var amount = $('#amount').val();
	var rate = $('#rate').val();
	var loan_amount = $('#loan_amount').val();
	var year = $('#year').val();
	
	var res_amount = $( "#res_amount" ).html();
	var res_rate = $( "#res_rate" ).html();
	var res_loan_amount = $( "#res_loan_amount" ).html();
	var res_future_amount = $( "#res_future_amount" ).html();
	var res_insurance_cover = $( "#res_insurance_cover" ).html();
	
	/* principal = numbersWithComma(principal); */
	var calc_url = window.location.href;
	
	
		var param = "?amount="+amount+"&rate="+rate+"&loan_amount="+numbersWithComma(loan_amount)+"&year="+year;
		param += "&res_amount="+res_amount+"&res_rate="+res_rate+"&res_loan_amount="+res_loan_amount+"&res_future_amount="+res_future_amount+"&res_insurance_cover="+res_insurance_cover+"&url="+calc_url;
		
		var url = '/tools-and-calculators/downloadHumanValueCalcResult'+param;

		window.location = url;
		
		$('#send_email_model').modal('hide');
        setTimeout(function(){
        	swal({title:"",text:"Thanks for the Download."});
    	},1000);
	
}

function tabChange(val)
{
	current_tab_value = val;
	var year = $('#year').val();
	year = parseInt(year);
	if(val == 1)
	{
		$("#amount_div b").text("Your Current Annual Income (Rs)");
		$("#rate_div b").text("Expected increase in income (% per annum)");
		$("#res_amount_txt").text("Your Current Annual Income");
		$("#res_rate_txt").text("Expected increase in income (% per annum)");
		$("#res_future_amount_txt").text("cumulative expense that you will have to take care in next "+ year +" years");
	}else
	{
		$("#amount_div b").text("Your Current Annual Expenses (Rs)");
		$("#rate_div b").text("Expected increase in expense (% per annum)");
		$("#res_amount_txt").text("Your Current Annual Expenses");
		$("#res_rate_txt").text("Expected increase in expense (% per annum)");
		$("#res_future_amount_txt").text("cumulative expense that you will have to take care in next "+ year +" years");
	}	
}
/* function renderChart(amount,insurance_cover)
{
	amount = parseFloat(amount);
	loan_amount = parseFloat(loan_amount);
	
	$('#emipiechart').highcharts({
		colors: ['#f47f36', '#262a5a', '#FAA74B', '#00a85b', '#858688', '#1cb7eb', '#FF9655', '#1686b0', '#6AF9C4'],
	    chart: {
	      plotBackgroundColor: null,
	      plotBorderWidth: null,
	      plotShadow: false,
	      type: 'pie'
	    },
	    title: {
	      text: 'Total Amount<br>'+'Rs '+insurance_cover,
	      y:175
	      
	    },
	  legend:{
	    enabled:true
	  },
	  credits: {
          enabled: false
      },
	    tooltip: {
	      pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
	    },
	    plotOptions: {
	      pie: {
	        allowPointSelect: false,
	        cursor: 'pointer',
	        dataLabels: {
	          enabled: false,
	          formatter:function(){
	            return this.key+ ': ' + this.y + '%';
	          },
	        },
	        showInLegend: true
	      },
	      series: {
	            animation: {
	                duration: 2000
	            }
	        }
	    },
	    series: [{
	      colorByPoint: true,
	        innerSize: '80%',
	      data: [{
	        name: 'Total SIP Amount Invested',
	        y: 78,
	      }, {
	        name: 'Total Growth',
	        y: 22
	      }]
	    }]
	  });
} */
function downloadResult()
{
	var amount = $('#amount').val();
	var rate = $('#rate').val();
	var loan_amount = $('#loan_amount').val();
	var year = $('#year').val();
	
	var res_amount = $( "#res_amount" ).html();
	var res_rate = $( "#res_rate" ).html();
	var res_loan_amount = $( "#res_loan_amount" ).html();
	var res_future_amount = $( "#res_future_amount" ).html();
	var res_insurance_cover = $( "#res_insurance_cover" ).html();
	
	/* principal = numbersWithComma(principal); */
	var calc_url = window.location.href;
	
	
		var param = "?amount="+amount+"&rate="+rate+"&loan_amount="+numbersWithComma(loan_amount)+"&year="+year;
		param += "&res_amount="+res_amount+"&res_rate="+res_rate+"&res_loan_amount="+res_loan_amount+"&res_future_amount="+res_future_amount+"&res_insurance_cover="+res_insurance_cover+"&url="+calc_url;
		
		var url = '<c:url value="/tools-and-calculators/downloadHumanValueCalcResult" />'+param;

		window.location = url;
		
		$('#send_email_model').modal('hide');
        setTimeout(function(){
        	swal({title:"",text:"Thanks for the Download."});
    	},1000);
	
}
</script>
<main>

         <section class="page-title page-title-layout5">
      <div class="bg-img"><img src="/images/backgrounds/6.jpg" alt="background"></div>
      <div class="container">
        <div class="row">
          <div class="col-12">
            <h1 class="pagetitle__heading"> Human Life Value Calculator</h1>
            <nav>
              <ol class="breadcrumb mb-0">
                <li class="breadcrumb-item"><a href="/">Home</a></li>
                <li class="breadcrumb-item"><a href="/tools-and-calculators/become-a-crorepati">Tools & Calculators</a></li>
                <li class="breadcrumb-item active" aria-current="page"> Human Life Value Calculator</li>
              </ol>
            </nav>
          </div><!-- /.col-12 -->
        </div><!-- /.row -->
      </div><!-- /.container -->
    </section><!-- /.page-title -->

        <!-- Section -->
        <section class="section pt-5">
            <div class="container">
             <div class="row">
				<div class="col-sm-12 text-right">
					<a href="javascript:void(0);" class="btn btn__primary" tabindex="0" onclick="downloadResult()">
                      <span>Download</span>
                      <i class="icon-arrow-right"></i>
                    </a>
				</div>
			</div>
                <div class="row justify-content-lg-between">
                <div class="col-lg-7 wow fadeInRight" data-wow-duration="0.5s" data-wow-delay="0.1s">
                        <div class="row calculator">
                            <div class="col-sm-12 my-3 row-eq-height">
                                <div class="card card-body px-4 pb-0 hover-top shadow-only-hover">
                                    <p class="m-0 pb-2">
                                    	Your Current Annual Income (Rs)
                                    </p>
                                    <p class="m-0">
                                    	<input type="text" class="form-control" value="25,00,000" id="amount" class="textbox number" maxlength="10" onchange="amountChange()" />
                                    </p>
                                    <p class="m-0">
                                    	<input type="text" id="amount_slider" name="amount_slider" value="" />
                                    </p>
                                </div>
                            </div>
                            
                            <div class="col-sm-12 my-3 row-eq-height">
                                <div class="card card-body px-4 pb-0 hover-top shadow-only-hover">
                                    <p class="m-0 pb-2">
                                    	Expected increase in income (% per annum)
                                    </p>
                                    <p class="m-0">
                                    	<input type="text" class="form-control" value="10" id="rate" class="textbox" maxlength="4" onchange="rateChange()" />
                                    </p>
                                    <p class="m-0">
                                    	<input type="text" id="rate_slider" name="rate_slider" value="" />
                                    </p>
                                </div>
                            </div>
                            
                            <div class="col-sm-12 my-3 row-eq-height">
                                <div class="card card-body px-4 pb-0 hover-top shadow-only-hover">
                                    <p class="m-0 pb-2">
                                    	Outstanding loan amount  (Rs)
                                    </p>
                                    <p class="m-0">
                                    	<input type="text" class="form-control" value="0" id="loan_amount" class="textbox number" maxlength="10" onchange="loanAmountChange()" />
                                    </p>
                                    <p class="m-0">
                                    	<input type="text" id="loan_amount_slider" name="loan_amount_slider" value="" />
                                    </p>
                                </div>
                            </div>
                            
                            <div class="col-sm-12 my-3 row-eq-height">
                                <div class="card card-body px-4 pb-0 hover-top shadow-only-hover">
                                    <p class="m-0 pb-2">
                                    	Number of Years
                                    </p>
                                    <p class="m-0">
                                    	<input type="text" class="form-control" value="10" id="year" class="textbox number" maxlength="4" onchange="yearChange()" />
                                    </p>
                                    <p class="m-0">
                                    	<input type="text" id="year_slider" name="year_slider" value="" />
                                    </p>
                                </div>
                            </div>

                        </div>
                    </div>
                   <div class="col-lg-5 my-3 wow fadeInRight" data-wow-duration="0.5s" data-wow-delay="0.1s" style="visibility: visible; animation-duration: 0.5s; animation-delay: 0.1s; animation-name: fadeInRight;">

						
						<div class="card mb-5 text-center">
                                <div class="card-body p-0">
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item bg-transparent">
                                            <div class="row">
                                                <span class="h6">Your Current Annual Income</span>
                                            	<p class="text-muted text-sm mt-0 mb-0  d-lg-block">Rs. <span id="res_amount"></span></p>
                                            </div>
                                        </li>
                                       <li class="list-group-item bg-transparent">
                                            <div class="row">
                                                <span class="h6">Expected increase in income (% per annum)</span>
                                            	<p class="text-muted text-sm mt-0 mb-0  d-lg-block"><span id="res_rate"></span> %</p>
                                            </div>
                                        </li>
                                        <li class="list-group-item bg-transparent">
                                            <div class="row">
                                                <span class="h6">Outstanding loan amount</span>
                                            	<p class="text-muted text-sm mt-0 mb-0  d-lg-block">Rs. <span id="res_loan_amount"></span></p>
                                            </div>
                                        </li>
                                        <li class="list-group-item bg-transparent">
                                            <div class="row">
                                                <span class="h6">cumulative income that you will have to take care in next <span id="no_years"></span> years</span>
                                            	<p class="text-muted text-sm mt-0 mb-0  d-lg-block">Rs. <span id="res_future_amount"></span></p>
                                            </div>
                                        </li>
                                        <li class="list-group-item bg-transparent">
                                            <div class="row">
                                                <span class="h6">Your ideal life cover</span>
                                            	<p class="text-muted text-sm mt-0 mb-0  d-lg-block">Rs. <span id="res_insurance_cover"></span></p>
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