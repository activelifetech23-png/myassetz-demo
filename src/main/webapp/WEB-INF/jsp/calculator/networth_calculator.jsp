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
	margin-top: 70px;
    margin-bottom: 50px;
}
tr.networth td {
    width: 50%;
}
#assetchart {
    border: 1px solid #DDDDDD;
    overflow: hidden;
    margin-bottom:20px;
    text-align:center;
    height:300px;
}
.row-eq-height {
	  display: -webkit-box;
	  display: -webkit-flex;
	  display: -ms-flexbox;
	  display: flex;
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
    font-size: 12px;
    font-weight: bold;
    margin:0px;
}
.centerPageH1{
	margin-bottom:20px;
}
.download_calc{
	padding:10px;
	text-align:center;
}
.table-responsive{
    font-size: 12px;
}
.form-group {
    margin-bottom:0px;
}
.margintop20
{
margin-top:20px;
}
#res_total_assets,#res_total_liabilities,#res_total_networth{
	color:#262a5a;
}
.card{
	padding:20px;
	border-radius:0px;
}
.table td, .table th {

    white-space: nowrap;
}
#emipiechart {
	min-width: 310px;
    max-width: 1200px;
    height: 380px;
    margin: 0 auto;
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
.table {
    width: 100%;
    margin-bottom: 20px;
}
.width220 {
    width: 220px;
}
.marginRight5 {
    margin-right: 5px;
}
.float-left {
    float: left;
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

.list-group-item .row > * {
    flex-shrink: 0;
    width: 100%;
    max-width: 100%;
    padding-right: calc(var(--bs-gutter-x) * .5);
    padding-left: calc(var(--bs-gutter-x) * .5);
    margin-top: var(--bs-gutter-y);
    font-weight: 700;
}
.btn-primary {
    background-color: #27A840;
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
	calulate_assets();
});

function calulate_assets()
{
	shares_assets = $( "#shares_assets_txt" ).val();
	fixed_income_assets = $( "#fixed_income_assets_txt" ).val();
	cash_bank_assets = $( "#cash_bank_assets_txt" ).val();
	property_assets = $( "#property_assets_txt" ).val();
	gold_assets = $( "#gold_assets_txt" ).val();
	others_assets = $( "#others_assets_txt" ).val();
	
	home_loan = $( "#home_loan_txt" ).val();
	personal_loan = $( "#personal_loan_txt" ).val();
	income_tax = $( "#income_tax_txt" ).val();
	outstanding_bills = $( "#outstanding_bills_txt" ).val();
	credit_card = $( "#credit_card_txt" ).val();
	other_liabilities = $( "#other_liabilities_txt" ).val();
	
	shares_assets = $.trim(shares_assets);
	fixed_income_assets = $.trim(fixed_income_assets);
	cash_bank_assets = $.trim(cash_bank_assets);
	property_assets = $.trim(property_assets);
	gold_assets = $.trim(gold_assets);
	others_assets = $.trim(others_assets);
	
	home_loan = $.trim(home_loan);
	personal_loan = $.trim(personal_loan);
	income_tax = $.trim(income_tax);
	outstanding_bills = $.trim(outstanding_bills);
	credit_card = $.trim(credit_card);
	other_liabilities = $.trim(other_liabilities);
	
	if(shares_assets == "" || isNaN(shares_assets) || shares_assets < 0)
	{
		alert("Please enter the correct value of Shares & Equity Mutual Funds assets");
		return false;
	}
	if(fixed_income_assets == "" || isNaN(fixed_income_assets) || fixed_income_assets < 0)
	{
		alert("Please enter the correct value of Fixed Income assets");
		return false;
	}
	if(cash_bank_assets == "" || isNaN(cash_bank_assets) || cash_bank_assets < 0)
	{
		alert("Please enter the correct value of Cash and Bank Accounts assets");
		return false;
	}
	if(property_assets == "" || isNaN(property_assets) || property_assets < 0)
	{
		alert("Please enter the correct value of Property assets");
		return false;
	}
	if(gold_assets == "" || isNaN(gold_assets) || gold_assets < 0)
	{
		alert("Please enter the correct value of Gold and Jewelleries assets");
		return false;
	}
	if(others_assets == "" || isNaN(others_assets) || others_assets < 0)
	{
		alert("Please enter the correct value of Others assets");
		return false;
	}
	if(home_loan == "" || isNaN(home_loan) || home_loan < 0)
	{
		alert("Please enter the correct value of Home Loan");
		return false;
	}
	if(personal_loan == "" || isNaN(personal_loan) || personal_loan < 0)
	{
		alert("Please enter the correct value of Personal & other Loans");
		return false;
	}
	if(income_tax == "" || isNaN(income_tax) || income_tax < 0)
	{
		alert("Please enter the correct value of Income Tax owed");
		return false;
	}
	if(outstanding_bills == "" || isNaN(outstanding_bills) || outstanding_bills < 0)
	{
		alert("Please enter the correct value of Outstanding bills / payments");
		return false;
	}
	if(credit_card == "" || isNaN(credit_card) || credit_card < 0)
	{
		alert("Please enter the correct value of Credit Card dues");
		return false;
	}
	if(other_liabilities == "" || isNaN(other_liabilities) || other_liabilities < 0)
	{
		alert("Please enter the correct value of Other liabilities");
		return false;
	}
	
	shares_assets = parseInt(shares_assets);
	fixed_income_assets = parseInt(fixed_income_assets);
	cash_bank_assets = parseInt(cash_bank_assets);
	property_assets = parseInt(property_assets);
	gold_assets = parseInt(gold_assets);
	others_assets = parseInt(others_assets);
	
	home_loan = parseInt(home_loan);
	personal_loan = parseInt(personal_loan);
	income_tax = parseInt(income_tax);
	outstanding_bills = parseInt(outstanding_bills);
	credit_card = parseInt(credit_card);
	other_liabilities = parseInt(other_liabilities);
	
	var total_networth = 0;
	
	$.ajaxSetup({async:false});
	$.post("/tools-and-calculators/getNetworthCalcResult", {shares_equity_value : "" + shares_assets + "",fixed_income_value : "" + fixed_income_assets + "",cash_value : "" + cash_bank_assets + "",property_value : "" + property_assets + "",gold_value : "" + gold_assets + "",property_value : "" + property_assets + "",other_assets_value : "" + others_assets + "",home_loan_value : "" + home_loan + "",personal_other_loan_value : "" + personal_loan + "",income_tax_value : "" + income_tax + "",outstanding_bill_value : "" + outstanding_bills + "",credit_card_due_value : "" + credit_card + "",other_liabilities_value : "" + other_liabilities + ""}, function(data)
    {
		
		var result = $.trim(data);
		var obj = jQuery.parseJSON(result);
		
		if(obj.status == 400)
		{
			alert(obj.msg);
			return false;
		}
		
		total_assets = obj.total_assets;
		total_liabillities = obj.total_liabillities;
		total_networth = obj.total_networth;

    },'text');
	
	$( "#res_total_assets" ).html(numbersWithComma(total_assets));
	$( "#res_total_liabilities" ).html(numbersWithComma(total_liabillities));
	$( "#res_total_networth" ).html(numbersWithComma(total_networth));
	
    renderChart(total_assets,total_liabillities,total_networth);
}

function renderChart(total_assets,total_liabillities,total_networth)
{
	total_assets = parseFloat(total_assets);
	total_liabillities = parseFloat(total_liabillities);
	total_networth = parseFloat(total_networth); 
	total_networth = numbersWithComma(total_networth);
	$('#emipiechart').highcharts({
		 colors: ['#27A840', '#F9A003', '#FF8900', '#DDDF00', '#24CBE5', '#64E572', 
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
	            return this.key+ ': ' + numbersWithComma(this.y) + '';
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
	        name: 'Financial Assets',
	        y: total_assets,
            
	      },
	     {
	        name: 'Liabilities',
	        y: total_liabillities,
            
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

</script>
<main>

	
	
	<!-- Section: inner-header -->
	<section class="header_color">
	  <div class="container pt-150 pb-10">
	    <!-- Section Content -->
	    <div class="section-content">
	      <div class="row text-center">
	        <div class="col-md-12">
	          <h2 class="title title_header text-dark">Networth Calculator</h2>
	          <ol class="breadcrumb  text-black mt-10">
	            <li><a href="/" class="title_header">Home</a></li>
	            <li><a href="#" class="title_header">Tools & Calculators</a></li>
	            <li class="active  title_header">Networth Calculator</li>
	          </ol>
	        </div>
	      </div>
	    </div>
	  </div>
	</section>
        

        <!-- Section -->
        <section class="section pt-5">
            <div class="container">
                <div class="row justify-content-lg-between">
                <div class="col-lg-7 wow fadeInRight" data-wow-duration="0.5s" data-wow-delay="0.1s">
                        <div class="row calculator">
                            <div class="col-sm-12 my-3">
                                <div class="table-responsive" id="input_table">
   	<table class="table table-striped table-bordered table-hover" cellspacing="0">
   	<thead>
   	<tr>
   	<th colspan="2">Financial Assets</th>
   	</tr>
   	</thead>
   	<tbody>
	<tr class="networth">
		<td style="vertical-align: middle;">Shares & Equity Mutual Funds (Rs.)</td>
		<td>
			<div class="form-group"> 
            	<input id="shares_assets_txt" value="500000" maxlength="7" type="text" class="float-left form-control no-radius marginRight5 input-sm" style="width:180px;"  placeholder="Enter the Shares & Equity Mutual Funds">
          	</div>
		</td>
	</tr>
	<tr class="networth">
		<td style="vertical-align: middle;">Fixed Income Assets (Rs.)<p style="font-size:12px;margin: 0;">(Fixed deposits, Bonds, debt funds, PPF etc.)</p></td>
		<td>
			<div class="form-group"> 
            	<input id="fixed_income_assets_txt" value="200000" maxlength="7" type="text" class="float-left form-control no-radius marginRight5 input-sm" style="width:180px;"  placeholder="Enter the Fixed Income Assets">
          	</div>
		</td>
	</tr>
	<tr class="networth">
		<td style="vertical-align: middle;">Cash and Bank Accounts (Rs.)<p style="font-size:12px;margin: 0;">(Savings accounts, Cash in hand, liquid funds, etc.)</p></td>
		<td>
			<div class="form-group"> 
            	<input id="cash_bank_assets_txt" value="300000" maxlength="7" type="text" class="float-left form-control no-radius marginRight5 input-sm" style="width:180px;"  placeholder="Enter the Cash and Bank Accounts">
          	</div>
		</td>
	</tr>
	<tr class="networth">
		<td style="vertical-align: middle;">Property (Rs.)</td>
		<td>
			<div class="form-group"> 
            	<input id="property_assets_txt" value="200000" maxlength="7" type="text" class="float-left form-control no-radius marginRight5 input-sm" style="width:180px;"  placeholder="Enter the Property">
          	</div>
		</td>
	</tr>
	<tr class="networth">
	    <td style="vertical-align: middle;">Gold and Jewelleries (Rs.)</td>
	    <td>
	    	<div class="form-group"> 
            	<input id="gold_assets_txt" value="200000" maxlength="7" type="text" class="float-left form-control no-radius marginRight5 input-sm" style="width:180px;"  placeholder="Enter Gold and Jewelleries">
          	</div>
	    </td>
	</tr>
	<tr class="networth">
	    <td style="vertical-align: middle;">Others (if any) (Rs.)</td>
	    <td>
	    	<div class="form-group"> 
            	<input id="others_assets_txt" value="200000" maxlength="7" type="text" class="float-left form-control no-radius marginRight5 input-sm" style="width:180px;"  placeholder="Enter Others (if any)">
          	</div>
	    </td>
	</tr>
	</tbody>
	</table>
	
	
	<table class="table table-striped table-bordered table-hover" cellspacing="0" width="100%" style="margin:0px !important;">
   	<thead>
   	<tr>
   	<th colspan="2">Liabilities</th>
   	</tr>
   	</thead>
   	<tbody>
	<tr class="child-calc-width">
	    <td style="vertical-align: middle;">Home Loan (Rs.)</td>
	    <td>
	    	<div class="form-group"> 
            	<input id="home_loan_txt" value="50000" maxlength="7" type="text" class="float-left form-control no-radius marginRight5 input-sm" style="width:180px;"  placeholder="Enter the Home Loan">
          	</div>
	    </td>
	</tr>
	<tr class="child-calc-width">
	    <td style="vertical-align: middle;">Personal & other Loans (Rs.)</td>
	    <td>
	    	<div class="form-group"> 
            	<input id="personal_loan_txt" value="250000" maxlength="7" type="text" class="float-left form-control no-radius marginRight5 input-sm" style="width:180px;"  placeholder="Enter the Personal & other Loans">
          	</div>
	    </td>
	</tr>
	<tr class="child-calc-width">
	    <td style="vertical-align: middle;">Income Tax owed (Rs.)</td>
	    <td>
	    	<div class="form-group"> 
            	<input id="income_tax_txt" value="200000" maxlength="7" type="text" class="float-left form-control no-radius marginRight5 input-sm" style="width:180px;"  placeholder="Enter the Income Tax owed">
          	</div>
	    </td>
	</tr>
	<tr class="child-calc-width">
	    <td style="vertical-align: middle;">Outstanding bills / payments (Rs.)</td>
	    <td>
	    	<div class="form-group"> 
            	<input id="outstanding_bills_txt" value="500000" maxlength="7" type="text" class="float-left form-control no-radius marginRight5 input-sm" style="width:180px;"  placeholder="Enter Outstanding bills / paymentse">
          	</div>
	    </td>
	</tr>
	<tr class="child-calc-width">
	    <td style="vertical-align: middle;">Credit Card dues (Rs.)</td>
	    <td>
	    	<div class="form-group"> 
            	<input id="credit_card_txt" value="200000" maxlength="7" type="text" class="float-left form-control no-radius marginRight5 input-sm" style="width:180px;"  placeholder="Enter Credit Card dues">
          	</div>
	    </td>
	</tr>
	<tr class="child-calc-width">
	    <td style="vertical-align: middle;">Other liabilities (if any) (Rs.)</td>
	    <td>
	    	<div class="form-group"> 
            	<input id="other_liabilities_txt" value="20000" maxlength="7" type="text" class="float-left form-control no-radius marginRight5 input-sm" style="width:180px;"  placeholder="Enter Other liabilities">
          	</div>
	    </td>
	</tr>
	<tr id="submit_btn_row">
	    <td colspan="2"><div class="text_center"><a onclick="calulate_assets()" class="btn btn-primary" href="javascript:void(0)">Submit</a></div></td>
	</tr>
	</tbody>
	</table>
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
                                                <span class="h6">Total Assets</span>
                                            	<p class="text-muted text-sm mt-0 mb-0  d-lg-block">Rs. <span id="res_total_assets"></span></p>
                                            </div>
                                        </li>
                                       <li class="list-group-item bg-transparent">
                                            <div class="row">
                                                <span class="h6">Total Liabilities</span>
                                            	<p class="text-muted text-sm mt-0 mb-0  d-lg-block">Rs. <span id="res_total_liabilities"></span></p>
                                            </div>
                                        </li>
                                        <li class="list-group-item bg-transparent">
                                            <div class="row">
                                                <span class="h6">Your Networth</span>
                                            	<p class="text-muted text-sm mt-0 mb-0  d-lg-block">Rs. <span id="res_total_networth"></span></p>
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