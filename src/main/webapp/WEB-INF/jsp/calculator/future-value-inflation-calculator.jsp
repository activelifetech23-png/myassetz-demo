<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script src="https://code.highcharts.com/highcharts.js"></script>

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

.row-eq-height {
	  display: -webkit-box;
	  display: -webkit-flex;
	  display: -ms-flexbox;
	  display: flex;
	}
.hide {
    display: none !important;
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
    background: #fbce00 !important;
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
    border: 2px solid #fbce00;
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

/********************* Tools and calc end ******************/
</style>

 <script type="text/javascript">

var current_cost = "";
var inflation_rate = "";
var no_years = "";
var accountMap = "";
var future_amount = 0;

$(document).ready(function(){

	current_cost = '${current_cost}';
	inflation_rate = '${inflation_rate}';
	no_years = '${no_years}';
	
	current_amount = parseInt(current_cost);
	inflation = parseFloat(inflation_rate,10);
	year = parseInt(no_years);
	
	$('#current_amount').val(numbersWithComma(current_amount));
	$('#inflation').val(inflation);
	$('#year').val(year);
	
	accountMap = '${accountMap}';	
	
	$("#current_amount_slider").slider({
	    min: 100000,
	    max: 10000000,
        tooltip: "show",
        step: 1,
        precision: 0,
        value: current_amount
	}).on("slideStop", function(slideEvt) {		
		$("#current_amount").val(numbersWithComma(slideEvt.value));
		calculateFutureValue();
	});
	
	$("#inflation_slider").slider({
	    min: 0,
	    max: 20,
        tooltip: "show",
        step: 0.1,
        value: inflation,
        precision: 0.1,
	}).on("slideStop", function(slideEvt) {
		$("#inflation").val(slideEvt.value.toFixed(1));
		calculateFutureValue();
	});
	
	$("#year_slider").slider({
	    min: 0,
	    max: 30,
        tooltip: "show",
        step: 1,
        precision: 0,
        value: year
	}).on("slideStop", function(slideEvt) {
		$("#year").val(slideEvt.value);
		calculateFutureValue();
	});
	
	$('input.number').change(function() {
		$(this).val(function(index, value) {
			value = value.replace(/,/g,'');
		    return numbersWithComma(value);
		});
	});
	
	calculateFutureValue();
	
});

function currentAmountChange()
{
	var current_amount = $('#current_amount').val();
	current_amount = current_amount.replace(/,/g,'');
	$("#current_amount_slider").slider("setValue",current_amount);
	calculateFutureValue();
}
function inflationChange()
{
	var inflation = $('#inflation').val();
	$("#inflation_slider").slider("setValue",inflation);
	calculateFutureValue();
}
function yearChange()
{
	var year = $('#year').val();
	$("#year_slider").slider("setValue",year);
	calculateFutureValue();
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
function calculateFutureValue()
{
	var current_amount = $('#current_amount').val();
	var inflation = $('#inflation').val();
	var year = $('#year').val();

	if(isNaN(year))
	{
		alert("Please enter valid value for years.");
		return;
	}
	
	current_amount = current_amount.replace(/,/g, "");
	
	current_amount = parseInt(current_amount);
	inflation = parseFloat(inflation,10);
	year = parseInt(year);


	
	$.ajaxSetup({async:false});
	$.post("/tools-and-calculators/getFutureValueCalcResult", {current_cost : "" + current_amount + "",inflation_rate : "" + inflation + "",no_years : "" + year + ""}, function(data)
    {
		var result = $.trim(data);
		var obj = jQuery.parseJSON(result);
		
		if(obj.status == 400)
		{
			alert(obj.msg);
			return false;
		}
		
		future_amount = obj.future_amount;
		
    },'text');
	
	$('#res_current_amount').html(numbersWithComma(current_amount));
	$('#res_inflation').html(inflation);
	$('#res_year').html(year);
	$('#res_future_amount').html(numbersWithComma(future_amount));
	renderChart(current_amount,future_amount);
}
function saveResult() 
{	
	var current_amount = $('#current_amount').val();
	var inflation = $('#inflation').val();
	var year = $('#year').val();

	current_amount = parseInt(current_amount);
	inflation = parseFloat(inflation,10);
	year = parseInt(year);

	var title = "Future Value Inflation Calculator - "+(current_amount/100000)+" Lakhs become "+(future_amount/100000)+" Lakhs @"+inflation+"% inflation after "+year+" yrs";
	var url = "/tools-and-calculators/future-value-inflation-calculator?current_cost="+current_amount+"&inflation_rate="+inflation+"&no_years="+year;	
	
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

function renderChart(current_amount,future_amount)
{
	current_amount = parseFloat(current_amount);
	future_amount = parseFloat(future_amount);
	
	$('#emipiechart').highcharts({
		colors: ['#20C7BA', '#2E4484', '#596157', '#cfd186', '#24CBE5', '#64E572', 
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
              ['Current Cost', current_amount],
              {
                  name: 'Future Cost',
                  y: future_amount,
                  sliced: true,
                  selected: true
              }
          ]
      }]
  });
}
</script>

    <!-- ========================
       page title 
    =========================== -->
    <section class="page-title page-title-layout5">
      <div class="bg-img"><img src="/images/backgrounds/6.jpg" alt="background"></div>
      <div class="container">
        <div class="row">
          <div class="col-12">
            <h1 class="pagetitle__heading">Future value Calculator</h1>
            <nav>
              <ol class="breadcrumb mb-0">
                <li class="breadcrumb-item"><a href="/">Home</a></li>
                <li class="breadcrumb-item"><a href="/tools-and-calculators/become-a-crorepati">Tools & Calculators</a></li>
                <li class="breadcrumb-item active" aria-current="page">Future value Calculator</li>
              </ol>
            </nav>
          </div><!-- /.col-12 -->
        </div><!-- /.row -->
      </div><!-- /.container -->
    </section><!-- /.page-title -->

    <!-- ========================
       Doctors Timetable
    ========================== -->
    <!-- ========================
        Team layout 1
    ========================== -->
    <section class="team-layout1 pb-40">
      <div class="container">
        <div class="row">
          <!-- Member #1 -->
          <div class="col-sm-6 col-md-4 col-lg-12">
            <div class="member">
              <div class="member__info">
               	<div class="row">
				   <div class="col-lg-8 col-sm-6">
				   	<div class="row">
			 			<div class="col-md-12 col-sm-12">
					 	<div id="emi">
						<div class="inside_emi" style="margin:0px;">
						<div class="lamount">
						<div class="row">
							<div class="col-lg-8 col-sm-6">
								<div style="float:left;" class="ques">Current Cost (Rs)</div>
							</div>
							<div class="col-lg-4 col-sm-6">
								<input type="text" value="2500000" id="current_amount" maxlength="8" onchange="currentAmountChange()" />
							</div>
						</div>
						</div>
						<div style="clear:both;"></div>
						<div id="current_amount_slider" style="margin:0px;"></div>
						<div class="steps" id="loanamountsteps">	
							<span style="left: 0%;" class="tick">|<br />
							<span class="marker">1 Lakh</span></span><span style="left: 25%;" class="tick">|<br />
							<span class="marker">25 Lakhs</span></span><span style="left: 50%;" class="tick">|<br />
							<span class="marker">50 Lakhs</span></span><span style="left: 75%;" class="tick">|<br />
							<span class="marker">75 Lakhs</span></span><span style="left: 100%;" class="tick">|<br />
							<span class="marker">1 Crore</span></span>
						</div>
						</div>
						<div class="small_line" style="margin:0px;"></div>
						<div class="inside_emi" style="margin:0px;">
						<div class="sep lint"> 
						<div class="row">
							<div class="col-lg-8 col-sm-6">
								<div style="float:left;" class="ques">Inflation (% per annum)</div>
							</div>
							<div class="col-lg-4 col-sm-6">
								<input type="text" value="6" id="inflation" maxlength="4" onchange="inflationChange()" />
							</div>
						</div>
						</div>
						<div style="clear:both;"></div>
						<div id="inflation_slider" style="margin:0px;"></div>
						<div class="steps">
							<span style="left: 0%;" class="tick">|<br />
							<span class="marker">0</span></span><span style="left: 25%;" class="tick">|<br />
							<span class="marker">5</span></span><span style="left: 50%;" class="tick">|<br />
							<span class="marker">10</span></span><span style="left: 75%;" class="tick">|<br />
							<span class="marker">15</span></span><span style="left: 100%;" class="tick">|<br />
							<span class="marker">20</span></span>
						</div>
						</div>
						<div class="small_line" style="margin:0px;"></div>
						<div class="inside_emi" style="margin:0px;">
						<div class="sep lint"> 
						<div class="row">
							<div class="col-lg-8 col-sm-6">
								<div style="float:left;" class="ques">Number of Years</div>
							</div>
							<div class="col-lg-4 col-sm-6">
								<input type="text" value="10" id="year" maxlength="2" onchange="yearChange()" />
							</div>
						</div>
						</div>
						<div style="clear:both;"></div>
						<div id="year_slider" style="margin:0px;"></div>
						<div class="steps" id="loantermsteps">
							<span style="left: 0%;" class="tick">|<br />
							<span class="marker">0</span></span><span style="left: 13.79%;" class="tick">|<br />
							<span class="marker">5</span></span><span style="left: 31.03%;" class="tick">|<br />
							<span class="marker">10</span></span><span style="left: 48.27%;" class="tick">|<br />
							<span class="marker">15</span></span><span style="left: 65.51%;" class="tick">|<br />
							<span class="marker">20</span></span><span style="left: 82.75%;" class="tick">|<br />
							<span class="marker">25</span></span><span style="left: 100%;" class="tick">|<br />
							<span class="marker">30</span></span>
						</div>
						</div>
						</div> 
			 			</div>
			 		</div>
				   </div>
				   <div class="col-lg-4 col-sm-6">
				   	<div id="emipiechart"></div>
				   	<div class="member mt-40">
		              <div class="member__info text-center">
		                <h5 class="member__name member_detail"><a href="javascript:void(0);">Future Cost</a></h5>
		                <p class="member__job">&#8377; <span id="res_future_amount"></span></p>
		              </div><!-- /.member-info -->
		            </div><!-- /.member -->
				   </div>
				</div>
				<div class="row justify-content-center align-self-center">
					<div class="col-lg-4 col-sm-6">
					   	<div class="member mt-40">
			              <div class="member__info text-center member__info_detail">
			                <h5 class="member__name member_detail"><a href="javascript:void(0)">Current Cost</a></h5>
			                <p class="member__job">&#8377; <span class="text-theme-primary" id="res_current_amount"></span></p>
			              </div><!-- /.member-info -->
			            </div><!-- /.member -->
				   	</div>
				   	<div class="col-lg-4 col-sm-6">
					   	<div class="member mt-40">
			              <div class="member__info text-center member__info_detail">
			                <h5 class="member__name member_detail"><a href="javascript:void(0);">Inflation (% per annum)</a></h5>
			                <p class="member__job"><span class="text-theme-primary" id="res_inflation"></span>%</p>
			              </div><!-- /.member-info -->
			            </div><!-- /.member -->
				   	</div>
				   	<div class="col-lg-4 col-sm-6">
					   	<div class="member mt-40">
			              <div class="member__info text-center member__info_detail">
			                <h5 class="member__name member_detail"><a href="javascript:void(0);">Number of Years</a></h5>
			                <p class="member__job"><span class="text-theme-primary" id="res_year"></span> Years</p>
			              </div><!-- /.member-info -->
			            </div><!-- /.member -->
				   	</div>
				</div>
              </div><!-- /.member-info -->
            </div><!-- /.member -->
          </div><!-- /.col-lg-4 -->
        </div> <!-- /.row -->
      </div><!-- /.container -->
    </section><!-- /.Team layout 1  -->