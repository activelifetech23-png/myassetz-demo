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
.inside_emi{
	padding:10px;
}
.small_line{
	border-bottom: 1px solid #cecece;
	clear: both;
}
.inside_head {
    font-size: 12px;
    margin-top: 9px;
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
    margin-top: -4px;
    margin-bottom: 6px;
}

.card-header {
    background-color: #9f332f;
    color: #fff;
}
.service-box:after {
    background: #9c5553;
}

.inside_head_textbox {
    text-align: right;
    margin-top: 16px;
}
/* #emi {
    box-shadow: 0 0 5px 0 rgba(213, 213, 213, 1) inset;
} */
/* #emipaymentsummary {
    border: 1px solid #DDDDDD;
    margin-bottom:20px;
} */
#res_asset_allocation
{
	background-color:#9f332f;
	color:#ffffff;
	text-align:center;
	padding:5px;
	font-weight:bold;
	width:100%;
	margin:auto;
	font-size:12px;
}
/*  #assetchart {
    border: 1px solid #DDDDDD;
    overflow: hidden;
    margin-bottom:20px;
    text-align:center;
    height:400px;
}  */
/* #emiamount, #emitotalinterest {
    border-bottom: 1px dotted #DBDAD7;
    padding: 10px;
    text-align: center;
} */
#emitotalamount {
    padding: 10px;
    text-align: center;
}
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
#emipiechart {
	min-width: 310px;
    max-width: 1200px;
    height: 380px;
    margin: 0 auto;
}

text.highcharts-title {
    font-size: 13px !important;
    font-weight: bold !important;
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
.btn-submit{
	background-color: #003399;
	border:1px solid #003399;
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
</style>

<script type="text/javascript">

var debt = 0;
var equity = 0;
var age = 3;
var risk = 3;
var horizon = 2;
var believe = 2;

$(document).ready(function(){

	$("#slider_age").ionRangeSlider({
	    grid: true,
	    from: 2,	    
	    values: ["21-30 yrs", "31-45 yrs", "46-60 yrs", "> 60 yrs"],
	    hide_min_max: true,
	    hide_from_to: true,
	    onChange: function (data) {
            $("#asset_age").val("");
            var txt = "";
            if(data.from == 0)
            {
            	txt = "21-30 yrs";
            }
            if(data.from == 1)
            {
            	txt = "31-45 yrs";
            }
            if(data.from == 2)
            {
            	txt = "46-60 yrs";
            }
            if(data.from == 3)
            {
            	txt = "> 60 yrs";
            }
            $("#asset_age").val(txt);
        },
	    onFinish: function (data) {
            $("#asset_age").val("");
            var txt = "";
            if(data.from == 0)
            {
            	txt = "21-30 yrs";
            }
            if(data.from == 1)
            {
            	txt = "31-45 yrs";
            }
            if(data.from == 2)
            {
            	txt = "46-60 yrs";
            }
            if(data.from == 3)
            {
            	txt = "> 60 yrs";
            }
            $("#asset_age").val(txt);
            setSliderValues();
        }
	});  
	
	$("#slider_risk").ionRangeSlider({
	    grid: true,
	    from: 2,	    
	    values: ["Very Low", "Low", "Medium", "High","Very High"],
	    hide_min_max: true,
	    hide_from_to: true,
	    onChange: function (data) {
            $("#asset_risk").val("");
            var txt = "";
            if(data.from == 0)
            {
            	txt = "Very Low";
            }
            if(data.from == 1)
            {
            	txt = "Low";
            }
            if(data.from == 2)
            {
            	txt = "Medium";
            }
            if(data.from == 3)
            {
            	txt = "High";
            }
            if(data.from == 4)
            {
            	txt = "Very High";
            }
            $("#asset_risk").val(txt);
        },
	    onFinish: function (data) {
            $("#asset_risk").val("");
            var txt = "";
            if(data.from == 0)
            {
            	txt = "Very Low";
            }
            if(data.from == 1)
            {
            	txt = "Low";
            }
            if(data.from == 2)
            {
            	txt = "Medium";
            }
            if(data.from == 3)
            {
            	txt = "High";
            }
            if(data.from == 4)
            {
            	txt = "Very High";
            }
            $("#asset_risk").val(txt);
            setSliderValues();
        }
	});  
	
	$("#slider_horizon").ionRangeSlider({
	    grid: true,
	    from: 1,	    
	    values: ["< 2 yrs", "2-5 yrs", "5-10 yrs", "> 10 yrs"],
	    hide_min_max: true,
	    hide_from_to: true,
	    onChange: function (data) {
            $("#asset_horizon").val("");
            var txt = "";
            if(data.from == 0)
            {
            	txt = "< 2 yrs";
            }
            if(data.from == 1)
            {
            	txt = "2-5 yrs";
            }
            if(data.from == 2)
            {
            	txt = "5-10 yrs";
            }
            if(data.from == 3)
            {
            	txt = "> 10 yrs";
            }
            $("#asset_horizon").val(txt);
        },
	    onFinish: function (data) {
            $("#asset_horizon").val("");
            var txt = "";
            if(data.from == 0)
            {
            	txt = "< 2 yrs";
            }
            if(data.from == 1)
            {
            	txt = "2-5 yrs";
            }
            if(data.from == 2)
            {
            	txt = "5-10 yrs";
            }
            if(data.from == 3)
            {
            	txt = "> 10 yrs";
            }
            $("#asset_horizon").val(txt);
            setSliderValues();
        }
	});  
	
	$("#slider_caps").ionRangeSlider({
	    grid: true,
	    from: 1,
	    values: ["Yes", "No, I prefer big companies", "Not sure"],	 
	    hide_min_max: true,
	    hide_from_to: true,
	    onChange: function (data) {
            $("#asset_caps").val("");
            var txt = "";
            if(data.from == 0)
            {
            	txt = "Yes";
            }
            if(data.from == 1)
            {
            	txt = "No, I prefer big companies";
            }
            if(data.from == 2)
            {
            	txt = "Not sure";
            }
            $("#asset_caps").val(txt);
        },
	    onFinish: function (data) {
            $("#asset_caps").val("");
            var txt = "";
            if(data.from == 0)
            {
            	txt = "Yes";
            }
            if(data.from == 1)
            {
            	txt = "No, I prefer big companies";
            }
            if(data.from == 2)
            {
            	txt = "Not sure";
            }
            $("#asset_caps").val(txt);
            setSliderValues();
        }
	});  
	
	setSliderValues();
	
});

function setSliderValues()
{	
	var txt_age = $("#asset_age").val();
	var txt_risk = $("#asset_risk").val();
	var txt_horizon = $("#asset_horizon").val();
	var txt_believe = $("#asset_caps").val();
	
	if(txt_age == "21-30 yrs")
    {
		age = 1;
    }
    if(txt_age == "31-45 yrs")
    {
    	age = 2;
    }
    if(txt_age == "46-60 yrs")
    {
    	age = 3;
    }
    if(txt_age == "> 60 yrs")
    {
    	age = 4;
    }
    
	
	if(txt_risk == "Very Low")
    {
		risk = 1;
    }
    if(txt_risk == "Low")
    {
    	risk = 2;
    }
    if(txt_risk == "Medium")
    {
    	risk = 3;
    }
    if(txt_risk == "High")
    {
    	risk = 4;
    }
    if(txt_risk == "Very High")
    {
    	risk = 5;
    }
    
	if(txt_horizon == "< 2 yrs")
    {
		horizon = 1;
    }
    if(txt_horizon == "2-5 yrs")
    {
    	horizon = 2;
    }
    if(txt_horizon == "5-10 yrs")
    {
    	horizon = 3;
    }
    if(txt_horizon == "> 10 yrs")
    {
    	horizon = 4;
    }
	
	if(txt_believe == "Yes")
    {
		believe = 1;
    }
    if(txt_believe == "No, I prefer big companies")
    {
    	believe = 2;
    }
    if(txt_believe == "Not sure")
    {
    	believe = 3;
    }
    
    calculateAssetValue();
}

function calculateAssetValue()
{	
	var debt = 0;
	var equity = 0;
	var fmp_debt_value = 0;
	var long_term_fixed_value = 0;
	var cash_liquid_value = 0;
	var mid_small_cap_value = 0;
	var large_cap_value = 0;
	
	$.ajaxSetup({async:false});
	$.post("/tools-and-calculators/getAssetAllocationResult", {current_age : "" + age + "",risk_profile : "" + risk + "",investment_horizon : "" + horizon + "",do_you_know : "" + believe + ""}, function(data)
    {
		var result = $.trim(data);
		var obj = jQuery.parseJSON(result);
		
		if(obj.status == 400)
		{
			alert(obj.msg);
			return false;
		}
		
		debt = obj.debt;
		equity = obj.equity;
		fmp_debt_value = obj.fmp_debt_value;
		long_term_fixed_value = obj.long_term_fixed_value;
		cash_liquid_value = obj.cash_liquid_value;
		mid_small_cap_value = obj.mid_small_cap_value;
		large_cap_value = obj.large_cap_value;
		
    },'text');

    renderChart(debt, equity, fmp_debt_value, long_term_fixed_value, cash_liquid_value, mid_small_cap_value, large_cap_value);
}

/* function renderChart(debt, equity, fmp_debt_value, long_term_fixed_value, cash_liquid_value, mid_small_cap_value, large_cap_value)
{
	$('#res_asset_allocation').html("Based on your profile it is suggested to invest " + debt + " % in Debt and " + equity + " % in Equity");
	
	debt = parseFloat(debt);
	equity = parseFloat(equity);
	
	$('#emipiechart').highcharts({
	    chart: {
	        type: 'pie',
	        marginTop:100,
	        marginBottom:0
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
	    credits: {
	          enabled: false
	    },
	    yAxis: {
	        title: {
	            text: '{chart_pie_yAxis}'
	        }
	    },
	    plotOptions: {
	        pie: {
	            shadow: false,
	            center: ['50%', '50%']
	        }
	    },
	    legend: {
	        layout: 'vertical',
	        floating: true,
	        align: 'right',
	        verticalAlign: 'top',
	        symbolPadding: 5,
	        symbolWidth: 10,
	        x:10,
	        y:-10,
	        borderWidth: 1,
	       	borderRadius: 5,
	       	itemStyle: {
	        	  font: 'normal 12px Helvetica Neue, Helvetica, Arial, sans-serif',
	           }
	    },
	    tooltip: {
	        formatter: function () {
	            return '<b>' + this.point.name + '</b>: ' + this.y + ' %';
	        }
	    },
	    series: [{
	        name: 'Debt',
	        data: [{
	        	name: 'FMPs and Debt Funds',
	            y: fmp_debt_value,
	            parentId: 'first',
	            color: '#323946',
	            legendIndex: 1
	        }, {
	        	name: 'Long Term Fixed Income',
	            y: long_term_fixed_value,
	            parentId: 'first',
	            color: '#FFA500',
	            legendIndex: 2
	        }, {
	        	name: 'Cash/Bank FD/Liquid',
	            y: cash_liquid_value,
	            parentId: 'first',
	            color: '#6AF9C4',
	            legendIndex: 3
	        }, {
	        	name: 'Mid-Cap/Small-Cap',
	            y: mid_small_cap_value,
	            parentId: 'second',
	            color: '#00a85b',
	            legendIndex: 5
	        },{
	        	name: 'Large-Caps',
	            y: large_cap_value,
	            parentId: 'second',
	            color: '#0DAFAF',
	            legendIndex: 6
	        }],
	        showInLegend: false,
	        size: '60%',
	        dataLabels: {
	        	enabled: false
	        },
	        showInLegend: true
	    }, {
	        showInLegend: true,
	        name: 'Equity',
	        data: [{
	        	name: 'Debt',
	            id: 'first',
	            color: '#24A3D8',
	            y: debt,
	            legendIndex: 0
	        }, {
	        	name: 'Equity',
	            id: 'second',
	            color: '#323946',
	            y: equity,
	            legendIndex: 4
	        }],
	        size: '80%',
	        innerSize: '60%',
	        dataLabels: {
	        	enabled: false
	        }
	    }]
	});
}  */
function renderChart(debt, equity, fmp_debt_value, long_term_fixed_value, cash_liquid_value, mid_small_cap_value, large_cap_value)
{
 $('#res_asset_allocation').html("Based on your profile it is suggested to invest " + debt + " % in Debt and " + equity + " % in Equity"); 
	debt = parseFloat(debt);
	equity = parseFloat(equity);
	fmp_debt_value = parseFloat(fmp_debt_value);
	long_term_fixed_value = parseFloat(long_term_fixed_value);
	cash_liquid_value = parseFloat(cash_liquid_value);
	mid_small_cap_value = parseFloat(mid_small_cap_value);
	large_cap_value = parseFloat(large_cap_value);
	
	
	$('#emipiechart').highcharts({
		 colors: ['#9f332f', '#054F80', '#29d359', '#5200AA', '#24CBE5', '#d90d15', 
		       '#43433c', '#FFF263', '#6AF9C4'],
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
	    	formatter:function(){
	            return this.key+ ': ' + this.y + '%';
	          },
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
	        name: 'debt',
	        y: debt,
	      },
	      {
		        name: 'equity',
		        y: equity,
		      },
		      {
			        name: 'fmp_debt_value',
			        y: fmp_debt_value,
			      },
			      {
				        name: 'long_term_fixed_value',
				        y: long_term_fixed_value,
				      },
				      {
					        name: 'cash_liquid_value',
					        y: cash_liquid_value,
					      },
					      {
						        name: 'mid_small_cap_value',
						        y: mid_small_cap_value,
						      },{
	        name: 'large_cap_value',
	        y: large_cap_value,
	      }]
	    }]
	  });
} 
</script>
  

  <div class="main-content">

    
     <!-- Section: inner-header -->
    <section class="header_color">
      <div class="container pt-120 pb-20">
        <!-- Section Content -->
        <div class="section-content">
          <div class="row text-center">
            <div class="col-md-12">
              <h2 class="title text-dark">Asset Allocation Calculator</h2>
              <ol class="breadcrumb text-black mt-10">
                <li><a href="#" class="title_header">Home</a></li>
                <li><a href="#" class="title_header">Tools & Calculators</a></li>
                <li class="active ">Asset Allocation Calculator</li>
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
                                    	How many Crores (at current value) you would need to consider yourself wealthy (Rs)
                                    </p>
                                    <p class="m-0">
                                    	<input type="text" class="form-control" value="46-60 yrs" id="asset_age" class="textbox" />
                                    </p>
                                    <p class="m-0">
                                    	<input type="text" id="slider_age" name="slider_age" value="" />
                                    </p>
                                </div>
                            </div>

                            <div class="col-sm-12 my-3">
                                <div class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                    <p class="m-0 pb-2">
                                    	How much risk you can take?
                                    </p>
                                    <p class="m-0">
                                    	<input type="text" class="form-control" value="Medium" id="asset_risk" class="textbox" />
                                    </p>
                                    <p class="m-0">
                                    	<input type="text" id="slider_risk" name="slider_risk" value="" />
                                    </p>
                                </div>
                            </div>
                            
                            <div class="col-sm-12 my-3">
                                <div class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                    <p class="m-0 pb-2">
                                    	Your investment Horizon (Years)
                                    </p>
                                    <p class="m-0">
                                    	<input type="text" class="form-control" value="2-5 yrs" id="asset_horizon" class="textbox" />
                                    </p>
                                    <p class="m-0">
                                    	<input type="text" id="slider_horizon" name="slider_horizon" value="" />
                                    </p>
                                </div>
                            </div>
                            
                            <div class="col-sm-12 my-3">
                                <div class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                    <p class="m-0 pb-2">
                                    	Do you know that mid and small caps generate better return in logn term
                                    </p>
                                    <p class="m-0">
                                    	<input type="text" class="form-control" value="No, I prefer big companies" id="asset_caps" class="textbox" />
                                    </p>
                                    <p class="m-0">
                                    	<input type="text" id="slider_caps" name="slider_caps" value="" />
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
                                            	<div id="emipaymentsummary">
		<div id="res_asset_allocation"></div>
</div>
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