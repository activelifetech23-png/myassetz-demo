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
<style>
.member {
    box-shadow: 0px 5px 83px 0px rgb(9 29 62 / 15%);
}
/******************* Tools and calc **********************/

.row-eq-height {
	  display: -webkit-box;
	  display: -webkit-flex;
	  display: -ms-flexbox;
	  display: flex;
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

.btn-primary {
   background-color: #d90d15;
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
    background: #fbce00 !important;
}
.slider-handle {
    opacity: 1 !important;
}

.breadcrumb > li + li::before {
    content: "\f22d" !important;
    font-family: fontawesome;
    font-size: 9px;
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

.table-bordered>thead>tr>td, .table-bordered>thead>tr>th {
    border-bottom-width: 2px;
    background:#003399;
    color:#fff;
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
.btn:focus{
  background:#003399;
  border-color:#003399;
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
.form-group {

    margin-bottom: 0px;
}
.btn-submit{
	background-color: #4c8552;
	border:1px solid #4c8552;
}
.btn-submit:hover{
	color: #fff;
    background-color: #003399;
    border-color: #003399;
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
@media only screen and (max-width: 991px){
.form-control {
    font-size: 14px;
    height: 45px;
    padding: 0 20px;
    background-color: #ffffff;
    border: 2px solid #e6e8eb;
    width: 300%;
    height: 45px;
    border-radius: 10px;
}
}
.text-theme-colored2 {
    color: #003399 !important;
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
/********************* Tools and calc end ******************/
</style>

<script type="text/javascript">
var accountMap = "";

$(document).ready(function(){

	var childName1 = '${childName1}';
	var childName2 = '${childName2}';
	var childAge1 = '${childAge1}';
	var childAge2 = '${childAge2}';
	var profEduAge1 = '${profEduAge1}';
	var profEduAge2 = '${profEduAge2}';
	var eduAmount1 = '${eduAmount1}';
	var eduAmount2 = '${eduAmount2}';
	var priceIncRate = '${priceIncRate}';
	var rateOfReturn = '${rateOfReturn}';
	var investAmount = '${investAmount}';
	accountMap = '${accountMap}';	
	
	$('#childName1').val(childName1);
    $('#childName2').val(childName2);
    $('#childAge1').val(childAge1);
    $('#childAge2').val(childAge2);
    $('#profEduAge1').val(profEduAge1);
    $('#profEduAge2').val(profEduAge2);
    $('#eduAmount1').val(eduAmount1);
    $('#eduAmount2').val(eduAmount2);
    $('#priceIncRate').val(priceIncRate);
    $('#rateOfReturn').val(rateOfReturn);
    $('#investAmount').val(investAmount);
    
   
    
    calculateEduAmount();
	
});


function downloadResult()
{
	
	var childName1 = $('#childName1').val();
    var childName2 = $('#childName2').val();
    var childAge1 = $('#childAge1').val();
    var childAge2 = $('#childAge2').val();
    var profEduAge1 = $('#profEduAge1').val();
    var profEduAge2 = $('#profEduAge2').val();
    var eduAmount1 = $('#eduAmount1').val();
    var eduAmount2 = $('#eduAmount2').val();
    var priceIncRate = $('#priceIncRate').val();
    var rateOfReturn = $('#rateOfReturn').val();
    var investAmount = $('#investAmount').val();
    
    if($('#result').css('display') == 'none')
    { 
    	alert("Please fill all the fields");
    	return;
    }
	
	var child_total_amount = $("#child_total_amount").html();
	var child_1_year = $("#child_1_year").html();
	var child_1_increase_amount = $("#child_1_increase_amount").html();
	var child_total_increase_amount = $("#child_total_increase_amount").html();
	var child_1_invest_amount = $("#child_1_invest_amount").html();
	var child_total_invest_amount = $("#child_total_invest_amount" ).html();
	var child_1_monthly_amount = $("#child_1_monthly_amount").html();
	var child_total_monthly_amount = $("#child_total_monthly_amount").html();
	var child_2_year = $("#child_2_year").html();
	var child_2_increase_amount = $("#child_2_increase_amount").html();
	var child_2_invest_amount = $("#child_2_invest_amount").html();
	var child_2_monthly_amount = $("#child_2_monthly_amount").html();
	
	eduAmount1 = eduAmount1.replace(/,/g,'');
    eduAmount2 = eduAmount2.replace(/,/g,'');
    investAmount = investAmount.replace(/,/g,'');

	eduAmount1 = numbersWithComma(eduAmount1);
	eduAmount2 = numbersWithComma(eduAmount2);
	investAmount = numbersWithComma(investAmount);
	var calc_url = window.location.href;
	
	
		var param = "?childName1="+childName1+"&childName2="+childName2+"&childAge1="+childAge1+"&childAge2="+childAge2+"&profEduAge1="+profEduAge1+"&profEduAge2="+profEduAge2;
		param += "&eduAmount1="+eduAmount1+"&eduAmount2="+eduAmount2+"&priceIncRate="+priceIncRate+"&rateOfReturn="+rateOfReturn+"&investAmount="+investAmount;
		param += "&child_total_amount="+child_total_amount+"&child_1_year="+child_1_year+"&child_1_increase_amount="+child_1_increase_amount+"&child_total_increase_amount="+child_total_increase_amount;
		param += "&child_1_invest_amount="+child_1_invest_amount+"&child_total_invest_amount="+child_total_invest_amount+"&child_1_monthly_amount="+child_1_monthly_amount;
		param += "&child_total_monthly_amount="+child_total_monthly_amount+"&child_2_year="+child_2_year+"&child_2_increase_amount="+child_2_increase_amount;
		param += "&child_2_invest_amount="+child_2_invest_amount+"&child_2_monthly_amount="+child_2_monthly_amount+"&url="+calc_url;
		
		var url = '/tools-and-calculators/downloadEducationPlannerCalcResult'+param;
		window.location = url;
		
		$('#send_email_model').modal('hide');
        setTimeout(function(){
        	swal({title:"",text:"Thanks for the Download."});
    	},1000);
	
}

function calculateEduAmount() 
{
    var childName1 = $('#childName1').val();
    var childName2 = $('#childName2').val();
    var childAge1 = $('#childAge1').val();
    var childAge2 = $('#childAge2').val();
    var profEduAge1 = $('#profEduAge1').val();
    var profEduAge2 = $('#profEduAge2').val();
    var eduAmount1 = $('#eduAmount1').val();
    var eduAmount2 = $('#eduAmount2').val();
    var priceIncRate = $('#priceIncRate').val();
    var rateOfReturn = $('#rateOfReturn').val();
    var investAmount = $('#investAmount').val();
    
    eduAmount1 = eduAmount1.replace(/,/g,'');
    eduAmount2 = eduAmount2.replace(/,/g,'');
    investAmount = investAmount.replace(/,/g,'');
    
    childName1 = $.trim(childName1);
    childName2 = $.trim(childName2);
    childAge1 = $.trim(childAge1);
    childAge2 = $.trim(childAge2);
    profEduAge1 = $.trim(profEduAge1);
    profEduAge2 = $.trim(profEduAge2);
    eduAmount1 = $.trim(eduAmount1);
    eduAmount2 = $.trim(eduAmount2);
    priceIncRate = $.trim(priceIncRate);
    rateOfReturn = $.trim(rateOfReturn);
    investAmount = $.trim(investAmount);
    
   	if(childName1 == "")
    {
    	alert("Please enter valid child name1");
    	return false;
    }
   	if(childAge1 == "" || childAge1 < 0)
    {
    	alert("Please enter valid child current Age1");
    	return false;
    }
    if(profEduAge1 == "" || profEduAge1 < 0)
    {
    	alert("Please enter valid child professional education Age1");
    	return false;
    }
   	if(eduAmount1 == "" || eduAmount1 < 0)
    {
    	alert("Please enter valid child need education amount1");
    	return false;
    }
    if(childName2 != "")
    {
    	if(childAge2 == "" || childAge2 < 0)
        {
        	alert("Please enter valid child current Age2");
        	return false;
        }
    	if(profEduAge2 == "" || profEduAge2 < 0)
        {
    		alert("Please enter valid professional education Age2");
        	return false;
        }
    	if(eduAmount2 == "" || eduAmount2 < 0)
        {
    		alert("Please enter valid child need education amount2");
        	return false;
        }
    }
    if(priceIncRate == "" || priceIncRate < 5 || priceIncRate > 15)
    {
    	alert("Please enter price increase rate between 5  to 15");
    	return false;
    }
    if(rateOfReturn == "" || priceIncRate < 5 || priceIncRate > 20)
    {
    	alert("Please enter rate of return between 5  to 20");
    	return false;
    }
    if(investAmount == "" || investAmount < 0)
    {
    	alert("Please enter valid current investment amount");
    	return false;
    }
    
    var child_count = 0;
    if(childName1 != "")
    {
    	child_count++;
    }
    if(childName2 != "")
    {
    	child_count++;
    }
    
    if(childAge2 == "")
    {
    	childAge2 = 0;
    }
	if(profEduAge2 == "")
    {
		profEduAge2 = 0;
    }
	if(eduAmount2 == "")
    {
		eduAmount2 = 0;
    }
        
    childAge1 = parseInt(childAge1);
    childAge2 = parseInt(childAge2);
    profEduAge1 = parseInt(profEduAge1);
    profEduAge2 = parseInt(profEduAge2);
    eduAmount1 = parseInt(eduAmount1);
    eduAmount2 = parseInt(eduAmount2);
    priceIncRate = parseFloat(priceIncRate, 10);
    rateOfReturn = parseFloat(rateOfReturn, 10);
    investAmount = parseInt(investAmount);
    
	var total_education_amount = "";
	var child1_prof_education_age = "";
	var child2_prof_education_age = "";
	var child1_inflation_adjust_education_amount = "";
	var child2_inflation_adjust_education_amount = "";
	var toal_inflation_adjust_education_amount = "";
	var child1_savings_amount = "";
	var child2_savings_amount = "";
	var total_savings_amount = "";
	var child1_monthly_savings = "";
	var child2_monthly_savings = "";
	var total_monthly_savings = "";
    
	$.ajaxSetup({async:false});
	$.post("/tools-and-calculators/getEducationPlannerResult", {child1_name : "" + childName1 + "",child2_name : "" + childName2 + "",child1_current_age : "" + childAge1 + "",child2_current_age : "" + childAge2 + "",child1_education_age : "" + profEduAge1 + "",child2_education_age : "" + profEduAge2 + "",child1_education_amount : "" + eduAmount1 + "",child2_education_amount : "" + eduAmount2 + "",inflation_rate : "" + priceIncRate + "",expected_return : "" + rateOfReturn + "",savings_amount : "" + investAmount + ""}, function(data)
    {
		var result = $.trim(data);
		var obj = jQuery.parseJSON(result);
		
		if(obj.status == 400)
		{
			alert(obj.msg);
			return false;
		}
		
		total_education_amount = obj.total_education_amount;
		child1_prof_education_age = obj.child1_prof_education_age;
		child2_prof_education_age = obj.child2_prof_education_age;
		child1_inflation_adjust_education_amount = obj.child1_inflation_adjust_education_amount;
		child2_inflation_adjust_education_amount = obj.child2_inflation_adjust_education_amount;
		toal_inflation_adjust_education_amount = obj.toal_inflation_adjust_education_amount;
		child1_savings_amount = obj.child1_savings_amount;
		child2_savings_amount = obj.child2_savings_amount;
		total_savings_amount = obj.total_savings_amount;
		child1_monthly_savings = obj.child1_monthly_savings;
		child2_monthly_savings = obj.child2_monthly_savings;
		total_monthly_savings = obj.total_monthly_savings;
		
    },'text');
	
	$('#eduAmount1').val(numbersWithComma(eduAmount1));
    $('#eduAmount2').val(numbersWithComma(eduAmount2));
    $('#investAmount').val(numbersWithComma(investAmount));
	
	$('#child_1_name').html(childName1);
	$('#child_1_amount').html(numbersWithComma(eduAmount1));
	$('#child_total_amount').html(numbersWithComma(total_education_amount));
	$('#child_1_year').html(child1_prof_education_age);
	$('#expect_interest_rate_1').html(rateOfReturn);
	$('#child_1_increase_amount').html(numbersWithComma(child1_inflation_adjust_education_amount));
	$('#child_total_increase_amount').html(numbersWithComma(toal_inflation_adjust_education_amount));
	$('#child_1_invest_amount').html(numbersWithComma(child1_savings_amount));
	$('#child_total_invest_amount').html(numbersWithComma(total_savings_amount));
	$('#child_1_monthly_amount').html(numbersWithComma(child1_monthly_savings));
	$('#child_total_monthly_amount').html(numbersWithComma(total_monthly_savings));
	
	if (childName2 != "") 
	{
		$('#child_2_name').html(childName2);
		$('#child_2_amount').html(numbersWithComma(eduAmount2));
		$('#child_2_year').html(child2_prof_education_age);
		$('#expect_interest_rate_2').html(rateOfReturn);
		$('#child_2_increase_amount').html(numbersWithComma(child2_inflation_adjust_education_amount));
		$('#child_2_invest_amount').html(numbersWithComma(child2_savings_amount));
		$('#child_2_monthly_amount').html(numbersWithComma(child2_monthly_savings));
	}else{
		$('#child_2_name').html("-");
		$('#child_2_amount').html("-");
		$('#child_2_year').html(0);
		$('#expect_interest_rate_2').html("-");
		$('#child_2_increase_amount').html("-");
		$('#child_2_invest_amount').html("-");
		$('#child_2_monthly_amount').html("-");
	}
	
    $('#result').show();
    $(".result_btn").show();
}
function saveResult() 
{	
	var childName1 = $('#childName1').val();
    var childName2 = $('#childName2').val();
    var childAge1 = $('#childAge1').val();
    var childAge2 = $('#childAge2').val();
    var profEduAge1 = $('#profEduAge1').val();
    var profEduAge2 = $('#profEduAge2').val();
    var eduAmount1 = $('#eduAmount1').val();
    var eduAmount2 = $('#eduAmount2').val();
    var priceIncRate = $('#priceIncRate').val();
    var rateOfReturn = $('#rateOfReturn').val();
    var investAmount = $('#investAmount').val();
	
	var title = "Child Education Planner - Plan education of 2 children";
	var url = "/tools-and-calculators/children-education-planner?childName1="+childName1+"&childName2="+childName2+"&childAge1="+childAge1+"&childAge2="+childAge2+"&profEduAge1="+profEduAge1+"&profEduAge2="+profEduAge2+"&eduAmount1="+eduAmount1+"&eduAmount2="+eduAmount2+"&priceIncRate="+priceIncRate+"&rateOfReturn="+rateOfReturn+"&investAmount="+investAmount;
	
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
              <h2 class="title title_header">Children Education Planner</h2>
              <ol class="breadcrumb mt-10">
                <li><a href="/" >Home</a></li>
                <li><a href="#" >Tools & Calculators</a></li>
                <li class="active " >Children Education Planner</li>
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
                <div class="col-lg-12 wow fadeInRight" data-wow-duration="0.5s" data-wow-delay="0.1s">
                        <div class="row calculator">
                            <div class="col-sm-12 my-3">
                                <div class="card card-body px-4 pb-0 hover-top shadow-only-hover">
                                
                                				   	<div class="table-responsive" id="input_table">
				   	<table class="table table-striped table-bordered text-left">
				   	<tbody>
					<tr>
						<td class="ques">Enter your first child name</td>
						<td>
							<div class="form-group"> 
				            	<input id="childName1" maxlength="45" type="text" class="form-control"  placeholder="Enter the first child name">
				          	</div>
						</td>
					</tr>
					<tr>
						<td class="ques">Enter your second child name</td>
						<td>
							<div class="form-group"> 
				            	<input id="childName2" maxlength="45" type="text" class="form-control"  placeholder="Enter the second child name">
				          	</div>
						</td>
					</tr>
					<tr>
						<td class="ques">Enter your first child current age (in years)</td>
						<td>
							<div class="form-group"> 
				            	<input id="childAge1" maxlength="2" type="text" class="form-control"  placeholder="Enter the first child age">
				          	</div>
						</td>
					</tr>
					<tr>
						<td class="ques">Enter your second child current age (in years)</td>
						<td>
							<div class="form-group"> 
				            	<input id="childAge2" maxlength="2" type="text" class="form-control"  placeholder="Enter the second child age">
				          	</div>
						</td>
					</tr>
					<tr>
					    <td class="ques">Enter the age at which your first child would be ready for professional education (in years)</td>
					    <td>
					    	<div class="form-group"> 
				            	<input id="profEduAge1" maxlength="2" type="text" class="form-control"  placeholder="Enter first child prof edu age">
				          	</div>
					    </td>
					</tr>
					<tr>
					    <td class="ques">Enter the age at which your second child would be ready for professional education (in years)</td>
					    <td>
					    	<div class="form-group"> 
				            	<input id="profEduAge2" maxlength="2" type="text" class="form-control"  placeholder="Enter second child prof edu age">
				          	</div>
					    </td>
					</tr>
					<tr>
					    <td width="70%" class="ques">Enter the amount you would need at today's cost to fulfil your first child educational needs (Rs)</td>
					    <td>
					    	<div class="form-group"> 
				            	<input id="eduAmount1" maxlength="7" type="text" class="form-control"  placeholder="Enter first child edu amount">
				          	</div>
					    </td>
					</tr>
					<tr>
					    <td class="ques">Enter the amount you would need at today's cost to fulfil your second child educational needs (Rs)</td>
					    <td>
					    	<div class="form-group"> 
				            	<input id="eduAmount2" maxlength="7" type="text" class="form-control"  placeholder="Enter second child edu amount">
				          	</div>
					    </td>
					</tr>
					<tr>
					    <td class="ques">The expected rate of inflation over the years (% per annum)</td>
					    <td>
					    	<div class="form-group"> 
				            	<input id="priceIncRate" maxlength="4" type="text" class="form-control"  placeholder="Enter the inflation rate">
				          	</div>
					    </td>
					</tr>
					<tr>
					    <td class="ques">What rate of return would you expect your investment? (% per annum)</td>
					    <td>
					    	<div class="form-group"> 
				            	<input id="rateOfReturn" maxlength="4" type="text" class="form-control"  placeholder="Enter the return rate">
				          	</div>
					    </td>
					</tr>
					<tr>
					    <td class="ques">How much savings you have now? (Rs)</td>
					    <td>
					    	<div class="form-group"> 
				            	<input id="investAmount" maxlength="7" type="text" class="form-control"  placeholder="Enter the savings amount">
				          	</div>
					    </td>
					</tr>
					<tr id="submit_btn_row">
					    <td colspan="2">
					    <div class="text_center">
					    	<a class="btn btn-primary btn-submit mt-2" href="javascript:void(0);" onclick="calculateEduAmount()">Submit</a>
					    </div>
					    </td>
					</tr>
					</tbody>
					</table>
					</div>
                                   
                                </div>
                            </div>

                        </div>
                        
                        

                        <div class="row calculator">
                            <div class="col-sm-12 my-3">
                                <div class="card card-body px-4 pb-0 hover-top shadow-only-hover">
                                						<div class="table-responsive mt-30" id="result">
					<table id="result-table-1" class="table table-striped table-bordered table-hover text-left" cellspacing="0" width="100%" style="margin-top:0px !important;font-family: 'Poppins', sans-serif;font-size: 14px;">
				   	<thead>
				   	<tr>
					  <th colspan="4" style="background-color:#003399;color: #fff;"><div class="text-center">Result</div></th>
					</tr>
					<tr>
					  <th width="35%">Education Planner</th>
					  <th width="22%">Cost of <span id="child_1_name"></span>'s education</th>
					  <th width="22%">Cost of <span id="child_2_name"></span>'s education</th>
					  <th width="21%">Total cost for both</th>
					</tr>
					</thead>
					<tbody>
					<tr>
					  <td width="35%">Amount at today's prices</td>
					  <td width="22%">Rs. <span id="child_1_amount"></span></td>
					  <td width="22%">Rs. <span id="child_2_amount"></span></td>
					  <td width="21%">Rs. <span id="child_total_amount"></span></td>
					</tr>
					<tr>
					  <td width="35%">Your child will take up professional education in</td>
					  <td width="22%"><span id="child_1_year"></span> year(s)</td>
					  <td width="22%"><span id="child_2_year"></span> year(s)</td>
					  <td width="21%"> - </td>
					</tr>
					<tr>
					  <td width="35%">Expected rate of return from investments (% per annum)</td>
					  <td width="22%"><span id="expect_interest_rate_1"></span> %</td>
					  <td width="22%"><span id="expect_interest_rate_2"></span> %</td>
					  <td width="21%"> - </td>
					</tr>
					<tr>
					  <td width="35%">Future cost of education (Inflation adjusted)</td>
					  <td width="22%">Rs. <span id="child_1_increase_amount"></span></td>
					  <td width="22%">Rs. <span id="child_2_increase_amount"></span></td>
					  <td width="21%">Rs. <span id="child_total_increase_amount"></span></td>
					</tr>
					<tr>
					  <td width="35%">Your current savings amount</td>
					  <td width="22%">Rs. <span id="child_1_invest_amount"></span></td>
					  <td width="22%">Rs. <span id="child_2_invest_amount"></span></td>
					  <td width="21%">Rs. <span id="child_total_invest_amount"></span></td>
					</tr>
					<tr>
					  <td width="35%">Monthly Savings required</td>
					  <td width="22%">Rs. <span id="child_1_monthly_amount"></span></td>
					  <td width="22%">Rs. <span id="child_2_monthly_amount"></span></td>
					  <td width="21%">Rs. <span id="child_total_monthly_amount"></span></td>
					</tr>
					</tbody>
					</table>
					</div>
                                </div>
                           </div>
                       </div>
                        
                        
                    </div>

                    
                </div>
            </div>
        </section>
        <!-- End Section -->
  </main>