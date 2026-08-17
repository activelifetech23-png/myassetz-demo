<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<style>
p{
	margin-bottom:0;
}
.marginBottom30{
	margin-bottom:30px;
}
.marginTop30{
	margin-top:30px;
}
.marginTop135{
	margin-top:135px;
}
.robo2,.robo3,.robo4,.robo5{
	display:none;
}
#save_goal_div,#recommended_div{
	display:none;
}
.table thead th, .table tbody td, .table tfoot td{
	font-size:0.8125rem !important;
}
.table thead tr th, .table tbody tr td, .table tfoot tr td{
	padding: 9px !important;
}
.form-control:disabled, .form-control[readonly]{
	background-color:#fff;
}
@media (min-width: 576px){
.modal-dialog{
	max-width:1200px !important;
}
}
@media only screen and (max-width: 576px) {
	.modalscroll{
		overflow-y: auto !important;
	    max-height: 100% !important;
	    /* width: 600px; */
	    overflow-y: scroll;
	    /* position: relative; */
	    height: 400px;
	    }
	}
@media only screen and (max-width: 576px) {
	.pt-3
	{    
		padding-top: 6rem!important;
	}
}
@media (max-width: 576px)
{
#txt_years, #txt_amount,  #txt_inflation,  #txt_goal_name, #sel_risk  {
    width: 100% !important;
    margin-bottom: 15px;
}
}
@media only screen and (max-width: 576px) {
    .modal {
  /* overflow: scroll !important; */
    max-height: 660px;
    overflow-y: scroll;
	}
}
@media only screen and (max-width: 576px) {
    .row {
     display: contents;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
    margin-right: -15px;
    margin-left: -15px;
    }    
}
.check_all_btn{
	cursor:pointer;
	text-decoration: underline;
}
.irs-grid-text{
	color:#000;
	font-weight:bold;
}
.retirement_div, .other_goal_div{
	display:none;
}
.result_div{
	font-size:16px;
}
.txt_blue{
	color:#1D3F8A;
	font-weight:bold;
}
.listStyle {
	height: 15px;
	width: 15px;
	border: 1px solid #909090;
	border-radius: 50%;
	margin: 10%;
	cursor: pointer;
	transition: all .5s ease-in-out;
}
.activeli { 
	background: #002841;
}
.ageLabel{
	font-size: 4rem;
	font-weight: normal;
	margin-top: -10px;
	margin-left: -5px;
}
.innerDiv {
	margin: 10% 0px;
}
.textbox {
    font-size: 14px;
    text-align:center;
    width: 150px;
    padding: 5px;
    border: solid 1px #cccccc;
    -webkit-border-radius: 28;
    -moz-border-radius: 28;
    border-radius: 7px;
}
.tbl_results {
	width:100%;
	border: 1px solid #e3e3e3;	
}
.tbl_results th,td{
	padding:20px;
	font-size:16px;
}
.robo1, .robo2, .robo3, .robo4, .robo5{
	margin: 0px auto;
	background-color:#fff;
	margin-bottom: 5%;
	margin-top: 2%;
	-webkit-box-shadow: 0px 0px 40px 0px rgba(0, 0, 0, 0.15);
	box-shadow: 0px 0px 40px 0px rgba(0, 0, 0, 0.15);
	padding-top: 3%;
	font-size: 16px;
	letter-spacing: 0.05rem;
}
.robo5{
	padding-top: 0px;
	margin-top:0px;
}
.roboInput2 {
	border: 0;
    border-bottom: 1px solid #ddd;
	border-radius: 0px;
	 -webkit-box-shadow: none !important;
    box-shadow: none !important;
    font-size: 14px;
	color: #172460;
	font-weight: 500;
}
.roboInput {
	border: 0;
    border-bottom: 1px solid #4b4e53;
	border-radius: 0px;
	 -webkit-box-shadow: none !important;
    box-shadow: none !important;
    font-size: 17px;
	color: #172460;
	font-weight: 500;
	text-align:center;
}
.roboInput:focus {
  	border: 0;
    border-bottom: 2px solid #4b4e53;
    border-radius: 0px;
     -webkit-box-shadow: none !important;
    box-shadow: none !important;
}
.marginTopMinus30{
	margin-top:-10px;
}
.robo1 label{
	font-size:19px !important;
	font-weight: lighter;	
	color: #777;
	display: inline-block;
    max-width: 100%;
    width:100%;
}
.robo2 label{
	font-size:14px;
	font-weight: 500;	
	color: #777;
}
.clear{
	clear:both;
}
.marginTop50{
	margin-top:50px;
}
.title-v1{
    text-align:center;
}
.width240{
	width:240px;
}
.btn-primary:focus, .btn-primary.focus {
    color: #fff !important;
}
.padding0{
	padding:0px;
}
.marginBottom50{
	margin-bottom:50px;
}
.height100{
	height:100%;
}
.marginRight20{
	margin-right:20px;
}
.btn{
	cursor:pointer;
}
.marginTop30{
	margin-top:30px;
}
.padding100{
	padding:100px;
}
#tbl_portfolio_returns th{
	font-size: 12px;
    color:#000;
}
#tbl_portfolio_returns td{
	font-size: 12px;
    color:#000;
    vertical-align: inherit;
}
#tbl_portfolio_returns input{
	font-size:12px;
	color:#000;
}
#tbl_portfolio_returns div{
	font-size:12px;
	color:#000;
}
#tbl_portfolio_returns a{
    color: #000;
    font-size: 11px !important;
    font-weight: bold;
}
.popup_table td, .popup_table th{
	font-size:11px;
}
.btn-own {
	background: none;
	color: #101010;
	border: 0px;
	padding:0px;
}
.font-size-16{
	font-size:16px;
}
b{
	font-weight:bold;
	color: #777;
}
.sweet-alert fieldset{
	margin:0px;
	padding:0px;
}
.outer_cover{	
	padding:20px;
}
.check_all_btn{
	cursor:pointer;
	text-decoration: underline;
}
.value 
{
	font-size: 15px;
	font-weight: 600;
	margin-bottom: 10px;
}
.goal_creation h1, .goal_creation h2, .goal_creation h3, .goal_creation h4, .goal_creation h5, .goal_creation h6 {
    font-family: "Open Sans", sans-serif;
}
.result_span{
	font-size: 14px;
	font-weight: bold; 
	color: #000;
}
#goal_pie_chart {
    height:100%;
    width:100%;
    /* margin-left:10px; */
}
#goal_line_chart {
    height:100%;
    width:100%;
    margin-left:10px;
}

.btn-info {
    color: #fff;
    background-color: #2acaff;
    border-color: #2acaff;
}
.btn-primary{
	color: #fff;
    background-color: #172460;
    border-color: #172460;
}
.Truuegro2{
	border: 3px solid #172460;
    color: #172460;
}
.Truuegro3{
	background-color:#172460;
    color: #fff;
}
#step2,#step3,#step4,#step5,#step6,#step7
{
	display:none;
}
.ques2,.ques3,.ques4,.ques5,.ques6,.ques7,.ques8{
	display:none;
}
.question_head{
	font-size:14px;
	margin-bottom:30px;
	color:grey;
}
.question{
	margin-bottom:10px;
	font-size:14px;
	font-weight:bold;
}
.answer{
	border-top:1px solid #ddd;
	padding:18px;
}
.answer_last{
	border-top:1px solid #ddd;
	border-bottom:1px solid #ddd;
	padding:18px;
}
.popup_table td, .popup_table th{
	font-size:11px;
}
.calc_div1{
	/* min-width:800px; */
}
.lbl_qu{
	font-size:13px;
	font-weight:bold;
	color:#000;
}
.lbl_radio{
	font-size:13px;
}
.btn-circle {
    width: 30px;
    height: 30px;
    text-align: center;
    padding: 6px 0;
    font-size: 12px;
    line-height: 1.428571429;
    border-radius: 15px;
}
.form-inline{
	display:block;
}
.Truuegro_bold{
	font-weight:bold;
}
.mission_body{
	padding-bottom:30px;
}
.modal-content{
	border-radius:0px;
}


/* Custom CSS Starts Here */

.col-md-12.text-center.py-5 {
    padding-bottom: 3rem !important;
    padding-top: 3rem !important;
}

.container.goal_creation {
    padding-top: 0px !important;
}

.box.bg-tf.p-3 {
    box-shadow: 0 3px 10px rgb(0 0 0 / 16%);
    padding: 1rem!important;
    box-sizing: border-box;
    margin-bottom: 1rem!important;
}
h1.text-center {
    color: #172460 !important;
    font-size: 30px !important;
}
.col-md-12.text-alignment {
    font-family: "Helvetica Neue",Helvetica,Arial,sans-serif !important;
    line-height: 6;
}
button.btn.btn-primary.btn-lg.btnCol:hover {
    background: #003399 !important;
    border-color: #003399 !important;
}
.box.bg-tf.p-3.Truuegro3:hover {
    background: #003399 !important;
}
.box.bg-tf.p-3.Truuegro2:hover {
    border-color: #003399 !important;
}
tspan {
    font-weight: bold;
    font-size: 11px;
}
button.btn.btn-primary.btn-block:hover {
    background: #003399 !important;
    border-color: #003399 !important;
}
button.btn.btn-success.btn-block {
    background: #172460 !important;
    border-color: #172460 !important;
}
button.btn.btn-success.btn-block:hover {
    background: #003399 !important;
    border-color: #003399 !important;
}
.row.pt-3 {
    margin: 20px 0 0 0;
}

.goalcontentbg
{
   background: #20C4B7;
    color: #fff;
    position: relative;
    bottom: 0;
    transition: bottom ease 0.5s;
    padding: 7px;
    border-radius: 5px;
}

.goalcontentbg:hover {
  bottom: -10px;
}
.grow{
	display: table-cell;
	height:100%;
	width: 25%;
	-webkit-transition:width 500ms;
	-moz-transition:width 500ms;
	transition:width 500ms;
}
.grow:hover {
	width:40%;
}
.goalcolumnrange
{
	float: left;
    width: 38%;
}
.goalcolumn
{
  float: left;
 width: 50%;
}
.chartpagefirstrowcontent
{
	margin: 0px;
    border-bottom: 1px solid #eaeaea;
    border-top: 1px solid #eaeaea;   
}
.checkcolor
{
  	color: #20C4B7;
}
.bordercontent2
{
	border-left: 1px solid #eee;
}
.amtcolor
{
    color: #20C4B7;
}
@media (max-width: 576px)
{
 .oldrobo3 {
   margin-top: 5px !important;
   margin-left: 17px !important;
}
}
.tblresp
{
justify-content: center !important; */
   
    position: relative;
    top: 0;
    bottom: 0;
    left: 46px !important;
    right: 40px !important;
    margin: auto; 
    /* max-width: 79% !important; */
    box-shadow: 0 0 13px #ccc;
    width: 94% !important;
    max-width: 100% !important;
}
.portfolioreturns
{       
 	align-content: 178px !important;
    float: left;
    background: #fff;
    padding: 30px 0;
    box-shadow: 0 0 13px #ccc;
    margin-left: auto;
    margin-right: auto;
    /* margin-left: 2% !important; */
    /* text-align: center; */
    /* float: left; */
    width: 99.76666666% !important;
}

.tabletitlehead
{
	padding: 8px;
}
table thead tr th.threturn .yearsfilter {
  	position: relative;
    width: 80px;
 	margin-bottom: -24px;
    margin-top: 3px;
}
}
table thead tr th.threturn {
    position: relative;
}

table thead tr th.threturn .yearsfilter a {
    width: 21px;
    height: 20px;
    border: 1px solid #dfdfdf;
    border-radius: 25%;
    display: inline-block;
    line-height: 19px;
    cursor: pointer;
    font-size: 11px;
    text-align: center;
    background: #20C4B7;
    text-shadow: none;
    position: relative;
    z-index: 1;
    top:-5px;
}
element.style {
}
table thead tr th.threturn .yearsfilter a:hover, table thead tr th.threturn .yearsfilter a.active {
    background: #379e5c;
    color: #FFFFFF;
}

table thead tr th.threturn .yearsfilter a {
    width: 21px;
    height: 20px;
    border: 1px solid #dfdfdf;
    border-radius: 25%;
    display: inline-block;
    line-height: 19px;
    cursor: pointer;
    font-size: 11px;
    text-align: center;
    background: #20C4B7;
    text-shadow: none;
    position: relative;
    z-index: 1;
    margin: 0 1px;
}
.threturn.active {
    background: #6ac259 !important;
}
.threturn.a {
    background-color: transparent;
    text-decoration: none;
    outline: none;
}
.displaytd
{
	display: table-cell;
	text-align: center;
}
.undisplaytd
{
	display: none;
}
.trlineheight
{
    line-height: 14px;
}	
.bordercontent2
{
	border-left: 1px solid #eee;
}
.tablemarginwidth
{
    width: 100% !important;
    margin: 0 auto !important;
    padding-left: 2% !important;
}
.schemenamethtd
{
    text-align: left !important;
    word-wrap: break-word;
    width: 40%; 
    padding: 1px !important;
    line-height: 19px;
   /*  height: 43px !important; */
    

}
.categorythtdwidth
{
	width: 178px !important;
}
.tabletextleft
{
	text-align: left !important;
}

.listofrecscheme
{
	text-align: center; 
	margin-bottom: 19px; 
	font-family: "Roboto", sans-serif;
	margin-top: 22px;
}
.process-payment
{
	/* float: right;
    width: 246px;
    display: block;
    margin: auto;
    margin-right: 115px;
    font-size: 14px !important; */
    float: right;
   /*  width: 330px; */
    display: block;
    margin: auto;
    margin-right: 115px;
    font-size: 14px !important;
    margin-left: auto;
    margin-right: auto;
    max-width: 100% !important;
   
}
.total_payment
{
    border: 1px solid #e1e0e0;
    padding: 0px 10px;
    margin: 10px 0;
    
   /*  border: 1px solid #e1e0e0;
    padding: 10px 8px 8px -23px;
    margin: 10px 0; */
}
.title
{
    color: #414141;
    font-size: 17px;
    padding: 6px;
    border-radius: 7px;
}
.amount
{
	color: #343333;
    font-size: 21px;
    font-family: GTAmerica-Medium;
}
.btnfloat
{
	float: right;
    margin-right: 13px;	
}
.robo2design
{   
    text-align: justify;
}
.btn-success {
    color: #fff;
    background-color: #172460 !important;
    border-color: #172460 !important;
}
.thexistingportfolio
{
	font-size: 12px;
    line-height: 1.8;
    font-family: "Roboto", sans-serif;
    color: #ffffff;
    background: #172460;    
}

.ulfontsize
{
    font-size: 11px !important;
}
.planboxheading
{
 	font-family: gtAmerica-Regular;
    font-size: 18px;
    color: #2e3e4f;
    margin: 10px 0;
    font-weight: bold;
}
.planboxfeaturelist
{
	float: left;
    line-height: 28px;
    font-family: "Roboto", sans-serif;
    color: #4d4d4d;
    font-size: 12px;
}
.planboxfeaturelist2
{
	margin: 0px;
    margin-top: 53px;
}
.row:after {
  content: "";
  display: table;
  clear: both;
}
.form-control {
    height: 45px;
}
.text-success {
	color: #20C4B7;
}
</style>

<script>
var target_goal = "Child Wedding";
var goal_name = "Child Wedding";
var amount = "";
var age = 30;
var horizon = "";
var risk = "";
var inflation = "";
var sip_amount = 0;
var target_amount = "";
var remaining_goal_amount = 0;
var remaining_sip_amount = 0;
var goal_based_amount = 0;
var debt = 0;
var equity = 0;
var liquid_debt = 0;
var short_term_debt = 0;
var long_term_debt = 0;
var equity_balanced = 0;
var equity_largecap = 0;
var equity_midcap = 0;
var equity_diversified = 0;
var hybrid_debt = 0;
var ques_flag = 1;
var existing_portfolio_flag = true;
var existing_flag = false;
var login_customer_flag = false;
var userid = 0;

$(document).ready(function(){
	
	userid = '${userid}';

	$("#sel_risk").val("Conservative");

	var amot = '${amount}';
	if(amot != "")
	{
		amount = '${amount}';
		horizon = '${horizon}';
		inflation = '${inflation}';
		risk = '${risk}';
		goal_name = '${goal_name}';
		
		login_customer_flag = true;

	     $("#txt_amount").val(amount);
		 $("#txt_years").val(horizon);
		 $("#txt_inflation").val(inflation);
	     $("#sel_risk").val(risk);
	     $("#txt_goal_name").val(goal_name);

	    checkResult();
	}
	
	$(".ques_1").show();
	
	  $("#txt_years").keypress(function(event) {
	        // Allow only backspace and delete
	        if ( event.keyCode == 46 || event.keyCode == 8 ) {
	            // let it happen, don't do anything
	        }
	        else {
	            // Ensure that it is a number and stop the keypress
	            if (event.keyCode < 48 || event.keyCode > 57 ) {
	                event.preventDefault(); 
	            }   
	        }
	    });	  
});

function goToStep1()
{
	$(".robo1").show();
	$(".robo2").hide();
	$(".robo3").hide();
	$(".robo4").hide();
	$(".robo5").hide();
	document.body.scrollTop = 0; // For Safari
	document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera

}
function goToStep2()
{
	$(".robo1").hide();
	$(".robo2").hide();
	$(".robo3").show(); 
	$(".robo4").hide();
	$(".robo5").hide();
	document.body.scrollTop = 0; // For Safari
	document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera

}
function goToStep3()
{
	$(".robo1").hide();
	$(".robo2").hide();
	$(".robo3").hide(); 
	$(".robo4").show();
	$(".robo5").hide();
	document.body.scrollTop = 0; // For Safari
	document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera

}
function riskProfileChange()
{
	risk = $("#sel_risk").val();
	if(risk == "")
 	{	
    	$(".robo1").hide();
    	$(".robo3").hide();
    	$(".robo4").hide();
    	$(".robo5").hide();
    	$(".robo2").show();
    	$("#step1").show();
    	document.body.scrollTop = 0; // For Safari
    	document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera

 	}
}
function calculateSIPAmount()
{
	var rate_of_return = 8;
	if(risk == "Aggressive")
    {
        rate_of_return = 14;
    }else if(risk == "Moderately Aggressive")
    {
        rate_of_return = 12.5;
    }else if(risk == "Moderate")
    {
        rate_of_return = 11.5;
    }else if(risk == "Moderately Conservative")
    {
        rate_of_return = 10;
    }else
    {
        rate_of_return = 8;
    }  
    
    //Calculate SIP Amount
    var wealth_amount = parseInt(amount);
	var years = parseInt(horizon);
	var price_increase_rate = parseFloat(inflation);
	rate_of_return = parseFloat(rate_of_return);
	
	var value1 = 1 + (price_increase_rate / 100);
	var value2 = Math.pow(value1, years);
	target_amount = Math.round(wealth_amount * value2);
	target_amount = Math.ceil(target_amount / 1000) * 1000;
	
	var famt = parseFloat(target_amount);
	var rate = parseFloat(rate_of_return);
	var period = years * 12;
	
	sip_amount = (rate / (12 * 100) * (famt)) / (Math.pow((1 + rate / (12 * 100)), period) - 1);
	sip_amount = Math.round(sip_amount);
	//alert("init sip_amount----->"+sip_amount);
	sip_amount = Math.ceil(sip_amount / 1000) * 1000;
	//alert("after sip_amount----->"+sip_amount);
	target_amount = Math.round(target_amount);

	$("#span_invest_today_cost").html(numbersWithComma(wealth_amount));
	$("#span_invest_future_cost").html(numbersWithComma(target_amount));
	$("#span_sch_future_cost").html(numbersWithComma(target_amount));
	$("#span_no_years").html(years);
	$("#span_sip_amt").html(numbersWithComma(sip_amount));
	$(".span_inflation").html(price_increase_rate);
}
function checkResult()
{
	amount = $("#txt_amount").val();
	horizon = $("#txt_years").val();
	inflation = $("#txt_inflation").val();
    risk = $("#sel_risk").val();
    goal_name = $("#txt_goal_name").val();

    amount = amount.replace(/,/g,'');
 	
    if(amount == "" || isNaN(amount) || parseInt(amount) < 1)
 	{
 		swal({title:"",text:"Please enter valid target amount today's value"});
		return;
 	}
   
    if(horizon == "" || isNaN(horizon) || parseInt(horizon) < 1 || parseInt(horizon) > 100)
 	{
 		swal({title:"",text:"Please enter valid years"});
		return;
 	}

    if(inflation == "" || isNaN(inflation) || parseInt(inflation) < 1)
 	{
 		swal({title:"",text:"Please enter valid inflation"});
		return;
 	}

    if(goal_name == "") {
    	swal({title:"",text:"Please give a goal name"});
    	return;
    }
    
    $('html,body').animate({
        scrollTop: 0
    }, 700);
    
    calculateSIPAmount();
	$(".robo1").hide();
	$(".robo2").hide();
	$(".robo5").hide();
	$(".robo4").hide();
	$(".robo3").show();

	if(login_customer_flag == true){
		login_customer_flag = false;
		showFunds();

		$(".robo1").hide();
		$(".robo2").hide();
		$(".robo5").hide();
		$(".robo4").hide();
		$(".robo3").show();
		
	}
}
function checkResult2()
{
	amount = $("#txt_amount1").val();
	horizon = $("#txt_years1").val();
	inflation = $("#txt_inflation1").val();
    risk = $("input:radio[name='risk_porf']:checked").val();

    amount = amount.replace(/,/g,'');
 	
    if(amount == "" || isNaN(amount) || parseInt(amount) < 1)
 	{
 		swal({title:"",text:"Please enter valid target amount today's value"});
		return;
 	}
   
    if(horizon == "" || isNaN(horizon) || parseInt(horizon) < 1 || parseInt(horizon) > 100)
 	{
 		swal({title:"",text:"Please enter valid years"});
		return;
 	}

    if(inflation == "" || isNaN(inflation) || parseInt(inflation) < 1)
 	{
 		swal({title:"",text:"Please enter valid inflation"});
		return;
 	}

    calculateSIPAmount();
    calculateDebtAndEquity();
}
function showFunds()
{
	$('.existing_summary_div').hide();
	
	if(existing_portfolio_flag)
	{
		existing_portfolio_flag = false;
		
		$('#tbl_existing_portfolio_returns').html("");
		$('#existing_portfolio_div').hide();
		
		var exist_count = 0;

$.LoadingOverlay("show");
		
		$.ajaxSetup({async:true});
		$.post("/goal/getPortfolioDetails", function(data)
	    {
			$.LoadingOverlay("hide");

			var html = "";
			html += "<thead><tr>";
			html += "<th>Scheme Name</th>";
			html += "<th>Category</th>";
			html += "<th>Folio Number</th>";
			html += "<th>Balance Units</th>";
			html += "<th>Current Value</th>";
			html += "<th>Future Value</th>";
			html += "<th>Save Scheme</th>";
			html += "</tr></thead>";
			html += "<tbody>";
			
			var result = $.trim(data);
			if(result == null || result == "null")
			{
				html += "<tr><td colspan='6'>No existing Live Mutual Fund Schemes. Please click Next button and see the recommended schemes.</td></tr>";
				existing_flag = true;
			}else
			{
				var obj = jQuery.parseJSON(result);
				var scheme_array = $.makeArray(obj);
				
				var folio_array = new Array();
				var scheme_code_array = new Array();
				
				var folio_list_str = $("#txt_folio_list").val();
				var scheme_code_list_str = $("#txt_scheme_code_list").val();
				
				if(folio_list_str != "")
				{
					folio_array = folio_list_str.split(",");
					scheme_code_array = scheme_code_list_str.split(",");
				}
		    	
				for (var i = 0; i < scheme_array.length ; i++)
			    {
					var scheme_name = scheme_array[i].scheme_amfi_short_name;
					var scheme_code = scheme_array[i].scheme_code;
					var category = scheme_array[i].scheme_category;
					var foliono = scheme_array[i].folio_no;
					var totalUnits = scheme_array[i].total_units;
					var totalCurrentValue = scheme_array[i].current_value;
					var sip_scheme = scheme_array[i].sip_flag;
					var scheme_sip_amount = scheme_array[i].sip_amount;
					if(scheme_sip_amount < 0){
						scheme_sip_amount = scheme_sip_amount * -1;
					}
					exist_count++;

					var rate_of_return = 8;
					if(risk == "Aggressive")
				    {
				        rate_of_return = 14;
				    }else if(risk == "Moderately Aggressive")
				    {
				        rate_of_return = 12.5;
				    }else if(risk == "Moderate")
				    {
				        rate_of_return = 11.5;
				    }else if(risk == "Moderately Conservative")
				    {
				        rate_of_return = 10;
				    }else
				    {
				        rate_of_return = 8;
				    }  
					rate_of_return = parseFloat(rate_of_return);
					var years = parseInt(horizon);
					
					//lumpsum future value
					var value1 = 1 + (rate_of_return / 100);
					var value2 = Math.pow(value1, years);
					
					//sip future value
					var sipMonth = years * 12;
				    var sip_value1 = (rate_of_return / 100) / 12;
				    var sip_value3 = 1 + sip_value1;
				    var sip_value4 = Math.pow((sip_value3), (sipMonth + 1));
				    var amount1 = (sip_value4 - 1);
				    var amount2 = amount1 / sip_value1;
					
					var wealth_amount = parseInt(totalCurrentValue);
					var future_value = wealth_amount * value2;
					future_value = Math.round(future_value);
					
					if(scheme_sip_amount != 0)
					{
						var sipAmount = parseInt(scheme_sip_amount);
						var final_amount = (sipAmount * amount2) - sipAmount;
					    final_amount = Math.round(final_amount);
					    future_value = future_value + final_amount;
					}
			    	
			    	html += "<tr>";
			    	if(sip_scheme == 1 || sip_scheme == "1")
			    	{
				    	html += '<td><span id="td_scheme_'+exist_count+'">'+scheme_name+'</span><br/><span class="sip_color">(SIP Amount Rs.<span id="span_scheme_sip_amount_'+exist_count+'">'+numbersWithComma(scheme_sip_amount.toFixed(0))+'</span>)</span><input type="hidden" value="'+scheme_code+'" id="td_scheme_code_'+exist_count+'"/></td>';
			    	}else
			    	{
			    		html += '<td><span id="td_scheme_'+exist_count+'">'+scheme_name+'</span><input type="hidden" value="'+scheme_code+'" id="td_scheme_code_'+exist_count+'"/></td>';
			    	}
			    	html += '<td>'+category+'</td>';
			    	html += '<td id="td_folio_'+exist_count+'">'+foliono+'</td>';
			    	html += '<td align="right">'+totalUnits+'</td>';
			    	html += '<td id="td_current_value_'+exist_count+'" align="right">'+numbersWithComma(totalCurrentValue.toFixed(0))+'</td>';
			    	html += '<td id="td_future_value_'+exist_count+'" align="right">'+numbersWithComma(future_value.toFixed(0))+'</td>';
			    	if(folio_array.length > 0)
			    	{
			    		if((jQuery.inArray(foliono, folio_array) !== -1) && (jQuery.inArray(scheme_code, scheme_code_array) !== -1))
			    		{
			    			html += '<td align="center">Already Mapped</td>';
			    		}else
			    		{
			    			html += '<td class="text-center"><input class="form-check-input" type="checkbox" name="save_goal_exist" value="'+exist_count+'" onchange="showSelectedValues()"></td>';
			    		}
			    	}else
			    	{
			    		html += '<td class="text-center"><input class="form-check-input" type="checkbox" name="save_goal_exist" value="'+exist_count+'" onchange="showSelectedValues()"></td>';
			    	}
			    	html += "</tr>";
			    }
			}

			html += "</tbody>"; 
			$('#tbl_existing_portfolio_returns').html(html);
			$('#existing_portfolio_div').show();

			$('#recommended_div').hide();
			$('#save_goal_div').hide();

			$(".robo1").hide();
			$(".robo3").hide();
			$(".robo5").hide();
			$(".robo4").show();
			
	    },'text');	
	}else
	{
		$('#recommended_div').hide();
		$('#save_goal_div').hide();

		$(".robo1").hide();
		$(".robo2").hide();
		$(".robo3").hide();
		$(".robo5").hide();
		$(".robo4").show();
	}
}
function showSummary()
{
	$('#txt_goal_amount').val(numbersWithComma(target_amount));
	$('#txt_goal_years').val(horizon);
	$('#txt_goal_sip_amount').val(numbersWithComma(sip_amount));

	if(existing_flag)
	{
		remaining_goal_amount = parseInt(target_amount);
		remaining_sip_amount = parseInt(sip_amount);
	}else
	{
		var scheme_array = new Array();
		var folio_array = new Array();
		var current_value_array = new Array();
		var sip_array = new Array();

		$("input[name='save_goal_exist']:checked").each(function()
		{
			var count = $(this).val();
			var scheme = $("#td_scheme_"+count).html();
			var folio_no = $("#td_folio_"+count).html();
			var current_value = $("#td_current_value_"+count).html();
			var scheme_sip = $("#span_scheme_sip_amount_"+count).html();
			
			if(scheme_sip == undefined || scheme_sip == "undefined" || scheme_sip == null || scheme_sip == "")
			{
				scheme_sip = "0";
			}
			current_value = current_value.replace(/,/g,'');
			scheme_sip = scheme_sip.replace(/,/g,'');
			
			scheme_array.push(scheme);
			folio_array.push(folio_no);
			current_value_array.push(current_value);
			sip_array.push(scheme_sip);
		});

		$('#existing_summary_inner_div tr.goal_ques').remove();
		
		var str = "";
		if(folio_array.length == 0)
		{
			remaining_goal_amount = parseInt(target_amount);
			remaining_sip_amount = parseInt(sip_amount);
			str += '<tr class="goal_ques"><td style="font-weight: bold;">Monthly SIP investment required</td><td><input type="text" id="txt_goal_sip_amount" style="font-weight: bold;" value="'+numbersWithComma(sip_amount.toFixed(0))+'" class="form-control form-control-sm fundNamebg"></td></tr>';
			$('#existing_summary_inner_div').append(str);
		}else
		{
			var existing_total_amount = 0;
			var rate_of_return = 8;
			if(risk == "Aggressive")
		    {
		        rate_of_return = 14;
		    }else if(risk == "Moderately Aggressive")
		    {
		        rate_of_return = 12.5;
		    }else if(risk == "Moderate")
		    {
		        rate_of_return = 11.5;
		    }else if(risk == "Moderately Conservative")
		    {
		        rate_of_return = 10;
		    }else
		    {
		        rate_of_return = 8;
		    }  
			rate_of_return = parseFloat(rate_of_return);
			var years = parseInt(horizon);
			
			//lumpsum future value
			var value1 = 1 + (rate_of_return / 100);
			var value2 = Math.pow(value1, years);
			
			//sip future value
			var sipMonth = years * 12;
		    var sip_value1 = (rate_of_return / 100) / 12;
		    var sip_value3 = 1 + sip_value1;
		    var sip_value4 = Math.pow((sip_value3), (sipMonth + 1));
		    var amount1 = (sip_value4 - 1);
		    var amount2 = amount1 / sip_value1;
			
			for(var k=0;k<scheme_array.length;k++)
			{
				var scheme_name = scheme_array[k];
				var current_value = current_value_array[k];
				var sip_value = sip_array[k];
				
				var wealth_amount = parseInt(current_value);
				var future_value = wealth_amount * value2;
				future_value = Math.round(future_value);
				
				if(sip_value != 0)
				{
					var sipAmount = parseInt(sip_value);
					var final_amount = (sipAmount * amount2) - sipAmount;
				    final_amount = Math.round(final_amount);
				    future_value = future_value + final_amount;
				}
				existing_total_amount = existing_total_amount + future_value;
				
				str += '<tr class="goal_ques"><td>'+scheme_name+'<br/>(Future value)</td><td><input type="text" disabled="disabled" value="'+numbersWithComma(future_value.toFixed(0))+'" class="form-control form-control-sm fundNamebg" ></td></tr>';
			}
			
			var goal_amount = parseInt(target_amount);
			remaining_goal_amount = goal_amount - existing_total_amount;
			remaining_goal_amount = Math.round(remaining_goal_amount);
			if(remaining_goal_amount <= 1000)
			{
				remaining_goal_amount = 0;
				remaining_sip_amount = 0;
				
				str += "<tr class='goal_ques'><td colspan'2'>Your existing mutual fund investment is enough to achieve your goal. Please do not redeem the investments till goal period.</td></tr>";
			}else
			{
			    //Calculate Remaining SIP Amount
			    
			    var famt = parseFloat(remaining_goal_amount);
				var rate = parseFloat(rate_of_return);
				var period = years * 12;
				
				remaining_sip_amount = (rate / (12 * 100) * (famt)) / (Math.pow((1 + rate / (12 * 100)), period) - 1);
				remaining_sip_amount = Math.round(remaining_sip_amount);
				
				str += '<tr class="goal_ques"><td >Your Remaining targeted Amount</td><td><input type="text" id="txt_remain_goal_amount" disabled="disabled" value="'+numbersWithComma(remaining_goal_amount.toFixed(0))+'" class="form-control form-control-sm fundNamebg" ></td></tr>';
				str += '<tr class="goal_ques"><td style="font-weight: bold;">Monthly SIP investment required</td><td><input type="text"  id="txt_goal_sip_amount" value="'+numbersWithComma(remaining_sip_amount.toFixed(0))+'" class="form-control form-control-sm fundNamebg" style="font-weight: bold;"></td></tr>';
			}		
			$('#existing_summary_inner_div').append(str);
		}
	}
	//$('#existing_summary_inner_div').show();
	
	if(remaining_goal_amount <= 0)
	{
		$('#recommended_div').hide();
		$('#save_goal_div').show();
	}else
	{
		$('#save_goal_div').hide();
		$('#recommended_div').show();
	}
	$('.existing_summary_div').show();
}
function calculateDebtAndEquity()
{
	if(existing_portfolio_flag)
	{
		$('#new_robo').show();
		$('#old_robo1').removeClass('col-md-12');
		$('#old_robo1').addClass('col-md-12');
		$('#old_robo2').removeClass('col-md-8');
		$('#old_robo2').addClass('col-md-3');
		$('#old_robo3').removeClass('col-md-4');
		$('#old_robo3').addClass('col-md-2');
		$('#old_robo4').show();
		$('#old_robo6').show();
		$('#old_robo5').removeClass('col-md-2');
		$('#old_robo5').addClass('col-md-3');
		$('#old_robo7').removeClass('col-md-2');
		$('#old_robo7').addClass('col-md-3');
		$('#old_robo8').removeClass('col-md-2');
		$('#old_robo8').addClass('col-md-2');
		$('#old_robo9').removeClass('col-md-2');
		$('#old_robo9').addClass('col-md-2');

		$("#txt_amount1").val(numbersWithComma(amount));
		$("#txt_years1").val(horizon);
		$("#txt_inflation1").val(inflation);
	    if(risk == "Conservative"){
	    	$("#rdo_con").prop("checked", true);
		}
	    if(risk == "Moderately Conservative"){
	    	$("#rdo_mcon").prop("checked", true);
		}
	    if(risk == "Moderate"){
	    	$("#rdo_mod").prop("checked", true);
		}
	    if(risk == "Moderately Aggressive"){
	    	$("#rdo_magg").prop("checked", true);
		}
	    if(risk == "Aggressive"){
	    	$("#rdo_agg").prop("checked", true);
		}
		
		remaining_goal_amount = target_amount;
		remaining_sip_amount = sip_amount;
		
		remaining_sip_amount = parseFloat(remaining_sip_amount);
		goal_based_amount = remaining_sip_amount;	
	}else
	{
		$('#new_robo').hide();
		$('#old_robo1').removeClass('col-md-9');
		$('#old_robo1').addClass('col-md-12');
		$('#old_robo2').removeClass('col-md-6');
		$('#old_robo2').addClass('col-md-3');
		$('#old_robo3').removeClass('col-md-6');
		$('#old_robo3').addClass('col-md-2');
		$('#old_robo4').show();
		$('#old_robo6').show();
		$('#old_robo5').removeClass('col-md-3');
		$('#old_robo5').addClass('col-md-3');
		$('#old_robo7').removeClass('col-md-3');
		$('#old_robo7').addClass('col-md-3');
		$('#old_robo8').removeClass('col-md-3');
		$('#old_robo8').addClass('col-md-2');
		$('#old_robo9').removeClass('col-md-3');
		$('#old_robo9').addClass('col-md-2');
		
		var get_goal_amount = $('#txt_remain_goal_amount').val();
		var get_sip_amount = $('#txt_goal_sip_amount').val();
		if(get_goal_amount == undefined || get_goal_amount == "undefined" || get_goal_amount == null || get_goal_amount == "")
		{
			get_goal_amount = remaining_goal_amount;
		}else
		{
			get_goal_amount = get_goal_amount.replace(/,/g,'');
			remaining_goal_amount = parseInt(get_goal_amount);
		}
		if(get_sip_amount == undefined || get_sip_amount == "undefined" || get_sip_amount == null || get_sip_amount == "")
		{
			get_sip_amount = remaining_sip_amount;
		}else
		{
			get_sip_amount = get_sip_amount.replace(/,/g,'');
			remaining_sip_amount = parseInt(get_sip_amount);
		}
		remaining_sip_amount = parseFloat(remaining_sip_amount);
		goal_based_amount = remaining_sip_amount;	
	}
	
	$(".sip_amt").html(numbersWithComma(remaining_sip_amount));
	
	var new_risk = 1;
	if(risk == "Aggressive")
    {
        new_risk = 5;
    }else if(risk == "Moderately Aggressive")
    {
        new_risk = 4;
    }else if(risk == "Moderate")
    {
        new_risk = 3;
    }else if(risk == "Moderately Conservative")
    {
        new_risk = 2;
    }else
    {
        new_risk = 1;
    }
    
	var new_horizon = 1;
	if(horizon <= 1)
    {
		new_horizon = 1;
    }else if(horizon <= 3)
    {
		new_horizon = 2;
    }else if(horizon <= 7)
    {
    	new_horizon = 3;
    }else if(horizon <= 15)
    {
    	new_horizon = 4;
    }else{
    	new_horizon = 5;
    }
    
	new_horizon = parseInt(new_horizon);
    new_risk = parseInt(new_risk);    
	
	var angles = [0, 0, 0, 0, 0, 0, 0, 0];
    
  	//horizon 1
    if (new_horizon == 1 && new_risk == 1)
    {
    	angles[0] = 0; // Liquid funds
        angles[1] = 100; // short term debt
        angles[2] = 0; // long term debt
        angles[3] = 0; // balanced fund equity oriented
        angles[4] = 0; // largecap
        angles[5] = 0; // midcap
        angles[6] = 0; // thematic funds
        angles[7] = 0; // Hybrid Debt Oriented Funds
    }
    if (new_horizon == 1 && new_risk == 2)
    {
    	angles[0] = 0; // Liquid funds
        angles[1] = 100; // short term debt
        angles[2] = 0; // long term debt
        angles[3] = 0; // balanced fund equity oriented
        angles[4] = 0; // largecap
        angles[5] = 0; // midcap
        angles[6] = 0; // thematic funds
        angles[7] = 0; // Hybrid Debt Oriented Funds
    }
    if (new_horizon == 1 && new_risk == 3)
    {
    	angles[0] = 0; // Liquid funds
        angles[1] = 100; // short term debt
        angles[2] = 0; // long term debt
        angles[3] = 0; // balanced fund equity oriented
        angles[4] = 0; // largecap
        angles[5] = 0; // midcap
        angles[6] = 0; // thematic funds
        angles[7] = 0; // Hybrid Debt Oriented Funds
    }
    if (new_horizon == 1 && new_risk == 4)
    {
    	angles[0] = 0; // Liquid funds
        angles[1] = 100; // short term debt
        angles[2] = 0; // long term debt
        angles[3] = 0; // balanced fund equity oriented
        angles[4] = 0; // largecap
        angles[5] = 0; // midcap
        angles[6] = 0; // thematic funds
        angles[7] = 0; // Hybrid Debt Oriented Funds
    }
    if (new_horizon == 1 && new_risk == 5)
    {
    	angles[0] = 0; // Liquid funds
        angles[1] = 100; // short term debt
        angles[2] = 0; // long term debt
        angles[3] = 0; // balanced fund equity oriented
        angles[4] = 0; // largecap
        angles[5] = 0; // midcap
        angles[6] = 0; // thematic funds
        angles[7] = 0; // Hybrid Debt Oriented Funds
    }
    
    //horizon 2
    if (new_horizon == 2 && new_risk == 1)
    {
    	angles[0] = 0; // Liquid funds
        angles[1] = 70; // short term debt
        angles[2] = 30; // long term debt
        angles[3] = 0; // balanced fund equity oriented
        angles[4] = 0; // largecap
        angles[5] = 0; // midcap
        angles[6] = 0; // thematic funds
        angles[7] = 0; // Hybrid Debt Oriented Funds
    }
    if (new_horizon == 2 && new_risk == 2)
    {
    	angles[0] = 0; // Liquid funds
        angles[1] = 60; // short term debt
        angles[2] = 40; // long term debt
        angles[3] = 0; // balanced fund equity oriented
        angles[4] = 0; // largecap
        angles[5] = 0; // midcap
        angles[6] = 0; // thematic funds
        angles[7] = 0; // Hybrid Debt Oriented Funds
    }
    if (new_horizon == 2 && new_risk == 3)
    {
    	angles[0] = 0; // Liquid funds
        angles[1] = 50; // short term debt
        angles[2] = 50; // long term debt
        angles[3] = 0; // balanced fund equity oriented
        angles[4] = 0; // largecap
        angles[5] = 0; // midcap
        angles[6] = 0; // thematic funds
        angles[7] = 0; // Hybrid Debt Oriented Funds
    }
    if (new_horizon == 2 && new_risk == 4)
    {
    	angles[0] = 0; // Liquid funds
        angles[1] = 40; // short term debt
        angles[2] = 60; // long term debt
        angles[3] = 0; // balanced fund equity oriented
        angles[4] = 0; // largecap
        angles[5] = 0; // midcap
        angles[6] = 0; // thematic funds
        angles[7] = 0; // Hybrid Debt Oriented Funds
    }
    if (new_horizon == 2 && new_risk == 5)
    {
    	angles[0] = 0; // Liquid funds
        angles[1] = 30; // short term debt
        angles[2] = 70; // long term debt
        angles[3] = 0; // balanced fund equity oriented
        angles[4] = 0; // largecap
        angles[5] = 0; // midcap
        angles[6] = 0; // thematic funds
        angles[7] = 0; // Hybrid Debt Oriented Funds
    }
    
   //horizon 3
    if (new_horizon == 3 && new_risk == 1)
    {
    	angles[0] = 0; // Liquid funds
        angles[1] = 20; // short term debt
        angles[2] = 0; // long term debt
        angles[3] = 40; // balanced fund equity oriented
        angles[4] = 10; // largecap
        angles[5] = 0; // midcap
        angles[6] = 0; // thematic funds
        angles[7] = 30; // Hybrid Debt Oriented Funds
    }
    if (new_horizon == 3 && new_risk == 2)
    {
    	angles[0] = 0; // Liquid funds
        angles[1] = 15; // short term debt
        angles[2] = 0; // long term debt
        angles[3] = 45; // balanced fund equity oriented
        angles[4] = 15; // largecap
        angles[5] = 0; // midcap
        angles[6] = 0; // thematic funds
        angles[7] = 25; // Hybrid Debt Oriented Funds
    }
    if (new_horizon == 3 && new_risk == 3)
    {
    	angles[0] = 0; // Liquid funds
        angles[1] = 10; // short term debt
        angles[2] = 0; // long term debt
        angles[3] = 50; // balanced fund equity oriented
        angles[4] = 25; // largecap
        angles[5] = 0; // midcap
        angles[6] = 0; // thematic funds
        angles[7] = 15; // Hybrid Debt Oriented Funds
    }
    if (new_horizon == 3 && new_risk == 4)
    {
    	angles[0] = 0; // Liquid funds
        angles[1] = 5; // short term debt
        angles[2] = 0; // long term debt
        angles[3] = 40; // balanced fund equity oriented
        angles[4] = 20; // largecap
        angles[5] = 0; // midcap
        angles[6] = 25; // thematic funds
        angles[7] = 10; // Hybrid Debt Oriented Funds
    }
    if (new_horizon == 3 && new_risk == 5)
    {
    	angles[0] = 0; // Liquid funds
        angles[1] = 0; // short term debt
        angles[2] = 0; // long term debt
        angles[3] = 35; // balanced fund equity oriented
        angles[4] = 30; // largecap
        angles[5] = 0; // midcap
        angles[6] = 35; // thematic funds
        angles[7] = 0; // Hybrid Debt Oriented Funds
    }
    
    //horizon 4
    if (new_horizon == 4 && new_risk == 1)
    {
    	angles[0] = 0; // Liquid funds
        angles[1] = 0; // short term debt
        angles[2] = 0; // long term debt
        angles[3] = 25; // balanced fund equity oriented
        angles[4] = 30; // largecap
        angles[5] = 0; // midcap
        angles[6] = 25; // thematic funds
        angles[7] = 20; // Hybrid Debt Oriented Funds
    }
    if (new_horizon == 4 && new_risk == 2)
    {
    	angles[0] = 0; // Liquid funds
        angles[1] = 0; // short term debt
        angles[2] = 0; // long term debt
        angles[3] = 20; // balanced fund equity oriented
        angles[4] = 35; // largecap
        angles[5] = 5; // midcap
        angles[6] = 25; // thematic funds
        angles[7] = 15; // Hybrid Debt Oriented Funds
    }
    if (new_horizon == 4 && new_risk == 3)
    {
    	angles[0] = 0; // Liquid funds
        angles[1] = 0; // short term debt
        angles[2] = 0; // long term debt
        angles[3] = 15; // balanced fund equity oriented
        angles[4] = 25; // largecap
        angles[5] = 20; // midcap
        angles[6] = 30; // thematic funds
        angles[7] = 10; // Hybrid Debt Oriented Funds
    }
    if (new_horizon == 4 && new_risk == 4)
    {
    	angles[0] = 0; // Liquid funds
        angles[1] = 0; // short term debt
        angles[2] = 0; // long term debt
        angles[3] = 10; // balanced fund equity oriented
        angles[4] = 20; // largecap
        angles[5] = 35; // midcap
        angles[6] = 35; // thematic funds
        angles[7] = 0; // Hybrid Debt Oriented Funds
    }
    if (new_horizon == 4 && new_risk == 5)
    {
    	angles[0] = 0; // Liquid funds
        angles[1] = 0; // short term debt
        angles[2] = 0; // long term debt
        angles[3] = 10; // balanced fund equity oriented
        angles[4] = 15; // largecap
        angles[5] = 40; // midcap
        angles[6] = 35; // thematic funds
        angles[7] = 0; // Hybrid Debt Oriented Funds
    }
    
    
  	//horizon 5
    if (new_horizon == 5 && new_risk == 1)
    {
    	angles[0] = 0; // Liquid funds
        angles[1] = 0; // short term debt
        angles[2] = 0; // long term debt
        angles[3] = 25; // balanced fund equity oriented
        angles[4] = 30; // largecap
        angles[5] = 0; // midcap
        angles[6] = 25; // thematic funds
        angles[7] = 20; // Hybrid Debt Oriented Funds
    }
    if (new_horizon == 5 && new_risk == 2)
    {
    	angles[0] = 0; // Liquid funds
        angles[1] = 0; // short term debt
        angles[2] = 0; // long term debt
        angles[3] = 20; // balanced fund equity oriented
        angles[4] = 35; // largecap
        angles[5] = 5; // midcap
        angles[6] = 25; // thematic funds
        angles[7] = 15; // Hybrid Debt Oriented Funds
    }
    if (new_horizon == 5 && new_risk == 3)
    {
    	angles[0] = 0; // Liquid funds
        angles[1] = 0; // short term debt
        angles[2] = 0; // long term debt
        angles[3] = 15; // balanced fund equity oriented
        angles[4] = 25; // largecap
        angles[5] = 20; // midcap
        angles[6] = 30; // thematic funds
        angles[7] = 10; // Hybrid Debt Oriented Funds
    }
    if (new_horizon == 5 && new_risk == 4)
    {
    	angles[0] = 0; // Liquid funds
        angles[1] = 0; // short term debt
        angles[2] = 0; // long term debt
        angles[3] = 10; // balanced fund equity oriented
        angles[4] = 20; // largecap
        angles[5] = 35; // midcap
        angles[6] = 35; // thematic funds
        angles[7] = 0; // Hybrid Debt Oriented Funds
    }
    if (new_horizon == 5 && new_risk == 5)
    {
    	angles[0] = 0; // Liquid funds
        angles[1] = 0; // short term debt
        angles[2] = 0; // long term debt
        angles[3] = 10; // balanced fund equity oriented
        angles[4] = 15; // largecap
        angles[5] = 40; // midcap
        angles[6] = 35; // thematic funds
        angles[7] = 0; // Hybrid Debt Oriented Funds
    }
    
    liquid_debt = parseFloat(angles[0]);
	short_term_debt = parseFloat(angles[1]);
	long_term_debt = parseFloat(angles[2]);
	equity_balanced = parseFloat(angles[3]);
	equity_largecap = parseFloat(angles[4]);
	equity_midcap = parseFloat(angles[5]);
	equity_diversified = parseFloat(angles[6]);
	hybrid_debt = parseFloat(angles[7]);
	
	var total = liquid_debt + short_term_debt + long_term_debt + equity_balanced + equity_largecap + equity_midcap + equity_diversified + hybrid_debt;
	var current_amount = parseInt(goal_based_amount);
	if(current_amount <= 25000)
	{
		var count = 0;		
		for(var k=0;k<angles.length;k++)
		{
			if(angles[k] > 0)
			{
				count++;	
			}
		}
		var check_count = 1;	
		if(current_amount <= 1000)
		{
			check_count = 1;
		}else if(current_amount <= 3000)
		{
			check_count = 2;
		}else if(current_amount <= 5000)
		{
			check_count = 3;
		}else if(current_amount <= 10000)
		{
			check_count = 4;
		}else if(current_amount <= 15000)
		{
			check_count = 5;
		}else if(current_amount <= 25000)
		{
			check_count = 6;
		}
		if(count > check_count)
		{
			var change_arr = [0, 0, 0, 0, 0, 0, 0, 0];
			change_arr[0] = equity_midcap;
			change_arr[1] = equity_diversified;
			change_arr[2] = equity_largecap;
			change_arr[3] = equity_balanced;
			change_arr[4] = hybrid_debt;
			change_arr[5] = long_term_debt;
			change_arr[6] = short_term_debt;
			change_arr[7] = liquid_debt;
			
			while(count > check_count)
			{
				for(var k=0;k<change_arr.length;k++)
				{
					var flag = false;
					if(change_arr[k] > 0)
					{
						for(var m=(k+1);m<change_arr.length;m++)
						{
							if(change_arr[m] > 0)
							{
								change_arr[m] = change_arr[m] + change_arr[k];
								change_arr[k] = 0;
								flag = true;
								break;
							}
						}
					}
					
					if(flag == true)
					{
						break;
					}
				}
				
				count = 0;	
				for(var k=0;k<change_arr.length;k++)
				{
					if(change_arr[k] > 0)
					{
						count++;	
					}
				}
			}
			
			equity_midcap = parseFloat(change_arr[0]);
			equity_diversified = parseFloat(change_arr[1]);
			equity_largecap = parseFloat(change_arr[2]);
			equity_balanced = parseFloat(change_arr[3]);
			hybrid_debt = parseFloat(change_arr[4]);
			long_term_debt = parseFloat(change_arr[5]);
			short_term_debt = parseFloat(change_arr[6]);
			liquid_debt = parseFloat(change_arr[7]);
		}
	}
	
	var total = liquid_debt + short_term_debt + long_term_debt + equity_balanced + equity_largecap + equity_midcap + equity_diversified + hybrid_debt;

	var change_arr = [0, 0, 0, 0, 0, 0, 0, 0];
	change_arr[0] = liquid_debt;
	change_arr[1] = short_term_debt;
	change_arr[2] = long_term_debt;
	change_arr[3] = hybrid_debt;
	change_arr[4] = equity_balanced;
	change_arr[5] = equity_largecap;
	change_arr[6] = equity_diversified;
	change_arr[7] = equity_midcap;
	var check_value = (500 / goal_based_amount) * 100;
	check_value = Math.ceil(check_value);
	
	for(var k=0;k<change_arr.length;k++)
	{
		var flag = false;
		if(change_arr[k] > 0 && change_arr[k] < check_value)
		{
			var val = check_value - change_arr[k];
			
			for(var m=(change_arr.length-1);m>k;m--)
			{
				if(change_arr[m] > 0)
				{
					if((change_arr[m] - val) > 0)
					{
						change_arr[m] = change_arr[m] - val;
						change_arr[k] = check_value;
						flag = true;
						break;
					}else
					{
						change_arr[k] = change_arr[k] + change_arr[m];
						val = check_value - change_arr[k];
						change_arr[m] = 0;
					}
				}
			}
		}
		
		if(flag == true)
		{
			break;
		}
	}
	
	liquid_debt = parseFloat(change_arr[0]);
	short_term_debt = parseFloat(change_arr[1]);
	long_term_debt = parseFloat(change_arr[2]);
	hybrid_debt = parseFloat(change_arr[3]);
	equity_balanced = parseFloat(change_arr[4]);
	equity_largecap = parseFloat(change_arr[5]);
	equity_diversified = parseFloat(change_arr[6]);
	equity_midcap = parseFloat(change_arr[7]);
	
	var total = liquid_debt + short_term_debt + long_term_debt + equity_balanced + equity_largecap + equity_midcap + equity_diversified + hybrid_debt;
	
	showRecommendedFunds();
}
function schemeChange(id, category, scheme_code)
{
	$.LoadingOverlay("show");
	
	$.ajaxSetup({async:true});
	$.post("/goal/getFundRatingBasedSchemes", {category : category, scheme_code : scheme_code, max_count : 4}, function(data)
    {
		$.LoadingOverlay("hide");

		var html = '<table class="adv-table table table-striped table-bordered">';
		html += "<thead><tr>";
		html += "<th rowspan='2' class='text-center'>Scheme Name <input type='hidden' id='selected_scheme_id' value='"+id+"' /></th>";
		html += "<th rowspan='2' class='text-center'>Category</th>";
		html += "<th colspan='5' class='text-center'>Return (%)</th>";
		html += "<th width='50' rowspan='2' class='text-center'>Select Scheme</th>";
		html += "</tr>";
		html += "<tr>";
		html += "<th class='text-center'>1 Yr</th>";
		html += "<th class='text-center'>3 Yrs</th>";
		html += "<th class='text-center'>5 Yrs</th>";
		html += "<th class='text-center'>10 Yrs</th>";
		html += "<th class='text-center'>Inception</th>";
		html += "</tr></thead>";
		html += "<tbody>";
		
		var schemePerformances = $.trim(data);
		var schemePerformances_obj = jQuery.parseJSON(schemePerformances);
		var schemePerformances_array = $.makeArray(schemePerformances_obj);
        count = schemePerformances_array.length;
    	
		for (var i = 0; i < schemePerformances_array.length ; i++)
	    {
			var scheme_name = schemePerformances_array[i].scheme_amfi_short_name;
			var scheme_code = schemePerformances_array[i].scheme_amfi_code;
			var scheme_category = schemePerformances_array[i].scheme_category;
			var returns_abs_1year = schemePerformances_array[i].returns_abs_1year;
			var returns_cmp_3year = schemePerformances_array[i].returns_cmp_3year;
			var returns_cmp_5year = schemePerformances_array[i].returns_cmp_5year;
			var returns_cmp_10year = schemePerformances_array[i].returns_cmp_10year;
			var returns_cmp_inception = schemePerformances_array[i].returns_cmp_inception;
			
			if(returns_abs_1year == 0)
			{
				returns_abs_1year = "-";
			}
			if(returns_cmp_3year == 0)
			{
				returns_cmp_3year = "-";
			}
			if(returns_cmp_5year == 0)
			{
				returns_cmp_5year = "-";
			}
			if(returns_cmp_10year == 0)
			{
				returns_cmp_10year = "-";
			}
			if(returns_cmp_inception == 0)
			{
				returns_cmp_inception = "-";
			}
			
			html += "<tr>";
			html += "<td><span id='selected_new_scheme_"+i+"'>" + scheme_name + "</span>";
	    	html += "<input type='hidden' id='selected_new_schemecode_"+i+"' value='"+scheme_code+"'></td>";
	    	html += "<td id='txt_category_new_"+i+"'>" + category + "</td>";
			html += "<td>" + returns_abs_1year + "</td>";
			html += "<td>" + returns_cmp_3year + "</td>";
			html += "<td>" + returns_cmp_5year + "</td>";
			html += "<td>" + returns_cmp_10year + "</td>";
			html += "<td>" + returns_cmp_inception + "</td>";
			html += '<td align="center"><input type="radio" name="select_scheme" value="'+i+'"></td>';
	    	html += "</tr>";
	    }

		html += "</tbody>"; 
		html += "</table>"; 
		
		$(".popup_select_scheme").html(html);
		
		$("#scheme_name_change_model").modal('show');
	    
    },'text');	
}
function changeSchemeName()
{
	var id = $("#selected_scheme_id").val();
	var value = $("input[name='select_scheme']:checked").val();
	if(value != undefined)
	{
		var scheme = $("#selected_new_scheme_"+value).html();
		var scheme_code = $("#selected_new_schemecode_"+value).val();
		var sch_category = $("#txt_category_new_"+id).html();
		$("#span_scheme_h4_"+id).html('<span id="span_scheme_'+id+'">' +scheme + ' </span><br> <a style="font-size: 10px;" href="javascript:;" onclick="schemeChange('+id+', &quot;'+ sch_category +'&quot;)">Change Scheme</a>');
		$("#span_scheme_code_"+id).val(scheme_code);
	}
	$("#scheme_name_change_model").modal('hide');
}
function showRecommendedFunds()
{
	$('#tbl_portfolio_returns').html("");
	$('#portfolio_div').hide();
	$('#portfolio_spinner_div').show();
	
	remaining_sip_amount = parseFloat(remaining_sip_amount);
	goal_based_amount = remaining_sip_amount;
	
	liquid_debt = parseFloat(liquid_debt);
	short_term_debt = parseFloat(short_term_debt);
	long_term_debt = parseFloat(long_term_debt);
	hybrid_debt = parseFloat(hybrid_debt);
	equity_balanced = parseFloat(equity_balanced);
	equity_largecap = parseFloat(equity_largecap);
	equity_midcap = parseFloat(equity_midcap);
	equity_diversified = parseFloat(equity_diversified);
	
	var cat_rolling_array = new Array();
	if(liquid_debt > 0)
	{
		cat_rolling_array.push("Debt: Liquid");	
	}
	if(short_term_debt > 0)
	{
		cat_rolling_array.push("Debt: Short Duration");
	}
	if(long_term_debt > 0)
	{
		cat_rolling_array.push("Debt: Long Duration");	
	}
	if(hybrid_debt > 0)
	{
		cat_rolling_array.push("Hybrid: Conservative");	
	}
	if(equity_balanced > 0)
	{
		cat_rolling_array.push("Hybrid: Aggressive");	
	}
	if(equity_largecap > 0)
	{
		cat_rolling_array.push("Equity: Large Cap");	
	}
	if(equity_diversified > 0)
	{
		cat_rolling_array.push("Equity: Multi Cap");	
	}
	if(equity_midcap > 0)
	{
		cat_rolling_array.push("Equity: Mid Cap");	
	}
	//alert("cat_rolling_array------>"+cat_rolling_array.length);
	
	var loop_count = 0;
	var html = "";
	var total_percentage = 0;
	var total_amount = 0;
	var last_category_flag = false;
	
	/* html += "<thead><tr>";
	html += "<th>Scheme Name</th>";
	html += "<th>Category</th>";
	html += "<th width='150'>Allocation Amount</th>";
	html += "<th width='100'>Edit Amount</th>";
	html += "<th width='100'>Save Scheme</th>";
	html += "</tr></thead>";
	html += "<tbody>"; */
	html += '<div id="tablerobo" class="col-md-12">';				
	html += '<div class="table table-responsive tablemarginwidth">';
	html += '<table id="marriagetable" style="width:100%;">';
	html += '<thead>';
	html += '<tr>';
	html += '<th class="">SCHEME NAME</th>';
	html += '<th class="">CATEGORY</th>';
	html += '<th class="">NAV</th>';
	html += '<th class="threturn">RETURN (%)'; 
	html += '<div class="yearsfilter">'; 
	html += '<a id="return1" class="active" style="padding-left: 0px !important;" onclick="returnFilter(1)" > 1Y </a>'; 
	html += '<a id="return3" class="" style="padding-left: 0px !important;" onclick="returnFilter(3)"> 3Y </a>';
	html += '<a id="return5" class="" style="padding-left: 0px !important;" onclick="returnFilter(5)"> 5Y </a>'; 
	html += '</div></th>'; 
	html += '<th class="">ANALYSIS</th>';	
	html += '<th class=""  style = "width: 13%;">ALLOCATION (%)</th>';	
	html += '<th class="">AMOUNT</th>';		
	html += '</tr>';
	html += '</thead>';
	html += '<tbody class="results">';
	for(k=0;k<cat_rolling_array.length;k++)
    {
		var category = cat_rolling_array[k];
		var count = 0;
		var max_count = 1;
		
		if(k == (cat_rolling_array.length - 1))
		{
			last_category_flag = true;
		}
		
		if(category == "Debt: Liquid")
		{
			if(liquid_debt <= 15)
			{
				max_count = 1;
			}else if(liquid_debt <= 40)
			{
				max_count = 2;
			}else{
				max_count = 3;
			}
		}
		if(category == "Debt: Short Duration")
		{
			if(short_term_debt <= 15)
			{
				max_count = 1;
			}else if(short_term_debt <= 40)
			{
				max_count = 2;
			}else{
				max_count = 3;
			}
		}
		if(category == "Debt: Long Duration")
		{
			if(long_term_debt <= 15)
			{
				max_count = 1;
			}else if(long_term_debt <= 40)
			{
				max_count = 2;
			}else{
				max_count = 3;
			}
		}
		if(category == "Hybrid: Conservative")
		{
			if(hybrid_debt <= 15)
			{
				max_count = 1;
			}else if(hybrid_debt <= 40)
			{
				max_count = 2;
			}else{
				max_count = 3;
			}
		}
		if(category == "Hybrid: Aggressive")
		{
			if(equity_balanced <= 15)
			{
				max_count = 1;
			}else if(equity_balanced <= 40)
			{
				max_count = 2;
			}else{
				max_count = 3;
			}
		}
		if(category == "Equity: Large Cap")
		{
			if(equity_largecap <= 15)
			{
				max_count = 1;
			}else if(equity_largecap <= 40)
			{
				max_count = 2;
			}else{
				max_count = 3;
			}
		}
		if(category == "Equity: Mid Cap")
		{
			if(equity_midcap <= 15)
			{
				max_count = 1;
			}else if(equity_midcap <= 40)
			{
				max_count = 2;
			}else{
				max_count = 3;
			}
		}
		if(category == "Equity: Multi Cap")
		{
			if(equity_diversified <= 15)
			{
				max_count = 1;
			}else if(equity_diversified <= 40)
			{
				max_count = 2;
			}else{
				max_count = 3;
			}
		}
		
		if(goal_based_amount <= 25000)
		{
			max_count = 1;
		}

		$.LoadingOverlay("show");
		
		$.ajaxSetup({async:false});
		$.post("/goal/getFundRatingBasedSchemes", {category : category, max_count : max_count}, function(data)
	    {
			$.LoadingOverlay("hide");
			
			var schemePerformances = $.trim(data);
			var schemePerformances_obj = jQuery.parseJSON(schemePerformances);
			var schemePerformances_array = $.makeArray(schemePerformances_obj);
	        count = schemePerformances_array.length;
	        var scheme_flag = false;
	    	
			for (var i = 0; i < schemePerformances_array.length ; i++)
		    {
				var scheme_name = schemePerformances_array[i].scheme_amfi_short_name;
				var price = schemePerformances_array[i].price;
				var scheme_code = schemePerformances_array[i].scheme_amfi_code;
				var scheme_category = schemePerformances_array[i].scheme_category;
				var scheme_amfi = schemePerformances_array[i].scheme_amfi;				
				var returns_abs_1year = schemePerformances_array[i].returns_abs_1year;
				var returns_cmp_3year = schemePerformances_array[i].returns_cmp_3year;
				var returns_cmp_5year = schemePerformances_array[i].returns_cmp_5year;
				
				
				
				loop_count++;
				
				if(i == (count - 1))
				{
					scheme_flag = true;
				}
		    	
				
				html += '<tr class="trlineheight">';	
				html += '<td class="schemenamethtd" style="width: 38.33% !important;"><span id="span_scheme_'+loop_count+'">' + scheme_name + '</span> | <span><a style="font-size: 10px;" href="javascript:;" onclick="schemeChange('+loop_count+', \''+category+'\', \''+scheme_code+'\')">Change Scheme</a></span></td>';
				html += '<td class="" style="width: 16% !important;" id="txt_category_'+loop_count+'">' + category + '</td>';
				html += '<td class=""  style="text-align: right;"> '+ price +' </td>';							
				html += '<td class="return return5 undisplaytd" id="tdreturn5">';
				html += '<span class="ret text-success">'+returns_cmp_5year+'</span>';
				html += '</td>';
				html += '<td class="return return3 undisplaytd" id="tdreturn3">';
				html += '<span class="ret text-success">'+returns_cmp_3year+'</span>';
				html += '</td>';
				html += '<td class="return return1 displaytd" id="tdreturn1">';
				html += '<span class="ret text-success">'+returns_abs_1year+'</span>';
				html += '</td>';	
				html += '<td class="analysis" style="text-align: center;">';
				html += '<a href="/mutual-funds-research/scheme/'+scheme_amfi+'" target="_blank" onclick="storeValuesInCookie(1)">';
				html += '<img src="/img/analysis.png" class="fund-popup-click">';
				html += '</a>';
				html += '</td>';
		    	
		    	/* html += '<div class="scheme_details_div" style="border-bottom: 1px solid #ddd;padding: 10px 0px;">';
		    	html += '<input type="hidden" class="count_id" value="'+loop_count+'" />';
		    	html += '<h4 style="font-size: 14px;color: #333;" id="span_scheme_h4_'+loop_count+'"><span id="span_scheme_'+loop_count+'">' + scheme_name + '</span></h4>';
		    	html += '<input type="hidden" value="'+scheme_code+'" id="span_scheme_code_'+loop_count+'"/>';
		    	 *///if(i == 0)
		    	{
		    		/* html += '<div style="padding: 10px 0px;"><b> Category : </b> <span id="txt_category_'+loop_count+'">' + category + '</span><span style="float:right;text-align:right;"><a style="font-size: 10px;" href="javascript:;" onclick="schemeChange('+loop_count+', \''+category+'\', \''+scheme_code+'\')">Change Scheme</a></span></div>';
		    	 */	
		    		if(category == "Debt: Liquid")
			        {
		    			var value = liquid_debt / count;
	    				var value1 = goal_based_amount * (value / 100);
		    			if(last_category_flag && scheme_flag)
		    			{
		    				if((total_percentage + value) < 100 || (total_percentage + value) > 100)
		    				{
			    				value = 100 - total_percentage;
			    				value1 = goal_based_amount - total_amount;
		    				}
		    			}else
		    			{
			    			value1 = Math.round(value1 / 500) * 500;
			    			value = (value1 / goal_based_amount) * 100;
			    			if((total_percentage + value) > 100)
		    				{
			    				value = 100 - total_percentage;
			    				value1 = goal_based_amount - total_amount;
		    				}
		    			}
		    			total_percentage = total_percentage + value;
		    			total_amount = total_amount + value1;
		    			
		    			var percent = numbersWithComma(((parseFloat(value1) * 100) / parseFloat(goal_based_amount)).toFixed(2));
		    			html += '<td class="tabletextleft" style="text-align: center !important;"  id="txt_allocation_percent_'+loop_count+'">'+ percent +'</td>';
						html += '<td class="tabletextleft" style="text-align: right !important;"><span id="txt_allocation_amount_'+loop_count+'">'+ numbersWithComma(value1.toFixed(0)) + '</span></td>';
						
			        }else if(category == "Debt: Short Duration")
			        {
			        	var value = short_term_debt / count;
		    			var value1 = goal_based_amount * (value / 100);
		    			
			        	if(last_category_flag && scheme_flag)
		    			{
		    				if((total_percentage + value) < 100 || (total_percentage + value) > 100)
		    				{
			    				value = 100 - total_percentage;
			    				value1 = goal_based_amount - total_amount;
		    				}
		    			}else
		    			{
			    			value1 = Math.round(value1 / 500) * 500;
			    			value = (value1 / goal_based_amount) * 100;
			    			if((total_percentage + value) > 100)
		    				{
			    				value = 100 - total_percentage;
			    				value1 = goal_based_amount - total_amount;
		    				}			    			
		    			}
			        	total_percentage = total_percentage + value;
		    			total_amount = total_amount + value1;
		    			
		    			var percent = numbersWithComma(((parseFloat(value1) * 100) / parseFloat(goal_based_amount)).toFixed(2));
		    			
		    			html += '<td class="tabletextleft" style="text-align: center !important;"  id="txt_allocation_percent_'+loop_count+'">'+ percent +'</td>';
						html += '<td class="tabletextleft" style="text-align: right !important;"><span id="txt_allocation_amount_'+loop_count+'">'+ numbersWithComma(value1.toFixed(0)) + '</span></td>';
						 }else if(category == "Debt: Long Duration")
			        {
			        	var value = long_term_debt / count;
	    				var value1 = goal_based_amount * (value / 100);
	    				
			        	if(last_category_flag && scheme_flag)
		    			{
		    				if((total_percentage + value) < 100 || (total_percentage + value) > 100)
		    				{
			    				value = 100 - total_percentage;
			    				value1 = goal_based_amount - total_amount;
		    				}
		    			}else
		    			{
			    			value1 = Math.round(value1 / 500) * 500;
			    			value = (value1 / goal_based_amount) * 100;
			    			if((total_percentage + value) > 100)
		    				{
			    				value = 100 - total_percentage;
			    				value1 = goal_based_amount - total_amount;
		    				}
		    			}
			        	total_percentage = total_percentage + value;
		    			total_amount = total_amount + value1;
		    			
		    			var percent = numbersWithComma(((parseFloat(value1) * 100) / parseFloat(goal_based_amount)).toFixed(2));
		    			html += '<td class="tabletextleft" style="text-align: center !important;"  id="txt_allocation_percent_'+loop_count+'">'+ percent +'</td>';
						html += '<td class="tabletextleft" style="text-align: right !important;"><span id="txt_allocation_amount_'+loop_count+'">'+ numbersWithComma(value1.toFixed(0)) + '</span></td>';
						    }else if(category == "Hybrid: Conservative")
			        {
			        	var value = hybrid_debt / count;
	    				var value1 = goal_based_amount * (value / 100);
	    				
			        	if(last_category_flag && scheme_flag)
		    			{
		    				if((total_percentage + value) < 100 || (total_percentage + value) > 100)
		    				{
			    				value = 100 - total_percentage;
			    				value1 = goal_based_amount - total_amount;
		    				}
		    			}else
		    			{
			    			value1 = Math.round(value1 / 500) * 500;
			    			value = (value1 / goal_based_amount) * 100;
			    			if((total_percentage + value) > 100)
		    				{
			    				value = 100 - total_percentage;
			    				value1 = goal_based_amount - total_amount;
		    				}
		    			}
		    			total_percentage = total_percentage + value;
		    			total_amount = total_amount + value1;
		    			
		    			var percent = numbersWithComma(((parseFloat(value1) * 100) / parseFloat(goal_based_amount)).toFixed(2));
		    		
		    			html += '<td class="tabletextleft" style="text-align: center !important;"  id="txt_allocation_percent_'+loop_count+'">'+ percent +'</td>';
						html += '<td class="tabletextleft" style="text-align: right !important;"><span id="txt_allocation_amount_'+loop_count+'">'+ numbersWithComma(value1.toFixed(0)) + '</span></td>';
						  }else if(category == "Hybrid: Aggressive")
			        {
			        	var value = equity_balanced / count;
	    				var value1 = goal_based_amount * (value / 100);
			        	if(last_category_flag && scheme_flag)
		    			{
		    				if((total_percentage + value) < 100 || (total_percentage + value) > 100)
		    				{
			    				value = 100 - total_percentage;
			    				value1 = goal_based_amount - total_amount;
		    				}
		    			}else
		    			{
			    			value1 = Math.round(value1 / 500) * 500;
			    			value = (value1 / goal_based_amount) * 100;
			    			if((total_percentage + value) > 100)
		    				{
			    				value = 100 - total_percentage;
			    				value1 = goal_based_amount - total_amount;
		    				}
		    			}
			        	total_percentage = total_percentage + value;
		    			total_amount = total_amount + value1;
			        	
		    			var percent = numbersWithComma(((parseFloat(value1) * 100) / parseFloat(goal_based_amount)).toFixed(2));
		    			html += '<td class="tabletextleft" style="text-align: center !important;"  id="txt_allocation_percent_'+loop_count+'">'+ percent +'</td>';
						html += '<td class="tabletextleft" style="text-align: right !important;"><span id="txt_allocation_amount_'+loop_count+'">'+ numbersWithComma(value1.toFixed(0)) + '</span></td>';
						 }else if(category == "Equity: Large Cap")
			        {
			        	var value = equity_largecap / count;
			        	var value1 = goal_based_amount * (value / 100);
			        	if(last_category_flag && scheme_flag)
		    			{
		    				if((total_percentage + value) < 100 || (total_percentage + value) > 100)
		    				{
			    				value = 100 - total_percentage;
			    				value1 = goal_based_amount - total_amount;
		    				}
		    			}else
		    			{
			    			value1 = Math.round(value1 / 500) * 500;
			    			value = (value1 / goal_based_amount) * 100;
			    			if((total_percentage + value) > 100)
		    				{
			    				value = 100 - total_percentage;
			    				value1 = goal_based_amount - total_amount;
		    				}
		    			}
			        	total_percentage = total_percentage + value;
		    			total_amount = total_amount + value1;
		    			
		    			var percent = numbersWithComma(((parseFloat(value1) * 100) / parseFloat(goal_based_amount)).toFixed(2));
		    			html += '<td class="tabletextleft" style="text-align: center !important;"  id="txt_allocation_percent_'+loop_count+'">'+ percent +'</td>';
						html += '<td class="tabletextleft" style="text-align: right !important;"><span id="txt_allocation_amount_'+loop_count+'">'+ numbersWithComma(value1.toFixed(0)) + '</span></td>';
						   }else if(category == "Equity: Multi Cap")
			        {
			        	var value = equity_diversified / count;
			        	var value1 = goal_based_amount * (value / 100);
			        	
			        	if(last_category_flag && scheme_flag)
		    			{
		    				if((total_percentage + value) < 100 || (total_percentage + value) > 100)
		    				{
			    				value = 100 - total_percentage;
			    				value1 = goal_based_amount - total_amount;
		    				}
		    			}else
		    			{
			    			value1 = Math.round(value1 / 500) * 500;
			    			value = (value1 / goal_based_amount) * 100;
			    			if((total_percentage + value) > 100)
		    				{
			    				value = 100 - total_percentage;
			    				value1 = goal_based_amount - total_amount;
		    				}
		    			}
			        	total_percentage = total_percentage + value;
		    			total_amount = total_amount + value1;
			        	
		    			var percent = numbersWithComma(((parseFloat(value1) * 100) / parseFloat(goal_based_amount)).toFixed(2));
		    			html += '<td class="tabletextleft" style="text-align: center !important;"  id="txt_allocation_percent_'+loop_count+'">'+ percent +'</td>';
						html += '<td class="tabletextleft" style="text-align: right !important;"><span id="txt_allocation_amount_'+loop_count+'">'+ numbersWithComma(value1.toFixed(0)) + '</span></td>';
						  }else if(category == "Equity: Mid Cap")
			        {
			        	var value = equity_midcap / count;
			        	var value1 = goal_based_amount * (value / 100);
			        	
			        	if(last_category_flag && scheme_flag)
		    			{
		    				if((total_percentage + value) < 100 || (total_percentage + value) > 100)
		    				{
			    				value = 100 - total_percentage;
			    				value1 = goal_based_amount - total_amount;
		    				}
		    			}else
		    			{
			    			value1 = Math.round(value1 / 500) * 500;
			    			value = (value1 / goal_based_amount) * 100;
			    			if((total_percentage + value) > 100)
		    				{
			    				value = 100 - total_percentage;
			    				value1 = goal_based_amount - total_amount;
		    				}
		    			}
			        	total_percentage = total_percentage + value;
		    			total_amount = total_amount + value1;
		    			
		    			var percent = numbersWithComma(((parseFloat(value1) * 100) / parseFloat(goal_based_amount)).toFixed(2));
		    			html += '<td class="tabletextleft" style="text-align: center !important;"  id="txt_allocation_percent_'+loop_count+'">'+ percent +'</td>';
						html += '<td class="tabletextleft" style="text-align: right !important;"><span id="txt_allocation_amount_'+loop_count+'">'+ numbersWithComma(value1.toFixed(0)) + '</span></td>';
						 }
		    	}
		    	html += "</div>"; 
		    }
			
	    },'text');	
    }
	
	$('#tbl_portfolio_returns').html(html);
	$('#portfolio_spinner_div').hide();
	$('#portfolio_div').show();
	
	$(".robo1").hide();
	$(".robo3").hide();
	$(".robo4").hide();
	$(".robo5").show();

	var rate_of_return = 8;
	if(risk == "Aggressive")
    {
        rate_of_return = 14;
    }else if(risk == "Moderately Aggressive")
    {
        rate_of_return = 12.5;
    }else if(risk == "Moderate")
    {
        rate_of_return = 11.5;
    }else if(risk == "Moderately Conservative")
    {
        rate_of_return = 10;
    }else
    {
        rate_of_return = 8;
    }  
	rate_of_return = parseFloat(rate_of_return);
	var years = parseInt(horizon);
	var d = new Date();
	var current_year = d.getFullYear();
	var current_month = d.getMonth(); 
	var yearNameArr = ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'];
	var yearArr = new Array();
	var mon = years * 12;
	var final_amount = 0;
	var value1 = (rate_of_return / 100) / 12;
	var value3 = 1 + value1;
	var principalArr = new Array();
	var balanceArr = new Array();
	
	for(var k=1;k<=mon;k++)
	{
		var value4 = Math.pow((value3), (k + 1));
	    var amount1 = (value4 - 1);
	    var amount2 = amount1 / value1;
	    final_amount = (goal_based_amount * amount2) - goal_based_amount;
	    final_amount = Math.round(final_amount);
	    var invest_amount = goal_based_amount * k;
	    var interest_total = final_amount - invest_amount;
	    yearArr.push(yearNameArr[current_month]+"-"+current_year);
		principalArr.push(invest_amount);
		balanceArr.push(final_amount);
	    current_month++;
		if(current_month >= 12)
		{
			current_month = 0;
			current_year = current_year + 1;
		}
	}
	
	var invested_amount = mon * goal_based_amount;
	invested_amount = Math.round(invested_amount);
	var growth = final_amount - invested_amount;
	growth = Math.round(growth);

	$("#spn_target_amount").html(numbersWithComma(remaining_goal_amount));
	$("#spn_sip_amount").html(numbersWithComma(remaining_sip_amount));
	$("#spn_total_cost").html(numbersWithComma(invested_amount));
	$("#spn_years").html(years);
	$("#spn_risk").html(risk);
	$("#spn_gain").html(numbersWithComma(growth));
	$("#spn_future_cost").html(numbersWithComma(invested_amount + growth));
	$("#totAmt").html(numbersWithComma(remaining_sip_amount));
	
	showPieGraph(invested_amount, growth);
	donutChart();
	//showLineGraph("goal_line_chart","Systematic Investment Plan (SIP) Growth Chart","SIP Amount - Rs. "+numbersWithComma(goal_based_amount)+" for "+years+" years","Invested Amount","Future value",yearArr, principalArr, balanceArr);
	$("html, body").animate({ scrollTop: 175 }, "slow");
	
	initializeTypeAhead();
}

function showPieGraph(invested_amount, growth)
{
	$('#goal_pie_chart').highcharts({
		colors: ['#31498E', '#20C4B7', '#f58634', '#00a85b', '#858688', '#1cb7eb', '#FF9655', '#1686b0', '#6AF9C4'],
	    chart: {
	        plotBackgroundColor: null,
	        plotBorderWidth: null,
	        plotShadow: false,
	        type: 'pie',  
	        style: {
	        	fontFamily: '"Open Sans", sans-serif',
	            color: "#000000",
	            font: '36px',
	        },
	    },
	    title: {
	        text: 'Break-up of SIP Total Future Value',
	        style: {
	            color: "#2e3e4f",
	            font: 'bold 30px'
	        }
	    },
	    credits: {
            enabled: false
        },
	    tooltip: {
	        pointFormat: '<b>{point.percentage:.0f} %</b>'
	    },
	    accessibility: {
	        point: {
	            valueSuffix: '%'
	        }
	    },
	    plotOptions: {
	        pie: {
	            allowPointSelect: true,
	            cursor: 'pointer',
	            depth:2, 
	            innerSize: 5,
	           	showInLegend: true,
	            dataLabels: {
	                enabled: true,
	                /* format: '<b>{point.percentage:.1f} %', */
	                formatter: function() {
					var val = Math.round(this.percentage*100,0)/100 ;
					return val.toFixed(0)+ ' %';
					},
	                connectorColor: 'silver'
	            }
	        }
	    },
	    series: [{
	        data: [{
	            name: 'SIP Invested Amount',
	            y: invested_amount
	        }, {
	            name: 'Growth Amount',
	            y: growth,
	        }]
	    }]
	}); 
}
function donutChart()
{	
	liquid_debt = parseFloat(liquid_debt);
	short_term_debt = parseFloat(short_term_debt);
	long_term_debt = parseFloat(long_term_debt);
	hybrid_debt = parseFloat(hybrid_debt);
	equity_balanced = parseFloat(equity_balanced);
	equity_largecap = parseFloat(equity_largecap);
	equity_midcap = parseFloat(equity_midcap);
	equity_diversified = parseFloat(equity_diversified);
	
	var category_array = new Array();
	if(liquid_debt > 0)
	{
		var arr = new Array();
		arr.push('Debt: Liquid');
		arr.push(liquid_debt);
		category_array.push(arr);
	}
	if(short_term_debt > 0)
	{
		var arr = new Array();
		arr.push('Debt: Short Duration');
		arr.push(short_term_debt);
		category_array.push(arr);
	}
	if(long_term_debt > 0)
	{
		var arr = new Array();
		arr.push('Debt: Long Duration');
		arr.push(long_term_debt);
		category_array.push(arr);
	}
	if(hybrid_debt > 0)
	{
		var arr = new Array();
		arr.push('Hybrid: Conservative');
		arr.push(hybrid_debt);
		category_array.push(arr);
	}
	if(equity_balanced > 0)
	{
		var arr = new Array();
		arr.push('Hybrid: Aggressive');
		arr.push(equity_balanced);
		category_array.push(arr);
	}
	if(equity_largecap > 0)
	{
		var arr = new Array();
		arr.push('Equity: Large Cap');
		arr.push(equity_largecap);
		category_array.push(arr);
	}
	if(equity_midcap > 0)
	{
		var arr = new Array();
		arr.push('Equity: Mid Cap');
		arr.push(equity_midcap);
		category_array.push(arr);
	}
	if(equity_diversified > 0)
	{
		var arr = new Array();
		arr.push('Equity: Multi Cap');
		arr.push(equity_diversified);
		category_array.push(arr);
	}
	
	$('#dount_chart').highcharts({
		colors: ['#003399', '#DDDF00', '#24CBE5', '#64E572', '#FF9655', '#FFF263', '#6AF9C4'],
        chart: {
            type: 'column',
            style: {
	        	fontFamily: '"Open Sans", sans-serif',
	            color: "#000000",
	            font: '16px',
	        },
        },
        title: {
            text: 'Asset Allocation'
        },
        credits: {
            enabled: false
        },
        subtitle: {
            text: ''
        },
        xAxis: {
        type: 'category',
        labels: {
            rotation: -45,
            style: {
                fontSize: '13px',
                fontFamily: 'Verdana, sans-serif'
            }
        }
	    },
	    yAxis: {
	        min: 0,
	        title: {
	            text: 'Percentage (%)'
	        }
	    },
        tooltip: {
            pointFormat: 'Category: <b>{point.y:.2f} %</b>'
        },
        legend: {
            enabled: false,
			borderWidth: 0,
            useHTML: true,
			labelFormatter: function() {
				return '<div>' + this.y + '% - ' + this.name + '</div><br>';
			},
        },
        plotOptions: {
            pie: {
                innerSize: 140,
                dataLabels: {
                    enabled: false,
                    connectorWidth: 0,
                    format: '{point.name}<br>{point.percentage:.0f}%'
                },
                showInLegend: true
            }
        },
        series: [{
            name: '',
            data:category_array
        }]
    });
}
function showLineGraph(id, title, sub_title, x_axis_title, y_axis_title, yearArr, principalArr, balanceArr)
{
	$('#'+id).highcharts({
		colors: ['#003399', '#f7992c', '#f58634', '#00a85b', '#858688', '#1cb7eb', '#FF9655', '#1686b0', '#6AF9C4'],
		chart: {
			type: 'area',
			style: {
				fontFamily: '"Open Sans", sans-serif',
	            color: "#000000",
	            font: '16px'
	        }
		},
		credits: {
            enabled: false
        },
		legend: {
			enabled: false
		},
		title: {
			text: title,
			style: {
	            color: "#000000",
	            font: 'bold 20px'
	        }
		},
		subtitle: {
	        text: sub_title,
	        style: {
	            color: "#000000",
	            font: '16px'
	        }
	    },
		xAxis: {
			allowDecimals: false,
			categories: yearArr,
		},
		yAxis: {
			title: {
				text: 'Growth Value'
				},
			opposite: true
		},
		plotOptions: {
			area: {
				marker: {
					enabled: false,
					symbol: 'circle',
					states: {
					hover: {
					enabled: true
					}
					},
				},
				animation: {
					duration: 1200,
					easing: 'linear'
				},
			}
		},
		legend:{
			align: 'left',
			verticalAlign: 'top',
			floating: true,
			borderWidth:0,
			x: 0,
			y: 75
		},
		tooltip: {
			formatter: function() {
                return  this.x + '<br/>'+this.series.name+': Rs.'+ numbersWithComma(this.y);
            }
	    },
		series: [
		{
			name: y_axis_title,
			data: balanceArr
		}, {
			name: x_axis_title,
			data: principalArr
		}]
	});
}
function addCommas() 
{
	var x = $("#txt_amount").val();
	x = x.toString();
	x = x.replace(/,/g,'');
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
	$("#txt_amount").val(res);
}
function addCommas2() 
{
	var x = $("#txt_amount1").val();
	x = x.toString();
	x = x.replace(/,/g,'');
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
	$("#txt_amount1").val(res);
}
function initializeTypeAhead()
{	
	$('#goal_pie_chart').highcharts().reflow();
	$('#dount_chart').highcharts().reflow();
	//$('#goal_line_chart').highcharts().reflow();
	
	$('input.number1').change(function() {
		$(this).val(function(index, value) {
			value = value.replace(/,/g,'');
			value = numbersWithComma(parseFloat(value).toFixed(2));
			if(value == "NaN"){
				value = 0;
			}
		    return value;
		});
	});
}
function changeAmount(count)
{
	var value = $("#txt_allocation_amount_"+count).html();
	if(value == "" || parseFloat(value) <= 0)
	{
		value = 0.0;
		$("#txt_allocation_amount_"+count).html(parseFloat(value).toFixed(2));
	}
	
	var total_amount = 0;
	$(".allocaton_amount" ).each(function( index ) {
		var value = $(this).val();
		value = value.replace(/,/g,'');
		if(value != "")
		{
			total_amount = parseFloat(total_amount) + parseFloat(value);
		}
	});
	
	$("#allocation_amount_total").val(parseFloat(total_amount).toFixed(2));	
}
function editScheme(count)
{
	var value = $("#btn_"+count).val();
	if(value == "Edit")
	{
		var flag = true;
		$(".btn-edit" ).each(function( index ) {
			var btn_text = $( this ).val();
			if(btn_text == "Save")
			{
				flag = false;
				alert("Please save the row already edited. Then click edit button.");
				return false;
			}
		});
		
		if(flag)
		{
			$("#txt_allocation_amount_"+count).attr('disabled',false);
			$("#btn_"+count).val("Save");
		}
	}else
	{
		$("#txt_allocation_amount_"+count).attr('disabled',true);
		$("#btn_"+count).val("Edit");
	}
}
function saveGoal(goal_type)
{
	var existing_folio_array = new Array();
	var existing_scheme_array = new Array();
	var existing_scheme_code_array = new Array();
	var existing_scheme_current_value_array = new Array();
	var existing_scheme_sip_array = new Array();
	var scheme_array = new Array();
	var category_array = new Array();
	var percentage_array = new Array();
	var amount_array = new Array();

	$("input[name='save_goal_exist']:checked").each(function()
	{
		var count = $(this).val();
		var scheme = $("#td_scheme_"+count).html();
		var scheme_code = $("#td_scheme_code_"+count).val();
		var folio_no = $("#td_folio_"+count).html();
		var current_value = $("#td_current_value_"+count).html();
		var scheme_sip = $("#span_scheme_sip_amount_"+count).html();
		
		if(scheme_sip == undefined || scheme_sip == "undefined" || scheme_sip == null || scheme_sip == "")
		{
			scheme_sip = "0";
		}
		current_value = current_value.replace(/,/g,'');
		scheme_sip = scheme_sip.replace(/,/g,'');
		
		existing_scheme_array.push(scheme);
		existing_scheme_code_array.push(scheme_code);
		existing_folio_array.push(folio_no);
		existing_scheme_current_value_array.push(current_value);
		existing_scheme_sip_array.push(scheme_sip);
	});

	/* $(".scheme_details_div").each(function()
	{ */
		var table = document.getElementById('marriagetable');
		var rowLength = table.rows.length;
		for(var i=0; i<rowLength; i++){
		  var row = table.rows[i];
		  var count = row;
		  var scheme_name = $("#span_scheme_"+i).html();
	      var category = $("#txt_category_"+i).html();
	      var allocation_percentage =  $("#txt_allocation_percent_"+i).html();
	      var allocation_amount = $("#txt_allocation_amount_"+i).html();
	      allocation_amount =   $("#txt_allocation_amount_"+i).text().replace(/,/g, '');//allocation_amount.replace(/,/g,''); 	   
	      
	      scheme_array.push(scheme_name);
	      category_array.push(category);
	      percentage_array.push(allocation_percentage);
	      amount_array.push(allocation_amount);
	}
	
	if(existing_folio_array.length > 0)
	{
		sip_amount = remaining_sip_amount.toFixed(0);
	}
	
	if(goal_type == 2 && scheme_array.length == 0)
	{
		swal({title:"" , text:"Please select the scheme and save your goal."});
		return false;
	}
	
	var existing_folio_str = existing_folio_array.toString();
	var existing_scheme_str = existing_scheme_array.toString();
	var existing_scheme_code_str = existing_scheme_code_array.toString();
	var existing_scheme_current_value_str = existing_scheme_current_value_array.toString();
	var existing_scheme_sip_str = existing_scheme_sip_array.toString();
	var scheme_array_str = scheme_array.toString();
	var category_array_str = category_array.toString();
	var percentage_array_str = percentage_array.toString();
	var amount_array_str = amount_array.toString();
	
	scheme_array_str = scheme_array_str.substring(1);
	category_array_str = category_array_str.substring(1);
	percentage_array_str = percentage_array_str.substring(1);
	amount_array_str = amount_array_str.substring(1);

	$.LoadingOverlay("show");
	
	$.ajaxSetup({async:true});
	$.post("/goal/saveGoal", {target_goal : "" + target_goal + "",goal_name : "" + goal_name + "",amount : "" + amount + "",
		horizon : "" + horizon + "",inflation : "" + inflation + "",risk : "" + risk + "",target_amount : "" + target_amount + "",sip_amount : "" + sip_amount + "",
		scheme_array : "" + scheme_array_str + "",category_array : "" + category_array_str + "",percentage_array : "" + percentage_array_str + "",
		amount_array : "" + amount_array_str + "",existing_folio : "" + existing_folio_str + "",existing_scheme : "" + existing_scheme_str + "",
		existing_scheme_code : "" + existing_scheme_code_str + "",existing_scheme_sip : "" + existing_scheme_sip_str + "",existing_scheme_current_value : "" + existing_scheme_current_value_str + ""}, function(data)
    {
			$.LoadingOverlay("hide");
			
		var result = $.trim(data);
  		var obj = jQuery.parseJSON(result);
   		if(obj.status == 400)
   		{  
          	swal({title:"",text:"" +obj.msg});
   			return false;
   		}
   		
		swal({title:"",text:"Your goal based investment plan successfully saved."},
		function(){
			top.location = "https://themfbox.mcfinserveadmin.com/mutual-funds-research/goal-based-sip-investment?userid="+userid+"&id="+obj.msg;
		});
		return;
		
    },'text');
}
function showLogin(goal_type)
{
	var existing_folio_array = new Array();
	var existing_scheme_array = new Array();
	var existing_scheme_code_array = new Array();
	var existing_scheme_current_value_array = new Array();
	var existing_scheme_sip_array = new Array();
	var scheme_array = new Array();
	var category_array = new Array();
	var percentage_array = new Array();
	var amount_array = new Array();

	$("input[name='save_goal_exist']:checked").each(function()
	{
		var count = $(this).val();
		var scheme = $("#td_scheme_"+count).html();
		var scheme_code = $("#td_scheme_code_"+count).val();
		var folio_no = $("#td_folio_"+count).html();
		var current_value = $("#td_current_value_"+count).html();
		var scheme_sip = $("#span_scheme_sip_amount_"+count).html();
		
		if(scheme_sip == undefined || scheme_sip == "undefined" || scheme_sip == null || scheme_sip == "")
		{
			scheme_sip = "0";
		}
		current_value = current_value.replace(/,/g,'');
		scheme_sip = scheme_sip.replace(/,/g,'');
		
		existing_scheme_array.push(scheme);
		existing_scheme_code_array.push(scheme_code);
		existing_folio_array.push(folio_no);
		existing_scheme_current_value_array.push(current_value);
		existing_scheme_sip_array.push(scheme_sip);
	});

	/* $(".scheme_details_div").each(function()
	{ */
		 var table = document.getElementById('marriagetable');
		var rowLength = table.rows.length;
		for(var i=0; i<rowLength; i++){
		  var row = table.rows[i];
		  var count = row;
		  var scheme_name = $("#span_scheme_"+i).html();
	      var category = $("#txt_category_"+i).html();
	      var allocation_percentage = $("#txt_allocation_percent_"+i).html();
	      var allocation_amount = $("#txt_allocation_amount_"+i).html();
	      allocation_amount = $("#txt_allocation_amount_"+i).text().replace(/,/g, '');//allocation_amount.replace(/,/g,''); 	     
	      scheme_array.push(scheme_name);
	      category_array.push(category);
	      percentage_array.push(allocation_percentage);
	      amount_array.push(allocation_amount);
	}
	
	if(existing_folio_array.length > 0)
	{
		sip_amount = remaining_sip_amount.toFixed(0);
	}
	
	if(goal_type == 2 && scheme_array.length == 0)
	{
		swal({title:"" , text:"Please select the scheme and save your goal."});
		return false;
	}
	
	var existing_folio_str = existing_folio_array.toString();
	var existing_scheme_str = existing_scheme_array.toString();
	var existing_scheme_code_str = existing_scheme_code_array.toString();
	var existing_scheme_current_value_str = existing_scheme_current_value_array.toString();
	var existing_scheme_sip_str = existing_scheme_sip_array.toString();
	var scheme_array_str = scheme_array.toString();
	var category_array_str = category_array.toString();
	var percentage_array_str = percentage_array.toString();
	var amount_array_str = amount_array.toString();

	$.LoadingOverlay("show");
	
	$.ajaxSetup({async:true});
	$.post("/goal/saveGoalWithOutLogin", {target_goal : "" + target_goal + "",goal_name : "" + goal_name + "",amount : "" + amount + "",
		horizon : "" + horizon + "",inflation : "" + inflation + "",risk : "" + risk + "",target_amount : "" + target_amount + "",sip_amount : "" + sip_amount + "",
		scheme_array : "" + scheme_array_str + "",category_array : "" + category_array_str + "",percentage_array : "" + percentage_array_str + "",
		amount_array : "" + amount_array_str + "",existing_folio : "" + existing_folio_str + "",existing_scheme : "" + existing_scheme_str + "",
		existing_scheme_code : "" + existing_scheme_code_str + "",existing_scheme_sip : "" + existing_scheme_sip_str + "",existing_scheme_current_value : "" + existing_scheme_current_value_str + ""}, function(data)
    {
			$.LoadingOverlay("hide");
			
		var result = $.trim(data);
  		var obj = jQuery.parseJSON(result);
   		if(obj.status == 400)
   		{  
          	swal({title:"",text:"" +obj.msg});
   			return false;
   		}
   		
   		top.location = "https://themfbox.mcfinserveadmin.com?authcode="+$.trim(obj.msg);
		return;
		
    },'text');
}
function riskQuestionBack()
{
	if(ques_flag != 1)
	{
		ques_flag = ques_flag - 1;
		$('#slider').gotoSlide('slider_'+ques_flag);
	}else
	{
		redirect();
	}
}
function riskQuestionNext(ques_flag)
{
	var answer = $("input[type='radio'][name='q"+ ques_flag +"']:checked").val();
    
    if (answer == undefined) 
    {
    	swal({title:"",text:"Please answer the question"});
		return false;
    }
    return true;
}
function completeStep2()
{
	var answer1 = $("input[type='radio'][name='q1']:checked").val();
    var answer2 = $("input[type='radio'][name='q2']:checked").val();
    var answer3 = $("input[type='radio'][name='q3']:checked").val();
    var answer4 = $("input[type='radio'][name='q4']:checked").val();
    var answer5 = $("input[type='radio'][name='q5']:checked").val();
    var answer6 = $("input[type='radio'][name='q6']:checked").val();
	
    
    if (answer1 == undefined || answer2 == undefined || answer3 == undefined || answer4 == undefined || answer5 == undefined || answer6 == undefined) 
    {
    	swal({title:"",text:"Please answer all the questions"});
		return;
    }

    $.LoadingOverlay("show");
    
	$.ajaxSetup({async:true});
	$.post("/goals/getRiskProfile", {answer1 : answer1, answer2 : answer2, answer3 : answer3, answer4 : answer4, answer5 : answer5, answer6 : answer6}, function(data)
    {
		$.LoadingOverlay("hide");
		
		var result = $.trim(data);
		var obj = jQuery.parseJSON(result);
        risk = obj.risk_profile;
        $("#risk_result").html(risk.toUpperCase());
        var risk_str = "";
        swal({html:true,title:"",text:"As per our risk assessment, your risk tolerance is <br><b>"+risk+"</b>"});
        $(".robo1").show();
 		$(".robo2").hide();
 		$("#sel_risk").val(risk);     
        
    },'text');	
}
function contactUs()
{
	document.location.href = "/contactus";
}

function show_ques_div(i) {
	 
    switch (i) {
        case 1:
        	if(riskQuestionNext(1))
        	{
        		$("#step1").hide();
        		$("#step2").show(1000);
        		$("#step3").hide();
        		$("#step4").hide();
        		$("#step5").hide();
        		$("#step6").hide();
        		$("#step7").hide(); 
        	}
            break;
        case 2:
        	if(riskQuestionNext(2))
        	{
        		$("#step1").hide();
        		$("#step2").hide();
        		$("#step3").show(1000);                		
        		$("#step4").hide();
        		$("#step5").hide();
        		$("#step6").hide();
        		$("#step7").hide();
        	}
            break;
        case 3:
        	if(riskQuestionNext(3))
        	{
        		$("#step1").hide();
        		$("#step2").hide();
        		$("#step3").hide();
        		$("#step4").show(1000);
        		$("#step5").hide();
        		$("#step6").hide();
        		$("#step7").hide();
        	}
            break;
        case 4:
        	if(riskQuestionNext(4))
        	{
        		$("#step1").hide();
        		$("#step2").hide();
        		$("#step3").hide();
        		$("#step4").hide();
        		$("#step5").show(1000);                		
        		$("#step6").hide();
        		$("#step7").hide(); 
        	}

            break;
        case 5:
        	if(riskQuestionNext(5))
        	{
        		$("#step1").hide();
        		$("#step2").hide();
        		$("#step3").hide();
        		$("#step4").hide();
        		$("#step5").hide();
        		$("#step6").show(1000);
        		$("#step7").hide(); 
					 
        	}
            break;
        case 6:
        	if(riskQuestionNext(6))
        	{
        		$("#step1").hide();
        		$("#step2").hide();
        		$("#step3").hide();
        		$("#step4").hide();
        		$("#step5").hide();
        		$("#step6").hide();
        		$("#step7").show(1000); 
			    completeStep2();
        	}
            break;
        
        default:
    }
    $('html, body').animate({
        scrollTop: ($(".robo2").offset().top) - 100
    }, 2000);
   return true;

}
function hide_div(i) {
	 switch (i) {
     case 1:

     break;
     case 2:
         	/* document.getElementById("step1").style.display = 'block';
         	document.getElementById("step2").style.display = 'none';
		 	document.getElementById("step3").style.display = 'none';
		  	document.getElementById("step4").style.display = 'none';
		   	document.getElementById("step5").style.display = 'none';
		    document.getElementById("step6").style.display = 'none';
			document.getElementById("step7").style.display = 'none'; */
			
			$("#step1").show(1000);
			$("#step2").hide();
	  		$("#step3").hide();
	  		$("#step4").hide();	        		
	  		$("#step5").hide();
	  		$("#step6").hide();
	  		$("#step7").hide();
          break;
     case 3:
        /* 	document.getElementById("step1").style.display = 'none';
        	document.getElementById("step2").style.display = 'block';
		 	document.getElementById("step3").style.display = 'none';
		  	document.getElementById("step4").style.display = 'none';
		   	document.getElementById("step5").style.display = 'none';
		    document.getElementById("step6").style.display = 'none';
			document.getElementById("step7").style.display = 'none'; */					
			$("#step1").hide();
			$("#step2").show(1000);
	  		$("#step3").hide();
	  		$("#step4").hide();	        		
	  		$("#step5").hide();
	  		$("#step6").hide();
	  		$("#step7").hide();					
         break;
     case 4:
         /* 	document.getElementById("step1").style.display = 'none';
        	document.getElementById("step2").style.display = 'none';
		 	document.getElementById("step3").style.display = 'block';
		  	document.getElementById("step4").style.display = 'none';
		   	document.getElementById("step5").style.display = 'none';
		    document.getElementById("step6").style.display = 'none';
			document.getElementById("step7").style.display = 'none'; */
			$("#step1").hide();
			$("#step2").hide();
			$("#step3").show(1000);
	  		$("#step4").hide();	        		
	  		$("#step5").hide();
	  		$("#step6").hide();
	  		$("#step7").hide();
         	break;
     case 5:
        /* 	document.getElementById("step1").style.display = 'none';
         	document.getElementById("step2").style.display = 'none';
		 	document.getElementById("step3").style.display = 'none';
		 	document.getElementById("step4").style.display = 'block';
		   	document.getElementById("step5").style.display = 'none';
		    document.getElementById("step6").style.display = 'none';
			document.getElementById("step7").style.display = 'none'; */
			$("#step1").hide();
			$("#step2").hide();
			$("#step3").hide();
	  		$("#step4").show(1000);	        		
	  		$("#step5").hide();
	  		$("#step6").hide();
	  		$("#step7").hide();
        	break;
     case 6:
       		/* document.getElementById("step1").style.display = 'none';
         	document.getElementById("step2").style.display = 'none';
		 	document.getElementById("step3").style.display = 'none';
		  	document.getElementById("step4").style.display = 'none';
		   	document.getElementById("step5").style.display = 'block';
		    document.getElementById("step6").style.display = 'none';
			document.getElementById("step7").style.display = 'none'; */
			$("#step1").hide();
			$("#step2").hide();
			$("#step3").hide();
	  		$("#step4").hide();	        		
	  		$("#step5").show(1000);
	  		$("#step6").hide();
	  		$("#step7").hide();					
         	break;
     case 7:
       		/* document.getElementById("step1").style.display = 'none';
         	document.getElementById("step2").style.display = 'none';
		 	document.getElementById("step3").style.display = 'none';
		  	document.getElementById("step4").style.display = 'none';
		   	document.getElementById("step5").style.display = 'none';
		    document.getElementById("step6").style.display = 'block';
			document.getElementById("step7").style.display = 'none'; */					
			$("#step1").hide();
			$("#step2").hide();
			$("#step3").hide();
	  		$("#step4").hide();	        		
	  		$("#step5").hide();	
	  		$("#step6").show(1000);
	  		$("#step7").hide();     
         	break;             
     	default:
 	}
		$('html, body').animate({
		    scrollTop: ($(".robo2").offset().top) - 100
		}, 2000);
		return true;
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
var encrypted_text = "";
function showLoginModel(){
	$("#login_model").modal('show');
}
function checkLoginDetails()
{
	/*var pan = $("#txt_login_id").val();
    var pass =  $("#txt_login_pass").val();
    
    if(pan == "" || pan.length != 10)
    {
    	swal({title:"Invalid PAN",text:"Enter your valid PAN number"});
   	    return false;
    }
    if(pass == "")
    {
    	swal({title:"",text:"Enter valid password"});
   	    return false;
    }
    if(pass.length < 6 || pass.length > 16)
    {
    	swal({title:"",text:"Password must have minimum of 6 characters and maximum 16 characters"});
   	    return false;
    }
    
    $.LoadingOverlay("show");
    
    $.ajaxSetup({async:true});
	$.post("/clientValidateLogin", {txt_pan : ""+pan+"", txt_pass : ""+pass+""}, function(data)
    {
		$.LoadingOverlay("hide");
		
		var result = $.trim(data);
  		var obj = jQuery.parseJSON(result);
  		
   		if(obj.status == 400)
   		{
   			swal({title:"",text:obj.msg});
   			return false;
   		}
   		
   		encrypted_text = obj.encrypted_text;

   		$("#login_model").modal('hide');

   		swal({title:"",text:"You are successfully logged in."},
		function(){
   			top.location = "/goals/child-wedding?amount="+amount+"&horizon="+horizon+"&inflation="+inflation+"&risk="+risk+"&goal_name="+goal_name;
		});
		return;
		          
    }, "text");*/
    
	top.location = "/goal/child-wedding?amount="+amount+"&horizon="+horizon+"&inflation="+inflation+"&risk="+risk+"&goal_name="+goal_name;
}
function showSelectedValues()
{
	var total_amt = 0;
	$("input[name='save_goal_exist']:checked").each(function()
	{
		var count = $(this).val();
		var future_value = $("#td_future_value_"+count).html();
		
		future_value = future_value.replace(/,/g,'');

		total_amt = total_amt + parseInt(future_value);
	});
	$("#span_scheme_cost").html(numbersWithComma(total_amt));

	if(total_amt > target_amount){
		swal({title:"",text:"Selected Scheme is enough to achieve this goal."});
		return;
	}
}
function checkLoginDetails()
{
	var pan = $("#txt_login_id").val();
    var pass =  $("#txt_login_pass").val();
    
    if(pan == "" || pan.length != 10)
    {
    	swal({title:"Invalid PAN/MOBILE",text:"Enter your valid PAN/MOBILE number"});
   	    return false;
    }
    if(pass == "")
    {
    	swal({title:"",text:"Enter valid password"});
   	    return false;
    }
    if(pass.length < 6 || pass.length > 16)
    {
    	swal({title:"",text:"Password must have minimum of 6 characters and maximum 16 characters"});
   	    return false;
    }
    
    $.LoadingOverlay("show");
    
    $.ajaxSetup({async:true});
	$.post("/clientValidateLogin", {txt_pan : ""+pan+"", txt_pass : ""+pass+""}, function(data)
    {
		$.LoadingOverlay("hide");
		
		var result = $.trim(data);
  		var obj = jQuery.parseJSON(result);
  		
   		if(obj.status == 400)
   		{
   			swal({title:"",text:obj.msg});
   			return false;
   		}
   		
   		encrypted_text = obj.encrypted_text;

   		$("#login_model").modal('hide');

   		swal({title:"",text:"You are successfully logged in."},
		function(){
   			top.location = "/goal/child-wedding?amount="+amount+"&horizon="+horizon+"&inflation="+inflation+"&risk="+risk+"&goal_name="+goal_name;
		});
		return;
		          
    }, "text");
	//top.location = "/goal/child-wedding?amount="+amount+"&horizon="+horizon+"&inflation="+inflation+"&risk="+risk+"&goal_name="+goal_name;
}
function showSelectedValues()
{
	var total_amt = 0;
	$("input[name='save_goal_exist']:checked").each(function()
	{
		var count = $(this).val();
		var future_value = $("#td_future_value_"+count).html();
		
		future_value = future_value.replace(/,/g,'');

		total_amt = total_amt + parseInt(future_value);
	});
	$("#span_scheme_cost").html(numbersWithComma(total_amt));

	if(total_amt > target_amount){
		swal({title:"",text:"Selected Scheme is enough to achieve this goal."});
		return;
	}
}


function checkLengthinflation(){
	   var fieldVal = document.getElementById('txt_inflation').value;
	   //Suppose u want 3 number of character
	   if(fieldVal <= 100){
	       return true;
	   }
	   else
	   {
	       	var str = document.getElementById('txt_inflation').value;
	       str = str.substring(0, str.length - 1);
	   		document.getElementById('txt_inflation').value = str;
	   }
	}

function returnFilter(retrunType) {
	if(retrunType.toString() == "1")
	{	
		 $('#return1').addClass('active');
		 $('#return3').removeClass('active');
		 $('#return5').removeClass('active');
			
		 $('.return1').addClass('displaytd');
		 $('.return1').removeClass('undisplaytd');
		 $('.return3').removeClass('displaytd');
		 $('.return3').addClass('undisplaytd');
		 $('.return5').removeClass('displaytd');
		 $('.return5').addClass('undisplaytd');
		 
	}
	if(retrunType.toString() == "3")
	{	
		 $('#return1').removeClass('active');
		 $('#return3').addClass('active');
		 $('#return5').removeClass('active');
		 $('.return1').removeClass('displaytd');
		 $('.return1').addClass('undisplaytd');
		 $('.return3').addClass('displaytd');
		 $('.return3').removeClass('undisplaytd');
		 $('.return5').removeClass('displaytd');	
		 $('.return5').addClass('undisplaytd');	
		 
	}
	if(retrunType.toString() == "5")
	{
		 $('#return1').removeClass('active');
		 $('#return3').removeClass('active');
		 $('#return5').addClass('active');
		 $('.return1').removeClass('displaytd');
		 $('.return1').addClass('undisplaytd');
		 $('.return3').removeClass('displaytd');
		 $('.return3').addClass('undisplaytd');
		 $('.return5').addClass('displaytd');	
		 $('.return5').removeClass('undisplaytd');
	} 
  }
function txtyears()
{
	$(".childp1").show();
} 
function txtinflation()
{
	$(".childp2").show();
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
            <h1 class="pagetitle__heading">Child's Wedding</h1>
            <nav>
              <ol class="breadcrumb mb-0">
                <li class="breadcrumb-item"><a href="/">Home</a></li>
                <li class="breadcrumb-item"><a href="/tools-and-calculators/become-a-crorepati">Goals</a></li>
                <li class="breadcrumb-item active" aria-current="page">Child's Wedding</li>
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
    <section class="team-layout1 pb-20">
      <div class="container">
			<div class="row">

<div class="robo1 ques_1">  

<div class="row"> 
<div class="col-md-12 col-sm-12">
<div class="title-v1">
	<h1 class="text-center">Child's Wedding</h1>
</div>
</div>
</div>

<div class="row" style="margin-top:30px;">  

<div class="col-md-12 col-sm-12" style="margin:0 auto; float:none; text-align:center;">
<div class="row pt4">
<div class="col-md-12 form-inline">
<div class="row" style="margin:0px;margin-bottom:3%;">
<div class="col-md-12" style="float:none;margin:0 auto;">
<p>You want to save for your child's wedding which is   
<input id="txt_years" maxlength="2" class="form-control form-control-sm w-15 w-custom-56 roboInput textInputRadius" style="width: 5%;color: #529100;font-weight: bold;font-size: 16px !important;" value="" type="text" onkeydown="txtyears()">
years away.</p> 
</div>
</div>
</div>
</div>


<div class="row pt4 childp1 pdesign" style="display: none !important;">
<div class="col-md-12 form-inline">
<div class="row" style="margin:0px;margin-bottom:3%">
<div class="col-md-12" style="float:none;margin:0 auto;">
<p> The wedding cost would be around &nbsp;<i class="fa fa-inr"></i> 
<input id="txt_amount" maxlength="13" class="form-control form-control-sm w-15 w-custom-56 roboInput textInputRadius number" style="width: 17%;color: #529100;font-weight: bold;font-size: 16px !important;" value="" type="text" onchange="addCommas()" >
in today's value. You assume the inflation to be 
<input id="txt_inflation" maxlength="5" class="form-control form-control-sm w-15 w-custom-56 roboInput textInputRadius" style="width: 8%;color: #529100;font-weight: bold;font-size: 16px !important;" value="" type="number" onkeydown="txtinflation()" oninput="checkLengthinflation()">
 %.</p></div>
</div>
</div>
</div>



<div class="row pt4 childp2 pdesign" style="display: none !important;">
<div class="col-md-12 form-inline">
<div class="row" style="margin:0px;margin-bottom:3%">
<div class="col-md-12" style="float:none;margin:0 auto;">
<p> You would like to name this goal as  
<input id="txt_goal_name" maxlength="25" class="form-control form-control-sm w-15 w-custom-56 roboInput" style="width: 20%;color: #529100;font-weight: bold;font-size: 16px !important;" value="" type="text">.You can take 
<select id="sel_risk" class="form-control form-control-sm w-25 w-custom-50 roboInput textInputRadius" onchange="riskProfileChange()" style="text-align:center;text-align-last:center;width:23%;padding:0px; font-size: 16px !important;font-weight: bold;">
<option value="Conservative">Conservative</option>
<option value="Moderately Conservative">Moderately Conservative</option>
<option value="Moderate">Moderate</option>
<option value="Moderately Aggressive">Moderately Aggressive</option>
<option value="Aggressive">Aggressive</option>
<option value="">Check Your Risk Profile</option>
</select> risk with your investments.</p>
</div>
</div>
</div>
</div>
 <div class="row pt4" style="margin-top: -5px !important;">
<div class="col-md-12 text-center pb-5">	
<button class="btn btn__secondary btn__rounded btnCol" style="margin:0 auto; float: none;" onclick="checkResult()">Build My Child's Wedding</button>
</div>
</div>

</div>
</div>
</div>
<div class="robo2">

	<div class="container calc_div1 body-color" id="step1">	
	 <div class="row text-center">	  
		<div class="col-md-12 col-sm-12">
	        <h3 class="">Assess Your Risk Tolerance</h3>
	        <p>We will ask you a set of questions to get to know you!</p>
	    </div>
	  </div>
	  <div class="row">
	   <div class="col-md-12 col-sm-12 pt-4">	   
		  <div class="row">
			 <div class="col-md-12 col-sm-12 text-center">
			     <h4 class="text-dark">Step 1:</h4>
				  <p class="textColor font-size-19 question"> Describe your knowledge of investments:</p>
				  <div class="row">
				    <div class="col-lg-12">
						<div class="hrline-45"></div>
					</div>
				  </div>
			  </div>
			</div>		   
		    <div class="row">
			 <div class="col-md-6" style="margin: 0 auto;display:grid;">
			 	<label class="form-check-label mt-3 py-3 answer" style="border-top: 1px solid #ddd;">
				  <input type="radio" name="q1" value="1">
				  &nbsp;None
				  <span class="checkmark"></span>
				</label>
				<label class="form-check-label py-3 answer" style="border-top: 1px solid #ddd;">
				  <input type="radio" name="q1" value="2">
				  &nbsp;Limited
				  <span class="checkmark"></span>
				</label>
				<label class="form-check-label py-3 answer" style="border-top: 1px solid #ddd;">
				  <input type="radio" name="q1" value="3">
				  &nbsp;Good
				  <span class="checkmark"></span>
				</label>
				<label class="form-check-label py-3 answer_last" style="border-top: 1px solid #ddd;border-bottom: 1px solid #ddd;">
				  <input type="radio" name="q1" value="4">
				  &nbsp;Extensive
				  <span class="checkmark"></span>
				</label>
			</div>
		   </div>
		   
		 <div class=" row py-4">
		 <div class="col-lg-12 text-center pb-4">
		 <button class="btn btn-primary col-lg-custom btn-md btnCol col-lg-border-custom" style="width: auto; background-color: #20C4B7; border-color: #6ac259; color: #fff; font-weight: bold;" onclick="goToStep1()">Back</button>
		 <button class="btn btn-success col-lg-custom  btn-md btnCol ml-2" onclick="show_ques_div(1)">Continue</button>
		 </div>
	  </div>
	 </div>
	</div>
	</div>
	
	<div class="container calc_div1"  id="step2">
		<div class="row text-center">	  
			<div class="col-lg-12">
		        <h3 class="">Assess Your Risk Tolerance</h3>
		        <p>We will ask you a set of questions to get to know you!</p>
		    </div>
	  	</div>
  	<div class="row">
		<div class="col-lg-12 pt-4">
			<div class="row">
	 			<div class="col-lg-12 text-center">
	     			<h4 class="text-dark">Step 2:</h4>
		  			<p class="textColor font-size-19 question">When you invest your money, you are:</p>
		 			<!-- <div class="w-50 border-bottom text-center"></div> -->
		  			<div class="row">
	 					<div class="col-lg-12">
							<div class="hrline-45"></div>
						</div>
					</div>
		  		</div>
		   	</div>
		    <div class="row">
	 			<div class="col-md-12" style="margin: 0 auto;display:grid;">
	 				<label class="form-check-label mt-3 py-3 answer" style="border-top: 1px solid #ddd;">
	  					<input type="radio" name="q2" value="1">
	  					&nbsp;Most concerned about your investment losing value
	  					<span class="checkmark"></span>
					</label>
					<label class="form-check-label py-3 answer" style="border-top: 1px solid #ddd;">
  						<input type="radio" name="q2" value="2">
  						&nbsp;Equally concerned about your investment losing or gaining value
  						<span class="checkmark"></span>
					</label>
					<label class="form-check-label py-3 answer_last" style="border-top: 1px solid #ddd;border-bottom: 1px solid #ddd;">
					  <input type="radio" name="q2" value="3">
					  &nbsp;Most concerned about your investment gaining value
					  <span class="checkmark"></span>
					</label>
				</div>
		   </div>
			 <div class="row py-4">
				 <div class="col-lg-12 text-center pb-4" style=" margin-top: 5% !important;">
					 <button class="btn btn-primary col-lg-custom btn-md btnCol col-lg-border-custom" style="width: auto; background-color: #20C4B7; border-color: #6ac259; color: #fff; font-weight: bold;" onclick="hide_div(2)">Back</button>
					 <button class="btn btn-success col-lg-custom  btn-md btnCol ml-2" onclick="show_ques_div(2)">Continue</button>
				 </div>
		  	</div>
	  	</div>
 	  </div>
	</div>
	
	<div class="container calc_div1" id="step3">
		<div class="row text-center">	  
			<div class="col-lg-12">
	        	<h3 class="">Assess Your Risk Tolerance</h3>
	        	<p>We will ask you a set of questions to get to know you!</p>
	    	</div>
	 	</div>
	  	<div class="row">
	   		<div class="col-lg-12 pt-4">
	    		<div class="row">
	 				<div class="col-lg-12 text-center">
	     				<h4 class="text-dark">Step 3:</h4>
		  				<p class="textColor font-size-19 question">If the market lost 25% in the last few months, and your investments<br>also suffered the same - what would be your first impulse?</p>
						<div class="row">
						 	<div class="col-lg-12">
								<div class="hrline-75"></div>
							</div>
						</div>
		  			</div>
		   		</div>
		    	<div class="row">
	 				<div class="col-md-10" style="margin: 0 auto;display:grid;">
			 			<label class="form-check-label mt-3 py-3 answer" style="border-top: 1px solid #ddd;">
  							<input type="radio" name="q3" value="1">
  							&nbsp;Sell all of my investments
  							<span class="checkmark"></span>
						</label>
						<label class="form-check-label py-3 answer" style="border-top: 1px solid #ddd;">
  							<input type="radio" name="q3" value="2">
  							&nbsp;Sell some of my investments
  							<span class="checkmark"></span>
						</label>
						<label class="form-check-label py-3 answer" style="border-top: 1px solid #ddd;">
  							<input type="radio" name="q3" value="3">
  							&nbsp;Will wait and take no action immediately
  							<span class="checkmark"></span>
						</label>
						<label class="form-check-label py-3 answer_last" style="border-top: 1px solid #ddd;border-bottom: 1px solid #ddd;">
						  <input type="radio" name="q3" value="4">
						  &nbsp;Will invest more
						  <span class="checkmark"></span>
						</label>	
					</div>
		   		</div>
				 <div class="row py-4">
					 <div class="col-lg-12 text-center pb-4" style=" margin-top: 5% !important;">
						 <button class="btn btn-primary col-lg-custom btn-md btnCol col-lg-border-custom" style="width: auto; background-color: #20C4B7; border-color: #6ac259; color: #fff; font-weight: bold;" onclick="hide_div(3)">Back</button>
						 <button class="btn btn-success col-lg-custom  btn-md btnCol ml-2" onclick="show_ques_div(3)">Continue</button>
					 </div>
			  	</div>
	  		</div>
	 	</div>
	</div>
	
	<div class="container calc_div1" id="step4">
		<div class="row text-center">	  
			<div class="col-lg-12">
	        	<h3 class="">Assess Your Risk Tolerance</h3>
	        	<p>We will ask you a set of questions to get to know you!</p>
	    	</div>
	  	</div>
	   	<div class="row">
	   		<div class="col-lg-12 pt-4">
	    		<div class="row">
		 			<div class="col-lg-12 text-center">
					     <h4 class="text-dark">Step 4:</h4>
						  <p class="textColor font-size-19 question">Have you ever invested in shares or mutual funds? If yes, for how many years?</p>
							<div class="row">
							 	<div class="col-lg-12">
									<div class="hrline-55"></div>
								</div>
							</div>
			  			</div>
		   			</div>
		    		<div class="row">
	 					<div class="col-md-6" style="margin: 0 auto;display:grid;">
			 				<label class="form-check-label mt-3 py-3 answer" style="border-top: 1px solid #ddd;">
  								<input type="radio" name="q4" value="1">
  								&nbsp;Never
  								<span class="checkmark"></span>
							</label>
							<label class="form-check-label py-3 answer" style="border-top: 1px solid #ddd;">
							  <input type="radio" name="q4" value="2">
							 &nbsp;1-3 years
							  <span class="checkmark"></span>
							</label>
							<label class="form-check-label py-3 answer" style="border-top: 1px solid #ddd;">
							  <input type="radio" name="q4" value="3">
							 &nbsp;3-5 years
							  <span class="checkmark"></span>
							</label>
							<label class="form-check-label py-3 answer_last" style="border-top: 1px solid #ddd;border-bottom: 1px solid #ddd;">
							  <input type="radio" name="q4" value="4">
							  &nbsp;5+ years
							  <span class="checkmark"></span>
							</label>
						</div>
					</div>
					 <div class="row py-4">
						  <div class="col-lg-12 text-center pb-4" style=" margin-top: 5% !important;">
							 <button class="btn btn-primary col-lg-custom btn-md btnCol col-lg-border-custom" style="width: auto; background-color: #20C4B7; border-color: #6ac259; color: #fff; font-weight: bold;" onclick="hide_div(4)">Back</button>
							 <button class="btn btn-success col-lg-custom  btn-md btnCol ml-2"onclick="show_ques_div(4)">Continue</button>
						 </div>
				  	 </div>
	  			</div>
	 		</div>
	 	</div>
	 	
	<div class="container calc_div1" id="step5">
		 <div class="row text-center">	  
			<div class="col-lg-12">
	        	<h3 class="">Assess Your Risk Tolerance</h3>
	        	<p>We will ask you a set of questions to get to know you!</p>
	    	</div>
	  	</div>
	  	<div class="row">
	   		<div class="col-lg-12 pt-4">
	    		<div class="row">
	 				<div class="col-lg-12 text-center">
	     				<h4 class="text-dark">Step 5:</h4>
		  				<p class="textColor font-size-19 question">To obtain a return of more than what you would receive<br>as a bank fixed deposit, you must take risks.</p>
							<div class="row">
		 						<div class="col-lg-12">
									<div class="hrline-55"></div>
								</div>
							</div>
		  				</div>
		   		  </div>
		    	  <div class="row">
	 				<div class="col-md-10" style="margin: 0 auto;display:grid;">
			 			<label class="form-check-label mt-3 py-3 answer" style="border-top: 1px solid #ddd;">
  							<input type="radio" name="q5" value="1">
  							&nbsp;Strongly disagree with the statement
  							<span class="checkmark"></span>
						</label>
						<label class="form-check-label py-3 answer" style="border-top: 1px solid #ddd;">
						  <input type="radio" name="q5" value="2">
						  &nbsp;Disagree with the statement
						  <span class="checkmark"></span>
						</label>
						<label class="form-check-label py-3 answer" style="border-top: 1px solid #ddd;">
						  <input type="radio" name="q5" value="3">
						  &nbsp;Agree with the statement
						  <span class="checkmark"></span>
						</label>
						<label class="form-check-label py-3 answer_last" style="border-top: 1px solid #ddd;border-bottom: 1px solid #ddd;">
						  <input type="radio" name="q5" value="4">
						  &nbsp;Strongly agree with the statement
						  <span class="checkmark"></span>
						</label>
					</div>
		   		</div>
				 <div class="row py-4">
					 <div class="col-lg-12 text-center pb-4" style=" margin-top: 5% !important;">
						 <button class="btn btn-primary col-lg-custom btn-md btnCol col-lg-border-custom" style="width: auto; background-color: #20C4B7; border-color: #6ac259; color: #fff; font-weight: bold;" onclick="hide_div(5)">Back</button>
						 <button class="btn btn-success col-lg-custom  btn-md btnCol ml-2" onclick="show_ques_div(5)">Continue</button>
					 </div>
				 </div>
	  		</div>
	 	</div>
	</div>
	
	<div class="container calc_div1" id="step6">
		<div class="row text-center">	  
			<div class="col-lg-12">
		        <h3 class="">Assess Your Risk Tolerance</h3>
		        <p>We will ask you a set of questions to get to know you!</p>
	    	</div>
	  	</div>
	  	<div class="row">
	   		<div class="col-lg-12 pt-4">
	    		<div class="row">
	 				<div class="col-lg-12 text-center">
			     	<h4 class="text-dark">Step 6:</h4>
				  	<p class="textColor font-size-19 question">How do you react to the idea of investments?</p>
		  				<div class="row">
	 						<div class="col-lg-12">
								<div class="hrline-45"></div>
							</div>
						</div>
		  			</div>
		   		</div>
		    	<div class="row">
	 				<div class="col-md-12" style="margin: 0 auto;display:grid;">
			 			<label class="form-check-label mt-3 py-3 answer" style="border-top: 1px solid #ddd;">
						  <input type="radio" name="q6" value="1">
						  &nbsp;I get stressed and avoid making financial decisions.
						  <span class="checkmark"></span>
						</label>
						<label class="form-check-label py-3 answer" style="border-top: 1px solid #ddd;">
						  <input type="radio" name="q6" value="2">
						  &nbsp;I ask for advice from my friends and family.
						  <span class="checkmark"></span>
						</label>
						<label class="form-check-label py-3 answer" style="border-top: 1px solid #ddd;">
						  <input type="radio" name="q6" value="3">
						  &nbsp;I seek professional advice.
						  <span class="checkmark"></span>
						</label>
						<label class="form-check-label py-3 answer_last" style="border-top: 1px solid #ddd;border-bottom: 1px solid #ddd;">
						  <input type="radio" name="q6" value="4">
						  &nbsp;I am knowledgeable about investments and use my own expertise.
						  <span class="checkmark"></span>
						</label>
					</div>
		  		 </div>
				 <div class="row py-4">
					 <div class="col-lg-12 text-center pb-4" style=" margin-top: 5% !important;">
						 <button class="btn btn-primary col-lg-custom btn-md btnCol col-lg-border-custom" style="width: auto; background-color: #20C4B7; border-color: #6ac259; color: #fff; font-weight: bold;" onclick="hide_div(6)">Back</button>
						 <button class="btn btn-success col-lg-custom  btn-md btnCol ml-2" onclick="show_ques_div(6)">Continue</button>
					 </div>
		  		 </div>
	  		</div>
	 	</div>
	</div>
	
</div>

<div class="robo3">
<div class="row">
<div class="col-lg-2">
</div>
<div class="col-lg-8">
<div class="mission_body">
<div class="row">
<div class="col-lg-12">
<div style="display:inline-block;width:92%;">
<div class="text-center" style="padding-bottom:3%;">
<h3 style="color: #28395E;">Goal Summary</h3>
</div>
</div>
<div style="display:inline-block;">
<div class="text-right">
<a href="javascript:void(0)" onclick="goToStep1()">
<i class="fa fa-arrow-circle-o-left" aria-hidden="true" style="width: 50px;font-size: 38px;color: #003399;"></i>
<!-- <img src="/img/back_img.png" alt="" style="width:40px;" /> -->
</a>
</div>
</div>
</div>
</div>
<div class="row">
	<div class="col-lg-6 col-sm-4 text-center mb-3">
		<div class="box bg-tf p-3">
			<h6><i class="fa fa-inr" aria-hidden="true"></i> <span id="span_invest_today_cost"></span></h6>
			<p class="goalcontentbg">Your Targeted Amount<br>(in today's value)</p>
		</div>
	</div>
	<div class="col-lg-6 col-sm-4 text-center mb-3">
		<div class="box bg-tf p-3">
			<h6><i class="fa fa-inr" aria-hidden="true"></i> <span id="span_invest_future_cost"></span></h6>
			<p class="goalcontentbg">Future cost of Wedding<br>(adjusting for <span class="span_inflation"></span>% inflation)</p>
		</div>
	</div>
	<div class="col-lg-6 col-sm-4 text-center mb-3">
		<div class="box bg-tf p-3">
			<h6><span id="span_no_years"></span></h6>
			<p class="goalcontentbg">Number of Years<br>You Need To Save</p>
			<p></p>
		</div>
	</div>
	<div class="col-lg-6 col-sm-4 text-center mb-3">
		<div class="box bg-tf p-3">
			<h6><i class="fa fa-inr" aria-hidden="true"></i> <span id="span_sip_amt"></span></h6>
			<p class="goalcontentbg">Monthly SIP Investment<br>Required</p>
			<p></p>
		</div>
	</div>
	<div class="col-lg-6 col-sm-4 text-center mb-3">
	<c:choose>
	<c:when test="${accountMap != null}">
		<a href="javascript:void(0)" onclick="showFunds()">
		<div class="box bg-tf p-3 Truuegro3">
			<p class="Truuegro_bold" >Are you an existing client?</p>
			<p style="font-size:12px;line-height:15px;margin-top:10px;">If yes, please click here and map your existing investments to this goal</p>
		</div>
		</a>
	</c:when>
	<c:otherwise>
		<a href="javascript:void(0)" onclick="showLoginModel()">
		<div class="box bg-tf p-3 Truuegro3">
			<p class="Truuegro_bold">Are you an existing client?</p>
			<p style="font-size:12px;line-height:15px;margin-top:10px;">If yes, please click here and map your existing investments to this goal</p>
		</div>
		</a>
	</c:otherwise>
	</c:choose>
	</div>
	<div class="col-lg-6 col-sm-4 text-center mb-3">
		<a href="javascript:void(0)" onclick="calculateDebtAndEquity()">
		<div class="box bg-tf p-3 Truuegro2">
			<p class="Truuegro_bold">No, I do not have investments with you</p>
			<p style="font-size:12px;line-height:15px;margin-top:10px;">Take me to the plan without mapping any <br/>existing investments</p>
		</div>
		</a>
	</div>
</div>
</div>
</div>
<div class="col-lg-2">
</div>
</div>
</div>

<div class="robo4">
<div class="row">
<div class="col-lg-10 pt-4 offset-lg-1">

<div class="row">
	<div class="col-lg-6 col-sm-4 text-center mb-3">
		<div class="box bg-tf p-3">
			<h6><i class="fa fa-inr" aria-hidden="true"></i> <span id="span_sch_future_cost"></span></h6>
			<p class="goalcontentbg">Future cost of Wedding<br>(adjusting for <span class="span_inflation"></span>% inflation)</p>
		</div>
	</div>
	<div class="col-lg-6 col-sm-4 text-center mb-3">
		<div class="box bg-tf p-3">
			<h6><i class="fa fa-inr" aria-hidden="true"></i> <span id="span_scheme_cost">0</span></h6>
			<p class="goalcontentbg">Total Future Value<br>(Scheme Selected Value)</p>
		</div>
	</div>
</div>
	 
<div class="row">
<div class="col-lg-12">
<h4 class="textColor">Existing Portfolio</h4>
</div>
</div>

<div class="existing_portfolio_div">
	 
<div class="row existing_div" >
<div class="col-lg-12">
<div class="table-responsive">
<table class="table table-bordered body-color" id="tbl_existing_portfolio_returns" style="width:100%;margin-bottom: 10px;"></table>
</div>
<p>If you wish to link any of the above schemes with this goal, then please check the relevant box/es as given alongside the scheme name.</p>
</div>
</div>

<div class="row pt-3 existing_div">
<div class="col-lg-12 text-right">
<input type="hidden" value="${folio_list}" id="txt_folio_list" />
<input type="hidden" value="${scheme_code_list}" id="txt_scheme_code_list" />
<button class="btn btn-primary" style="width: auto; background-color: #20C4B7; border-color: #6ac259; color: #fff; font-weight: bold;" onclick="goToStep2()">Back</button>
<button class="btn btn-success ml-2" onclick="showSummary()">Next</button>
<hr>
</div>
</div>
	 
<div class="row pb-2 existing_summary_div">
<div class="col-lg-12">
<h4 class="textColor">Goal Summary</h4>
<table class="table" id="existing_summary_inner_div">
<tbody>
<tr>
<td class="border-top-0" style="font-weight: bold;">Your targeted Amount (Inflation adjusted <span class="span_inflation">5</span>% per annum)</td>
<td class="border-top-0"> <input type="text" class="form-control form-control-sm fundNamebg" style="font-weight: bold;" value="" id="txt_goal_amount" disabled="disabled"></td>
</tr>
<tr>
<td style="font-weight: bold;">Number of years you need to save </td>
<td><input type="text" class="form-control form-control-sm fundNamebg" style="font-weight: bold;" value="" id="txt_goal_years" disabled="disabled"></td>
</tr>
<tr class="goal_ques">
<td style="font-weight: bold;">Monthly SIP investment required</td>
<td><input type="text" class="form-control form-control-sm fundNamebg" style="font-weight: bold;" value=" " id="txt_goal_sip_amount"></td>
</tr>
</tbody>
</table>
</div>
</div>

</div>

<div class="row pb-5 pt-3" id="save_goal_div">
<div class="col-lg-12 text-center">
<button class="btn btn-primary" style="width: auto; background-color: #20C4B7; border-color: #6ac259; color: #fff; font-weight: bold;" onclick="goToStep2()">Back</button>
<c:choose>
<c:when test="${accountMap != null}">
	<button class="btn btn-success ml-2" style="width: auto;" onclick="saveGoal(1)">Save Your Goal</button>
</c:when>
<c:otherwise>
	<button class="btn btn-success ml-2" style="width: auto;" onclick="showLogin(1)">Save Your Goal</button>
</c:otherwise>
</c:choose>
</div>
</div>


<div class="row" id="recommended_div">
<div class="col-lg-12 text-right pb-5">
<button class="btn btn-primary" style="width: auto; background-color: #20C4B7; border-color: #6ac259; color: #fff; font-weight: bold;" onclick="goToStep2()">Back</button>
<button class="btn btn-success ml-2" onclick="calculateDebtAndEquity()">Achieve your Goal on SIP</button>
</div>
</div>

</div>
	 
</div>
</div>

<div class="row ml-0" style="width:100%;clear:both;">
<div id="old_robo1" class="col-md-12">
<!-- robo5 start here -->
<div class="robo5 p-4">
<div class="row ">
<div class="col-lg-12" style="padding-top:18px;">
<div class="row chartpagefirstrowcontent" style="margin: 0px;">
	
	<div id="old_robo7" class="col-md-3">
		<div class="box bg-tf" style="text-align: center;padding:5px;">
	         <div class="head" style="padding-bottom: 10px;">
	             <span class="result_span">Investment Type</span>
	         </div>
	         <span class="value amtcolor"> <span>SIP</span> </span>
	     </div>
	</div>
	<div id="old_robo8" class="col-md-2">
		<div class="box bg-tf" style="text-align: center;padding:5px;">
	         <div class="head" style="padding-bottom: 10px;">
	             <span class="result_span">Risk Tolerance</span>
	         </div>
	         <span class="value amtcolor"> <span id="spn_risk"></span> </span>
	     </div>
	</div>
	<div id="old_robo6" class="col-md-2">
		<div class="box bg-tf" style="text-align: center;padding:5px;">
	         <div class="head" style="padding-bottom: 10px;">
	             <span class="result_span">Time Horizon</span>
	         </div>
	         <span class="value amtcolor"><span id="spn_years"></span> </span>
	     </div>
	</div>
	<div id="old_robo4" class="col-md-2">
		<div class="box bg-tf" style="text-align: center;padding:5px;">
	         <div class="head" style="padding-bottom: 10px;">
	             <span class="result_span">Target Amount</span>
	         </div>
	         <span class="value amtcolor"><i class="fa fa-inr"></i>  <span id="spn_target_amount"></span> </span>
	     </div>
	</div>		
	<div id="old_robo5" class="col-md-3">
		<div class="box bg-tf" style="text-align: center;padding:5px;">
	         <div class="head" style="padding-bottom: 10px;">
	             <span class="result_span">SIP Amount</span>
	         </div>
	         <span class="value amtcolor"><i class="fa fa-inr"></i>  <span id="spn_sip_amount"></span> </span>
	     </div>
	</div>
</div>
<div class="row" style="margin-top: 30px;">
<div id="old_robo2" class="col-md-3">
<div class="row">
<div class="col-sm-12 col-xs-12">
<div id="goal_pie_chart" class="clear" style="height: 250px; width: 100%;"></div>
</div>
</div>
</div>
<div id="old_robo2content" class="col-md-4 robo2design">
<div class="result-box">
<div class="planboxheading col-md-12">Objective</div>
<div class="heading col-md-12" style="color: #0fc4f9;font-weight: bold;"> Low Risk, Stable Return </div><div class="content col-md-12" style="font-size: 12px !important;">This is a conservative portfolio meant to minimize the risk of losing principal by managing the asset allocation as 40% in equity funds and remaining 60% in hybrid funds. Those experienced as well as novice investors who want to play safe by taking low risk are an ideal suit for this.</div>
</div>
</div>
<div id="old_robo2contentpage" class="col-md-3 bordercontent2">
<div class="plan-box">
<div class="planboxheading col-md-12">Our Features</div>
<ul class="planboxfeaturelist col-md-12 ulfontsize">
<li><i class="fa fa-check-circle checkcolor" aria-hidden="true"></i> Zero Fee A/C - No Transaction Charges </li>
<li><i class="fa fa-check-circle checkcolor" aria-hidden="true"></i> Top AMCs under One Roof </li>
<li><i class="fa fa-check-circle checkcolor" aria-hidden="true"></i> Personalized Recommendation </li>
<li><i class="fa fa-check-circle checkcolor" aria-hidden="true"></i> One Account to Manage Family Members</li>
<li><i class="fa fa-check-circle checkcolor" aria-hidden="true"></i> Hassle Free &amp; Paperless Investment</li>
</ul>

</div>
</div>
<div id="old_robo3">
<ul class="planboxfeaturelist planboxfeaturelist2 oldrobo3 ulfontsize">
<li><i class="fa fa-check-circle checkcolor" aria-hidden="true"></i> Active Support Desk</li>
<li><i class="fa fa-check-circle checkcolor" aria-hidden="true"></i> Advanced Dashboard </li>
<li><i class="fa fa-check-circle checkcolor" aria-hidden="true"></i> Refer and Earn </li>
<li><i class="fa fa-check-circle checkcolor" aria-hidden="true"></i> Tax Planning </li>
<li><i class="fa fa-check-circle checkcolor" aria-hidden="true"></i> Customized Portfolio </li>
</ul>
</div>
</div>
<div id="old_robo3" class="col-md-4" style="border-left: 1px solid #eee;">

</div>
</div>
</div>
<div class="portfolio_div">
	 
<div class="row" >
<div class="col-lg-12">
<div class="listofrecscheme">
 <h3>Recommended Funds</h3>
 </div>
<div class="table-responsive tblresp">
<div id="tbl_portfolio_returns" class="portfolioreturns"></div>
</div>
</div>
<div class="col-lg-12 " style="max-width: 97% !important;">
<div class="process-payment">
<div class="total_payment">
<div class="title">Total Amount 
<span  style="margin-left: 12px; font-size: 16px;"><i class="fa fa-inr"></i></span><span id="totAmt"  style="color: #2e3e4f; margin-left: 6px; font-size: 20px;
    font-weight: bold;"></span></div>
</div>
</div>
</div>

<div class="col-lg-12" style="max-width: 98% !important;">
<c:choose>
<c:when test="${accountMap != null}">
	<!-- <div class="col-lg-3" style="padding-right:0px;"> -->
		<button type="submit" class="btn btn-success btnfloat" style="width: auto;" onclick="saveGoal(2)">Save Your Goal</button><!-- </div> -->
	<!-- <div class="col-lg-3"> -->
	<!-- <div style="margin-right:15px;"> -->
	<button class="btn btn-block btnfloat" style="width: auto; background-color: #20C4B7; border-color: #6ac259; color: #fff; font-weight: bold;" onclick="goToStep3()">Back</button>	
	<!-- </div> -->
	<!-- </div> -->
</c:when>
<c:otherwise>
	<!-- <div class="col-lg-3 pl-3 pr-3" style="padding-right:0px;"> -->
	<button type="submit" class="btn btn-success btnfloat" onclick="showLogin(2)" style="max-width: auto;">Save Your Goal</button><!-- </div>
	<div class="col-lg-3">
	<div style="margin-right:15px;" class="mr-0 mr-lg-3"> -->
	<button class="btn btn-block btnfloat"  onclick="goToStep2()" style="width: auto; background-color: #20C4B7; border-color: #6ac259; color: #fff; font-weight: bold;">Back</button>		
	<!-- </div>
	</div> -->
</c:otherwise>
</c:choose>
</div>
</div>
</div>
</div>
</div>
</div>
<!-- robo5 end here -->
</div>
			
      </div><!-- /.container -->
    </section><!-- /.Team layout 1  -->
    
    <!--================End Product Details Area =================-->

<div id="scheme_name_change_model" class="modal fade" tabindex="-1" data-backdrop="static" data-keyboard="false">
  <div class="modal-lg modal-dialog modal-dialog-centered">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header" style="background: #6ac259; font-weight: bold; color: white; font-size: 16px;">
          	<div class="col-md-10">
          		<h4 class="modal-title">Change the Scheme Name</h4>
          	</div>
      </div>
      <div class="modal-body">
        <div class="popup_select_scheme"></div>
      </div>
      <div class="modal-footer">
		<button type="button" class="btn btn-primary" style="width: auto; background-color: #20C4B7; border-color: #6ac259; color: #fff; font-weight: bold;" data-dismiss="modal">Close</button>
		<button class="btn btn-success" type="submit" onclick="changeSchemeName()">Submit</button>
	</div>
    </div>
  </div>
</div>

<div id="login_model" class="modal fade" tabindex="-1" data-backdrop="static" data-keyboard="false">
  <div class="modal-dialog modal-dialog-centered" style="max-width:500px !important;">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header" style="background: #6ac259; font-weight: bold; color: white; font-size: 16px;">Login</div>
      <div class="modal-body">
      <div class="row" style="padding-bottom:20px;">
      <div class="col-md-4" style="float:left;">
      <label>Pan/Mobile Number:</label>
      </div>
      <div class="col-md-6" style="float:left;">
      <input type="text" value="" id="txt_login_id" />
      </div>
      </div>
      <div class="row">
      <div class="col-md-4" style="float:left;">
      <label>Password:</label>
      </div>
      <div class="col-md-6" style="float:left;">
      <input type="password" value="" id="txt_login_pass" />
      </div>
      </div>
      </div>
      <div class="modal-footer">
		<button type="button" class="btn btn-primary" style="width: auto; background-color: #20C4B7; border-color: #6ac259; color: #fff; font-weight: bold;" data-dismiss="modal">Close</button>
		<button class="btn btn-success" type="submit" onclick="checkLoginDetails()">Login</button>
	</div>
    </div>
  </div>
</div>
    