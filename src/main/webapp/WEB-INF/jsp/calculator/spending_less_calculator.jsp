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
#assetchart {
    border: 1px solid #DDDDDD;
    overflow: hidden;
    margin-bottom:20px;
    text-align:center;
    height:300px;
}
#emipaymentsummary {
    border: 1px solid #DDDDDD;
    margin-bottom:20px;
}
#emitotalinterest {
    border-bottom: 1px dotted #DBDAD7;
    padding: 10px;
    text-align: center;
}
.row-eq-height {
	  display: -webkit-box;
	  display: -webkit-flex;
	  display: -ms-flexbox;
	  display: flex;
	}
#emitotalamount {
    padding: 10px;
    text-align: center;
}
#emipaymentsummary h4 {
    color: #888888;
    font-size:12px;
    margin-bottom:10px;
    margin-top:0px;
}
#emipaymentsummary p {
    font-size: 14px;
    font-weight: bold;
    margin:0px;
}
			   .btn-primary {
    background-color: #d90d15;
}
.centerPageH1{
	margin-bottom:20px;
}
.download_calc{
	padding:10px;
	text-align:center;
}
.marginRight5 {
    margin-right: 5px;
}
.width220 {
    width: 220px;
}
.float-left {
    float: left;
}
.color-khojorange{
    color: #f59c1a;
}
#emipiechart {
	min-width: 310px;
    max-width: 1200px;
    height: 380px;
    margin: 0 auto;
   
  }
.table td, .table th {

    white-space: nowrap;
}
#res_total_spending_amount,#res_total_years,#res_total_savings_amount{
color:#262a5a;
}
.card{
	padding:20px;
	border-radius:0px;
}
.form-control {
    display: block;
    width: 100%;
    padding: 0.65rem 1.25rem;
    font-size: 12px;
    font-weight: 400;
    line-height: 1.5;
    color: #718096;
    background-color: #ffffff;
    background-clip: padding-box;
    border: 1px solid #cbd5e0;
    appearance: none;
    border-radius: 0.25rem;
    transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
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
var shares_assets = "";
var fixed_income_assets = "";
var cash_bank_assets = "";
var property_assets = "";
var gold_assets = "";
var others_assets = "";
var home_loan = "";
var personal_loan = "";
var income_tax = "";
var outstanding_bills = "";
var credit_card = "";
var other_liabilities = "";

$(document).ready(function(){
	calulateSpending();
});

function calulateSpending()
{
	var current_age = $( "#current_age_txt" ).val();
	var retire_age = $( "#retire_age_txt" ).val();
	var savings_interest_rate = $( "#savings_interest_rate_txt" ).val();
	var income_tax_rate = $( "#income_tax_rate_txt" ).val();
	var inflation_rate = $( "#inflation_rate_txt" ).val();
	
	var purchase_house = $( "#purchase_house_txt" ).val();
	var home_loan = $( "#home_loan_txt" ).val();
	var buy_car = $( "#buy_car_txt" ).val();
	var eating_out_less = $( "#eating_out_less_txt" ).val();
	var lifestyle_spend = $( "#lifestyle_spend_txt" ).val();
	var holidays = $( "#holidays_txt" ).val();
	var transport = $( "#transport_txt" ).val();
	var credit_card = $( "#credit_card_txt" ).val();
	var personal_loan = $( "#personal_loan_txt" ).val();
	var shopping = $( "#shopping_txt" ).val();
	
	current_age = $.trim(current_age);
	retire_age = $.trim(retire_age);
	savings_interest_rate = $.trim(savings_interest_rate);
	income_tax_rate = $.trim(income_tax_rate);
	inflation_rate = $.trim(inflation_rate);
	
	purchase_house = $.trim(purchase_house);
	home_loan = $.trim(home_loan);
	buy_car = $.trim(buy_car);
	eating_out_less = $.trim(eating_out_less);
	lifestyle_spend = $.trim(lifestyle_spend);
	holidays = $.trim(holidays);
	transport = $.trim(transport);
	credit_card = $.trim(credit_card);
	personal_loan = $.trim(personal_loan);
	shopping = $.trim(shopping);
	
	if(current_age == "" || isNaN(current_age) || current_age < 0)
	{
		bootbox.alert("Please enter the valid current age");
		
		return false;
	}
	if(retire_age == "" || isNaN(retire_age) || retire_age < 0)
	{
		bootbox.alert("Please enter the valid retire age");
		
		return false;
	}
	if(savings_interest_rate == "" || isNaN(savings_interest_rate) || savings_interest_rate < 0 || savings_interest_rate > 20)
	{
		bootbox.alert("Please enter the savings interest rate less than 20");
		
		return false;
	}
	if(income_tax_rate == "" || isNaN(income_tax_rate) || income_tax_rate < 0 || income_tax_rate > 20)
	{
		bootbox.alert("Please enter the income tax interest rate less than 20");
		
		return false;
	}
	if(inflation_rate == "" || isNaN(inflation_rate) || inflation_rate < 0 || inflation_rate > 15)
	{
		bootbox.alert("Please enter the inflation rate less than 15");
		
		return false;
	}
	if(purchase_house == "")
	{
		purchase_house = 0;
	}else
	{
		if(isNaN(purchase_house) || purchase_house < 0)
		{
			bootbox.alert("Please enter the valid amount for purchase of a house/flat");
			
			return false;
		}
	}
	if(home_loan == "")
	{
		home_loan = 0;
	}else
	{
		if(isNaN(home_loan) || home_loan < 0)
		{			
			bootbox.alert("Please enter the valid amount for reducing the Home Loan EMI");
			
			return false;
		}
	}
	if(buy_car == "")
	{
		buy_car = 0;
	}else
	{
		if(isNaN(buy_car) || buy_car < 0)
		{
			bootbox.alert("Please enter the valid amount for buy a new car");
			
			return false;
		}
	}
	if(eating_out_less == "")
	{
		eating_out_less = 0;
	}else
	{
		if(isNaN(eating_out_less) || eating_out_less < 0)
		{
			bootbox.alert("Please enter the valid amount for eating out less with family");
			
			return false;
		}
	}
	if(lifestyle_spend == "")
	{
		lifestyle_spend = 0;
	}else
	{
		if(isNaN(lifestyle_spend) || lifestyle_spend < 0)
		{
			bootbox.alert("Please enter the valid amount for reduce lifestyle spending");
			
			return false;
		}
	}
	if(holidays == "")
	{
		holidays = 0;
	}else
	{
		if(isNaN(holidays) || holidays < 0)
		{
			bootbox.alert("Please enter the valid amount for taking fewer holidays");
			
			return false;
		}
	}
	if(transport == "")
	{
		transport = 0;
	}else
	{
		if(isNaN(transport) || transport < 0)
		{
			bootbox.alert("Please enter the valid amount for taking public transport");
			
			return false;
		}
	}
	if(credit_card == "")
	{
		credit_card = 0;
	}else
	{
		if(isNaN(credit_card) || credit_card < 0)
		{
			bootbox.alert("Please enter the valid amount for reducing the credit card interest");
			
			return false;
		}
	}
	if(personal_loan == "")
	{
		personal_loan = 0;
	}else
	{
		if(isNaN(personal_loan) || personal_loan < 0)
		{
			bootbox.alert("Please enter the valid amount for closing the personal loan");
			
			return false;
		}
	}
	if(shopping == "")
	{
		shopping = 0;
	}else
	{
		if(isNaN(shopping) || shopping < 0)
		{
			bootbox.alert("Please enter the valid amount for doing less shopping");
			
			return false;
		}
	}
	current_age = parseInt(current_age);
	retire_age = parseInt(retire_age);
	savings_interest_rate = parseFloat(savings_interest_rate,10);
	income_tax_rate = parseFloat(income_tax_rate,10);
	inflation_rate = parseFloat(inflation_rate,10);
	
	purchase_house = parseInt(purchase_house);
	home_loan = parseInt(home_loan);
	buy_car = parseInt(buy_car);
	eating_out_less = parseInt(eating_out_less);
	lifestyle_spend = parseInt(lifestyle_spend);
	holidays = parseInt(holidays);
	transport = parseInt(transport);
	credit_card = parseInt(credit_card);
	personal_loan = parseInt(personal_loan);
	shopping = parseInt(shopping);
	
	var savings_rate_with_tax = savings_interest_rate - ((income_tax_rate * savings_interest_rate)/100);
	var savings_rate_with_inflation = (((1 + savings_rate_with_tax/100) /(1 + inflation_rate/100)) - 1) * 100;
	var total_spending_amount = purchase_house + home_loan + buy_car + eating_out_less + lifestyle_spend + holidays + transport + credit_card + personal_loan + shopping;
	var age_diff = retire_age - current_age;
	var total_savings_amount = 0;
	
	for(var i=1;i<=age_diff;i++)
	{
		if(i == 1)
		{
			total_savings_amount = Math.round(total_spending_amount * ((savings_rate_with_inflation/100) + 1) * 100)/100;
		}else
		{
			total_savings_amount = Math.round(total_savings_amount + ((total_savings_amount * savings_rate_with_inflation)/100));
		}
	}
	
	$( "#res_total_spending_amount" ).html(numbersWithComma(total_spending_amount));
	$( "#res_total_years" ).html(age_diff);
	$( "#res_total_savings_amount" ).html(numbersWithComma(total_savings_amount));
    renderChart(total_spending_amount,total_savings_amount);
}
/* function renderChart(amount,total_interest)
{	
	$('#assetchart').highcharts({
		colors: ['#E5BF34', '#107DB5', '#FF8900', '#DDDF00', '#24CBE5', '#64E572', '#FF9655', '#FFF263', '#6AF9C4'],
      chart: {
          plotBackgroundColor: null,
          plotBorderWidth: null,
          plotShadow: false
      },
      title: {
          text: 'Break-up of Total Future Value'
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
              ['Invested Amount', amount],
              {
                  name: 'Total Earnings',
                  y: total_interest,
                  sliced: true,
                  selected: true
              }
          ]
      }]
  });
} */

function renderChart(total_spending_amount,total_savings_amount)
{
	total_spending_amount = parseFloat(total_spending_amount);
	total_savings_amount = parseFloat(total_savings_amount);
	/* total_amount = parseFloat(total_savings_amount) */
	total_savings_amount = numbersWithComma(total_savings_amount); 
	
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
	    	formatter:function(){
	            return this.key+ ': Rs. ' + numbersWithComma(this.y) + '';
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
	        name: 'Amount Invested',
	        y: 78,
	      }, {
	        name: 'Total Earnings',
	        y: 22
	      }]
	    }]
	  });
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
var download_text = "";
function downloadResult()
{
	download_text = "download";
	
}
function emailResult()
{
	download_text = "email";
	
}
function init_download(email)
{
	var current_age = $( "#current_age_txt" ).val();
	var retire_age = $( "#retire_age_txt" ).val();
	var savings_interest_rate = $( "#savings_interest_rate_txt" ).val();
	var income_tax_rate = $( "#income_tax_rate_txt" ).val();
	var inflation_rate = $( "#inflation_rate_txt" ).val();

	var purchase_house = $( "#purchase_house_txt" ).val();
	var home_loan = $( "#home_loan_txt" ).val();
	var buy_car = $( "#buy_car_txt" ).val();
	var eating_out_less = $( "#eating_out_less_txt" ).val();
	var lifestyle_spend = $( "#lifestyle_spend_txt" ).val();
	var holidays = $( "#holidays_txt" ).val();
	var transport = $( "#transport_txt" ).val();
	var credit_card = $( "#credit_card_txt" ).val();
	var personal_loan = $( "#personal_loan_txt" ).val();
	var shopping = $( "#shopping_txt" ).val();

	var res_total_spending_amount = $( "#res_total_spending_amount" ).html();
	var res_total_years = $( "#res_total_years" ).html();
	var res_total_savings_amount = $( "#res_total_savings_amount" ).html();
	
	purchase_house = numbersWithComma(purchase_house);
	home_loan = numbersWithComma(home_loan);
	buy_car = numbersWithComma(buy_car);
	eating_out_less = numbersWithComma(eating_out_less);
	lifestyle_spend = numbersWithComma(lifestyle_spend);
	holidays = numbersWithComma(holidays);
	transport = numbersWithComma(transport);
	credit_card = numbersWithComma(credit_card);
	personal_loan = numbersWithComma(personal_loan);
	shopping = numbersWithComma(shopping);
	var calc_url = window.location.href;
	
	if(download_text == "download")
	{
		var param = "?current_age="+current_age+"&retire_age="+retire_age+"&savings_interest_rate="+savings_interest_rate+"&income_tax_rate="+income_tax_rate+"&inflation_rate="+inflation_rate;
		param += "&purchase_house="+purchase_house+"&home_loan="+home_loan+"&buy_car="+buy_car+"&eating_out_less="+eating_out_less+"&lifestyle_spend="+lifestyle_spend+"&holidays="+holidays;
		param += "&transport="+transport+"&credit_card="+credit_card+"&personal_loan="+personal_loan+"&shopping="+shopping+"&res_total_spending_amount="+res_total_spending_amount;
		param += "&res_total_years="+res_total_years+"&res_total_savings_amount="+res_total_savings_amount+"&url="+calc_url;
		
		var url = '<c:url value="/downloadSpendingLessCalcResult" />'+param;
		window.location = url;
		
		
        setTimeout(function(){
        	 bootbox.alert("Thanks for the Download.");
        	 
    	},1000);
	}else{
		
		$.ajaxSetup({async:true});
    	$.post(curl + "sendSpendingLessCalcResult", {email : ""+txtemail+"",current_age : ""+current_age+"",retire_age : ""+retire_age+"",
    		savings_interest_rate : ""+savings_interest_rate+"",income_tax_rate : ""+income_tax_rate+"",inflation_rate : ""+inflation_rate+"",purchase_house : ""+purchase_house+"",
    		home_loan : ""+home_loan+"",buy_car : ""+buy_car+"",eating_out_less : ""+eating_out_less+"",lifestyle_spend : ""+lifestyle_spend+"",
    		holidays : ""+holidays+"",transport : ""+transport+"",credit_card : ""+credit_card+"",
    		personal_loan : ""+personal_loan+"",shopping : ""+shopping+"",res_total_spending_amount : ""+res_total_spending_amount+"",res_total_years : ""+res_total_years+"",
    		res_total_savings_amount : ""+res_total_savings_amount+"",url : ""+ calc_url +""}, function(data)
        {
    		
    			var result1 = $.trim(data);
             	var obj = jQuery.parseJSON(result1);
             	if(obj.status == 400)
             	{
             		bootbox.alert(obj.msg);
                   
             		return false;
             	}
             	
                    setTimeout(function(){
                    bootbox.alert("Thanks. We sent an email to your mail id");
                    
         	    },1000);	
    		
        }, "text");
	}
}
$(document).ready(function()
{	
   /*  $(".send_email_form").find("input").jqBootstrapValidation(
    {
		preventSubmit: true,
		submitSuccess: function($form, event) {
		    event.preventDefault();
		    
		    var radio_value = $("input[type='radio'][name='inves_calc']:checked").val();
			if(radio_value == undefined)
			{
				bootbox.alert("Please choose Are you an Investor or Advisor?");
			    
		   	 	return false;
			}
		    var email = $("#send_email_id").val();
		    if(email == "")
		    {
		   		 bootbox.alert("Please enter email address!");
	        	 
		   		 return false;
		    }
		    if(!validateEmail(email))
		    {
		    	bootbox.alert("Please enter valid email address!");
	        	
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
	   	        	bootbox.alert("Please enter valid email address!");
		        	
	   	       	 	return false;
	   	        }
	   	    }, "text");
		    
		    if(flag == true)
	    	{
		    	return false;
	    	}
		   	
		    var page = "Spending Less Calculator - "+download_text;
		    
		    $.ajaxSetup({async:false});
			$.post("/subscribeForEmail", {email : "" + email + "", user_type : "" + radio_value + "", page : "" + page + "" }, function(data)
		    {
		    }, "text");
		    
		    init_download(email);
		}
    }); */
});
</script>
<main>

        
        <section class="page-title page-title-layout5">
      <div class="bg-img"><img src="/images/backgrounds/6.jpg" alt="background"></div>
      <div class="container">
        <div class="row">
          <div class="col-12">
            <h1 class="pagetitle__heading"> Spending Less Calculator</h1>
            <nav>
              <ol class="breadcrumb mb-0">
                <li class="breadcrumb-item"><a href="/">Home</a></li>
                <li class="breadcrumb-item"><a href="/tools-and-calculators/become-a-crorepati">Tools & Calculators</a></li>
                <li class="breadcrumb-item active" aria-current="page"> Spending Less Calculator</li>
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
						<div class="table-responsive" id="input_table">
   	<table class="table table-striped table-bordered table-hover" cellspacing="0" width="100%" style="margin:0px !important;">
   	<thead>
   	<tr>
   	<th colspan="2">Personal Details</th>
   	</tr>
   	</thead>
   	<tbody>
	<tr class="networth">
		<td style="vertical-align: middle;">Your Current age (in years)</td>
		<td>
			<div class="form-group"> 
            	<input id="current_age_txt" value="25" maxlength="2" type="text" class="float-left form-control no-radius marginRight5" style="width:180px;" placeholder="Enter your current age"><span class="color-khojorange"> </span>
          	</div>
		</td>
	</tr>
	<tr class="networth">
		<td style="vertical-align: middle;">Age at which you want to retire (in years)</td>
		<td>
			<div class="form-group"> 
            	<input id="retire_age_txt" value="60" maxlength="2" type="text" class="float-left form-control no-radius marginRight5" style="width:180px;" placeholder="Enter the age at which you want to retire"><span class="color-khojorange"> </span>
          	</div>
		</td>
	</tr>
	<tr class="networth">
		<td style="vertical-align: middle;">Savings or interest rate of your current <br>investments (% per annum)</td>
		<td>
			<div class="form-group"> 
            	<input id="savings_interest_rate_txt" value="12" maxlength="4" type="text" class="float-left form-control no-radius marginRight5" style="width:180px;" placeholder="Enter the Savings or interest rate of your current investments"><span class="color-khojorange"> </span>
          	</div>
		</td>
	</tr>
	<tr class="networth">
		<td style="vertical-align: middle;">Income Tax rate (% per annum)</td>
		<td>
			<div class="form-group"> 
            	<input id="income_tax_rate_txt" value="7" maxlength="4" type="text" class="float-left form-control no-radius marginRight5" style="width:180px;" placeholder="Enter the Income Tax rate"><span class="color-khojorange"> </span>
          	</div>
		</td>
	</tr>
	<tr class="networth">
	    <td style="vertical-align: middle;">Current Inflation rate (% per annum)</td>
	    <td>
	    	<div class="form-group"> 
            	<input id="inflation_rate_txt" value="5" maxlength="4" type="text" class="float-left form-control no-radius marginRight5" style="width:180px;" placeholder="Enter Current Inflation rate"><span class="color-khojorange"> </span>
          	</div>
	    </td>
	</tr>
	</tbody>
	</table>
	
	
	<table class="table table-striped table-bordered table-hover" cellspacing="0" width="100%" style="margin-top:0px !important;">
   	<thead>
   	<tr>
   	<th colspan="2">Spending Details</th>
   	</tr>
   	</thead>
   	<tbody>
	<tr class="networth">
	    <td style="vertical-align: middle;">Deferring purchase of a house / flat (Rs.)</td>
	    <td>
	    	<div class="form-group"> 
            	<input id="purchase_house_txt" value="500000" maxlength="7" type="text" class="float-left form-control no-radius marginRight5" style="width:180px;" placeholder="Enter the amount"><span class="color-khojorange"> </span>
          	</div>
	    </td>
	</tr>
	<tr class="networth">
	    <td style="vertical-align: middle;">Reducing the Home Loan EMI (Rs.)</td>
	    <td>
	    	<div class="form-group"> 
            	<input id="home_loan_txt" value="30000" maxlength="7" type="text" class="float-left form-control no-radius marginRight5" style="width:180px;" placeholder="Enter the amount"><span class="color-khojorange"> </span>
          	</div>
	    </td>
	</tr>
	<tr class="networth">
	    <td style="vertical-align: middle;">Waiting to buy a new car (Rs.)</td>
	    <td>
	    	<div class="form-group"> 
            	<input id="buy_car_txt" value="300000" maxlength="7" type="text" class="float-left form-control no-radius marginRight5" style="width:180px;" placeholder="Enter the amount"><span class="color-khojorange"> </span>
          	</div>
	    </td>
	</tr>
	<tr class="networth">
	    <td style="vertical-align: middle;">Eating out less with family (Rs.)</td>
	    <td>
	    	<div class="form-group"> 
            	<input id="eating_out_less_txt" value="25000" maxlength="7" type="text" class="float-left form-control no-radius marginRight5" style="width:180px;" placeholder="Enter the amount"><span class="color-khojorange"> </span>
          	</div>
	    </td>
	</tr>
	<tr class="networth">
	    <td style="vertical-align: middle;">Reduce lifestyle spending (Rs.)</td>
	    <td>
	    	<div class="form-group"> 
            	<input id="lifestyle_spend_txt" value="25000" maxlength="7" type="text" class="float-left form-control no-radius marginRight5" style="width:180px;" placeholder="Enter the amount"><span class="color-khojorange"> </span>
          	</div>
	    </td>
	</tr>
	<tr class="networth">
	    <td style="vertical-align: middle;">Taking fewer holidays (Rs.)</td>
	    <td>
	    	<div class="form-group"> 
            	<input id="holidays_txt" value="10000" maxlength="7" type="text" class="float-left form-control no-radius marginRight5" style="width:180px;" placeholder="Enter the amount"><span class="color-khojorange"> </span>
          	</div>
	    </td>
	</tr>
	<tr class="networth">
	    <td style="vertical-align: middle;">Taking public transport (Rs.)</td>
	    <td>
	    	<div class="form-group"> 
            	<input id="transport_txt" value="10000" maxlength="7" type="text" class="float-left form-control no-radius marginRight5" style="width:180px;" placeholder="Enter the amount"><span class="color-khojorange"> </span>
          	</div>
	    </td>
	</tr>
	<tr class="networth">
	    <td style="vertical-align: middle;">Reducing the credit card interest (Rs.)</td>
	    <td>
	    	<div class="form-group"> 
            	<input id="credit_card_txt" value="30000" maxlength="7" type="text" class="float-left form-control no-radius marginRight5" style="width:180px;" placeholder="Enter the amount"><span class="color-khojorange"> </span>
          	</div>
	    </td>
	</tr>
	<tr class="networth">
	    <td style="vertical-align: middle;">Closing the personal loan (Rs.)</td>
	    <td>
	    	<div class="form-group"> 
            	<input id="personal_loan_txt" value="20000" maxlength="7" type="text" class="float-left form-control no-radius marginRight5" style="width:180px;" placeholder="Enter the amount"><span class="color-khojorange"> </span>
          	</div>
	    </td>
	</tr>
	<tr class="networth">
	    <td style="vertical-align: middle;">Doing less shopping (Rs.)</td>
	    <td>
	    	<div class="form-group"> 
            	<input id="shopping_txt" value="10000" maxlength="7" type="text" class="float-left form-control no-radius marginRight5" style="width:180px;" placeholder="Enter the amount"><span class="color-khojorange"> </span>
          	</div>
	    </td>
	</tr>
	<tr id="submit_btn_row">
	    <td colspan="2"><div class="text_center"><a onclick="calulateSpending()" class="btn btn-primary" href="javascript:void(0)">Submit</a></div></td>
	</tr>
	</tbody>
	</table>
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
                                                <span class="h6">By reducing your spending you will save this amount each year</span>
                                            	<p class="text-muted text-sm mt-0 mb-0  d-lg-block">Rs. <span id="res_total_spending_amount"></span></p>
                                            </div>
                                        </li>
                                       <li class="list-group-item bg-transparent">
                                            <div class="row">
                                                <span class="h6">Number of Years</span>
                                            	<p class="text-muted text-sm mt-0 mb-0  d-lg-block"><span id="res_total_years"></span> Years</p>
                                            </div>
                                        </li>
                                        <li class="list-group-item bg-transparent">
                                            <div class="row">
                                                <span class="h6">If you invest this amount, you will accumulate this amount by the time you retire</span>
                                            	<p class="text-muted text-sm mt-0 mb-0  d-lg-block">Rs. <span id="res_total_savings_amount"></span></p>
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