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
.robo2,.robo3,.portfolio_div,.overview_div,.historical_returns_div,.projected_returns_div{
	display:none;
}
#save_goal_div,#recommended_div{
	display:none;
}
.table thead th, .table tbody td, .table tfoot td{
	font-size:16px !important;
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
@media (max-width: 576px){
.highcharts-container
{
margin-left: -6% !important;
}
}

@media (max-width: 360px){
.assetallocation{
	margin-left: -39% !important;
}
}

@media (max-width: 576px){
.d-flex {
   
    display: contents !important;
}
}
@media (max-width: 576px)
{
 #sel_goal, #txt_age, #txt_amount, #txt_period {
    width: 100% !important;
    margin-bottom: 15px;
}
}
.check_all_btn{
	cursor:pointer;
	text-decoration: underline;
	font-size:12px;
	color:red;
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
    background-color: #fff;
    margin-bottom: 5%;
    margin-top: 2%;
    -webkit-box-shadow: 0px 0px 40px 0px rgb(0 0 0 / 15%);
    box-shadow: 0px 0px 40px 0px rgb(0 0 0 / 15%);
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
    font-size: 20px;
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
	font-size: 12px !important;
    color:#ffffff;
}
#tbl_portfolio_returns td{
	font-size: 12px !important;
    color:#000;
}
#tbl_portfolio_returns div{
	font-size:12px !important;
	color:#000;
}
#tbl_portfolio_returns a{
  	color: #589b01;
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
    margin-left:10px;
}
#goal_line_chart {
    height:100%;
    width:100%;
    margin-left:10px;
}

.btn-info {
    color: #fff;
    background-color: #172460;
    border-color: #172460;
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
	min-width:800px;
}
.lbl_qu{
	font-size:14px;
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
.asset_allocation_div{
	display:none;
}
.slidecontainer {
    width: 100%;
}
.slider {
    -webkit-appearance: none;
    width: 100%;
    height: 10px;
    border-radius: 5px;
    background: #172460;
    outline: none;
   -webkit-transition: .2s;
    transition: opacity .2s;
}
.slider:hover {
    opacity: 1;
}
.slider::-webkit-slider-thumb {
    -webkit-appearance: none;
    appearance: none;
    width: 20px;
    height: 20px;
    border-radius: 50%;
    background: #003399;
    cursor: pointer;
}
.slider::-moz-range-thumb {
    width: 20px;
    height: 20px;
    border-radius: 50%;
    background: #003399;
    cursor: pointer;
}
.qtyminus{
	cursor:pointer;
}
.form-control:disabled, .form-control[readonly]{
	background-color:#fff;
}
.width100{
	width:150px;
}
.pt-5, .py-5 {
    padding-top: 1rem !important;
}	
.TruuegroSipTopBox p{
	font-size:16px !important;
	font-weight:bold;
}
.fundNamebg p{
	font-size:16px !important;
	margin-bottom:16px !important;
}
.chartFontStyle p{
	font-size:16px !important;
}
.sipRoboOffsetAlign .offset-lg-1 {
    margin-left: 0 !important;
}
.cardProtbg{
	font-size:16px !important;
}
.cardProtbg p{
	margin-bottom:16px !important;
}
.sipRoboAlignMargin .offset-lg-1 {
    margin-left: 0 !important;
}
.fundNamebg h4{
	font-size:16px !important;
}
.offset-md-3 {
    margin-left: 0 !important;
}
.table thead tr th, .table tbody tr td, .table tfoot tr td{
	padding: 9px !important;
}
p.chart_para{
	margin-bottom:5px !important;
	font-size:13px !important;
}
.rangeslider__fill{
	background: #172460;
}
.rangeslider__handle {
	background-color: #fffccc;
	box-shadow: none;
}
@media (max-width: 575.98px) { 
	.w-15 {
	    width: 90% !important;
	}
	
	.table thead tr th{
		padding: 0px !important;
	}
}
@media (max-width: 767.98px) {

	.w-15 {
	    width: 90% !important;
	}
	
	.table thead tr th{
		padding: 0px !important;
	}
}
.btn-block {
	background: #fff;
	border: 2px solid #172460;
	border-radius: 0px;
	color: #777;
	font-weight: 500;	
	padding:12px;
}

.btn-block.active, .btn-block:hover {
	color: #fff;
	background: #172460 !important;
	border-color: #ffffff !important;
	box-shadow: none !important;
}
.badge-primary {
    color: #fff;
    background-color: #172460;
}
.textColor{
	color: #172460;
}
.table thead th, .table tbody td, .table tfoot td{
	font-size:11px !important;
}
.table tbody td{
	font-weight:normal;
}
.spl_font{
	font-size:14px !important;
	font-weight:500;
	color:#000;
}

/* Custom CSS Starts Here */

.col-md-12.text-center.py-5 {
    padding-bottom: 3rem !important;
    padding-top: 0rem !important;
}

.container.goal_creation {
    padding-top: 0px !important;
}

.box.bg-tf.p-3 {
    box-shadow: 0 3px 10px rgb(0 0 0 / 16%);
    padding: 2rem!important;
    box-sizing: border-box;
    margin-bottom: 1rem!important;
    margin: 25px 0 0 0;
}
.pt-5, .py-5 {
    padding-top: 1rem !important;
}	

.col-lg-12 {
    width: 97% !important;
}

button.btn.btn-primary:hover {
    background: #003399 !important;
    border-color: #003399 !important;
}
.text-right {
    height: 50px;
}
button.btn.btn-success:hover {
    background: #003399 !important;
    border-color: #003399 !important;
}


button.btn.btn-success {
    color: #fff;
    background-color: #172460;
    border-color: #172460;
}
.col-md-12.offset-lg-1.py-2.mt-3.text-center.cardProtbg {
    height: 45px;
}
h1.text-center {
    color: #172460 !important;
    font-size: 30px !important;
}

.multi-button {
  display: flex;
  width: 100%;
  box-shadow: var(--shadow) 4px 4px;
  margin-left: 0.1%;
}

.multi-button button {
	flex-grow: 1;
    cursor: pointer;
    /* position: relative; */
    padding: calc(var(--space) / 1) var(--space) var(--space);
    border: var(--border-size) solid #ffffffa8;
    color: #fafcff;
    background-color: #529100;
    font-size: 0.9rem;
    font-family: var(--font-family);
    /* text-transform: lowercase; */
    /* text-shadow: var(--shadow) 2px 2px; */
    /* transition: flex-grow var(--duration) var(--ease); */
    font-weight: bold !important;
}

.multi-button button + button {
  border-left: var(--border-size) solid black;
  margin-left: calc(var(--border-size) * -1);
}

.multi-button button:hover,
.multi-button button:focus {
  flex-grow: 2;
  color: white;
  outline: none;
  text-shadow: none;
  background-color: #003399 !important;
/*   background-color: var(--color-secondary); */
}

.multi-button button:focus {
  outline: var(--border-size) dashed var(--color-primary);
  outline-offset: calc(var(--border-size) * -3);
}

.multi-button:hover button:focus:not(:hover) {
  flex-grow: 1;
  color: var(--color-secondary);
 /*  background-color: var(--color-primary); */
  outline-color: var(--color-tertiary);
  font-size: 1.2rem;
  background-color: #003399 !important;
}

.multi-button button:active {
  transform: translateY(var(--border-size));
}
:root {
  --border-size: -0.595rem;
  --duration: 563ms;
  --ease: cubic-bezier(0.215, 0.61, 0.355, 1);
  --color-primary: white;
  --color-secondary: white;
  --color-tertiary: dodgerblue;
  --shadow: rgba(0, 0, 0, 0.1);
  --space: 1rem;
    font-size: 0.9rem;
}

* {
  box-sizing: border-box;
}
.recommendedportfolio
{
	font-size: 12px;
    line-height: 1.8;
    font-family: "Roboto", sans-serif;
    color: #ffffff !important;
    background: #172460 ;    
}
.col
{
ms-flex-preferred-size: 0 !important;
    flex-basis: 0 !important;
    -ms-flex-positive: 1 !important;
    flex-grow: 1 !important;
    max-width: 100% !important;
    }
.carousel-nav {
    width: 100% !important;
    border-bottom: 1px solid #ccc !important;
    margin-bottom: 40px !important;
}
.carousel-nav a {
    color: #999;
    padding: 20px;
    text-align: center;
    display: inline-block;
}
  
.carousel-nav a.active {
    color: #000 !important;
}
.carousel-nav a.active {
    color: #529100 !important;
}
.carousel-nav a.active:before {
    content: "";
    bottom: -1px;
    left: 0;
    right: 0;
    position: absolute;
    border-bottom: 3px solid #529100;
}
.owl-carousel .owl-stage-outer
{
	height: auto !important;
}
.form-control {
    height: 45px;
}
.btn {
    height: 45px;
}
h6 {
    font-size: 14px;
}
</style>

<script type="text/javascript">
var age = 0;
var risk = "";
var horizon = 1;
var amount = 0;
var inflation = 5;
var goal = "";
var slider_age = 0;
var slider_horizon = 1;
var choosen_year = 3;
var slider_risk = 0;
var slider_amount = 0;
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
var btn_state = 3;
var portfolio_flag = false;
var historical_flag = false;
var projected_flag = false;
var rateofReturn = 0;
var sipAmount = 0;
var ques_flag = 1;
var goal_based_amount = 0; 
var userid = 0;

$(document).ready(function(){
	 	 
	completeStep4();
	completeStep5();
	completeStep6();
	projected_flag = true;
	historical_flag = true;
	portfolio_flag = true;
	userid = '${userid}';
	$('input.number').change(function() {
		$(this).val(function(index, value) {
			value = value.replace(/,/g,'');
		    return numbersWithComma(value);
		});
	});
	
	$('.check_all_btn').click(function() {
	    var value = $(this).html();
	    if(value == "Select All Schemes")
	    {
	    	$("input[name='save_goal']").prop('checked', true);
	        $(this).html('Unselect All Schemes');
	    }else
	    {
	    	$("input[name='save_goal']").prop('checked', false);
	        $(this).html('Select All Schemes');   
	    }
	});
	
	$('a[href="#projectedreturns"]').click(function(){
		
		btn_state = 5;
		completeStep5();
		projected_flag = true;
		}); 
	$('a[href="#historicalreturns"]').click(function(){
		
		btn_state = 4;
		completeStep6();
		historical_flag = true;
		}); 

	$('a[href="#portfolio"]').click(function(){
		
		btn_state = 2;
		completeStep4();
		portfolio_flag = true;
		}); 
	$(function() {

		var owl = $('.owl-1');
	    owl.owlCarousel({
	        loop:false,
	        margin:0,
	        nav:false,
	        dots: false,
	        items: 1,
	        smartSpeed: 1000,
	        autoplay: false,
	        navText: ['<span class="icon-keyboard_arrow_left">', '<span class="icon-keyboard_arrow_right">']
	    });

	    var carousel_nav_a = $('.carousel-nav a');

	    carousel_nav_a.each(function(slide_index){
	        var $this = $(this);
	        $this.attr('data-num', slide_index);
	        $this.click(function(e) {
	            owl.trigger('to.owl.carousel',[slide_index,1500]);
	            e.preventDefault();
	        })
	    })

	    owl.on('changed.owl.carousel', function(event) {
	        carousel_nav_a.removeClass('active');
	        $(".carousel-nav a[data-num="+event.item.index+"]").addClass('active');
	    })		
	})	
});

function show_div(i)
{    
	switch (i)
	{
		case 1:
			document.getElementById("DivF1").style.display = 'block';
			document.getElementById("DivF2").style.display = 'none';
			document.getElementById("DivF3").style.display = 'none';
			document.getElementById("DivF4").style.display = 'none';
			document.getElementById("DivF5").style.display = 'none';
			document.getElementById("DivF6").style.display = 'none';
			btn_state = 6;
			$(".header_btn button").removeClass("active");
		    $("#btn_head1").addClass("active");
			break;
		case 2:
			document.getElementById("DivF1").style.display = 'none';
			document.getElementById("DivF2").style.display = 'block';
			document.getElementById("DivF3").style.display = 'none';
			document.getElementById("DivF4").style.display = 'none';
			document.getElementById("DivF5").style.display = 'none';
			document.getElementById("DivF6").style.display = 'none';
			btn_state = 3;
			$(".header_btn button").removeClass("active");
		    $("#btn_head2").addClass("active");
			break;
		case 3:
			document.getElementById("DivF1").style.display = 'none';
			document.getElementById("DivF2").style.display = 'none';
			document.getElementById("DivF3").style.display = 'block';
			document.getElementById("DivF4").style.display = 'none';
			document.getElementById("DivF5").style.display = 'none';
			document.getElementById("DivF6").style.display = 'none';
			btn_state = 1;
			$(".header_btn button").removeClass("active");
		    $("#btn_head3").addClass("active");
			break;
		case 4:
			document.getElementById("DivF1").style.display = 'none';
			document.getElementById("DivF2").style.display = 'none';
			document.getElementById("DivF3").style.display = 'none';
			document.getElementById("DivF4").style.display = 'block';
			document.getElementById("DivF5").style.display = 'none';
			document.getElementById("DivF6").style.display = 'none';
			btn_state = 5;
			
			if(!projected_flag)
			{
				completeStep5();
				projected_flag = true;
			}
			$(".header_btn button").removeClass("active");
		    $("#btn_head4").addClass("active");
			break;
		case 5:
			document.getElementById("DivF1").style.display = 'none';
			document.getElementById("DivF2").style.display = 'none';
			document.getElementById("DivF3").style.display = 'none';
			document.getElementById("DivF4").style.display = 'none';
			document.getElementById("DivF5").style.display = 'block';
			document.getElementById("DivF6").style.display = 'none';
			btn_state = 4;
			
			if(!historical_flag)
			{
				completeStep6();
				historical_flag = true;
			}
			$(".header_btn button").removeClass("active");
		    $("#btn_head5").addClass("active");
			break;
		case 6:
			document.getElementById("DivF1").style.display = 'none';
			document.getElementById("DivF2").style.display = 'none';
			document.getElementById("DivF3").style.display = 'none';
			document.getElementById("DivF4").style.display = 'none';
			document.getElementById("DivF5").style.display = 'none';
			document.getElementById("DivF6").style.display = 'block';
			btn_state = 2;
			
			if(!portfolio_flag)
			{
				completeStep4();
				portfolio_flag = true;
			}
			$(".header_btn button").removeClass("active");
		    $("#btn_head6").addClass("active");
			break;	
		default:			
			
	}
	return true;
}
function riskProfileChange()
{
	risk = $("#sel_risk").val();
	if(risk == "Check Risk Profile")
 	{
		$(".robo1").hide();
		$(".robo2").show();
		$("#step1").show();		
 	}
}
function checkSliderValues()
{
	horizon = $('#txt_time_horizon_slider').val();
	amount = $('#txt_amount_slider').val();
	slider_risk = $("#txt_risk_slider").val();
	inflation = $('#txt_inflation_slider').val();
	
	amount = amount.replace(/,/g,'');
	
	if(slider_risk == 0)
    {
		risk = "Conservative";
    }
    if(slider_risk == 1)
    {
    	risk = "Moderately Conservative";
    }
    if(slider_risk == 2)
    {
    	risk = "Moderate";
    }
    if(slider_risk == 3)
    {
    	risk = "Moderately Aggressive";
    }
    if(slider_risk == 4)
    {
    	risk = "Aggressive";
    }
    
    slider_horizon = horizon;
	choosen_year= horizon;
    slider_amount = amount;
    
    calculateDebtAndEquity();
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
function completeStep1()
{
	age = $("#txt_age").val();
	amount = $("#txt_amount").val();
	horizon = $("#txt_period").val();
	goal = $("#sel_goal").val();
    risk = $("#sel_risk").val();
    
    amount = amount.replace(/,/g,'');
    
    if(age == "" || isNaN(age))
 	{
 		swal({title:"",text:"Please enter your valid age"});
		return;
 	}
    if(parseInt(age) < 18)
 	{
 		swal({title:"",text:"Investments in mutual funds not allowed below 18 years age unless via a parent or guardian"});
		return;
 	}
    if(amount == "" || isNaN(amount) || parseInt(amount) < 1)
 	{
 		swal({title:"",text:"Please enter your valid amount"});
		return;
 	}
    if(parseInt(amount) < 100000)
 	{
 		swal({title:"",text:"Please enter the goal amount maximum Rs. 1,00,000"});
		return;
 	}
    if(horizon == "")
 	{
 		swal({title:"",text:"Please select your time horizon"});
		return;
 	}
    if(goal == "")
 	{
 		swal({title:"",text:"Please select your goal"});
		return;
 	}
    if(risk == "")
 	{
 		swal({title:"",text:"Please select your risk tolerance"});
		return;
 	}
    if(risk == "Check Risk Profile")
 	{
    	$(".robo1").hide();
		$(".robo2").show();
 		return;
 	}
    
    $(".span_goal").html(goal);
    
    
    if(risk == "Aggressive")
    {
    	slider_risk = 4;
    }else if(risk == "Moderately Aggressive")
    {
    	slider_risk = 3;
    }else if(risk == "Moderate")
    {
    	slider_risk = 2;
    }else if(risk == "Moderately Conservative")
    {
    	slider_risk = 1;
    }else
    {
    	slider_risk = 0;
    }
    
    slider_horizon = horizon;
	choosen_year= horizon;
    slider_age = age;
    slider_amount = amount;
    slider_risk = slider_risk;
    
	$(".robo1").hide();
	$(".robo3").show();
	$("#DivF1").show();
	
	$('html,body').animate({
        scrollTop: 0
    }, 700);
    
/*     initiateSliders(); */
    calculateDebtAndEquity();
}
function initiateSliders()
{    
    slider_amount = parseInt(slider_amount);
    slider_horizon = parseInt(slider_horizon);
    slider_risk = parseInt(slider_risk);
    
    if(risk == "Aggressive")
    {
    	slider_risk = 4;
    }else if(risk == "Moderately Aggressive")
    {
    	slider_risk = 3;
    }else if(risk == "Moderate")
    {
    	slider_risk = 2;
    }else if(risk == "Moderately Conservative")
    {
    	slider_risk = 1;
    }else
    {
    	slider_risk = 0;
    }
    
    $("#txt_risk_slider").val(slider_risk);
    $('#txt_time_horizon_slider').val(slider_horizon);
    $('#txt_amount_slider').val(slider_amount);
    $('#txt_inflation_slider').val(inflation);
    
    
    var $document = $(document);
    
    //Time Horizon Slider Initiate
    var timeslider = $("input[type=range][name='txt_time_horizon_slider']");
    var timeoutput = document.querySelectorAll("input.time_horizon_slider_output")[0];
  	
    // set initial output value
    /* timeoutput.value = timeslider[0].value;
     */
    // update output value
    $document.on('input', 'input[type="range"][name="txt_time_horizon_slider"]', function(e) {
  	  
  	  timeoutput.value = e.currentTarget.value;
      
    });
    
    $( "input.time_horizon_slider_output" ).change(function() {
  	  
    	var textbox_value = $("input.time_horizon_slider_output").val();
    	timeslider[0].value = textbox_value;
    	timeslider.rangeslider('update', true);
    	checkSliderValues();
	});
    
    //Initialize
    timeslider.rangeslider({
      polyfill: false
    });  
    
    //Risk Profile Slider Initiate
    var riskslider = $("input[type=range][name='txt_risk_slider']");
    var riskoutput = document.querySelectorAll("input.risk_slider_output")[0];
  	
    // set initial output value
   	var txt = "";
      var slider_risk = riskslider[0].value;
      if(slider_risk == 0)
      {
      	txt = "Conservative";
      }
      if(slider_risk == 1)
      {
      	txt = "Moderately Conservative";
      }
      if(slider_risk == 2)
      {
      	txt = "Moderate";
      }
      if(slider_risk == 3)
      {
      	txt = "Moderately Aggressive";
      }
      if(slider_risk == 4)
      {
      	txt = "Aggressive";
      }
      riskoutput.value = txt;
    
    // update output value
    $document.on('input', 'input[type="range"][name="txt_risk_slider"]', function(e) {
  	  
  	    var txt = "";
  	    var slider_risk = e.currentTarget.value;
  	    if(slider_risk == 0)
  	    {
  	    	txt = "Conservative";
  	    }
  	    if(slider_risk == 1)
  	    {
  	    	txt = "Moderately Conservative";
  	    }
  	    if(slider_risk == 2)
  	    {
  	    	txt = "Moderate";
  	    }
  	    if(slider_risk == 3)
  	    {
  	    	txt = "Moderately Aggressive";
  	    }
  	    if(slider_risk == 4)
  	    {
  	    	txt = "Aggressive";
  	    }
  	  riskoutput.value = txt;
      
    });
    
    //Initialize
    riskslider.rangeslider({
      polyfill: false
    });
    
    //Inflation Slider Initiate
    var inflationslider = $("input[type=range][name='txt_inflation_slider']");
    var inflationoutput = document.querySelectorAll("input.inflation_slider_output")[0];
  	
    // set initial output value
    inflationoutput.value = inflationslider[0].value;
    
    // update output value
    $document.on('input', 'input[type="range"][name="txt_inflation_slider"]', function(e) {
  	  
  	  inflationoutput.value = e.currentTarget.value;
      
    });  
    
    $( "input.inflation_slider_output" ).change(function() {
    	  
    	var textbox_value = $("input.inflation_slider_output").val();
    	inflationslider[0].value = textbox_value;
    	inflationslider.rangeslider('update', true);
    	checkSliderValues();
	});
    
    //Initialize
    inflationslider.rangeslider({
      polyfill: false
    });
    
    //Amount Slider Initiate
    var amountslider = $("input[type=range][name='txt_amount_slider']");
    var amountoutput = document.querySelectorAll("input.amount_slider_output")[0];
  	
    // set initial output value
    amountoutput.value = numbersWithComma(amountslider[0].value);
    
    // update output value
    $document.on('input', 'input[type="range"][name="txt_amount_slider"]', function(e) {
  	  
  	  amountoutput.value = numbersWithComma(e.currentTarget.value);
      
    });
    
    $( "input.amount_slider_output" ).change(function() {
  	  
    	var textbox_value = $("input.amount_slider_output").val();
    	textbox_value = textbox_value.replace(/,/g,'');
    	amountslider[0].value = textbox_value;
    	amountslider.rangeslider('update', true);
    	checkSliderValues();
	});
    
    // Initialize
    amountslider.rangeslider({
      polyfill: false
    });
}
function goToStep1()
{
	$(".robo1").show();
	$(".robo2").hide();
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
    /* var answer7 = $("input[type='radio'][name='q7']:checked").val();
	var answer8 = $("input[type='radio'][name='q8']:checked").val(); */
	
    
    if (answer1 == undefined || answer2 == undefined || answer3 == undefined || answer4 == undefined || answer5 == undefined || answer6 == undefined /* || answer7 == undefined || answer8 == undefined */) 
    {
    	swal({title:"",text:"Please answer all the questions"});
		return;
    }
   
	$.ajaxSetup({async:false});
	$.post("/goal/getRiskProfile", {answer1 : answer1, answer2 : answer2, answer3 : answer3, answer4 : answer4, answer5 : answer5, answer6 : answer6}, function(data)
    {
		var result = $.trim(data);
		var obj = jQuery.parseJSON(result);
        risk = obj.risk_profile;
        $("#risk_result").html(risk.toUpperCase());
        $(".robo1").show();
        $(".robo2").hide();
        $("#sel_risk").val(risk);   
        swal({html:true,title:"",text:"As per our risk assessment, your risk tolerance is <br><b>"+risk+"</b>"}); 
    },'text');	
}
        function show_ques_div(i) {
		 
            switch (i) {
                case 1:
                	if(riskQuestionNext(1))
                	{
                		$("#step1").hide();
                		$("#step2").show();
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
                		$("#step3").show();                		
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
                		$("#step4").show();
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
                		$("#step5").show();                		
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
                		$("#step6").show();
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
                		$("#step7").show(); 
    					completeStep2();
                	}
                    break;
                
                default:
            }

            /* $('html, body').animate({
    	        scrollTop: ($(".robo2").offset().top) - 100
    	    }, 2000); */
    	    
           return true;

        }
		
	 function hide_div(i) {
	 
           switch (i) {
               case 1:

                   break;
               case 2:
                   document.getElementById("step1").style.display = 'block';
                   document.getElementById("step2").style.display = 'none';
				 document.getElementById("step3").style.display = 'none';
				  document.getElementById("step4").style.display = 'none';
				   document.getElementById("step5").style.display = 'none';
				    document.getElementById("step6").style.display = 'none';
					 document.getElementById("step7").style.display = 'none';
            
                   break;
               case 3:
                  document.getElementById("step1").style.display = 'none';
                   document.getElementById("step2").style.display = 'block';
				 document.getElementById("step3").style.display = 'none';
				  document.getElementById("step4").style.display = 'none';
				   document.getElementById("step5").style.display = 'none';
				    document.getElementById("step6").style.display = 'none';
					 document.getElementById("step7").style.display = 'none';
                   break;
               case 4:
                   document.getElementById("step1").style.display = 'none';
                   document.getElementById("step2").style.display = 'none';
				 document.getElementById("step3").style.display = 'block';
				  document.getElementById("step4").style.display = 'none';
				   document.getElementById("step5").style.display = 'none';
				    document.getElementById("step6").style.display = 'none';
					 document.getElementById("step7").style.display = 'none';
                   break;
               case 5:
                  document.getElementById("step1").style.display = 'none';
                   document.getElementById("step2").style.display = 'none';
				 document.getElementById("step3").style.display = 'none';
				  document.getElementById("step4").style.display = 'block';
				   document.getElementById("step5").style.display = 'none';
				    document.getElementById("step6").style.display = 'none';
					 document.getElementById("step7").style.display = 'none';
                   break;
               case 6:
                 document.getElementById("step1").style.display = 'none';
                   document.getElementById("step2").style.display = 'none';
				 document.getElementById("step3").style.display = 'none';
				  document.getElementById("step4").style.display = 'none';
				   document.getElementById("step5").style.display = 'block';
				    document.getElementById("step6").style.display = 'none';
					 document.getElementById("step7").style.display = 'none';
                   break;
               case 7:
                 document.getElementById("step1").style.display = 'none';
                   document.getElementById("step2").style.display = 'none';
				 document.getElementById("step3").style.display = 'none';
				  document.getElementById("step4").style.display = 'none';
				   document.getElementById("step5").style.display = 'none';
				    document.getElementById("step6").style.display = 'block';
					 document.getElementById("step7").style.display = 'none';
                   break;
               

               default:
           }

          return true;
} 
function showBarChart(goal_amount, target_amount)
{
	
	var container_width = $("#highcharts_div").width() - 5;
	Highcharts.setOptions({
		lang: {
			thousandsSep: ',',
			numericSymbols: null
		}
	});

	$('#goal_summary_chart').highcharts({
		colors : ['#b4d6fb', '#65d5c5','#0b9ca3', '#FF9655', '#FFF263', '#6AF9C4', '#DDDF00', '#24CBE5', '#64E572'],
        chart: {
        	type: 'column',
        	 animation: {
                 duration: 1000
             },
        	inverted: false,
            width: container_width         
        },
        title: {
            text: ''
        },
        subtitle: {
            text: ''
        },
        credits: {
            enabled: false
        },
        xAxis: {
            categories: [
                ''
            ],
            crosshair: true
        },
        yAxis: {
            min: 0,
            title: {
                text: 'Amount (Rs.)'
            }
        },
        tooltip: {
        	  formatter: function() {
                  var s = '';
                  s += '<span style="color:'+ this.series.color +'">' + this.series.name + '</span> : Rs. ' + numbersWithComma(Math.round(this.y));
                  return s;
              }
        },
       
        plotOptions: {
        	column: {
        	  dataLabels: {
        			   
                       enabled: true
                      /*  rotation: -90,
                       color: '#2e3e4f',
                       align: 'right',
                       y: 10, // 10 pixels down from the top
                       style: {
                           fontSize: '10px',
                           fontFamily: 'helvetica, arial, sans-serif',
                           textShadow: false,
                           fontWeight: 'normal' 

                       }*/
                   } 
        	}
        },
        series: [{
            name: 'Goal Amount',
            data: [goal_amount]         

        }, {
            name: 'Inflation Adjusted Goal Amount',
            data: [target_amount]         

        }]
    });
}
function calculateDebtAndEquity()
{	
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
    
    if(new_horizon == 1 && new_risk == 1)
    {
    	$('#portfolio_para1').html("The portfolio will aim to conserve capital and beat inflation");
        $('#portfolio_para2').html("This asset allocation is designed to hold 100% in debt and other highly liquid investments");
    }
    if(new_horizon == 1 && new_risk == 2)
    {
    	$('#portfolio_para1').html("The portfolio will aim to enhance income and maintain high level of liquidity");
    	$('#portfolio_para2').html("This asset allocation is designed to hold 100% in debt and other highly liquid investments");
    }
    if(new_horizon == 1 && new_risk == 3)
    {
    	$('#portfolio_para1').html("The portfolio will aim to enhance income along with some capital appreciation and maintain a moderate level of liquidity");
    	$('#portfolio_para2').html("This asset allocation is designed to hold 100% in debt and other highly liquid investments");
    }
    if(new_horizon == 1 && new_risk == 4)
    {
    	$('#portfolio_para1').html("The portfolio will aim to achieve moderate capital appreciation along with an income stream.");
    	$('#portfolio_para2').html("This asset allocation is designed to hold 100% in debt and other highly liquid investments");
    }
    if(new_horizon == 1 && new_risk == 5)
    {
    	$('#portfolio_para1').html("The portfolio will aim to achieve moderate capital appreciation along with an income stream.");
    	$('#portfolio_para2').html("This asset allocation is designed to hold 100% in debt and other highly liquid investments");
    }
    
    if(new_horizon == 2 && new_risk == 1)
    {
    	$('#portfolio_para1').html("The portfolio will aim to generate returns along with income flow");
    	$('#portfolio_para2').html("This asset allocation is designed to hold 100% in debt and other highly liquid investments");
    }
    if(new_horizon == 2 && new_risk == 2)
    {
    	$('#portfolio_para1').html("The portfolio will aim for capital appreciation along with moderate income flows");
    	$('#portfolio_para2').html("This asset allocation is designed to hold 100% in debt and other highly liquid investments");
    }
    if(new_horizon == 2 && new_risk == 3)
    {
    	$('#portfolio_para1').html("The portfolio will aim for capital appreciation along with moderate income flows");
    	$('#portfolio_para2').html("This asset allocation is designed to hold 100% in debt and other highly liquid investments");
    }
    if(new_horizon == 2 && new_risk == 4)
    {
    	$('#portfolio_para1').html("The portfolio will aim for capital appreciation along with restricted income flows");
    	$('#portfolio_para2').html("This asset allocation is designed to hold 100% in debt and other highly liquid investments");
    }
    if(new_horizon == 2 && new_risk == 5)
    {
    	$('#portfolio_para1').html("The portfolio will aim to predominately generate capital gains");
    	$('#portfolio_para2').html("This asset allocation is designed to hold 100% in debt and other highly liquid investments");
    }
    
    if(new_horizon == 3 && new_risk == 1)
    {
    	$('#portfolio_para1').html("The portfolio will aim for long term capital appreciation with restricted income flows");
        $('#portfolio_para2').html("This asset allocation is designed to hold upto 55% in debt instuments and upto 45% in equity instuments across different market and risk capitalisation");
    }
    if(new_horizon == 3 && new_risk == 2)
    {
    	$('#portfolio_para1').html("The portfolio will aim for long term capital appreciation with restricted income flows");
        $('#portfolio_para2').html("This asset allocation is designed to hold upto 50% in debt instuments and upto 50% in equity instuments across different market and risk capitalisation");
    }
    if(new_horizon == 3 && new_risk == 3)
    {
    	$('#portfolio_para1').html("The portfolio will aim for long term capital appreciation through investments in high growth sectors");
        $('#portfolio_para2').html("This asset allocation is designed to hold about 35% in debt instruments and upto 65% in equity or equity related instruments along with selective sectoral allocations");
    }
    if(new_horizon == 3 && new_risk == 4)
    {
    	$('#portfolio_para1').html("The portfolio will aim for long term capital appreciation through investments in high growth sectors");
        $('#portfolio_para2').html("This asset allocation is designed to hold about 25% in debt instruments and upto 75% in equity or equity related instruments. The debt holdings are for tactical use only");
    }
    if(new_horizon == 3 && new_risk == 5)
    {
    	$('#portfolio_para1').html("The portfolio will aim for long term capital appreciation through investments in high growth sectors");
        $('#portfolio_para2').html("This asset allocation is designed to hold about 15% in debt instruments and upto 85% in equity or equity related instruments. The debt holdings are for tactical use only");
    }
    
    if(new_horizon == 4 && new_risk == 1)
    {
    	$('#portfolio_para1').html("The portfolio will aim for long term capital appreciation through value investing strategies");
        $('#portfolio_para2').html("This asset allocation is designed to hold upto 25% in debt instuments and upto 75% in equity instuments across different market and risk capitalisation");
    }
    if(new_horizon == 4 && new_risk == 2)
    {
    	$('#portfolio_para1').html("The portfolio will aim for long term capital appreciation through value investing strategies");
        $('#portfolio_para2').html("This asset allocation is designed to hold upto 15% in debt instuments and upto 85% in equity instuments across different market and risk capitalisation");
    }
    if(new_horizon == 4 && new_risk == 3)
    {
    	$('#portfolio_para1').html("The portfolio will aim for long term capital appreciation through high growth instruments across market capitalisation");
        $('#portfolio_para2').html("This asset allocation is designed to hold upto 10% in debt instuments and upto 90% in equity instuments across different market and risk capitalisation");
    }
    if(new_horizon == 4 && new_risk == 4)
    {
    	$('#portfolio_para1').html("The portfolio will aim for long term capital appreciation through high growth instruments across capitalisations");
        $('#portfolio_para2').html("This asset allocation is designed to hold about 5% in debt instruments and upto 95% in equity or equity related instruments. The debt holdings are for tactical use only");
    }
    if(new_horizon == 4 && new_risk == 5)
    {
    	$('#portfolio_para1').html("The portfolio will aim for long term capital appreciation through high growth instruments across capitalisations");
        $('#portfolio_para2').html("This asset allocation is designed to hold about 5% in debt instruments and upto 95% in equity or equity related instruments. The debt holdings are for tactical use only");
    }
    
    if(new_horizon == 5 && new_risk == 1)
    {
    	$('#portfolio_para1').html("The portfolio will aim for long term capital appreciation through value investing strategies");
        $('#portfolio_para2').html("This asset allocation is designed to hold upto 25% in debt instuments and upto 75% in equity instuments across different market and risk capitalisation");
    }
    if(new_horizon == 5 && new_risk == 2)
    {
    	$('#portfolio_para1').html("The portfolio will aim for long term capital appreciation through value investing strategies");
        $('#portfolio_para2').html("This asset allocation is designed to hold upto 15% in debt instuments and upto 85% in equity instuments across different market and risk capitalisation");
    }
    if(new_horizon == 5 && new_risk == 3)
    {
    	$('#portfolio_para1').html("The portfolio will aim for long term capital appreciation through high growth instruments across capitalisations");
        $('#portfolio_para2').html("This asset allocation is designed to hold upto 10% in debt instuments and upto 90% in equity instuments across different market and risk capitalisation");
    }
    if(new_horizon == 5 && new_risk == 4)
    {
    	$('#portfolio_para1').html("The portfolio will aim for long term capital appreciation through high growth instruments across capitalisations");
        $('#portfolio_para2').html("This asset allocation is designed to hold about 5% in debt instruments and upto 95% in equity or equity related instruments. The debt holdings are for tactical use only");
    }
    if(new_horizon == 5 && new_risk == 5)
    {
    	$('#portfolio_para1').html("The portfolio will aim for long term capital appreciation through high growth instruments across capitalisations");
        $('#portfolio_para2').html("This asset allocation is designed to hold about 5% in debt instruments and upto 95% in equity or equity related instruments. The debt holdings are for tactical use only");
    }
    
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
	console.log("total----->"+total);
	
	rateofReturn = 8.0;
	if(risk == "Aggressive")
    {
		rateofReturn = 14.0;
    }else if(risk == "Moderately Aggressive")
    {
    	rateofReturn = 12.5;
    }else if(risk == "Moderate")
    {
    	rateofReturn = 11.5;
    }else if(risk == "Moderately Conservative")
    {
    	rateofReturn = 10.0;
    }else
    {
    	rateofReturn = 8.0;
    }
	
	//Goal Summary
	var years = parseInt(slider_horizon);
	var rate1 = rateofReturn / 100;
	var rate2 = Math.pow(1+rate1,1/12)-1;
	var inflation1 = inflation / 100;
	
	var target_amount = slider_amount * Math.pow(1+inflation1,years);
	target_amount = Math.round(target_amount);
	target_amount = Math.ceil(target_amount / 1000) * 1000;
	
	var famt = parseFloat(target_amount);
	var rate = parseFloat(rateofReturn);
	var period = years * 12;
	
	var required_monthly_target = (rate / (12 * 100) * (famt)) / (Math.pow((1 + rate / (12 * 100)), period) - 1);
	required_monthly_target = Math.round(required_monthly_target);
	
	var invest_amount = (years * 12) * required_monthly_target;
	var interest_total = target_amount - invest_amount;
	
	sipAmount = parseFloat(required_monthly_target);
	//alert("init sipAmount----->"+sipAmount);
	sipAmount = Math.ceil(sipAmount / 1000) * 1000;
	//alert("after sipAmount----->"+sipAmount);
	
	$('.span_sip_amount').html(numbersWithComma(sipAmount));
	$('.span_target_amount').html(numbersWithComma(target_amount));
	$('.span_year').html(years);
	
	showBarChart(parseInt(slider_amount), parseInt(target_amount));
	
	var current_amount = parseInt(sipAmount);
	console.log("current_amount--->"+current_amount);
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
		console.log("category count--->"+count);
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
		console.log("check count--->"+check_count);
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
			
			console.log("liquid_debt--->"+liquid_debt);
			console.log("short_term_debt--->"+short_term_debt);
			console.log("long_term_debt--->"+long_term_debt);
			console.log("equity_balanced--->"+equity_balanced);
			console.log("equity_largecap--->"+equity_largecap);
			console.log("equity_midcap--->"+equity_midcap);
			console.log("equity_diversified--->"+equity_diversified);
			console.log("hybrid_debt--->"+hybrid_debt);
		}
	}
	
	var total = liquid_debt + short_term_debt + long_term_debt + equity_balanced + equity_largecap + equity_midcap + equity_diversified + hybrid_debt;
	console.log("total----->"+total);
	
	var goal_based_amount = parseFloat(sipAmount);
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
	console.log("check_value----->"+check_value);
	
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
	
	console.log("liquid_debt--->"+liquid_debt);
	console.log("short_term_debt--->"+short_term_debt);
	console.log("long_term_debt--->"+long_term_debt);
	console.log("equity_balanced--->"+equity_balanced);
	console.log("equity_largecap--->"+equity_largecap);
	console.log("equity_midcap--->"+equity_midcap);
	console.log("equity_diversified--->"+equity_diversified);
	console.log("hybrid_debt--->"+hybrid_debt);
	
	var total = liquid_debt + short_term_debt + long_term_debt + equity_balanced + equity_largecap + equity_midcap + equity_diversified + hybrid_debt;
	console.log("final one total----->"+total);
	
	donutChart();
}
var container_width = 0;
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
		arr.push('Hybrid: Conservative');
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

	if(container_width == 0){
		container_width = $(".highcharts_div").width() - 5;
		console.log("donut container_width----->"+container_width);	
	}
	
	var chart1 = $('#dount_chart').highcharts({
		colors: ['#a0d7f1', '#003399','#fdbdf2', '#b2f3a1', '#FFF263', '#6AF9C4', '#DDDF00', '#24CBE5', '#64E572'],
        chart: {
            type: 'pie',
            width: container_width
        },
        title: {
            text: ''
        },
        credits: {
            enabled: false
        },
        subtitle: {
            text: ''
        },
        tooltip: {
            pointFormat: '{point.percentage:.0f}%'
        },
        legend: {
            enabled: true,
            layout: 'vertical',
            align: 'right',
            verticalAlign: 'top',
			borderWidth: 0,
            useHTML: true,
			labelFormatter: function() {
				return '<div>' + this.y + '% - ' + this.name + '</div><br>';
			},
			itemStyle: {
	        	  font: 'normal 12px "Open Sans", sans-serif',
	        }
        },
        plotOptions: {
            pie: {
                innerSize: 100,
                depth: 2,
                dataLabels: {
                    enabled: false,
                    connectorWidth: 0,
                    format: '{point.percentage:.0f}%'
                },
                connectorColor: 'gold',
                showInLegend: true
            }
        },
        series: [{
            name: '',
            data:category_array
        }]
    });
	
	var hybrid_75_percent = (hybrid_debt / 100) * 75;
	var hybrid_25_percent = (hybrid_debt / 100) * 25;
	var balanced_35_percent = (equity_balanced / 100) * 35;
	var balanced_65_percent = (equity_balanced / 100) * 65;
	hybrid_75_percent = Math.round(hybrid_75_percent);
	hybrid_25_percent = Math.round(hybrid_25_percent);
	balanced_35_percent = Math.round(balanced_35_percent);
	balanced_65_percent = Math.round(balanced_65_percent);
	
	debt = liquid_debt + short_term_debt + long_term_debt + hybrid_75_percent + balanced_35_percent;
	equity = equity_largecap + equity_midcap + equity_diversified + hybrid_25_percent + balanced_65_percent;
	var total = debt + equity;
	
	if(total > 100)
	{
		debt = debt - (total - 100);
	}
	
	if(portfolio_flag)
	{
		portfolio_flag = false;
	}
	if(projected_flag)
	{
		projected_flag = false;
	}
	if(historical_flag)
	{
		historical_flag = false;
	}
	
	if(btn_state == 1)
	{
		
	}
	if(btn_state == 2)
	{
		completeStep4();
		portfolio_flag = true;
	}
	if(btn_state == 3)
	{
		
	}
	if(btn_state == 4)
	{
		completeStep6();
		historical_flag = true;
	}
	if(btn_state == 5)
	{
		completeStep5();
		projected_flag = true;
	}
	renderPieChart();
}
function renderPieChart()
{    
	equity = parseFloat(equity);
	debt = parseFloat(debt);
	
	var category_arr = new Array();
	if(equity > 0)
	{
		var arr = new Array();
		arr.push("Equity");
		arr.push(equity);
		category_arr.push(arr);
	}
	if(debt > 0)
	{
		var arr = new Array();
		arr.push("Debt");
		arr.push(debt);
		category_arr.push(arr);
	}
	
    $('#asset_allocation_chart').highcharts({
    	colors: ['#65d5c5', '#b4d6fb', '#f58634', '#00a85b', '#858688', '#1cb7eb', '#FF9655', '#1686b0', '#6AF9C4'],
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
	            font: 'bold 15px'
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
            name: '',
            data: category_arr
        }]
    });
}
function gotoTop()
{
	$('#category_allocation_table').hide();
	$('html,body').animate({
        scrollTop: 0
    }, 700);
} 
function completeStep4()
{
	$('#tbl_portfolio_returns').html("");
	$('#portfolio_spinner_div').show();
	
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
	
	var total_amount = 0;
	var total_percentage = 0;
	var loop_count = 0;
	var html = "";
	var last_category_flag = false;
	
	html += "<thead class=recommendedportfolio><tr>";
	html += "<th>Scheme Name</th>";
	html += "<th>Category</th>";
	html += "<th width='150'>Allocation Amount</th>";
	html += "<th width='100'>Edit Amount</th>";
	html += "<th width='100'>Save Scheme</th>";
	html += "</tr></thead>";
	html += "<tbody>";
	
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
		
		var goal_based_amount = parseFloat(sipAmount);
		if(goal_based_amount <= 25000)
		{
			max_count = 1;
		}
		
		$.ajaxSetup({async:false});
		$.post("/goal/getFundRatingBasedSchemes", {category : category, max_count : max_count}, function(data)
	    {
			var schemePerformances = $.trim(data);
			var schemePerformances_obj = jQuery.parseJSON(schemePerformances);
			var schemePerformances_array = $.makeArray(schemePerformances_obj);
	        count = schemePerformances_array.length;
	        var scheme_flag = false;
	    	
			for (var i = 0; i < schemePerformances_array.length ; i++)
		    {
				var scheme_name = schemePerformances_array[i].scheme_amfi;
				var scheme_code = schemePerformances_array[i].scheme_amfi_code;
				var scheme_category = schemePerformances_array[i].scheme_category;
				loop_count++;
				var value = 0;
    			var value1 = 0;
    			
    			if(i == (count - 1))
				{
					scheme_flag = true;
				}
		    	
		    	html += "<tr>";
		    	html += '<td><span id="span_scheme_'+loop_count+'">' + scheme_name + '</span> | <a href="javascript:;" onclick="schemeChange('+loop_count+', \''+category+'\', \''+scheme_code+'\')">Change Scheme</a></td>';
		    	//if(i == 0)
		    	{
		    		html += "<td id='txt_category_"+loop_count+"'>" + category + "</td>";
		    		
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
		    			
			        	html += "<td><input type='text' class='form-control form-control-sm textInputRadius allocaton_amount number1' id='txt_allocation_amount_"+loop_count+"' value='" + numbersWithComma(value1.toFixed(2)) + "' disabled='disabled' onchange='changeAmount("+loop_count+")'></td>";
			        	
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
		    			
			        	html += "<td><input type='text' class='form-control form-control-sm textInputRadius allocaton_amount number1' id='txt_allocation_amount_"+loop_count+"' value='" + numbersWithComma(value1.toFixed(2)) + "' disabled='disabled' onchange='changeAmount("+loop_count+")'></td>";
			        	
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
		    			
			        	html += "<td><input type='text' class='form-control form-control-sm textInputRadius allocaton_amount number1' id='txt_allocation_amount_"+loop_count+"' value='" + numbersWithComma(value1.toFixed(2)) + "' disabled='disabled' onchange='changeAmount("+loop_count+")'></td>";
			        	
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
		    			
			        	html += "<td><input type='text' class='form-control form-control-sm textInputRadius allocaton_amount number1' id='txt_allocation_amount_"+loop_count+"' value='" + numbersWithComma(value1.toFixed(2)) + "' disabled='disabled' onchange='changeAmount("+loop_count+")'></td>";
			        	
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
		    			
			        	html += "<td><input type='text' class='form-control form-control-sm textInputRadius allocaton_amount number1' id='txt_allocation_amount_"+loop_count+"' value='" + numbersWithComma(value1.toFixed(2)) + "' disabled='disabled' onchange='changeAmount("+loop_count+")'></td>";
			        	
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
		    			
			        	html += "<td><input type='text' class='form-control form-control-sm textInputRadius allocaton_amount number1' id='txt_allocation_amount_"+loop_count+"' value='" + numbersWithComma(value1.toFixed(2)) + "' disabled='disabled' onchange='changeAmount("+loop_count+")'></td>";
			        	
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
		    			
			        	html += "<td><input type='text' class='form-control form-control-sm textInputRadius allocaton_amount number1' id='txt_allocation_amount_"+loop_count+"' value='" + numbersWithComma(value1.toFixed(2)) + "' disabled='disabled' onchange='changeAmount("+loop_count+")'></td>";
			        	
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
		    			
			        	html += "<td><input type='text' class='form-control form-control-sm textInputRadius allocaton_amount number1' id='txt_allocation_amount_"+loop_count+"' value='" + numbersWithComma(value1.toFixed(2)) + "' disabled='disabled' onchange='changeAmount("+loop_count+")'></td>";
			        	
			        }
		    	}
		    	html += '<td align="center"><input type="button" class="btn btn-primary btn-sm btn-edit" id="btn_'+loop_count+'" style="width:100%" value="Edit" onclick="editScheme('+loop_count+')" /></td>';
		    	html += '<td align="center"><input type="checkbox" name="save_goal" value="'+loop_count+'"></td>';
		    	html += "</tr>";
		    }
			
	    },'text');
    }
	
	html += "</tbody>"; 
	html += "<tfoot>"; 
	html += "<tr>";
	html += "<td></td>";
	html += "<td>Total</td>";
	html += "<td><input type='text' class='form-control form-control-sm textInputRadius' id='allocation_amount_total' value='"+numbersWithComma(parseFloat(goal_based_amount).toFixed(2))+"' disabled='disabled'></td>";
	html += "<td></td>";
	html += "<td></td>";
	html += "</tfoot>"; 
	
	$('#tbl_portfolio_returns').html(html);
	$('#portfolio_spinner_div').hide();
	
	initializeTypeAhead();
}
function initializeTypeAhead()
{	
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
	var goal_based_amount = parseFloat(sipAmount);
	
	var value = $("#txt_allocation_amount_"+count).val();
	if(value == "" || parseFloat(value) <= 0)
	{
		value = 0.0;
		$("#txt_allocation_amount_"+count).val(parseFloat(value).toFixed(2));
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
function schemeChange(id, category, scheme_code)
{
	var html = '<table class="adv-table table table-striped table-bordered">';
	html += "<thead class = recommendedportfolio><tr>";
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
	
	$.ajaxSetup({async:false});
	$.post("/goal/getFundRatingBasedSchemes", {category : category, scheme_code : scheme_code, max_count : 4}, function(data)
    {
		var schemePerformances = $.trim(data);
		var schemePerformances_obj = jQuery.parseJSON(schemePerformances);
		var schemePerformances_array = $.makeArray(schemePerformances_obj);
        count = schemePerformances_array.length;
    	
		for (var i = 0; i < schemePerformances_array.length ; i++)
	    {
			var scheme_name = schemePerformances_array[i].scheme_amfi_short_name;
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
	    	html += "<td><span id='selected_new_scheme_"+i+"'>" + scheme_name + "</span></td>";
			html += "<td id='txt_category_"+i+"'>" + category + "</td>";
			html += "<td id='txt_category_"+i+"'>" + returns_abs_1year + "</td>";
			html += "<td id='txt_category_"+i+"'>" + returns_cmp_3year + "</td>";
			html += "<td id='txt_category_"+i+"'>" + returns_cmp_5year + "</td>";
			html += "<td id='txt_category_"+i+"'>" + returns_cmp_10year + "</td>";
			html += "<td id='txt_category_"+i+"'>" + returns_cmp_inception + "</td>";
			html += '<td align="center"><input type="radio" name="select_scheme" value="'+i+'"></td>';
	    	html += "</tr>";
	    }
    },'text');	
	html += "</tbody>"; 
	html += "</table>"; 
	
	$(".popup_select_scheme").html(html);
	
	$("#scheme_name_change_model").modal('show');
}
function changeSchemeName()
{
	var id = $("#selected_scheme_id").val();
	var value = $("input[name='select_scheme']:checked").val();
	if(value != undefined)
	{
		var scheme = $("#selected_new_scheme_"+value).html();
		$("#span_scheme_"+id).html(scheme);
	}
	$("#scheme_name_change_model").modal('hide');
}
function completeStep5()
{
	$('#sip-gth-container').html('');
	$('#sip-gth-container_div1').hide();
	$('#sip-gth-container_div2').hide();
	$('#projected_spinner_div').show();
	
	var months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];
	var d = new Date();
	var current_year = d.getFullYear();
    var current_month = months[d.getMonth()];
	var years = parseInt(slider_horizon);
	var mon = 12;
	var yearArr = new Array();
	var principalArr = new Array();
	var interestArr = new Array();
	var balanceArr = new Array();
	var final_year = 0;
	var final_growth_amount = 0;
	var final_invested_amount = 0;

	for(var k=1;k<=years;k++)
	{
		var value1 = (rateofReturn / 100) / 12;
	    var value3 = 1 + value1;
		var value4 = Math.pow((value3), (mon + 1));
	    var amount1 = (value4 - 1);
	    var amount2 = amount1 / value1;
	    var final_amount = (sipAmount * amount2) - sipAmount;
	    final_amount = Math.round(final_amount);
	    var invest_amount = sipAmount * mon;
	    var interest_total = final_amount - invest_amount;
	    yearArr.push("Year"+k);
		principalArr.push(invest_amount);
		interestArr.push(interest_total);
		balanceArr.push(final_amount);
		current_year = current_year + 1;

		final_year = current_year;
		final_growth_amount = final_amount;
		final_invested_amount = invest_amount;
		
		mon = mon + 12;
	}
	
	$('.span_future_year').html(current_month + ' ' + final_year);
	$('.span_future_invested_amount').html(numbersWithComma(final_invested_amount));
	$('.span_future_final_amount').html(numbersWithComma(final_growth_amount));
	
	$('#projected_spinner_div').hide();
	
	Highcharts.setOptions({
		lang: {
			thousandsSep: ','
		}
	});
	
	$('#containerProjectReturn').highcharts({		
		colors : ['#5dd95a', '#003399','#efef98', '#FF9655', '#FFF263', '#6AF9C4', '#DDDF00', '#24CBE5', '#64E572'],
	    chart: {
	        type: 'column'
	    },

	    title: {
	        text: ''
	    },

	    xAxis: {
	        categories: yearArr
	    },

	    yAxis: {
	        allowDecimals: false,
	        min: 0,
	        title: {
	            text: 'Total SIP Value '
	        }
	    },

	    tooltip: {
	    	shared:true
	    },
	    credits: {
            enabled: false
        },
	    plotOptions: {
	        column: {
	            stacking: 'normal'
	        }
	    },

	    series: [{
	        name: 'Total SIP Value',
	        data: balanceArr,
	        stack: 'male'
	    },{
	        name: 'Growth Amount',
	        data: interestArr,
	        stack: 'female'
	    }, {
	        name: 'Invested Amount',
	        data: principalArr,
	        stack: 'female'
	    }]
	});
	
	$('#sip-gth-container_div1').show();
	$('#sip-gth-container_div2').show();
}
function completeStep6()
{
	$('#historical-container').html('');
	$('#historical-container_div1').hide();
	$('#historical_spinner_div').show();
	
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
	if(equity_midcap > 0)
	{
		cat_rolling_array.push("Equity: Mid Cap");	
	}
	if(equity_diversified > 0)
	{
		cat_rolling_array.push("Equity: Multi Cap");	
	}
	
	var rolling_category = cat_rolling_array.toString();		
	var final_median = 0;

	//console.log("rolling_category------>"+rolling_category);
    
	$.ajaxSetup({async:false});
	$.post("/goal/getSipHistoricalReturnsByCategory", {category : rolling_category}, function(data)
    {
		var schemePerformances = $.trim(data);
		var schemePerformances_obj = jQuery.parseJSON(schemePerformances);
		var schemePerformances_array = $.makeArray(schemePerformances_obj);
		
		for (var i = 0; i < schemePerformances_array.length ; i++)
	    {
			var category = schemePerformances_array[i].category;
			var returns = schemePerformances_array[i].median_rolling_returns;
			
			if(category == "Debt: Liquid")
	        {
		    	final_median = final_median + ((returns * liquid_debt) / 100);
	        }else if(category == "Debt: Short Duration")
	        {
	        	final_median = final_median + ((returns * short_term_debt) / 100);
	        }else if(category == "Debt: Long Duration")
	        {
	        	final_median = final_median + ((returns * long_term_debt) / 100);
	        }else if(category == "Hybrid: Conservative")
	        {
	        	final_median = final_median + ((returns * hybrid_debt) / 100);
	        }else if(category == "Hybrid: Aggressive")
	        {
	        	final_median = final_median + ((returns * equity_balanced) / 100);
	        }else if(category == "Equity: Large Cap")
	        {
	        	final_median = final_median + ((returns * equity_largecap) / 100);
	        }else if(category == "Equity: Mid Cap")
	        {
	        	final_median = final_median + ((returns * equity_midcap) / 100);
	        }else if(category == "Equity: Multi Cap")
	        {
	        	final_median = final_median + ((returns * equity_diversified) / 100);
	        }
	    } 
    	
    },'text');
	
	var historical_return = parseFloat(final_median.toFixed(2));
	
	//console.log("historical_return------>"+historical_return);
	
	var fd_year = parseInt(choosen_year);
	if(fd_year > 10)
	{
		fd_year = 10;
	}
	$(".span_sip_year").html(fd_year);
	var d = new Date();
	var current_year = d.getFullYear();
	current_year = current_year - fd_year;
	var mon = 12;
	var yearArr = new Array();
	var principalArr = new Array();
	var interestArr = new Array();
	var balanceArr = new Array();

	for(var k=1;k<=fd_year;k++)
	{
		var value1 = (historical_return / 100) / 12;
	    var value3 = 1 + value1;
		var value4 = Math.pow((value3), (mon + 1));
	    var amount1 = (value4 - 1);
	    var amount2 = amount1 / value1;
	    var final_amount = (sipAmount * amount2) - sipAmount;
	    final_amount = Math.round(final_amount);
	    var invest_amount = sipAmount * mon;
	    var interest_total = final_amount - invest_amount;
	    yearArr.push(current_year);
		principalArr.push(invest_amount);
		interestArr.push(interest_total);
		balanceArr.push(final_amount);
		current_year = current_year + 1;
		mon = mon + 12;
	}

	//console.log("yearArr------>"+yearArr);
	//console.log("principalArr------>"+principalArr);
	//console.log("interestArr------>"+interestArr);
	//console.log("balanceArr------>"+balanceArr);
	
	var data_array = new Array();
	var colors = ['#172460', '#003399','#0b9ca3', '#FF9655', '#FFF263', '#6AF9C4', '#DDDF00', '#24CBE5', '#64E572'];
	var obj = {
			name: "Growth",
	        data: balanceArr,
	        color : colors[1]
		};
	data_array.push(obj);
	
	var obj = {
		name: "Invested Amount",
        data: principalArr,
        color : colors[0]
	};
	data_array.push(obj);

	//console.log("data_array------>"+data_array);
	
	$('#historical_spinner_div').hide();
	
	$('#containerHistrocial').highcharts({
		colors : [ '#fdbdf2', '#003399', '#fbda9b',
			'#b2f3a1', '#FFF263', '#6AF9C4', '#DDDF00',
			'#24CBE5', '#64E572' ],
	    chart: {
	        type: 'area'
	    },
	    title: {
	       text: ''
	    },
	    xAxis: {
	        categories: yearArr,
	        tickmarkPlacement: 'on',
	       title: {
	           enabled: false
	       }
	    },
	    yAxis: {
	        title: {
	            text: 'Total SIP Value'
	        },
	        labels: {
	            formatter: function () {
	                return this.value / 1000;
	            }
	        }
	    },
	    tooltip: {
	    	shared:true
	    },
	    credits: {
            enabled: false
        },
	    plotOptions: {
	        area: {
	            stacking: 'normal',
	            lineColor: '#666666',
	            lineWidth: 1,
	            marker: {
	                lineWidth: 1,
	                lineColor: '#666666'
	            }
	        }
	    },	 
	     series: data_array
	     
	     
	});
	
	$('#historical-container_div1').show();
}
function showLogin()
{
	var scheme_array = new Array();
	var category_array = new Array();
	var percentage_array = new Array();
	var amount_array = new Array();
	
	$("input[name='save_goal']:checked").each(function()
	{
	      var count = $(this).val();
	      var scheme_name = $("#span_scheme_"+count).html();
	      var category = $("#txt_category_"+count).html();
	      var allocation_percentage = 0;
	      var allocation_amount = $("#txt_allocation_amount_"+count).val();
	      allocation_amount = allocation_amount.replace(/,/g,'');
	      
	      scheme_array.push(scheme_name);
	      category_array.push(category);
	      percentage_array.push(allocation_percentage);
	      amount_array.push(allocation_amount);
	});
	
	if(scheme_array.length == 0)
	{
		swal({title:"",text:"Please select the scheme and save your plan."});
		return false;
	}
	
	var scheme_array_str = scheme_array.toString();
	var category_array_str = category_array.toString();
	var percentage_array_str = percentage_array.toString();
	var amount_array_str = amount_array.toString();
	
	$.ajaxSetup({async:false});
	$.post("/goal/saveRoboPlanWithoutLogin", {age : "" + age + "",risk : "" + risk + "",amount : "" + amount + "",horizon : "" + horizon + "",
		inflation : "" + inflation + "",goal : "" + goal + "",sip_amount : "" + sipAmount + "",type : "SIP Robo Advisor",scheme_array : "" + scheme_array_str + "",category_array : "" + category_array_str + "",percentage_array : "" + percentage_array_str + "",
		amount_array : "" + amount_array_str + ""}, function(data)
    {
		var result = $.trim(data);
  		var obj = jQuery.parseJSON(result);
   		if(obj.status == 400)
   		{
   			swal({title:"",text:""+obj.msg});
          	return false;
   		}
   		
   		top.location = "https://themfbox.mcfinserveadmin.com?authcode="+$.trim(obj.msg);
		return;
		
    },'text');
}
function savePlan()
{
	var scheme_array = new Array();
	var category_array = new Array();
	var percentage_array = new Array();
	var amount_array = new Array();
	
	$("input[name='save_goal']:checked").each(function()
	{
	      var count = $(this).val();
	      var scheme_name = $("#span_scheme_"+count).html();
	      var category = $("#txt_category_"+count).html();
	      var allocation_percentage = 0;
	      var allocation_amount = $("#txt_allocation_amount_"+count).val();
	      allocation_amount = allocation_amount.replace(/,/g,'');
	      
	      scheme_array.push(scheme_name);
	      category_array.push(category);
	      percentage_array.push(allocation_percentage);
	      amount_array.push(allocation_amount);
	});
	
	if(scheme_array.length == 0)
	{
		alert("Please select the scheme and save your plan.");
		return false;
	}
	
	var scheme_array_str = scheme_array.toString();
	var category_array_str = category_array.toString();
	var percentage_array_str = percentage_array.toString();
	var amount_array_str = amount_array.toString();
	
	$.ajaxSetup({async:false});
	$.post("/goal/saveRoboPlan", {age : "" + age + "",risk : "" + risk + "",amount : "" + amount + "",horizon : "" + horizon + "",
		inflation : "" + inflation + "",goal : "" + goal + "",sip_amount : "" + sipAmount + "",type : "SIP Robo Advisor",scheme_array : "" + scheme_array_str + "",category_array : "" + category_array_str + "",percentage_array : "" + percentage_array_str + "",
		amount_array : "" + amount_array_str + ""}, function(data)
    {
		var result = $.trim(data);
  		var obj = jQuery.parseJSON(result);
   		if(obj.status == 400)
   		{
   			swal({title:"",text:""+obj.msg});
          	return false;
   		}
   		
   		swal({
	        title: "",
	        text: "Your SIP Robo plan successfully saved.",
	        type: "success"
	    }, function () {
	    	
	    	top.location = "https://themfbox.mcfinserveadmin.com/mutual-funds-research/robo-based-online-investment?userid="+userid+"&id="+obj.msg;
	    });
		return;
		
    },'text');
}
function showButtonText()
{
	goal = $("#sel_goal").val();
    if(goal == "")
 	{
 		swal({title:"",text:"Please select your goal"});
		return;
 	}
    $("#submit_btn").text("Build My "+goal+" Plan");
}
function txtamt()
{
	$(".childp1").show();
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
            <h1 class="pagetitle__heading">SIP Investment</h1>
            <nav>
              <ol class="breadcrumb mb-0">
                <li class="breadcrumb-item"><a href="/">Robo SIP</a></li>
                <li class="breadcrumb-item"><a href="/tools-and-calculators/become-a-crorepati">Goals</a></li>
                <li class="breadcrumb-item active" aria-current="page">Robo SIP</li>
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
	<h1 class="text-center mb-1">SIP Investment</h1>
	<h6 class="text-center mb-4" style="font-weight:lighter;">The better we know you, the more we can do for you</h6>
</div>
</div>
</div>

<div class="row">  


<div class="col-md-12 col-sm-12" style="margin:0 auto; float:none; text-align:center;">
<div class="row pt-4">
<div class="col-md-12 form-inline">
<div class="row" style="margin:0px;margin-bottom:3%;">
<div class="col-md-12" style="float:none;margin:0 auto;">
<p>I am <input id="txt_age" maxlength="2" class="form-control form-control-sm w-15 w-custom-56 roboInput textInputRadius" style="width: 10%;color: #529100;font-weight: bold;font-size: 16px !important;" value="" type="text" > 
 years old and I need &nbsp;<i class="fa fa-inr"></i> 
<input id="txt_amount" maxlength="13" class="form-control form-control-sm w-15 w-custom-56 roboInput textInputRadius number" style="width: 19%;color: #529100;font-weight: bold;font-size: 16px !important;" value="" type="text" onkeydown = "txtamt()"></p> 
</div>
</div>
</div>
</div>


<div class="row childp1 pdesign" style="display: none !important;">
<div class="col-md-12 form-inline">
<div class="row" style="margin:0px;margin-bottom:3%">
<div class="col-md-12" style="float:none;margin:0 auto;">
<p> at today's value for  
<select id="sel_goal" class="form-control form-control-sm w-25 w-custom-50 roboInput textInputRadius" style="text-align:center;text-align-last:center;width:23%;padding:0px; font-size: 16px !important; font-weight: bold;">
<option value="">Select Goal</option>
<option value="Wealth Creation">Wealth Creation</option>
<option value="Retirement">Retirement</option>
<option value="Children's Education">Children Education</option>
<option value="Children's Marriage">Children Marriage</option>
<option value="Buying a House">Buying a House</option>
<option value="Starting a Business">Starting a Business</option>
<option value="Supporting My Parents">Supporting My Parents</option>
<option value="Other Goal">Other Goal</option>
</select>
after
<input id="txt_period" maxlength="2" class="form-control form-control-sm w-15 w-custom-56 roboInput textInputRadius" style="width: 10%;color: #529100;font-weight: bold;font-size: 16px !important;" value="" type="text" value="" type="text">
years</p>
</div>
</div>
</div>
</div>
<div class="row pt-4">
<div class="col-md-12 text-center py-5">	
<button class="btn btn__secondary btn__rounded btnCol" style="margin:0 auto; float: none;" onclick="completeStep1()">Build My Plan</button>
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
		 <button class="btn btn-primary col-lg-custom btn-md btnCol col-lg-border-custom" style="width: auto; background-color: #6ac259;border-color: #6ac259;color: #080808;  font-weight: bold;" onclick="goToStep1()">Back</button>
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
	 			<div class="col-md-8" style="margin: 0 auto;display:grid;">
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
				 <div class="col-lg-12 text-center pb-4">
					 <button class="btn btn-primary col-lg-custom btn-md btnCol col-lg-border-custom" style="width: auto; background-color: #6ac259;border-color: #6ac259;color: #080808;  font-weight: bold;" onclick="hide_div(2)">Back</button>
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
	 				<div class="col-md-6" style="margin: 0 auto;display:grid;">
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
					 <div class="col-lg-12 text-center pb-4">
						 <button class="btn btn-primary col-lg-custom btn-md btnCol col-lg-border-custom" style="width: auto; background-color: #6ac259;border-color: #6ac259;color: #080808;  font-weight: bold;" onclick="hide_div(3)">Back</button>
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
						  <div class="col-lg-12 text-center pb-4">
							 <button class="btn btn-primary col-lg-custom btn-md btnCol col-lg-border-custom" style="width: auto; background-color: #6ac259;border-color: #6ac259;color: #080808;  font-weight: bold;" onclick="hide_div(4)">Back</button>
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
	 				<div class="col-md-6" style="margin: 0 auto;display:grid;">
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
					 <div class="col-lg-12 text-center pb-4">
						 <button class="btn btn-primary col-lg-custom btn-md btnCol col-lg-border-custom" style="width: auto; background-color: #6ac259;border-color: #6ac259;color: #080808;  font-weight: bold;" onclick="hide_div(5)">Back</button>
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
	 				<div class="col-md-8" style="margin: 0 auto;display:grid;">
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
					 <div class="col-lg-12 text-center pb-4">
						 <button class="btn btn-primary col-lg-custom btn-md btnCol col-lg-border-custom" style="width: auto; background-color: #6ac259;border-color: #6ac259;color: #080808;  font-weight: bold;" onclick="hide_div(6)">Back</button>
						 <button class="btn btn-success col-lg-custom  btn-md btnCol ml-2" onclick="show_ques_div(6)">Continue</button>
					 </div>
		  		 </div>
	  		</div>
	 	</div>
	</div>
	
</div>

<div class="container robo3">
<div class="">	
    <div class="d-flex carousel-nav">
      
        <a href="#" class="col active">Goal Summary</a>
        <a href="#" class="col">Asset Allocation</a>
        <a href="#" class="col">Overview</a>
        <a href="#projectedreturns" class="col">Projected Returns</a>
        <a href="#historicalreturns" class="col">Historical Returns</a>
        <a href="#portfolio" class="col">Portfolio</a>
      </div>
  <div class="owl-carousel owl-1">
        <div class="media-29101 d-md-flex w-100">
         <div class="container pb-4 media-29101 d-md-flex w-100" id="DivF1" style="display:none;clear:both;">
<div class="row pt-2">
<div class="col-lg-6 border-blue RtCard fundNamebg pt-3 highcharts_div">
<div>
<p class="" style="color: #2e3e4f;font-weight: bold !important;">Inflation</p>
<p style="color: #2e3e4f; font-size: 14px !important; text-align: justify;">Inflation is the rate at which the general level of prices for goods and services is rising and consequently, the purchasing power of currency is falling. The effects of Inflation are huge. And, it does not just affect areas like our salaries and the cost of purchasing a home etc. It hits us from every angle - Food prices go up, transportation prices increase and the cost of various services and goods skyrocket over time. All these factors make it absolutely necessary that you account for the impact of inflation on your long term savings and financial goals.</p>
<p style="color: #2e3e4f;font-weight: bold !important;">Average Inflation in India for last 3 years is as follows-</p>
<p style="font-size:14px !important;margin-bottom:5px !important;">2020 - 6.32%</p>
<p style="font-size:14px !important;margin-bottom:5px !important;">2019 - 7.66%</p>
<p style="font-size:14px !important;margin-bottom:5px !important;">2018 - 4.85%</p>
<p style="font-size:14px !important;margin-bottom:5px !important;">(Source: www.inflation.eu)</p>
</div>
</div>
<div class="col-lg-6 pt-5 chartFontStyle" id="highcharts_div">
<div id="goal_summary_chart" style="height: 250px;"></div>
<p style="font-size:12px !important;height: 35px;"><strong>You need to save Rs. <span class="span_sip_amount"></span> monthly to achieve inflation adjusted goal of Rs. <span class="span_target_amount"></span>.</strong></p>
</div>
</div>
</div>
        </div> <!-- .item -->

<div class="media-29101 d-md-flex w-100">
         
<div class="container pb-4" id="DivF2">
<div class="row pt-2">
<div class="col-lg-6 border-blue RtCard fundNamebg pt-3">
<div>
<p style="color: #2e3e4f;font-weight: bold !important;">Equity</p>
<p style ="color: #2e3e4f; font-size: 14px !important; text-align: justify;">Investing in Equity and equity related instruments refers to the investment in publicly traded shares of companies listed on recognized stock exchanges (in India and overseas) and all such schemes that may have such shares as an underlying holding. It may also involve and not limited to investments in equity, derivatives and or in unlisted shares of companies that may not be publicly traded. Such instruments may be more tax efficient than traditional investment options.</p>
 <p style="color: #2e3e4f;font-weight: bold !important;">Debt</p>
<p style ="color: #2e3e4f; font-size: 14px !important; text-align: justify;">Investing in Debt markets and debt instruments involves investment in usually fixed interest securities that may or may not be listed. These securities may be in the form of Government Bonds, Corporate Bonds and other State Government Bonds/Municipal Bonds and or Bank Fixed Deposits (Public as well as Private). Tax free bonds are usually issued by Central or State Government/specialized agencies that do not attract any tax on interest earned.  Such instruments may also be more tax efficient than traditional investment options.</p>
</div>
</div>
<div class="col-lg-6 pt-3">
<div id="asset_allocation_chart" class="assetallocation" style="height: 250px !important;"></div>
</div>
</div>
</div>
</div> <!-- .item -->

<div class="media-29101 d-md-flex w-100">
<div class="container  pb-4" id="DivF3">
<div class="row pt-2">
<div class="col-lg-6 border-blue RtCard fundNamebg  pt-3">
<div>
<P style="color: #2e3e4f;font-weight: bold !important;">Investment strategy</P>
<p id="portfolio_para1" style ="color: #2e3e4f; font-size: 14px !important; text-align: justify;"></p>
<P style="color: #2e3e4f;font-weight: bold !important;">Portfolio Construction</P>
<p id="portfolio_para2" style ="color: #2e3e4f; font-size: 14px !important; text-align: justify;"></p>
</div>
</div>
<div class="col-lg-6 pt-3">
<div id="dount_chart" style="height: 250px;"></div>
</div>
</div>
</div>
</div> <!-- .item -->
<div class="media-29101 d-md-flex w-100">
<div class="container  pb-4" id="DivF4">
<div class="row pt-2 sipRoboOffsetAlign">
<div class="col-lg-12 offset-lg-1 border-blue fundNamebg AllCornerBorder pt-3">
<p style="color: #2e3e4f;font-weight: bold !important;text-align: center">Projected Returns of our Recommended Portfolio for you</p>
<div id="containerProjectReturn" style="min-width: 310px; height: 400px; margin: 0 auto;"></div>
</div>
<div class="col-lg-12 offset-lg-1 py-2 mt-3 text-center cardProtbg"><strong>Projected growth of Rs. <span class="span_sip_amount"></span> Monthly SIP over <span class="span_year">10</span> years.</strong></div>
<div class="col-lg-12 offset-lg-1 py-2 mt-3 cardProtbg" style="border-top:1px solid #eee;">
<p class="chart_para marginBottom0" style="margin-top:10px;">Disclaimer :</p>
<p class="chart_para marginBottom0">Projections are based on historical returns, therefore, actual returns may vary subject to market risks and cannot be guaranteed.</p>
<p class="chart_para marginBottom0">All projections are annual, compounded annually.</p>
<p class="chart_para marginBottom0">Your investment till <span class="span_future_year"></span> - Rs. <span class="span_future_invested_amount"></span>. Expected Corpus in <span class="span_future_year"></span> - Rs. <span class="span_future_final_amount"></span></p>
</div>
</div>
</div>

</div> <!-- .item -->
<div class="media-29101 d-md-flex w-100">
<div class="container pb-4" id="DivF5">
<div class="row pt-2 sipRoboAlignMargin">
<div class="col-lg-12 offset-lg-1 border-blue fundNamebg AllCornerBorder pt-3 pb-3">
<h4 class="textColor text-center">Historical Returns of our recommended portifolio for you</h4>
<div id="containerHistrocial" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
</div>
<div class="col-md-12 offset-md-3 py-2 mt-3 text-center cardProtbg"><strong>Historical growth of Rs. <span class="span_sip_amount"></span> Monthly SIP in the last <span class="span_sip_year">10</span> years.</strong></div>
</div>
</div>
</div> <!-- .item -->

<div class="media-29101 d-md-flex w-100">

<div class="container  pb-4" id="DivF6">
<div class="row pt-2">
<div class="col-lg-12 border-blue fundNamebg AllCornerBorder pt-3">
<div class="row">
<div class="col-md-8 col-sm-8">
<h4 class="textColor">Recommended Portfolio (Monthly SIP Amount - Rs. <span class="span_sip_amount"></span>)</h4>
</div>
<div class="col-md-4 col-sm-4 text-right">
<span class="check_all_btn font-size-14">Select All Schemes</span>
</div>
</div>
<div class="text_center padding100" id="portfolio_spinner_div">
<i class="fa fa-spinner fa-pulse fa-2x" aria-hidden="true"></i>
</div>
<div class="table-responsive">
<table class="table table-bordered" id="tbl_portfolio_returns">
</table>
</div>
<div class="text-right pb-3">
<c:choose>
<c:when test="${accountMap != null}">
	<button class="btn btn-success col-lg-custom" onclick="savePlan()">Save Plan</button>
</c:when>
<c:otherwise>
	<button class="btn btn-success col-lg-custom" onclick="showLogin()">Save Plan</button>
</c:otherwise>
</c:choose>
</div>
</div>
</div>
</div>
</div> <!-- .item -->
<!-- <button id="btn_head1" class="col active" onclick="show_div(1)">Goal Summary</button>


<button id="btn_head2" class="col" onclick="show_div(2)">Asset Allocation</button>


<button id="btn_head3" class="col" onclick="show_div(3)">Overview</button>

<button id="btn_head4" class="col" onclick="show_div(4)">Projected Returns</button>


<button id="btn_head5" class="col" onclick="show_div(5)">Historical Returns</button>


<button id="btn_head6" class="col" onclick="show_div(6)">Portfolio</button>
 -->
</div>
</div>
</div>
</div>
			
      </div><!-- /.container -->
    </section><!-- /.Team layout 1  -->
    
    <div id="scheme_name_change_model" class="modal fade" tabindex="-1" data-backdrop="static" data-keyboard="false">
  <div class="modal-lg modal-dialog modal-dialog-centered">

    <!-- Modal content-->
    <div class="modal-content modal-dialog-scrollable">
      <div class="modal-header" style="background: #6ac259;color: white;">
          	<div class="col-md-10">
          		<h6 class="modal-title">Change the Scheme Name</h6>
          	</div>
      </div>
      <div class="modal-body">
        <div class="popup_select_scheme"></div>
      </div>
      <div class="modal-footer">
		<button type="button" class="btn btn-primary" style = "width: auto; background-color: #6ac259;border-color: #6ac259;color: #080808;  font-weight: bold;color: #080808; " data-dismiss="modal">Close</button>
		<button class="btn btn-success" type="submit" onclick="changeSchemeName()">Submit</button>
	</div>
    </div>
  </div>
</div>
 