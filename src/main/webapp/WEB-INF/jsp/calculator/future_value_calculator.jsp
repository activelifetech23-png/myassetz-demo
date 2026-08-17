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
.mf_content{
	margin-top: 50px;
    margin-bottom: 50px;
}

.row-eq-height {
	  display: -webkit-box;
	  display: -webkit-flex;
	  display: -ms-flexbox;
	  display: flex;
	}
.inside_emi{
	padding:10px;
}
.small_line{
	border-bottom: 1px solid #cecece;
	clear: both;
}
/* #emi {
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
.download_calc{
	padding:10px;
	text-align:center;
}
.margintop20
{
margin-top:20px;
}
#res_current_amount,#res_inflation,#res_year,#res_future_amount{
	color:#1462af;
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

text.highcharts-title {
    font-size: 13px !important;
    font-weight: bold !important;
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
.calculator-ans {
    display: flex;
    flex-direction: column;
    -moz-box-pack: justify;
    justify-content: inherit;
    width: 45%;
    padding: 0px 25px;
    }
.calculator-head {
    font-size: 12px;
    margin-top: 12px;
    font-weight: 600;
}
#res_current_amount,#res_inflation,#res_term,#res_year{
color:#262a5a;
}
#res_future_amount{
color:#f47f36
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

$(document).ready(function(){
	
	$("#current_amount_slider").ionRangeSlider({
	    min: 100000,
	    max: 10000000,
	    from: 2500000,
	    step: 1000,
	    hide_min_max: true,
	    hide_from_to: true,
	    onChange: function (data) {
            $("#current_amount").val("");
            $("#current_amount").val(numbersWithComma(data.from));
        },
	    onFinish: function (data) {
            $("#current_amount").val("");
            $("#current_amount").val(numbersWithComma(data.from));
            calculateFutureValue();
        }
	});

	$("#inflation_slider").ionRangeSlider({
	    min: 5,
	    max: 20,
	    from: 6,
	    step: 0.1,
	    hide_min_max: true,
	    hide_from_to: true,
	    onChange: function (data) {
            $("#inflation").val("");
            $("#inflation").val(data.from);
        },
	    onFinish: function (data) {
            $("#inflation").val("");
            $("#inflation").val(data.from);
            calculateFutureValue();
        }
	});
	
	$("#year_slider").ionRangeSlider({
	    min: 0,
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
            calculateFutureValue();
        }
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
	var slider = $("#current_amount_slider").data("ionRangeSlider");
	slider.update({
	    from: current_amount
	});
	calculateFutureValue();
}
function inflationChange()
{
	var inflation = $('#inflation').val();
	var slider = $("#inflation_slider").data("ionRangeSlider");
	slider.update({
	    from: inflation
	});
	calculateFutureValue();
}
function yearChange()
{
	var year = $('#year').val();
	var slider = $("#year_slider").data("ionRangeSlider");
	slider.update({
	    from: year
	});
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
	
	current_amount = current_amount.replace(/,/g,'');
	
	current_amount = parseInt(current_amount);
	inflation = parseFloat(inflation,10);
	year = parseInt(year);
	
	var future_amount = 0;
	
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
/* function renderChart(current_amount,future_amount)
{
	current_amount = parseFloat(current_amount);
	future_amount = parseFloat(future_amount);
	
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
 */
 
 function renderChart(current_amount,future_amount)
 {
 	current_amount = parseFloat(current_amount);
 	future_amount = parseFloat(future_amount);
 	
 	future_amount = numbersWithComma(future_amount); 
 	
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
 	        name: 'Current Cost',
 	        y: 78,
 	      }, {
 	        name: 'Future Cost',
 	        y: 22
 	      }]
 	    }]
 	  });
 }

function getRoboData()
{
	var age = 25;
	var amount = $("#current_amount").val();
	var horizon = $("#year").val();
	var risk = "Aggressive";
	
	top.location = "/mutual-funds-research/robo-advisor?age="+age+"&amount="+amount+"&horizon="+horizon+"&risk="+risk;
}

function downloadResult()
{
	
	var current_amount = $('#current_amount').val();
	var inflation = $('#inflation').val();
	var year = $('#year').val();
	

	var res_current_amount = $( "#res_current_amount" ).html();
	var res_inflation = $( "#res_inflation" ).html();
	var res_year = $( "#res_year" ).html();
	var res_future_amount = $( "#res_future_amount" ).html();
	
	/* principal = numbersWithComma(principal); */
	var calc_url = window.location.href;
	
	
		var param = "?current_amount="+current_amount+"&inflation="+inflation+"&year="+year;
		param += "&res_current_amount="+res_current_amount+"&res_inflation="+res_inflation+"&res_year="+res_year+"&res_future_amount="+res_future_amount+"&url="+calc_url;
		
		var url = '<c:url value="/tools-and-calculators/downloadFutureValueCalcResult" />'+param;
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
            <h1 class="pagetitle__heading"> Future value Calculator</h1>
            <nav>
              <ol class="breadcrumb mb-0">
                <li class="breadcrumb-item"><a href="/">Home</a></li>
                <li class="breadcrumb-item"><a href="/tools-and-calculators/become-a-crorepati">Tools & Calculators</a></li>
                <li class="breadcrumb-item active" aria-current="page"> Future value Calculator</li>
              </ol>
            </nav>
          </div><!-- /.col-12 -->
        </div><!-- /.row -->
      </div><!-- /.container -->
    </section><!-- /.page-title -->

        <!-- Section -->
        <section class="section pt-5">
            <div class="container">
                <div class="row justify-content-lg-between">
                <div class="col-lg-7 wow fadeInRight" data-wow-duration="0.5s" data-wow-delay="0.1s">
                        <div class="row calculator">
                            <div class="col-sm-12 my-3 row-eq-height">
                                <div class="card card-body px-4 pb-0 hover-top shadow-only-hover">
                                    <p class="m-0 pb-2">
                                    	Current Cost (Rs)
                                    </p>
                                    <p class="m-0">
                                    	<input type="text" class="form-control" value="25,00,000" id="current_amount" class="textbox number" maxlength="10" onchange="currentAmountChange()" />
                                    </p>
                                    <p class="m-0">
                                    	<input type="text" id="current_amount_slider" name="current_amount_slider" value="" />
                                    </p>
                                </div>
                            </div>
                            
                            <div class="col-sm-12 my-3 row-eq-height">
                                <div class="card card-body px-4 pb-0 hover-top shadow-only-hover">
                                    <p class="m-0 pb-2">
                                    	Inflation (% per annum)
                                    </p>
                                    <p class="m-0">
                                    	<input type="text" class="form-control" value="6" id="inflation" class="textbox" maxlength="4" onchange="inflationChange()" />
                                    </p>
                                    <p class="m-0">
                                    	<input type="text" id="inflation_slider" name="inflation_slider" value="" />
                                    </p>
                                </div>
                            </div>
                            
                             <div class="col-sm-12 my-3 row-eq-height">
                                <div class="card card-body px-4 pb-0 hover-top shadow-only-hover">
                                    <p class="m-0 pb-2">
                                    	Number of Years
                                    </p>
                                    <p class="m-0">
                                    	<input type="text" class="form-control" value="10" id="year" class="textbox" maxlength="2" onchange="yearChange()" />
                                    </p>
                                    <p class="m-0">
                                    	<input type="text" id="year_slider" name="year_slider" value="" />
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
                                                <span class="h6">Current Cost</span>
                                            	<p class="text-muted text-sm mt-0 mb-0  d-lg-block">Rs. <span id="res_current_amount"></span></p>
                                            </div>
                                        </li>
                                       <li class="list-group-item bg-transparent">
                                            <div class="row">
                                                <span class="h6">Inflation (% per annum)</span>
                                            	<p class="text-muted text-sm mt-0 mb-0  d-lg-block"><span id="res_inflation"></span> %</p>
                                            </div>
                                        </li>
                                        <li class="list-group-item bg-transparent">
                                            <div class="row">
                                                <span class="h6">Number of Years</span>
                                            	<p class="text-muted text-sm mt-0 mb-0  d-lg-block"><span id="res_year"></span> Years</p>
                                            </div>
                                        </li>
                                        <li class="list-group-item bg-transparent">
                                            <div class="row">
                                                <span class="h6">Future Cost</span>
                                            	<p class="text-muted text-sm mt-0 mb-0  d-lg-block">Rs. <span id="res_future_amount"></span></p>
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