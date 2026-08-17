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
<style type="text/css">
.mf_content{
	margin-top: 50px;
    margin-bottom: 50px;
}
.inside_emi{
	padding:10px;
}
.small_line{
	border-bottom: 1px solid #cecece;
	clear: both;
}
/* #emi{
	box-shadow: 0 0 5px 0 rgba(213, 213, 213, 1) inset;
} */
#emipiechart {
	min-width: 310px;
    max-width: 1200px;
    height: 380px;
    margin: 0 auto;
    margin: 0px 0 0 0px;
    
}

#emipaymentsummary {
    border: 1px solid #DDDDDD;
     margin-bottom:20px;
}
.emitotalinterest {
    border-bottom: 1px dotted #DBDAD7;
    padding: 10px;
    text-align: center;
}
.emitotalamount {
    padding: 10px;
    text-align: center;
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
	margin: 0 0 0 35px;
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

.input-text {
    outline: currentcolor none 0px;
    background: #fff none repeat scroll 0% 0%;
    color: inherit;
}
text.highcharts-title {
    font-size: 13px !important;
    font-weight: bold !important;
}
.calculator-ans {
    display: flex;
    flex-direction: column;
    -moz-box-pack: justify;
    justify-content: inherit;
    width: 45%;
    padding: 0px 25px;
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
    padding: 25px 25px;
    width: 55%;
}
#res_principal,#res_interest_rate,#res_term,#res_total_amount{
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
</style>

<script type="text/javascript">

$(document).ready(function(){
	
	$("#principal_slider").ionRangeSlider({
	    min: 100000,
	    max: 10000000,
	    from: 2500000,
	    step: 1000,
	    hide_min_max: true,
	    hide_from_to: true,
	    onChange: function (data) {
            $("#principal_amount").val("");
            $("#principal_amount").val(numbersWithComma(data.from));
        },
	    onFinish: function (data) {
            $("#principal_amount").val("");
            $("#principal_amount").val(numbersWithComma(data.from));
            calculateEMI();
        }
	});
	
	$("#interest_slider").ionRangeSlider({
	    min: 5,
	    max: 20,
	    from: 12.5,
	    step: 0.1,
	    hide_min_max: true,
	    hide_from_to: true,
	    onChange: function (data) {
            $("#interest").val("");
            $("#interest").val(data.from);
        },
	    onFinish: function (data) {
            $("#interest").val("");
            $("#interest").val(data.from);
            calculateEMI();
        }
	});
	
	$("#term_slider").ionRangeSlider({
	    min: 1,
	    max: 30,
	    from: 20,
	    step: 1,
	    hide_min_max: true,
	    hide_from_to: true,
	    onChange: function (data) {
            $("#term").val("");
            $("#term").val(data.from);
        },
	    onFinish: function (data) {
            $("#term").val("");
            $("#term").val(data.from);
            calculateEMI();
        }
	});
	
	$("#compound_slider").ionRangeSlider({
	    grid: true,
	    from: 0,
	    values: [
	        "Yearly", "Half Yearly",
	        "Quarterly", "Monthly"
	    ],
	    hide_min_max: true,
	    hide_from_to: true,
	    onChange: function (data) {
            $("#compound_interval").val("");
            var txt = "";
            if(data.from == 0)
            {
            	txt = "Yearly";
            }
            if(data.from == 1)
            {
            	txt = "Half Yearly";
            }
            if(data.from == 2)
            {
            	txt = "Quarterly";
            }
            if(data.from == 3)
            {
            	txt = "Monthly";
            }
            $("#compound_interval").val(txt);
        },
	    onFinish: function (data) {
            $("#compound_interval").val("");
            var txt = "";
            if(data.from == 0)
            {
            	txt = "Yearly";
            }
            if(data.from == 1)
            {
            	txt = "Half Yearly";
            }
            if(data.from == 2)
            {
            	txt = "Quarterly";
            }
            if(data.from == 3)
            {
            	txt = "Monthly";
            }
            $("#compound_interval").val(txt);
            calculateEMI();
        }
	});  
	
	$('input.number').change(function() {
		$(this).val(function(index, value) {
			value = value.replace(/,/g,'');
		    return numbersWithComma(value);
		});
	});
	
	calculateEMI();
	
});

function principalChange()
{
	var principal_amount = $('#principal_amount').val();
	principal_amount = principal_amount.replace(/,/g,'');
	var slider = $("#principal_slider").data("ionRangeSlider");
	slider.update({
	    from: principal_amount
	});
	calculateEMI();
}
function interestChange()
{
	var interest = $('#interest').val();
	var slider = $("#interest_slider").data("ionRangeSlider");
	slider.update({
	    from: interest
	});
	calculateEMI();
}
function termChange()
{
	var term = $('#term').val();
	var slider = $("#term_slider").data("ionRangeSlider");
	slider.update({
	    from: term
	});
	calculateEMI();
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

var maturity_amount = 0;
function calculateEMI()
{
	var principal = $('#principal_amount').val();
	var rate = $('#interest').val();
	var period = $('#term').val();
	var interval = $('#compound_interval').val();
	
	interval = $.trim(interval);
	var interval_value = 0;
	if(interval == "Yearly")
	{
		interval_value = 1;
	}
	else if(interval == "Half Yearly")
	{
		interval_value = 2;
	}
	else if(interval == "Quarterly")
	{
		interval_value = 4;
	}
	else if(interval == "Monthly")
	{
		interval_value = 12;
	}
	
	principal = principal.replace(/,/g,'');
	
	principal = parseInt(principal);
	rate = parseFloat(rate,10);
	period = parseInt(period);
	
	var principal_amount = 0;
	var interest_rate = 0;
	var years = 0;
	var compound_interval = 0;
	var maturity_amount = 0;
	
	$.ajaxSetup({async:false});
	$.post("/tools-and-calculators/getCompoundingResult", {principal_amount : "" + principal + "",interest_rate : "" + rate + "",compound_interval : "" + interval + "",period : "" + period + ""}, function(data)
    {
		var result = $.trim(data);
		var obj = jQuery.parseJSON(result);
		
		if(obj.status == 400)
		{
			alert(obj.msg);
			return false;
		}
		
		principal_amount = obj.principal_amount;
		interest_rate = obj.interest_rate;
		years = obj.period;
		compound_interval = obj.compound_interval;
		maturity_amount = obj.maturity_amount;
		
    },'text');
	
	$('#res_principal').html(numbersWithComma(principal_amount));
	$('#res_interest_rate').html(interest_rate);
	$('#res_term').html(years);
	$('#res_total_amount').html(numbersWithComma(maturity_amount));
	
	renderChart(principal_amount, maturity_amount);
}
function downloadResult()
{
	
	var principal = $('#principal_amount').val();
	var rate = $('#interest').val();
	var period = $('#term').val();
	var interval = $('#compound_interval').val();

	var res_principal = $( "#res_principal" ).html();
	var res_interest_rate = $( "#res_interest_rate" ).html();
	var res_term = $( "#res_term" ).html();
	var res_total_amount = $( "#res_total_amount" ).html();
	
	principal = numbersWithComma(principal);
	var calc_url = window.location.href;
	
	
		var param = "?principal="+principal+"&rate="+rate+"&period="+period+"&interval="+interval;
		param += "&res_principal="+res_principal+"&res_interest_rate="+res_interest_rate+"&res_term="+res_term+"&res_total_amount="+res_total_amount+"&url="+calc_url;
		
		var url = '/tools-and-calculators/downloadCompoundingCalcResult'+param;
		window.location = url;
		
		$('#send_email_model').modal('hide');
        setTimeout(function(){
        	swal({title:"",text:"Thanks for the Download."});
    	},1000);
	
}
/* function renderChart(amount,total_interest)
{
	amount = parseFloat(amount);
	total_interest = parseFloat(total_interest);
	
	$('#emipiechart').highcharts({
		 colors: ['#f59c1a', '#00acac', '#FF8900', '#DDDF00', '#24CBE5', '#64E572', '#FF9655', '#FFF263', '#6AF9C4'],
		   colors: ['#ffae11', '#172460', '#f58634', '#00a85b', '#858688', '#1cb7eb', '#FF9655', '#1686b0', '#6AF9C4'],
      chart: {
          plotBackgroundColor: null,
          plotBorderWidth: null,
          plotShadow: false
      },
      title: {
          text: '',
          style: {
              font: 'bold 12px Helvetica Neue, Helvetica, Arial, sans-serif',
          }
      },
      legend: {
          borderWidth: 1,
          borderRadius: 5,
          itemStyle: {
        	  font: 'normal 12px Helvetica Neue, Helvetica, Arial, sans-serif',
           }
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
              ['Principal Amount', amount],
              {
                  name: 'Interest Amount',
                  y: total_interest,
                  sliced: true,
                  selected: true
              }
          ]
      }]
  });
} */

function renderChart(principal_amount,maturity_amount)
{
	principal_amount = parseFloat(principal_amount);
	maturity_amount = parseFloat(maturity_amount);
	total_amount=parseFloat(maturity_amount);
	total_amount = numbersWithComma(total_amount); 
	
	$('#emipiechart').highcharts({
		 colors: ['#d90d15', '#054F80', '#FF8900', '#DDDF00', '#24CBE5', '#64E572', 
		       '#FF9655', '#FFF263', '#6AF9C4'],
	    chart: {
	      plotBackgroundColor: null,
	      plotBorderWidth: null,
	      plotShadow: false,
	      type: 'pie'
	    },
	    title: {
	        text: '',
	        align:'left',
	          style: {
                color: '#000000',
                fontWeight: 'bold',
                fontSize:'16px'
            }
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
	      data: [{
	        name: 'Principal Amount',
	        y: principal_amount,
	      }, {
	        name: 'Interest Amount',
	        y: maturity_amount
	      }]
	    }]
	  });
}

function getRoboData()
{
	var age = 25;
	var amount = $("#principal_amount").val();
	var horizon = $("#res_term").html();
	var risk = "Aggressive";
	
	top.location = "/mutual-funds-research/robo-advisor?age="+age+"&amount="+amount+"&horizon="+horizon+"&risk="+risk;
}

function downloadResult()
{
	
	var principal = $('#principal_amount').val();
	var rate = $('#interest').val();
	var period = $('#term').val();
	var interval = $('#compound_interval').val();

	var res_principal = $( "#res_principal" ).html();
	var res_interest_rate = $( "#res_interest_rate" ).html();
	var res_term = $( "#res_term" ).html();
	var res_total_amount = $( "#res_total_amount" ).html();
	
	principal = numbersWithComma(principal);
	var calc_url = window.location.href;
	
	
		var param = "?principal="+principal+"&rate="+rate+"&period="+period+"&interval="+interval;
		param += "&res_principal="+res_principal+"&res_interest_rate="+res_interest_rate+"&res_term="+res_term+"&res_total_amount="+res_total_amount+"&url="+calc_url;
		
		var url = '<c:url value="/tools-and-calculators/downloadCompoundingCalcResult" />'+param;
		window.location = url;
		
		$('#send_email_model').modal('hide');
        setTimeout(function(){
        	swal({title:"",text:"Thanks for the Download."});
    	},1000);
	
}

</script>
<main>
        <!-- Page Title -->

        
         <section class="page-title page-title-layout5">
      <div class="bg-img"><img src="/images/backgrounds/6.jpg" alt="background"></div>
      <div class="container">
        <div class="row">
          <div class="col-12">
            <h1 class="pagetitle__heading"> Compounding Calculator</h1>
            <nav>
              <ol class="breadcrumb mb-0">
                <li class="breadcrumb-item"><a href="/">Home</a></li>
                <li class="breadcrumb-item"><a href="/tools-and-calculators/become-a-crorepati">Tools & Calculators</a></li>
                <li class="breadcrumb-item active" aria-current="page"> Compounding Calculator</li>
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
                                    	Principal Amount (Rs)
                                    </p>
                                    <p class="m-0">
                                    	<input type="text" class="form-control" value="25,00,000" id="principal_amount" class="textbox number" maxlength="10" onchange="principalChange()" />
                                    </p>
                                    <p class="m-0">
                                    	<input type="text" id="principal_slider" name="principal_slider" value="" />
                                    </p>
                                </div>
                            </div>
                            
                            <div class="col-sm-12 my-3 row-eq-height">
                                <div class="card card-body px-4 pb-0 hover-top shadow-only-hover">
                                    <p class="m-0 pb-2">
                                    	Interest Rate (% per annum)
                                    </p>
                                    <p class="m-0">
                                    	<input type="text" class="form-control" value="12.5" id="interest" class="textbox number" maxlength="5" onchange="interestChange()" />
                                    </p>
                                    <p class="m-0">
                                    	<input type="text" id="interest_slider" name="interest_slider" value="" />
                                    </p>
                                </div>
                            </div>
                            
                            <div class="col-sm-12 my-3 row-eq-height">
                                <div class="card card-body px-4 pb-0 hover-top shadow-only-hover">
                                    <p class="m-0 pb-2">
                                    	Period (in years)
                                    </p>
                                    <p class="m-0">
                                    	<input type="text" class="form-control" value="20" id="term" class="textbox number" maxlength="2" onchange="termChange()" />
                                    </p>
                                    <p class="m-0">
                                    	<input type="text" id="term_slider" name="term_slider" value="" />
                                    </p>
                                </div>
                            </div>
                            
                             <div class="col-sm-12 my-3 row-eq-height">
                                <div class="card card-body px-4 pb-0 hover-top shadow-only-hover">
                                    <p class="m-0 pb-2">
                                    	Compound interval
                                    </p>
                                    <p class="m-0">
                                    	<input type="text" class="form-control" value="Yearly" id="compound_interval" class="textbox number" maxlength="4" onchange="increaseRateChange()" />
                                    </p>
                                    <p class="m-0">
                                    	<input type="text" id="compound_slider" name="compound_slider" value="" />
                                    </p>
                                </div>
                            </div>

                        </div>
                    </div>
                   <div class="col-lg-5 my-3 wow fadeInRight" data-wow-duration="0.5s" data-wow-delay="0.1s" style="visibility: visible; animation-duration: 0.5s; animation-delay: 0.1s; animation-name: fadeInRight;">

                        <div class="row pb-4">
                        <div class="col-sm-12">
							<div class="card card-body px-4 pb-0 hover-top shadow-only-hover">
                                <div id="emipiechart"></div>
							</div>
							</div>
						</div>
						
						<div class="card mb-5 text-center">
                                <div class="card-body p-0">
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item bg-transparent">
                                            <div class="row">
                                                <span class="h6">Principal Amount</span>
                                            	<p class="text-muted text-sm mt-0 mb-0  d-lg-block">Rs. <span id="res_principal"></span></p>
                                            </div>
                                        </li>
                                       <li class="list-group-item bg-transparent">
                                            <div class="row">
                                                <span class="h6">Interest Rate (% per annum)</span>
                                            	<p class="text-muted text-sm mt-0 mb-0  d-lg-block"><span id="res_interest_rate"></span> %</p>
                                            </div>
                                        </li>
                                        <li class="list-group-item bg-transparent">
                                            <div class="row">
                                                <span class="h6">Period</span>
                                            	<p class="text-muted text-sm mt-0 mb-0  d-lg-block"><span id="res_term"></span> Years</p>
                                            </div>
                                        </li>
                                        <li class="list-group-item bg-transparent">
                                            <div class="row">
                                                <span class="h6">Total Maturity Amount</span>
                                            	<p class="text-muted text-sm mt-0 mb-0  d-lg-block">Rs. <span id="res_total_amount"></span></p>
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