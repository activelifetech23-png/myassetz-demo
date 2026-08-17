<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script src="https://code.highcharts.com/highcharts.js"></script>

<style>

/******************* Tools and calc **********************/
.member__job{
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

.hide {
    display: none !important;
}
.row-eq-height {
	  display: -webkit-box;
	  display: -webkit-flex;
	  display: -ms-flexbox;
	  display: flex;
	}
.slider {
    width: 100% !important;
    box-shadow: none !important;
    margin-top: 20px;
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
.title_header{
    color:#fff;
}
.breadcrumb li a {
    color: #fff;
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

.breadcrumb li.active{
	color: #fff;
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
.text-theme-colored2 {
    color: #003399 !important;
}	
	
/********************* Tools and calc end ******************/
</style>

<script type="text/javascript">

var wealth_amount = "";
var inflation_rate = "";
var expected_return = "";
var period = "";
var accountMap = "";
    
$(document).ready(function(){

	wealth_amount = '${wealth_amount}';
	inflation_rate = '${inflation_rate}';
	expected_return = '${expected_return}';
	period = '${period}';
	
	wealth_amount = parseInt(wealth_amount);
	price_increase_rate = parseFloat(inflation_rate);
	rate_of_return = parseFloat(expected_return);
	years = parseInt(period);
	
	$('#years').val(years);
	$('#amount').val(numbersWithComma(wealth_amount));
	$('#inc_rate').val(price_increase_rate);
	$('#interest').val(rate_of_return);
	
	accountMap = '${accountMap}';
	
	$("#amount_slider").slider({
		min: 0,
        max: 1000000000,
        tooltip: "show",
        step: 1,
        value: wealth_amount
	}).on("slideStop", function(slideEvt) {		
		$("#amount").val(numbersWithComma(slideEvt.value));
		calculateWealthy();
	});
	
	$("#year_slider").slider({
		min: 0,
        max: 100,
        tooltip: "show",
        step: 1,
        value: years
	}).on("slideStop", function(slideEvt) {
		$("#years").val(slideEvt.value);
		calculateWealthy();
	});
	
	$("#increase_rate_slider").slider({
		min: 0,
        max: 10,
        tooltip: "show",
        step: 0.1,
        value: price_increase_rate
	}).on("slideStop", function(slideEvt) {
		$("#inc_rate").val(slideEvt.value);
		calculateWealthy();
	});
	
	$("#interest_slider").slider({
		min: 0,
        max: 25,
        tooltip: "show",
        step: 0.1,
        value: rate_of_return
	}).on("slideStop", function(slideEvt) {
		$("#interest").val(slideEvt.value);
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
function yearChange()
{
	var year = $('#years').val();
	$( "#year_slider" ).slider("setValue",year);
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

function calculateWealthy()
{
	var years = $('#years').val();
	var wealth_amount = $('#amount').val();
	var price_increase_rate = $('#inc_rate').val();
	var rate_of_return = $('#interest').val();
	
	wealth_amount = wealth_amount.replace(/,/g, "");
	
	years = parseInt(years);
	wealth_amount = parseInt(wealth_amount);
	price_increase_rate = parseFloat(price_increase_rate,10);
	rate_of_return = parseFloat(rate_of_return,10);
	
	var target_wealth = 0;
	var monthly_savings = 0;
	var invested_amount = 0;
	var total_earnings = 0;
	
	$.ajaxSetup({async:false});
	$.post("/tools-and-calculators/getTargetAmountSIPCalcResult", {wealth_amount : "" + wealth_amount + "",inflation_rate : "" + price_increase_rate + "",expected_return : "" + rate_of_return + "",period : "" + years + ""}, function(data)
    {
		var result = $.trim(data);
		var obj = jQuery.parseJSON(result);
		
		if(obj.status == 400)
		{
			alert(obj.msg);
			return false;
		}
		
		target_wealth = obj.target_wealth;
		monthly_savings = obj.sip_amount;
		invested_amount = obj.invested_amount;
		total_earnings = obj.growth_amount;
		
    },'text');
	
	$('#res_target_wealth').html(numbersWithComma(target_wealth));
	$('#res_years').html(years);
	$('#res_years_1').html(years);
	$('#res_rate_return').html(rate_of_return);
	$('#res_monthly_savings').html(numbersWithComma(monthly_savings));
	$('#res_invested_amount').html(numbersWithComma(invested_amount));
	$('#res_earning_amount').html(numbersWithComma(total_earnings));
	
	renderChart(invested_amount, total_earnings);
}
function saveResult() 
{	
	
	var years = $('#years').val();
	var wealth_amount = $('#amount').val();
	var price_increase_rate = $('#inc_rate').val();
	var rate_of_return = $('#interest').val();
	
	years = parseInt(years);
	wealth_amount = parseInt(wealth_amount);
	price_increase_rate = parseFloat(price_increase_rate,10);
	rate_of_return = parseFloat(rate_of_return,10);
	
	var title = "Target Amt SIP Calculator - "+(wealth_amount/100000)+" Lakhs in "+years+" yrs with "+price_increase_rate+"% inflation and "+rate_of_return+"% return";
	var url = "/tools-and-calculators/target-amount-sip-calculator?wealth_amount="+wealth_amount+"&inflation_rate="+price_increase_rate+"&expected_return="+rate_of_return+"&period="+years;	
	
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
var download_text = "";
function downloadResult()
{
	return false;
	download_text = "download";
	$("#send_email_model").modal('show');
}
function emailResult()
{
	return false;
	download_text = "email";
	$("#send_email_model").modal('show');
}

var async = async || [];
async.push(["ready",function (){	
    $(".send_email_form").find("input").jqBootstrapValidation(
    {
		preventSubmit: true,
		submitSuccess: function($form, event) {
		    event.preventDefault();
		    
		    var radio_value = $("input[type='radio'][name='inves_calc']:checked").val();
			if(radio_value == undefined)
			{
				$("#adv-alert-msg").html("Please choose Are you an Investor or Advisor?");
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
		   	
		    var page = "Crorepati Calculator - "+download_text;
		    
		    $.ajaxSetup({async:false});
			$.post("/subscribeForEmail", {email : "" + email + "", user_type : "" + radio_value + "", page : "" + page + "" }, function(data)
		    {
		    }, "text");
		    
		    init_download(email);
		}
    });
}]);
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
              <h2 class="title title_header">Target Amount SIP Calculator</h2>
              <ol class="breadcrumb mt-10">
                <li><a href="/" class="title_header ">Home</a></li>
                <li><a href="#" class="title_header ">Tools & Calculators</a></li>
                <li class="active  title_header ">Target Amount SIP Calculator</li>
              </ol>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <section class="section bg-lighter mb-2">
            <div class="container">
                <div class="row justify-content-lg-between">
	                <div class="col-lg-7 wow fadeInRight" data-wow-duration="0.5s" data-wow-delay="0.1s">
										   	<div class="row">
			 			<div class="col-md-12 col-sm-12">
					 	<div id="emi">
						<div class="inside_emi" style="margin:0px;">
						<div class="lamount">
						<div class="row">
							<div class="col-lg-8 col-sm-6">
								<div style="float:left;" class="ques">Target Amount (Rs)</div>
							</div>
							<div class="col-lg-4 col-sm-6">
								<input type="text" value="250000000" id="amount" class="number" maxlength="13" onchange="amountChange()" />
							</div>
						</div>
						</div>
						<div style="clear:both;"></div>
						<div id="amount_slider" style="margin:0px;"></div>
						<div class="steps" id="loanamountsteps">
							<span style="left: 0%;" class="tick">|<br />
							<span class="marker">0</span></span><span style="left:25%;" class="tick">|<br />
							<span class="marker">25 cr</span></span><span style="left: 50%;" class="tick">|<br />
							<span class="marker">50 cr</span></span><span style="left: 75%;" class="tick">|<br />
							<span class="marker">75 cr</span></span><span style="left: 100%;" class="tick">|<br />
							<span class="marker">100 Crores</span></span>
						</div>
						</div>
						<div class="small_line" style="margin:0px;"></div>
						<div class="inside_emi" style="margin:0px;">
						<div class="sep lint"> 
						<div class="row">
							<div class="col-lg-8 col-sm-6">
								<div style="float:left;" class="ques">Investment Period (in years)</div>
							</div>
							<div class="col-lg-4 col-sm-6">
								<input type="text" value="30" id="years" maxlength="3" onchange="yearChange()" />
							</div>
						</div>
						</div>
						<div style="clear:both;"></div>
						<div id="year_slider" style="margin:0px;"></div>
						<div class="steps" id="loantermsteps">
							<span style="left: 0%;" class="tick">|<br />
							<span class="marker">0</span></span><span style="left: 25%;" class="tick">|<br />
							<span class="marker">25</span></span><span style="left: 50%;" class="tick">|<br />
							<span class="marker">50</span></span><span style="left: 75%;" class="tick">|<br />
							<span class="marker">75</span></span><span style="left: 100%;" class="tick">|<br />
							<span class="marker">100</span></span>
						</div>
						</div>
						<div class="small_line" style="margin:0px;"></div>
						<div class="inside_emi" style="margin:0px;">
						<div class="sep lint"> 
						<div class="row">
							<div class="col-lg-8 col-sm-6">
								<div style="float:left;" class="ques">The expected rate of inflation over the years (% per annum)</div>
							</div>
							<div class="col-lg-4 col-sm-6">
								<input type="text" value="5" id="inc_rate" maxlength="4" onchange="increaseRateChange()" />
							</div>
						</div>
						</div>
						<div style="clear:both;"></div>
						<div id="increase_rate_slider" style="margin:0px;"></div>
						<div class="steps">
							<span style="left: 0%;" class="tick">|<br />
							<span class="marker">0</span></span><span style="left: 25%;" class="tick">|<br />
							<span class="marker">2.5</span></span><span style="left: 50%;" class="tick">|<br />
							<span class="marker">5.0</span></span><span style="left: 75%;" class="tick">|<br />
							<span class="marker">7.5</span></span><span style="left: 100%;" class="tick">|<br />
							<span class="marker">10.0</span></span>
						</div>
						</div>
						<div class="small_line" style="margin:0px;"></div>
						<div class="inside_emi" style="margin:0px;">
						<div class="sep lint"> 
						<div class="row">
							<div class="col-lg-8 col-sm-6">
								<div style="float:left;" class="ques">What rate of return would you expect your SIP investment to generate (% per annum)</div>
							</div>
							<div class="col-lg-4 col-sm-6">
								<input type="text" value="12" id="interest" maxlength="4" onchange="interestChange()" />
							</div>
						</div>
						</div>
						<div style="clear:both;"></div>
						<div id="interest_slider" style="margin:0px;"></div>
						<div class="steps">
							<span style="left: 0%;" class="tick">|<br />
							<span class="marker">0</span></span><span style="left: 10%;" class="tick">|<br />
							<span class="marker">2.5</span></span><span style="left: 20%;" class="tick">|<br />
							<span class="marker">5</span></span><span style="left: 30%;" class="tick">|<br />
							<span class="marker">7.5</span></span><span style="left: 40%;" class="tick">|<br />
							<span class="marker">10</span></span><span style="left: 50%;" class="tick">|<br />
							<span class="marker">12.5</span></span><span style="left: 60%;" class="tick">|<br />
							<span class="marker">15</span></span><span style="left: 70%;" class="tick">|<br />
							<span class="marker">17.5</span></span><span style="left: 80%;" class="tick">|<br />
							<span class="marker">20</span></span><span style="left: 90%;" class="tick">|<br />
							<span class="marker">22.5</span></span><span style="left: 100%;" class="tick">|<br />
							<span class="marker">25</span></span>
						</div>
						</div>
						</div>
			 			</div>
			 		</div>
	                </div>
	                <div class="col-lg-5 my-3 wow fadeInRight" data-wow-duration="0.5s" data-wow-delay="0.1s" style="visibility: visible; animation-duration: 0.5s; animation-delay: 0.1s; animation-name: fadeInRight;">
								<div id="emipiechart"></div>
			   		<div class="member mt-10">
		              <div class="service-box icon-box iconbox-theme-colored bg-white p-10 mb-10 border-1px text-center">
		                <h5 class="member__name member_detail"><a href="javascript:void(0);">Monthly SIP <br/>investment required</a></h5>
		                <p class="member__job">&#8377; <span class="text-theme-primary" id="res_monthly_savings"></span></p>
		              </div><!-- /.member-info -->
		            </div><!-- /.member -->
		            <div class="member mt-10">
			              <div class="service-box icon-box iconbox-theme-colored bg-white p-10 mb-10 border-1px text-center">
			                <h5 class="member__name member_detail"><a href="javascript:void(0);">Number of years <br/>you need to save</a></h5>
			                <p class="member__job"><span class="text-theme-primary" id="res_years"></span> Years</p>
			              </div><!-- /.member-info -->
			        </div><!-- /.member -->
			        <div class="member mt-10">
			              <div class="service-box icon-box iconbox-theme-colored bg-white p-10 mb-10 border-1px text-center">
			                <h5 class="member__name member_detail"><a href="javascript:void(0)">Your targeted Amount <br/>(Inflation adjusted)</a></h5>
			                <p class="member__job">&#8377; <span class="text-theme-primary" id="res_target_wealth"></span></p>
			              </div><!-- /.member-info -->
			            </div><!-- /.member -->
			            
			             <div class="member mt-10">
		              <div class="service-box iconbox-theme-colored bg-white p-10 border-1px text-center">
		                <h5 class="member__name member_detail"><a href="javascript:void(0);">Total Amount Invested through SIP in <span id="res_years_1"></span> years</a></h5>
		                <p class="member__job">&#8377; <span class="text-theme-primary" id="res_invested_amount"></span></p>
		              </div><!-- /.member-info -->
		            	</div><!-- /.member -->
		            	 <div class="member mt-10">
		              <div class="service-box iconbox-theme-colored bg-white p-10 border-1px text-center">
		                <h5 class="member__name member_detail"><a href="javascript:void(0);">Total Growth Amount</a></h5>
		       
		                <p class="member__job">&#8377; <span id="res_earning_amount"></span></p>
		              </div><!-- /.member-info -->
		            </div><!-- /.member -->
	                </div>
                </div>
            </div>
        </section>       

   </div>