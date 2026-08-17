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
	background-color: #27A840;
    border: 2px solid #27A840;
}

.service-box:after {
    background: #003399;
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
    background-color:#003399;
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
 background: 50% 0px rgb(163 163 163 / 16%) !important;
}
td a {
     color: #333;
    text-decoration: none;
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
.service-box:after {
    background: #9c5553;
}

/********************* Tools and calc end ******************/
</style>

<script type="text/javascript">

var child_current_age = "";
var child_education_age = "";
var education_amount = "";
var current_age = "";
var wealth_age = "";
var wealth_amount = "";
var expense_amount = "";
var expense_year = "";
var inflation_rate = "";
var expected_return = "";
var savings_amount = "";
var accountMap = "";

$(document).ready(function(){

	child_current_age = '${child_current_age}';
	child_education_age = '${child_education_age}';
	education_amount = '${education_amount}';
	current_age = '${current_age}';
	wealth_age = '${wealth_age}';
	wealth_amount = '${wealth_amount}';
	expense_amount = '${expense_amount}';
	expense_year = '${expense_year}';
	inflation_rate = '${inflation_rate}';
	expected_return = '${expected_return}';
	savings_amount = '${savings_amount}';
	
	childAge = parseInt(child_current_age);
	childEducationAge = parseInt(child_education_age);
	educationAmount = parseInt(education_amount);
	currentAge = parseInt(current_age);
	retireAge = parseInt(wealth_age);
	wealthyAmount = parseInt(wealth_amount);
	dreamExpenseYear = parseInt(expense_year);
	dreamAmount = parseInt(expense_amount);
	increaseRate = parseFloat(inflation_rate,10);
	rateOfReturn = parseFloat(expected_return,10);
	investmentAmount = parseInt(savings_amount);
	
	$('#child_age').val(childAge);
	$('#child_edu_age').val(childEducationAge);
	$('#edu_amount').val(numbersWithComma(educationAmount));
	$('#current_age').val(currentAge);
	$('#wealth_age').val(retireAge);
	$('#wel_amount').val(numbersWithComma(wealthyAmount));
	$('#expense_year').val(dreamExpenseYear);
	$('#expense_amount').val(numbersWithComma(dreamAmount));
	$('#inc_rate').val(increaseRate);
	$('#interest').val(rateOfReturn);
	$('#savings_amount').val(numbersWithComma(investmentAmount));
	
	accountMap = '${accountMap}';	
	
	$("#edu_amount_slider").slider({
	    min: 100000,
	    max: 10000000,
        tooltip: "show",
        step: 1,
        precision: 0,
        value: educationAmount
	}).on("slideStop", function(slideEvt) {		
		$("#edu_amount").val(numbersWithComma(slideEvt.value));
		calculateFinalResult();
	});
	
	$("#wel_amount_slider").slider({
	    min: 100000,
	    max: 10000000,
        tooltip: "show",
        step: 1,
        precision: 0,
        value: wealthyAmount
	}).on("slideStop", function(slideEvt) {
		$("#wel_amount").val(numbersWithComma(slideEvt.value));
		calculateFinalResult();
	});
	
	$("#expense_amount_slider").slider({
	    min: 100000,
	    max: 10000000,
        tooltip: "show",
        step: 1,
        precision: 0,
        value: dreamAmount
	}).on("slideStop", function(slideEvt) {
		$("#expense_amount").val(numbersWithComma(slideEvt.value));
		calculateFinalResult();
	});
	
	$("#current_age_slider").slider({
	    min: 10,
	    max: 100,
        tooltip: "show",
        step: 1,
        precision: 0,
        value: currentAge
	}).on("slideStop", function(slideEvt) {
		$("#current_age").val(slideEvt.value);
		calculateFinalResult();
	});
	
	$("#wealth_age_slider").slider({
		min: 10,
        max: 100,
        tooltip: "show",
        step: 1,
        precision: 1,
        value: retireAge
	}).on("slideStop", function(slideEvt) {
		$("#wealth_age").val(slideEvt.value);
		calculateFinalResult();
	});
	
	$("#child_age_slider").slider({
	    min: 0,
	    max: 100,
        tooltip: "show",
        step: 1,
        precision: 0,
        value: childAge
	}).on("slideStop", function(slideEvt) {
		$("#child_age").val(slideEvt.value);
		calculateFinalResult();
	});
	
	$("#child_edu_age_slider").slider({
		min: 0,
        max: 100,
        tooltip: "show",
        step: 1,
        precision: 1,
        value: childEducationAge
	}).on("slideStop", function(slideEvt) {
		$("#child_edu_age").val(slideEvt.value);
		calculateFinalResult();
	});
	
	$("#expense_year_slider").slider({
		min: 1,
        max: 100,
        tooltip: "show",
        step: 1,
        precision: 1,
        value: dreamExpenseYear
	}).on("slideStop", function(slideEvt) {
		$("#expense_year").val(slideEvt.value);
		calculateFinalResult();
	});
	
	$("#increase_rate_slider").slider({
		min: 5,
        max: 15,
        tooltip: "show",
        step: 0.1,
        precision: 1,
        value: increaseRate
	}).on("slideStop", function(slideEvt) {
		$("#inc_rate").val(slideEvt.value);
		calculateFinalResult();
	});
	
	$("#interest_slider").slider({
		min: 5,
        max: 20,
        tooltip: "show",
        step: 0.1,
        precision: 1,
        value: rateOfReturn
	}).on("slideStop", function(slideEvt) {
		$("#interest").val(slideEvt.value);
		calculateFinalResult();
	});
	
	$("#savings_amount_slider").slider({
	    min: 0,
	    max: 10000000,
        tooltip: "show",
        step: 1,
        precision: 0,
        value: investmentAmount
	}).on("slideStop", function(slideEvt) {
		$("#savings_amount").val(numbersWithComma(slideEvt.value));
		calculateFinalResult();
	});
	
	$('input.number').change(function() {
		$(this).val(function(index, value) {
			value = value.replace(/,/g,'');
		    return numbersWithComma(value);
		});
	});
	
	calculateFinalResult();
	
});

function eduAmountChange()
{
	var educationAmount = $('#edu_amount').val();
	educationAmount = educationAmount.replace(/,/g,'');
	$( "#edu_amount_slider" ).slider("setValue",educationAmount);
	calculateFinalResult();
}
function welAmountChange()
{
	var wealthAmount = $('#wel_amount').val();
	wealthAmount = wealthAmount.replace(/,/g,'');
	$( "#wel_amount_slider" ).slider("setValue",wealthAmount);
	calculateFinalResult();
}
function expenseAmountChange()
{
	var expenseAmount = $('#expense_amount').val();
	expenseAmount = expenseAmount.replace(/,/g,'');
	$( "#expense_amount_slider" ).slider("setValue",expenseAmount);
	calculateFinalResult();
}
function currentAgeChange()
{
	var currentAge = $('#current_age').val();
	$( "#current_age_slider" ).slider("setValue",currentAge);
	calculateFinalResult();
}
function wealthAgeChange()
{
	var wealthAge = $('#wealth_age').val();
	$( "#wealth_age_slider" ).slider("setValue",wealthAge);
	calculateFinalResult();
}
function childAgeChange()
{
	var childAge = $('#child_age').val();
	$( "#child_age_slider" ).slider("setValue",childAge);
	calculateFinalResult();
}
function childEduAgeChange()
{
	var childEducationAge = $('#child_edu_age').val();
	$( "#child_edu_age_slider" ).slider("setValue",childEducationAge);
	calculateFinalResult();
}
function expenseYearChange()
{
	var expenseYear = $('#expense_year').val();
	$( "#expense_year_slider" ).slider("setValue",expenseYear);
	calculateFinalResult();
}
function increaseRateChange()
{
	var increaseRate = $('#inc_rate').val();
	$( "#increase_rate_slider" ).slider("setValue",increaseRate);
	calculateFinalResult();
}
function interestChange()
{
	var interest = $('#interest').val();
	$( "#interest_slider" ).slider("setValue",interest);
	calculateFinalResult();
}
function savingsAmountChange()
{
	var savingsAmount = $('#savings_amount').val();
	savingsAmount = savingsAmount.replace(/,/g,'');
	$( "#savings_amount_slider" ).slider("setValue",savingsAmount);
	calculateFinalResult();
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

function calculateFinalResult() 
{	

	var childAge = $('#child_age').val();
	var childEducationAge = $('#child_edu_age').val();
	var education_amount = $('#edu_amount').val();
	var currentAge = $('#current_age').val();
	var retireAge = $('#wealth_age').val();
	var wealthy_amount = $('#wel_amount').val();
	var dreamExpenseYear = $('#expense_year').val();
	var dream_amount = $('#expense_amount').val();
	var increaseRate = $('#inc_rate').val();
	var rateOfReturn = $('#interest').val();
	var investment_amount = $('#savings_amount').val();
	
	education_amount = education_amount.replace(/,/g, "");
	wealthy_amount = wealthy_amount.replace(/,/g, "");
	dream_amount = dream_amount.replace(/,/g, "");
	investment_amount = investment_amount.replace(/,/g, "");
	
	childAge = parseInt(childAge);
	childEducationAge = parseInt(childEducationAge);
	educationAmount = parseInt(education_amount);
	currentAge = parseInt(currentAge);
	retireAge = parseInt(retireAge);
	wealthyAmount = parseInt(wealthy_amount);
	dreamExpenseYear = parseInt(dreamExpenseYear);
	dreamAmount = parseInt(dream_amount);
	increaseRate = parseFloat(increaseRate,10);
	rateOfReturn = parseFloat(rateOfReturn,10);
	investmentAmount = parseInt(investmentAmount);
	
	if(retireAge<=currentAge)
	{
		advisorkhoj_alert("Please enter the wealth age not less then the current age");
		return;
	}
	if(childEducationAge<=childAge)
	{
		advisorkhoj_alert("Please enter the child education age not less then the child current age");
		return;
	}
	var total_amt = educationAmount + wealthyAmount + dreamAmount;
	if(investmentAmount>=total_amt)
	{
		advisorkhoj_alert("Please enter the savings amount less then the wealth,education and dream amount");
		return;
	}
	
	var educationAmount = 0;
	var wealthyAmount = 0;
	var dreamAmount = 0;
	var totalCurrentPrice = 0;
	var eduAgeDiff = 0;
	var welAgeDiff = 0;
	var DreAgeDiff = 0;
	var eduSavingsTarget = 0;
	var welSavingsTarget = 0;
	var dreSavingsTarget = 0;
	var totalPriceInc = 0;
	var currentAmountEdu = 0;
	var currentAmountWel = 0;
	var currentAmountDir = 0;
	var investmentAmount = 0;
	var monthlySavingsEdu = 0;
	var monthlySavingsWel = 0;
	var monthlySavingsDre = 0;
	var totalMonthlySavings = 0;

	$.ajaxSetup({async:false});
	$.post("/tools-and-calculators/getCompositeFinancialGoalPlannerResult", {child_current_age : "" + childAge + "",child_education_age : "" + childEducationAge + "",education_amount : "" + education_amount + "",current_age : "" + currentAge + "",wealth_age : "" + retireAge + "",wealth_amount : "" + wealthy_amount + "",expense_amount : "" + dream_amount + "",expense_year : "" + dreamExpenseYear + "",inflation_rate : "" + increaseRate + "",expected_return : "" + rateOfReturn + "",savings_amount : "" + investment_amount + ""}, function(data)
    {
		var result = $.trim(data);
		var obj = jQuery.parseJSON(result);
		
		if(obj.status == 400)
		{
			alert(obj.msg);
			return false;
		}
		
		educationAmount = obj.education_amount;
		wealthyAmount = obj.wealth_amount;
		dreamAmount = obj.expense_amount;
		totalCurrentPrice = obj.total_current_value;
		eduAgeDiff = obj.final_education_year;
		welAgeDiff = obj.final_wealth_year;
		DreAgeDiff = obj.final_expense_year;
		eduSavingsTarget = obj.education_target;
		welSavingsTarget = obj.wealth_target;
		dreSavingsTarget = obj.expense_target;
		totalPriceInc = obj.total_inflation_adjust_value;
		currentAmountEdu = obj.education_savings_amount;
		currentAmountWel = obj.wealth_savings_amount;
		currentAmountDir = obj.expense_savings_amount;
		investmentAmount = obj.total_savings_amount;
		monthlySavingsEdu = obj.education_monthly_savings;
		monthlySavingsWel = obj.wealth_monthly_savings;
		monthlySavingsDre = obj.expense_monthly_savings;
		totalMonthlySavings = obj.total_monthly_savings;
	
    },'text');
	
	$('#txtResEduAmt').html(numbersWithComma(educationAmount));
	$('#txtResWelAmt').html(numbersWithComma(wealthyAmount));
	$('#txtResDreAmt').html(numbersWithComma(dreamAmount));
	$('#txtResTotalAmt').html(numbersWithComma(totalCurrentPrice));
	
	$('#txtResEduYear').html(eduAgeDiff);
	$('#txtResWelYear').html(welAgeDiff);
	$('#txtResDreYear').html(DreAgeDiff);
	rateOfReturn = parseFloat(rateOfReturn).toFixed(2);
	$('#txtResRate1').html(rateOfReturn);
	$('#txtResRate2').html(rateOfReturn);
	$('#txtResRate3').html(rateOfReturn);
	
	$('#txtResIncEduAmt').html(numbersWithComma(eduSavingsTarget));
	$('#txtResIncWelAmt').html(numbersWithComma(welSavingsTarget));
	$('#txtResIncDreAmt').html(numbersWithComma(dreSavingsTarget));
	$('#txtResIncTotalAmt').html(numbersWithComma(totalPriceInc));
	
	$('#txtResInvestEduAmt').html(numbersWithComma(currentAmountEdu));
	$('#txtResInvestWelAmt').html(numbersWithComma(currentAmountWel));
	$('#txtResInvestDreAmt').html(numbersWithComma(currentAmountDir));
	$('#txtResInvestTotalAmt').html(numbersWithComma(investmentAmount));
	
	$('#txtResMonEduAmt').html(numbersWithComma(Math.round(monthlySavingsEdu)));
	$('#txtResMonWelAmt').html(numbersWithComma(Math.round(monthlySavingsWel)));
	$('#txtResMonDreAmt').html(numbersWithComma(Math.round(monthlySavingsDre)));
	$('#txtResMonTotalAmt').html(numbersWithComma(totalMonthlySavings));
	
	var edu_invest_amount = (eduAgeDiff * 12) * Math.round(monthlySavingsEdu);
	var edu_interest_total = eduSavingsTarget - edu_invest_amount;
	var wel_invest_amount = (welAgeDiff * 12) * Math.round(monthlySavingsWel);
	var wel_interest_total = welSavingsTarget - wel_invest_amount;
	var dre_invest_amount = (DreAgeDiff * 12) * Math.round(monthlySavingsDre);
	var dre_interest_total = dreSavingsTarget - dre_invest_amount;
	
	renderChart(eduSavingsTarget,welSavingsTarget,dreSavingsTarget,edu_invest_amount,edu_interest_total,wel_invest_amount,wel_interest_total,dre_invest_amount,dre_interest_total);

} 

function saveResult() 
{		
	var childAge = $('#child_age').val();
	var childEducationAge = $('#child_edu_age').val();
	var education_amount = $('#edu_amount').val();
	var currentAge = $('#current_age').val();
	var retireAge = $('#wealth_age').val();
	var wealthy_amount = $('#wel_amount').val();
	var dreamExpenseYear = $('#expense_year').val();
	var dream_amount = $('#expense_amount').val();
	var increaseRate = $('#inc_rate').val();
	var rateOfReturn = $('#interest').val();
	var investment_amount = $('#savings_amount').val();
	
	childAge = parseInt(childAge);
	childEducationAge = parseInt(childEducationAge);
	educationAmount = parseInt(education_amount);
	currentAge = parseInt(currentAge);
	retireAge = parseInt(retireAge);
	wealthyAmount = parseInt(wealthy_amount);
	dreamExpenseYear = parseInt(dreamExpenseYear);
	dreamAmount = parseInt(dream_amount);
	increaseRate = parseFloat(increaseRate,10);
	rateOfReturn = parseFloat(rateOfReturn,10);
	investmentAmount = parseInt(investment_amount);

	var title = "Composite Goal Planner - Current age "+currentAge+" and plan to acquire wealth at age"+retireAge;
	var url = "/tools-and-calculators/composite-financial-goal-planner-calculator?child_current_age="+childAge+"&child_education_age="+childEducationAge+"&education_amount="+educationAmount+"&current_age="+currentAge+"&wealth_age="+retireAge+"&wealth_amount="+wealthy_amount+"&expense_amount="+dreamAmount+"&expense_year="+dreamExpenseYear+"&inflation_rate="+increaseRate+"&expected_return="+rateOfReturn+"&savings_amount="+investmentAmount;	
	
	
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

function renderChart(eduSavingsTarget,welSavingsTarget,dreSavingsTarget,edu_invest_amount,edu_interest_total,wel_invest_amount,wel_interest_total,dre_invest_amount,dre_interest_total)
{	
	$('#compositechart').highcharts({
	    chart: {
	        type: 'pie',
	        height:400,
	        marginTop:0
	    },
	    title: {
	        text: 'Composite Goal Planner',
	        margin:0
	    },
	    legend: {
	          borderWidth: 1,
	          borderRadius: 5,
	      },
	      credits: {
	          enabled: false
	      },
	    plotOptions: {
	        pie: {
	            shadow: false,
	            center: ['50%', '50%']
	        }
	    },
	    tooltip: {
	        formatter: function () {
	            return '<b>' + this.point.name + '</b>: Rs. ' + this.y + '';
	        }
	    },
	    series: [{
	        data: [{
	        	name: 'Education Invested Amount',
	            y: edu_invest_amount,
	            parentId: 'first',
	            color: '#272c4e',
	            legendIndex: 1
	        }, {
	        	name: 'Education Interest',
	            y: edu_interest_total,
	            parentId: 'first',
	            color: '#0265D4',
	            legendIndex: 2
	        }, {
	        	name: 'Wealth Invested Amount',
	            y: wel_invest_amount,
	            parentId: 'second',
	            color: '#e41d23',
	            legendIndex: 5
	        }, {
	        	name: 'Wealth Interest',
	            y: wel_interest_total,
	            parentId: 'second',
	            color: '#2E4484',
	            legendIndex: 6
	        },{
	        	name: 'Expense Invested Amount',
	            y: dre_invest_amount,
	            parentId: 'third',
	            color: '#0CD42B',
	            legendIndex: 7
	        },{
	        	name: 'Expense Interest',
	            y: dre_interest_total,
	            parentId: 'third',
	            color: '#64E572',
	            legendIndex: 8
	        }],
	        showInLegend: false,
	        size: '60%',
	        dataLabels: {
	        	enabled: false
	        },
	        showInLegend: false
	    }, {
	        showInLegend: true,
	        data: [{
	        	name: 'Education',
	            id: 'first',
	            color: '#F9A003',
	            y: eduSavingsTarget,
	            legendIndex: 0
	        }, {
	        	name: 'Wealth',
	            id: 'second',
	            color: '#27A840',
	            y: welSavingsTarget,
	            legendIndex: 3
	        },{
	        	name: 'Expense',
	            id: 'third',
	            color: '#E54164',
	            y: dreSavingsTarget,
	            legendIndex: 6
	        }],
	        size: '80%',
	        innerSize: '60%',
	        dataLabels: {
	        	enabled: false
	        }
	    }]
	});
}
var download_text = "";
function downloadResult()
{
	download_text = "download";
	$("#send_email_model").modal('show');
}
function emailResult()
{
	download_text = "email";
	$("#send_email_model").modal('show');
}
function init_download(email)
{
	var childAge = $('#child_age').val();
	var childEducationAge = $('#child_edu_age').val();
	var educationAmount = $('#edu_amount').val();
	var currentAge = $('#current_age').val();
	var retireAge = $('#wealth_age').val();
	var wealthyAmount = $('#wel_amount').val();
	var dreamExpenseYear = $('#expense_year').val();
	var dreamAmount = $('#expense_amount').val();
	var increaseRate = $('#inc_rate').val();
	var rateOfReturn = $('#interest').val();
	var investmentAmount = $('#savings_amount').val();
	
	var txtResTotalAmt = $("#txtResTotalAmt").html();
	var txtResEduYear = $("#txtResEduYear").html();
	var txtResWelYear = $("#txtResWelYear").html();
	var txtResDreYear = $("#txtResDreYear" ).html();
	
	var txtResIncEduAmt = $("#txtResIncEduAmt").html();
	var txtResIncWelAmt = $("#txtResIncWelAmt").html();
	var txtResIncDreAmt = $("#txtResIncDreAmt").html();
	var txtResIncTotalAmt = $("#txtResIncTotalAmt").html();
	
	var txtResInvestEduAmt = $("#txtResInvestEduAmt").html();
	var txtResInvestWelAmt = $("#txtResInvestWelAmt").html();
	var txtResInvestDreAmt = $("#txtResInvestDreAmt").html();
	var txtResInvestTotalAmt = $("#txtResInvestTotalAmt").html();
	
	var txtResMonEduAmt = $("#txtResMonEduAmt").html();
	var txtResMonWelAmt = $("#txtResMonWelAmt").html();
	var txtResMonDreAmt = $("#txtResMonDreAmt").html();
	var txtResMonTotalAmt = $("#txtResMonTotalAmt").html();
	
	educationAmount = numbersWithComma(educationAmount);
	wealthyAmount = numbersWithComma(wealthyAmount);
	dreamAmount = numbersWithComma(dreamAmount);
	investmentAmount = numbersWithComma(investmentAmount);
	var calc_url = window.location.href;
	
	if(download_text == "download")
	{
		var param = "?childAge="+childAge+"&childEducationAge="+childEducationAge+"&educationAmount="+educationAmount+"&currentAge="+currentAge+"&retireAge="+retireAge;
		param += "&wealthyAmount="+wealthyAmount+"&dreamExpenseYear="+dreamExpenseYear+"&dreamAmount="+dreamAmount+"&increaseRate="+increaseRate+"&rateOfReturn="+rateOfReturn;
		param += "&investmentAmount="+investmentAmount+"&txtResTotalAmt="+txtResTotalAmt+"&txtResEduYear="+txtResEduYear+"&txtResWelYear="+txtResWelYear;
		param += "&txtResDreYear="+txtResDreYear+"&txtResIncEduAmt="+txtResIncEduAmt+"&txtResIncWelAmt="+txtResIncWelAmt;
		param += "&txtResIncDreAmt="+txtResIncDreAmt+"&txtResIncTotalAmt="+txtResIncTotalAmt+"&txtResInvestEduAmt="+txtResInvestEduAmt;
		param += "&txtResInvestWelAmt="+txtResInvestWelAmt+"&txtResInvestDreAmt="+txtResInvestDreAmt;
		param += "&txtResInvestTotalAmt="+txtResInvestTotalAmt+"&txtResMonEduAmt="+txtResMonEduAmt+"&txtResMonWelAmt="+txtResMonWelAmt+"&txtResMonDreAmt="+txtResMonDreAmt;
		param += "&txtResMonTotalAmt="+txtResMonTotalAmt+"&url="+calc_url;
		
		var url = '<c:url value="/downloadCompositeGoalPlannerCalcResult" />'+param;
		window.location = url;
		
		$('#send_email_model').modal('hide');
        setTimeout(function(){
        	 $("#adv-alert-msg").html("Thanks for download.");
        	 $("#adv-alert").modal('show');
    	},1000);
	}else{
		
		$.ajaxSetup({async:true});
    	$.post("/sendCompositeGoalPlannerCalcResult", {email : ""+email+"",childAge : ""+childAge+"",childEducationAge : ""+childEducationAge+"",educationAmount : ""+educationAmount+"",
    		currentAge : ""+currentAge+"",retireAge : ""+retireAge+"",wealthyAmount : ""+wealthyAmount+"",dreamExpenseYear : ""+dreamExpenseYear+"",dreamAmount : ""+dreamAmount+"",
    		increaseRate : ""+increaseRate+"",rateOfReturn : ""+rateOfReturn+"",investmentAmount : ""+investmentAmount+"",txtResTotalAmt : ""+txtResTotalAmt+"",
    		txtResEduYear : ""+txtResEduYear+"",txtResWelYear : ""+txtResWelYear+"",txtResIncDreAmt : ""+txtResIncDreAmt+"",
    		txtResIncTotalAmt : ""+txtResIncTotalAmt+"",txtResInvestEduAmt : ""+txtResInvestEduAmt+"",txtResInvestWelAmt : ""+txtResInvestWelAmt+"",
    		txtResInvestDreAmt : ""+txtResInvestDreAmt+"",txtResInvestTotalAmt : ""+txtResInvestTotalAmt+"",txtResMonEduAmt : ""+txtResMonEduAmt+"",
    		txtResMonWelAmt : ""+txtResMonWelAmt+"",txtResMonDreAmt : ""+txtResMonDreAmt+"",txtResMonTotalAmt : ""+txtResMonTotalAmt+"",url : ""+ calc_url +""}, function(data)
        {
    		
   			var result1 = $.trim(data);
          	var obj = jQuery.parseJSON(result1);
          	if(obj.status == 400)
          	{
          		$("#adv-alert-msg").html(obj.msg);
                $("#adv-alert").modal('show');
          		return false;
          	}
          	$('#send_email_model').modal('hide');
                 setTimeout(function(){
                 $("#adv-alert-msg").html("Thanks. We sent an email to your mail id");
                 $("#adv-alert").modal('show');
      	    },1000);
    			
        }, "text");
	}
}

function downloadResult()
{
	
	var edu_amount = $('#edu_amount').val();
	var wel_amount = $('#wel_amount').val();
	var expense_amount = $('#expense_amount').val();
	var current_age=$('#current_age').val();
	var wealth_age=$('#wealth_age').val();
	var child_age=$('#child_age').val();
	var child_edu_age=$('#child_edu_age').val();
	var expense_year=$('#expense_year').val();
	var inc_rate=$('#inc_rate').val();
	var interest=$('#interest').val();
	var savings_amount=$('#savings_amount').val();
	
	
	edu_amount = edu_amount.replace(/,/g, "");
	wel_amount = wel_amount.replace(/,/g, "");
	expense_amount = expense_amount.replace(/,/g, "");
	savings_amount = savings_amount.replace(/,/g, "");
	
	child_age = parseInt(child_age);
	child_edu_age = parseInt(child_edu_age);
	edu_amount = parseInt(edu_amount);
	current_age = parseInt(current_age);
	wealth_age = parseInt(wealth_age);
	wel_amount = parseInt(wel_amount);
	expense_year = parseInt(expense_year);
	expense_amount = parseInt(expense_amount);
	inc_rate = parseFloat(inc_rate,10);
	interest = parseFloat(interest,10);
	savings_amount = parseInt(savings_amount);
	
	/* var educationAmount = 0;
	var wealthyAmount = 0;
	var dreamAmount = 0;
	var totalCurrentPrice = 0;
	var eduAgeDiff = 0;
	var welAgeDiff = 0;
	var DreAgeDiff = 0;
	var eduSavingsTarget = 0;
	var welSavingsTarget = 0;
	var dreSavingsTarget = 0;
	var totalPriceInc = 0;
	var currentAmountEdu = 0;
	var currentAmountWel = 0;
	var currentAmountDir = 0;
	var investmentAmount = 0;
	var monthlySavingsEdu = 0;
	var monthlySavingsWel = 0;
	var monthlySavingsDre = 0;
	var totalMonthlySavings = 0; */
	
	 var txtResEduAmt = $( "#txtResEduAmt" ).html();
	var txtResWelAmt = $( "#txtResWelAmt" ).html();
	var txtResDreAmt = $( "#txtResDreAmt" ).html();
	var txtResTotalAmt = $( "#txtResTotalAmt" ).html();
	
	var txtResEduYear = $( "#txtResEduYear" ).html();
	var txtResWelYear = $( "#txtResWelYear" ).html();
	var txtResDreYear = $( "#txtResDreYear" ).html();
	
	
	var txtResRate1 = $( "#txtResRate1" ).html();
	var txtResRate2 = $( "#txtResRate2" ).html();
	var txtResRate3 = $( "#txtResRate3" ).html();
	
	
	var txtResIncEduAmt = $( "#txtResIncEduAmt" ).html();
	var txtResIncWelAmt = $( "#txtResIncWelAmt" ).html();
	var txtResIncDreAmt = $( "#txtResIncDreAmt" ).html();
	var txtResIncTotalAmt = $( "#txtResIncTotalAmt" ).html();
	
	var txtResInvestEduAmt = $( "#txtResInvestEduAmt" ).html();
	var txtResInvestWelAmt = $( "#txtResInvestWelAmt" ).html();
	var txtResInvestDreAmt = $( "#txtResInvestDreAmt" ).html();
	var txtResInvestTotalAmt = $( "#txtResInvestTotalAmt" ).html();
	
	var txtResMonEduAmt = $( "#txtResMonEduAmt" ).html();
	var txtResMonWelAmt = $( "#txtResMonWelAmt" ).html();
	var txtResMonDreAmt = $( "#txtResMonDreAmt" ).html();
	var txtResMonTotalAmt = $( "#txtResMonTotalAmt" ).html();
	
	edu_amount = numbersWithComma(edu_amount);
	wel_amount = numbersWithComma(wel_amount);
	expense_amount = numbersWithComma(expense_amount);
	current_age = numbersWithComma(current_age);
	wealth_age = numbersWithComma(wealth_age);
	child_age = numbersWithComma(child_age);
	child_edu_age = numbersWithComma(child_edu_age);
	expense_year = numbersWithComma(expense_year);
	inc_rate = numbersWithComma(inc_rate);
	interest = numbersWithComma(interest);
	savings_amount = numbersWithComma(savings_amount);
	/* investmentAmount = numbersWithComma(investmentAmount); */
	
	
	var calc_url = window.location.href;
	
	
	var param = "?edu_amount="+edu_amount+"&wel_amount="+wel_amount+"&expense_amount="+expense_amount+"&current_age="+current_age+"&wealth_age="+wealth_age;
	param += "&child_age="+child_age+"&child_edu_age="+child_edu_age+"&expense_year="+expense_year+"&inc_rate="+inc_rate+"&interest="+interest;
	param += "&savings_amount="+savings_amount;
	
    param += "&txtResEduAmt="+txtResEduAmt+"&txtResWelAmt="+txtResWelAmt+"&txtResDreAmt="+txtResDreAmt+"&txtResTotalAmt="+txtResTotalAmt;
	param += "&txtResEduYear="+txtResEduYear+"&txtResWelYear="+txtResWelYear+"&txtResDreYear="+txtResDreYear;
	param += "&txtResRate1="+txtResRate1+"&txtResRate2="+txtResRate2+"&txtResRate3="+txtResRate3;
	param += "&txtResIncEduAmt="+txtResIncEduAmt+"&txtResIncWelAmt="+txtResIncWelAmt+"&txtResIncDreAmt="+txtResIncDreAmt+"&txtResIncTotalAmt="+txtResIncTotalAmt;
	param += "&txtResInvestEduAmt="+txtResInvestEduAmt+"&txtResInvestWelAmt="+txtResInvestWelAmt+"&txtResInvestDreAmt="+txtResInvestDreAmt+"&txtResInvestTotalAmt="+txtResInvestTotalAmt;
	param += "&txtResMonEduAmt="+txtResMonEduAmt+"&txtResMonWelAmt="+txtResMonWelAmt+"&txtResMonDreAmt="+txtResMonDreAmt+"&txtResMonTotalAmt="+txtResMonTotalAmt+"&url="+calc_url; 
		
		var url = '/tools-and-calculators/downloadCompositeGoalPlannerCalcResult'+param;
		window.location = url;
		
		$('#send_email_model').modal('hide');
        setTimeout(function(){
        	swal({title:"",text:"Thanks for the Download."});
    	},1000);
	
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
	             <h2 class="title title_header text-dark">Composite Financial Goal Planner Calculator</h2>
	             <ol class="breadcrumb  text-black mt-10">
	               <li><a href="/" class="title_header">Home</a></li>
	               <li><a href="#" class="title_header">Tools & Calculators</a></li>
	               <li class="active  title_header">Composite Financial Goal Planner Calculator</li>
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
                                    	What is the amount you would need to fulfil your child educational need at today's cost (Rs)
                                    </p>
                                    <p class="m-0">
                                    	<input type="text" class="form-control" value="2500000" id="edu_amount" class="number" maxlength="8" onchange="eduAmountChange()" />
                                    </p>
                                    <p class="m-0">
                                    	<div id="edu_amount_slider" style="margin:0px;"></div>
										<div class="steps" id="loanamountsteps">
											<span style="left: 0%;" class="tick">|<br />
											<span class="marker">1 Lakh</span></span><span style="left: 25%;" class="tick">|<br />
											<span class="marker">25 Lakhs</span></span><span style="left: 50%;" class="tick">|<br />
											<span class="marker">50 Lakhs</span></span><span style="left: 75%;" class="tick">|<br />
											<span class="marker">75 Lakhs</span></span><span style="left: 100%;" class="tick">|<br />
											<span class="marker">1 Crore</span></span>
										</div>
                                    </p>
                                </div>
                            </div>
                            
                            <div class="col-sm-12 my-3">
                                <div class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                    <p class="m-0 pb-2">
                                    	What is the amount you would need to consider yourself wealthy at today's cost (Rs)
                                    </p>
                                    <p class="m-0">
                                    	<input type="text" class="form-control" value="5000000" id="wel_amount" class="number" maxlength="8" onchange="welAmountChange()" />
                                    </p>
                                    <p class="m-0">
                                    	<div id="wel_amount_slider" style="margin:0px;"></div>
										<div class="steps" id="loantermsteps">
											<span style="left: 0%;" class="tick">|<br />
											<span class="marker">1 Lakh</span></span><span style="left: 25%;" class="tick">|<br />
											<span class="marker">25 Lakhs</span></span><span style="left: 50%;" class="tick">|<br />
											<span class="marker">50 Lakhs</span></span><span style="left: 75%;" class="tick">|<br />
											<span class="marker">75 Lakhs</span></span><span style="left: 100%;" class="tick">|<br />
											<span class="marker">1 Crore</span></span>
										</div>
                                    </p>
                                </div>
                            </div>
                            
                            <div class="col-sm-12 my-3">
                                <div class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                    <p class="m-0 pb-2">
                                    	What is the amount you would need to spend on buying an item you dream - a big car or a foreign holiday or a house (Rs)
                                    </p>
                                    <p class="m-0">
                                    	<input type="text" class="form-control" value="1500000" id="expense_amount" class="number" maxlength="8" onchange="expenseAmountChange()" />
                                    </p>
                                    <p class="m-0">
                                    	<div id="expense_amount_slider" style="margin:0px;"></div>
										<div class="steps" id="loantermsteps">
											<span style="left: 0%;" class="tick">|<br />
											<span class="marker">1 Lakh</span></span><span style="left: 25%;" class="tick">|<br />
											<span class="marker">25 Lakhs</span></span><span style="left: 50%;" class="tick">|<br />
											<span class="marker">50 Lakhs</span></span><span style="left: 75%;" class="tick">|<br />
											<span class="marker">75 Lakhs</span></span><span style="left: 100%;" class="tick">|<br />
											<span class="marker">1 Crore</span></span>
										</div>
                                    </p>
                                </div>
                            </div>
                            
                            <div class="col-sm-12 my-3">
                                <div class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                    <p class="m-0 pb-2">
                                    	What is your current age? (in years)
                                    </p>
                                    <p class="m-0">
                                    	<input type="text" class="form-control" value="25" id="current_age" maxlength="3" onchange="currentAgeChange()" />
                                    </p>
                                    <p class="m-0">
                                    	<div id="current_age_slider" style="margin:0px;"></div>
										<div class="steps" id="loantermsteps">
											<span style="left: 0%;" class="tick">|<br />
											<span class="marker">10</span></span><span style="left: 16.66%;" class="tick">|<br />
											<span class="marker">25</span></span><span style="left: 44.44%;" class="tick">|<br />
											<span class="marker">50</span></span><span style="left: 72.22%;" class="tick">|<br />
											<span class="marker">75</span></span><span style="left: 100%;" class="tick">|<br />
											<span class="marker">100</span></span>
										</div>
                                    </p>
                                </div>
                            </div>
                            
                            <div class="col-sm-12 my-3">
                                <div class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                    <p class="m-0 pb-2">
                                    	What age you plan to acquiring wealth? (in years)
                                    </p>
                                    <p class="m-0">
                                    	<input type="text" class="form-control" value="60" id="wealth_age" maxlength="3" onchange="wealthAgeChange()" />
                                    </p>
                                    <p class="m-0">
                                    	<div id="wealth_age_slider" style="margin:0px;"></div>
										<div class="steps" id="loantermsteps">
											<span style="left: 0%;" class="tick">|<br />
											<span class="marker">10</span></span><span style="left: 16.66%;" class="tick">|<br />
											<span class="marker">25</span></span><span style="left: 44.44%;" class="tick">|<br />
											<span class="marker">50</span></span><span style="left: 72.22%;" class="tick">|<br />
											<span class="marker">75</span></span><span style="left: 100%;" class="tick">|<br />
											<span class="marker">100</span></span>
										</div>
                                    </p>
                                </div>
                            </div>
                            
                            <div class="col-sm-12 my-3">
                                <div class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                    <p class="m-0 pb-2">
                                    	What is your child current age? (in years)
                                    </p>
                                    <p class="m-0">
                                    	<input type="text" class="form-control" value="5" id="child_age" maxlength="3" onchange="childAgeChange()" />
                                    </p>
                                    <p class="m-0">
                                    	<div id="child_age_slider" style="margin:0px;"></div>
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
                                    	What age your child would be ready for professional education? (in years)
                                    </p>
                                    <p class="m-0">
                                    	<input type="text" class="form-control" value="25" id="child_edu_age" maxlength="3" onchange="childEduAgeChange()" />
                                    </p>
                                    <p class="m-0">
                                    	<div id="child_edu_age_slider" style="margin:0px;"></div>
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
                                    	Afer how many years away would you need the amount to spend on buying an item you dream (Rs)
                                    </p>
                                    <p class="m-0">
                                    	<input type="text" class="form-control" value="30" id="expense_year" maxlength="3" onchange="expenseYearChange()" />
                                    </p>
                                    <p class="m-0">
                                    	<div id="expense_year_slider" style="margin:0px;"></div>
										<div class="steps" id="loantermsteps">
											<span style="left: 0%;" class="tick">|<br />
											<span class="marker">1</span></span><span style="left: 24.24%;" class="tick">|<br />
											<span class="marker">25</span></span><span style="left: 49.49%;" class="tick">|<br />
											<span class="marker">50</span></span><span style="left: 74.74%;" class="tick">|<br />
											<span class="marker">75</span></span><span style="left: 100%;" class="tick">|<br />
											<span class="marker">100</span></span>
										</div>
                                    </p>
                                </div>
                            </div>
                            
                            <div class="col-sm-12 my-3">
                                <div class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                    <p class="m-0 pb-2">
                                    	The expected rate of inflation over the years (% per annum)
                                    </p>
                                    <p class="m-0">
                                    	<input type="text" class="form-control" value="7.5" id="inc_rate" maxlength="4" onchange="increaseRateChange()" />
                                    </p>
                                    <p class="m-0">
                                    	<div id="increase_rate_slider" style="margin:0px;"></div>
										<div class="steps">
											<span style="left: 0%;" class="tick">|<br />
											<span class="marker">5</span></span><span style="left: 25%;" class="tick">|<br />
											<span class="marker">7.5</span></span><span style="left: 50%;" class="tick">|<br />
											<span class="marker">10</span></span><span style="left: 75%;" class="tick">|<br />
											<span class="marker">12.5</span></span><span style="left: 100%;" class="tick">|<br />
											<span class="marker">15</span></span>
										</div>
                                    </p>
                                </div>
                            </div>
                            
                            <div class="col-sm-12 my-3">
                                <div class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                    <p class="m-0 pb-2">
                                    	What rate of return would you expect your investment? (% per annum)
                                    </p>
                                    <p class="m-0">
                                    	<input type="text" class="form-control" value="12.5" id="interest" maxlength="4" onchange="interestChange()" />
                                    </p>
                                    <p class="m-0">
                                    	<div id="interest_slider" style="margin:0px;"></div>
										<div class="steps">
											<span style="left: 0%;" class="tick">|<br />
											<span class="marker">5</span></span><span style="left: 16.66%;" class="tick">|<br />
											<span class="marker">7.5</span></span><span style="left: 33.33%;" class="tick">|<br />
											<span class="marker">10</span></span><span style="left: 50%;" class="tick">|<br />
											<span class="marker">12.5</span></span><span style="left: 66.66%;" class="tick">|<br />
											<span class="marker">15</span></span><span style="left: 83.33%;" class="tick">|<br />
											<span class="marker">17.5</span></span><span style="left: 100%;" class="tick">|<br />
											<span class="marker">20</span></span>
										</div>
                                    </p>
                                </div>
                            </div>
                            
                            <div class="col-sm-12 my-3">
                                <div class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px">
                                    <p class="m-0 pb-2">
                                    	How much savings you have now? (Rs)
                                    </p>
                                    <p class="m-0">
                                    	<input type="text" class="form-control" value="500000" id="savings_amount" class="number" maxlength="8" onchange="savingsAmountChange()" />
                                    </p>
                                    <p class="m-0">
                                    	<div id="savings_amount_slider" style="margin:0px;"></div>
										<div class="steps" id="loanamountsteps">
											<span style="left: 0%;" class="tick">|<br />
											<span class="marker">0</span></span><span style="left: 25%;" class="tick">|<br />
											<span class="marker">25 Lakhs</span></span><span style="left: 50%;" class="tick">|<br />
											<span class="marker">50 Lakhs</span></span><span style="left: 75%;" class="tick">|<br />
											<span class="marker">75 Lakhs</span></span><span style="left: 100%;" class="tick">|<br />
											<span class="marker">1 Crore</span></span>
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
                                <div id="compositechart"></div>
							</div>
							</div>
						</div>

                    </div>
                    </div>
                    
                     <div class="row pb-4">
                        <div class="col-sm-12">
							<div class="service-box icon-box iconbox-theme-colored bg-white p-30 mb-10 border-1px table-responsive">
                                		   	<table id="result-table-1" class="table table-striped table-bordered table-hover" cellspacing="0" width="100%" style="margin-top:0px !important;">
										   	<thead>
										   	<tr>
											  <th colspan="5"><div class="text-center">Result</div></th>
											</tr>
											<tr>
											  <th width="28%">Composite Planner</th>
											  <th width="18%">Education</th>
											  <th width="18%">Wealth</th>
											  <th width="18%">Expense</th>
											  <th width="18%">Total</th>
											</tr>
											</thead>
											<tbody>
											<tr>
											  <td width="28%"><p>Amount at today's prices</p></td>
											  <td width="18%">Rs. <span id="txtResEduAmt"></span></td>
											  <td width="18%">Rs. <span id="txtResWelAmt"></span></td>
											  <td width="18%">Rs. <span id="txtResDreAmt"></span></td>
											  <td width="18%">Rs. <span id="txtResTotalAmt"></span></td>
											</tr>
											<tr>
											  <td width="28%">Number of years to achieve your goals</td>
											  <td width="18%"><span id="txtResEduYear"></span> year(s)</td>
											  <td width="18%"><span id="txtResWelYear"></span> year(s)</td>
											  <td width="18%"><span id="txtResDreYear"></span> year(s)</td>
											  <td width="18%"><b>-</b></td>
											</tr>
											<tr>
											  <td width="28%">Expected rate of return from investments (% per annum)</td>
											  <td width="18%"><span id="txtResRate1"></span> %</td>
											  <td width="18%"><span id="txtResRate2"></span> %</td>
											  <td width="18%"><span id="txtResRate3"></span> %</td>
											  <td width="18%"><b>-</b></td>
											</tr>
											<tr>
											  <td width="28%">Personal goal target (Inflation adjusted)</td>
											  <td width="18%">Rs. <span id="txtResIncEduAmt"></span></td>
											  <td width="18%">Rs. <span id="txtResIncWelAmt"></span></td>
											  <td width="18%">Rs. <span id="txtResIncDreAmt"></span></td>
											  <td width="18%">Rs. <span id="txtResIncTotalAmt"></span></td>
											</tr>
											<tr>
											  <td width="28%">Your current savings amount</td>
											  <td width="18%">Rs. <span id="txtResInvestEduAmt"></span></td>
											  <td width="18%">Rs. <span id="txtResInvestWelAmt"></span></td>
											  <td width="18%">Rs. <span id="txtResInvestDreAmt"></span></td>
											  <td width="18%">Rs. <span id="txtResInvestTotalAmt"></span></td>
											</tr>
											<tr>
											  <td width="28%">Monthly Savings required</td>
											  <td width="18%">Rs. <span id="txtResMonEduAmt"></span></td>
											  <td width="18%">Rs. <span id="txtResMonWelAmt"></span></td>
											  <td width="18%">Rs. <span id="txtResMonDreAmt"></span></td>
											  <td width="18%">Rs. <span id="txtResMonTotalAmt"></span></td>
											</tr>
											</tbody>
											</table>
							</div>
							</div>
						</div>
                    
                </div>
            </div>
        </section>
        <!-- End Section -->
  </main>