<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<script src="/vendors/highstock/highstock.js"></script>

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
	color: #038bbb;
	font-weight: 500;
}
.roboInput {
	border: 0;
    border-bottom: 1px solid #4b4e53;
	border-radius: 0px;
	 -webkit-box-shadow: none !important;
    box-shadow: none !important;
    font-size: 20px;
	color: #038bbb;
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
    color:deepskyblue;
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
    margin-left:10px;
}
#goal_line_chart {
    height:100%;
    width:100%;
    margin-left:10px;
}
.btn{
	border-radius:0px;
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
.calc_div{
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
</style>

<script>
var target_goal = "";
var goal_name = "";
var amount = "";
var age = "";
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
var short_term_debt = 0;
var hybrid_arbitrage = 0;
var hybrid_conservative = 0;
var hybrid_aggressive = 0;
var equity_largecap = 0;
var equity_large_midcap = 0;
var equity_midcap = 0;
var equity_multicap = 0;
var equity_smallcap = 0;
var investor_pan = "";
var ques_flag = 1;
var userid = 0;

$(document).ready(function(){
	
	investor_pan = '${pan}';
	userid = '${userid}';

	//$("#sel_risk").niceSelect('destroy');

	$("#sel_risk").val("Conservative");
	
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
	$(".ques_1").show();
});

function goToStep1()
{
	$(".robo1").show();
	$(".robo2").hide();
	$(".robo3").hide();
	$(".robo4").hide();
	$(".robo5").hide();
}
function goToStep2()
{
	$(".robo1").hide();
	$(".robo2").hide();
	$(".robo3").show(); 
	$(".robo4").hide();
	$(".robo5").hide();
}
function goToStep3()
{
	$(".robo1").hide();
	$(".robo2").hide();
	$(".robo3").hide(); 
	$(".robo4").show();
	$(".robo5").hide();
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
    age = $("#txt_current_age").val();
    goal_name =  $(".goal_name").val();

    amount = amount.replace(/,/g,'');
    
    if(age == "" || isNaN(age) || parseInt(age) < 1 || parseInt(age) > 100)
 	{
 		swal({title:"",text:"Please enter valid age"});
		return;
 	}
 	
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
    //amount = parseInt(target_without_inflation_amount);
    //horizon = parseInt(years);
    //sip_amount = parseInt(sip);
    //target_amount = parseInt(target_inflation_amount);
    
    //$(".goal_name").html(goal_name);
    
    $('html,body').animate({
        scrollTop: 0
    }, 700);
    
    calculateSIPAmount();
	$(".robo1").hide();
	$(".robo2").hide();
	$(".robo5").hide();
	$(".robo4").hide();
	$(".robo3").show();
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
var existing_portfolio_flag = true;
var existing_flag = false;
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
				var scheme_array = $.makeArray(obj[0].investorSchemeWisePortfolioResponses);
				
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
					var scheme_name = scheme_array[i].scheme;
					var scheme_code = scheme_array[i].scheme_code;
					var category = scheme_array[i].scheme_advisorkhoj_category;
					var foliono = scheme_array[i].foliono;
					var totalUnits = scheme_array[i].totalUnits;
					var totalCurrentValue = scheme_array[i].totalCurrentValue;
					var sip_scheme = scheme_array[i].isActiveSipScheme;
					var scheme_sip_amount = scheme_array[i].sip_amount;
					if(scheme_sip_amount < 0){
						scheme_sip_amount = scheme_sip_amount * -1;
					}
					exist_count++;
			    	
			    	html += "<tr>";
			    	if(sip_scheme == true || sip_scheme == "true")
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
			    	if(folio_array.length > 0)
			    	{
			    		if((jQuery.inArray(foliono, folio_array) !== -1) && (jQuery.inArray(scheme_code, scheme_code_array) !== -1))
			    		{
			    			html += '<td align="center">Already Mapped</td>';
			    		}else
			    		{
			    			html += '<td class="text-center"><input type="checkbox" name="save_goal_exist" value="'+exist_count+'"></td>';
			    		}
			    	}else
			    	{
			    		html += '<td class="text-center"><input type="checkbox" name="save_goal_exist" value="'+exist_count+'"></td>';
			    	}
			    	html += "</tr>";
			    }
			}

			html += "</tbody>"; 
			$('#tbl_existing_portfolio_returns').html(html);
			$('#existing_portfolio_div').show();
			
	    },'text');	
	}
	
	$('#recommended_div').hide();
	$('#save_goal_div').hide();

	$(".robo1").hide();
	$(".robo3").hide();
	$(".robo5").hide();
	$(".robo4").show();
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
			str += '<tr class="goal_ques"><td>Monthly SIP investment required</td><td><input type="text" id="txt_goal_sip_amount" value="'+numbersWithComma(sip_amount.toFixed(0))+'" class="form-control form-control-sm fundNamebg"></td></tr>';
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
				
				str += '<tr class="goal_ques"><td>Your Remaining targeted Amount</td><td><input type="text" id="txt_remain_goal_amount" disabled="disabled" value="'+numbersWithComma(remaining_goal_amount.toFixed(0))+'" class="form-control form-control-sm fundNamebg" ></td></tr>';
				str += '<tr class="goal_ques"><td>Monthly SIP investment required</td><td><input type="text" id="txt_goal_sip_amount" value="'+numbersWithComma(remaining_sip_amount.toFixed(0))+'" class="form-control form-control-sm fundNamebg" ></td></tr>';
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
		$('#old_robo1').addClass('col-md-9');
		$('#old_robo2').removeClass('col-md-8');
		$('#old_robo2').addClass('col-md-6');
		$('#old_robo3').removeClass('col-md-4');
		$('#old_robo3').addClass('col-md-6');
		$('#old_robo4').hide();
		$('#old_robo6').hide();
		$('#old_robo5').removeClass('col-md-2');
		$('#old_robo5').addClass('col-md-3');
		$('#old_robo7').removeClass('col-md-2');
		$('#old_robo7').addClass('col-md-3');
		$('#old_robo8').removeClass('col-md-2');
		$('#old_robo8').addClass('col-md-3');
		$('#old_robo9').removeClass('col-md-2');
		$('#old_robo9').addClass('col-md-3');

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
		$('#old_robo2').addClass('col-md-8');
		$('#old_robo3').removeClass('col-md-6');
		$('#old_robo3').addClass('col-md-4');
		$('#old_robo4').show();
		$('#old_robo6').show();
		$('#old_robo5').removeClass('col-md-3');
		$('#old_robo5').addClass('col-md-2');
		$('#old_robo7').removeClass('col-md-3');
		$('#old_robo7').addClass('col-md-2');
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
	
	var angles = [0, 0, 0, 0, 0, 0, 0, 0, 0];
    
  	//horizon 1
    if (new_horizon == 1 && new_risk == 1)
    {
    	angles[0] = 100; // Hybrid: Arbitrage
        angles[1] = 0; // Hybrid: Conservative
        angles[2] = 0; // Hybrid: Aggressive
        angles[3] = 0; // Debt: Short Duration
        angles[4] = 0; // Equity: Large Cap
        angles[5] = 0; // Equity: Mid Cap
        angles[6] = 0; // Equity: Large and Mid Cap
        angles[7] = 0; // Equity: Multi Cap
        angles[8] = 0; // Equity: Small Cap
    }
    if (new_horizon == 1 && new_risk == 2)
    {
    	angles[0] = 50; // Hybrid: Arbitrage
        angles[1] = 0; // Hybrid: Conservative
        angles[2] = 0; // Hybrid: Aggressive
        angles[3] = 50; // Debt: Short Duration
        angles[4] = 0; // Equity: Large Cap
        angles[5] = 0; // Equity: Mid Cap
        angles[6] = 0; // Equity: Large and Mid Cap
        angles[7] = 0; // Equity: Multi Cap
        angles[8] = 0; // Equity: Small Cap
    }
    if (new_horizon == 1 && new_risk == 3)
    {
    	angles[0] = 0; // Hybrid: Arbitrage
        angles[1] = 30; // Hybrid: Conservative
        angles[2] = 40; // Hybrid: Aggressive
        angles[3] = 0; // Debt: Short Duration
        angles[4] = 15; // Equity: Large Cap
        angles[5] = 0; // Equity: Mid Cap
        angles[6] = 15; // Equity: Large and Mid Cap
        angles[7] = 0; // Equity: Multi Cap
        angles[8] = 0; // Equity: Small Cap
    }
    if (new_horizon == 1 && new_risk == 4)
    {
    	angles[0] = 0; // Hybrid: Arbitrage
        angles[1] = 30; // Hybrid: Conservative
        angles[2] = 40; // Hybrid: Aggressive
        angles[3] = 0; // Debt: Short Duration
        angles[4] = 0; // Equity: Large Cap
        angles[5] = 0; // Equity: Mid Cap
        angles[6] = 20; // Equity: Large and Mid Cap
        angles[7] = 10; // Equity: Multi Cap
        angles[8] = 0; // Equity: Small Cap
    }
    if (new_horizon == 1 && new_risk == 5)
    {
    	angles[0] = 0; // Hybrid: Arbitrage
        angles[1] = 30; // Hybrid: Conservative
        angles[2] = 40; // Hybrid: Aggressive
        angles[3] = 0; // Debt: Short Duration
        angles[4] = 0; // Equity: Large Cap
        angles[5] = 0; // Equity: Mid Cap
        angles[6] = 20; // Equity: Large and Mid Cap
        angles[7] = 10; // Equity: Multi Cap
        angles[8] = 0; // Equity: Small Cap                
    }
    
    //horizon 2
    if (new_horizon == 2 && new_risk == 1)
    {
    	angles[0] = 100; // Hybrid: Arbitrage
        angles[1] = 0; // Hybrid: Conservative
        angles[2] = 0; // Hybrid: Aggressive
        angles[3] = 0; // Debt: Short Duration
        angles[4] = 0; // Equity: Large Cap
        angles[5] = 0; // Equity: Mid Cap
        angles[6] = 0; // Equity: Large and Mid Cap
        angles[7] = 0; // Equity: Multi Cap
        angles[8] = 0; // Equity: Small Cap
    }
    if (new_horizon == 2 && new_risk == 2)
    {
    	angles[0] = 50; // Hybrid: Arbitrage
        angles[1] = 0; // Hybrid: Conservative
        angles[2] = 0; // Hybrid: Aggressive
        angles[3] = 50; // Debt: Short Duration
        angles[4] = 0; // Equity: Large Cap
        angles[5] = 0; // Equity: Mid Cap
        angles[6] = 0; // Equity: Large and Mid Cap
        angles[7] = 0; // Equity: Multi Cap
        angles[8] = 0; // Equity: Small Cap
    }
    if (new_horizon == 2 && new_risk == 3)
    {
    	angles[0] = 0; // Hybrid: Arbitrage
        angles[1] = 20; // Hybrid: Conservative
        angles[2] = 40; // Hybrid: Aggressive
        angles[3] = 0; // Debt: Short Duration
        angles[4] = 20; // Equity: Large Cap
        angles[5] = 0; // Equity: Mid Cap
        angles[6] = 20; // Equity: Large and Mid Cap
        angles[7] = 0; // Equity: Multi Cap
        angles[8] = 0; // Equity: Small Cap
    }
    if (new_horizon == 2 && new_risk == 4)
    {
    	angles[0] = 0; // Hybrid: Arbitrage
        angles[1] = 10; // Hybrid: Conservative
        angles[2] = 50; // Hybrid: Aggressive
        angles[3] = 0; // Debt: Short Duration
        angles[4] = 20; // Equity: Large Cap
        angles[5] = 0; // Equity: Mid Cap
        angles[6] = 20; // Equity: Large and Mid Cap
        angles[7] = 0; // Equity: Multi Cap
        angles[8] = 0; // Equity: Small Cap                
    }
    if (new_horizon == 2 && new_risk == 5)
    {
    	angles[0] = 0; // Hybrid: Arbitrage
        angles[1] = 10; // Hybrid: Conservative
        angles[2] = 50; // Hybrid: Aggressive
        angles[3] = 0; // Debt: Short Duration
        angles[4] = 20; // Equity: Large Cap
        angles[5] = 0; // Equity: Mid Cap
        angles[6] = 20; // Equity: Large and Mid Cap
        angles[7] = 0; // Equity: Multi Cap
        angles[8] = 0; // Equity: Small Cap
    }
    
   //horizon 3
    if (new_horizon == 3 && new_risk == 1)
    {
    	angles[0] = 100; // Hybrid: Arbitrage
        angles[1] = 0; // Hybrid: Conservative
        angles[2] = 0; // Hybrid: Aggressive
        angles[3] = 0; // Debt: Short Duration
        angles[4] = 0; // Equity: Large Cap
        angles[5] = 0; // Equity: Mid Cap
        angles[6] = 0; // Equity: Large and Mid Cap
        angles[7] = 0; // Equity: Multi Cap
        angles[8] = 0; // Equity: Small Cap
    }
    if (new_horizon == 3 && new_risk == 2)
    {
    	angles[0] = 50; // Hybrid: Arbitrage
        angles[1] = 0; // Hybrid: Conservative
        angles[2] = 0; // Hybrid: Aggressive
        angles[3] = 50; // Debt: Short Duration
        angles[4] = 0; // Equity: Large Cap
        angles[5] = 0; // Equity: Mid Cap
        angles[6] = 0; // Equity: Large and Mid Cap
        angles[7] = 0; // Equity: Multi Cap
        angles[8] = 0; // Equity: Small Cap
    }
    if (new_horizon == 3 && new_risk == 3)
    {
    	angles[0] = 0; // Hybrid: Arbitrage
        angles[1] = 0; // Hybrid: Conservative
        angles[2] = 50; // Hybrid: Aggressive
        angles[3] = 0; // Debt: Short Duration
        angles[4] = 30; // Equity: Large Cap
        angles[5] = 0; // Equity: Mid Cap
        angles[6] = 20; // Equity: Large and Mid Cap
        angles[7] = 0; // Equity: Multi Cap
        angles[8] = 0; // Equity: Small Cap                
    }
    if (new_horizon == 3 && new_risk == 4)
    {
    	angles[0] = 0; // Hybrid: Arbitrage
        angles[1] = 0; // Hybrid: Conservative
        angles[2] = 40; // Hybrid: Aggressive
        angles[3] = 0; // Debt: Short Duration
        angles[4] = 30; // Equity: Large Cap
        angles[5] = 0; // Equity: Mid Cap
        angles[6] = 30; // Equity: Large and Mid Cap
        angles[7] = 0; // Equity: Multi Cap
        angles[8] = 0; // Equity: Small Cap
    }
    if (new_horizon == 3 && new_risk == 5)
    {
    	angles[0] = 0; // Hybrid: Arbitrage
        angles[1] = 0; // Hybrid: Conservative
        angles[2] = 40; // Hybrid: Aggressive
        angles[3] = 0; // Debt: Short Duration
        angles[4] = 30; // Equity: Large Cap
        angles[5] = 0; // Equity: Mid Cap
        angles[6] = 30; // Equity: Large and Mid Cap
        angles[7] = 0; // Equity: Multi Cap
        angles[8] = 0; // Equity: Small Cap
    }
    
    //horizon 4
    if (new_horizon == 4 && new_risk == 1)
    {
    	angles[0] = 100; // Hybrid: Arbitrage
        angles[1] = 0; // Hybrid: Conservative
        angles[2] = 0; // Hybrid: Aggressive
        angles[3] = 0; // Debt: Short Duration
        angles[4] = 0; // Equity: Large Cap
        angles[5] = 0; // Equity: Mid Cap
        angles[6] = 0; // Equity: Large and Mid Cap
        angles[7] = 0; // Equity: Multi Cap
        angles[8] = 0; // Equity: Small Cap
    }
    if (new_horizon == 4 && new_risk == 2)
    {
    	angles[0] = 50; // Hybrid: Arbitrage
        angles[1] = 0; // Hybrid: Conservative
        angles[2] = 0; // Hybrid: Aggressive
        angles[3] = 50; // Debt: Short Duration
        angles[4] = 0; // Equity: Large Cap
        angles[5] = 0; // Equity: Mid Cap
        angles[6] = 0; // Equity: Large and Mid Cap
        angles[7] = 0; // Equity: Multi Cap
        angles[8] = 0; // Equity: Small Cap
    }
    if (new_horizon == 4 && new_risk == 3)
    {
    	angles[0] = 0; // Hybrid: Arbitrage
        angles[1] = 0; // Hybrid: Conservative
        angles[2] = 30; // Hybrid: Aggressive
        angles[3] = 0; // Debt: Short Duration
        angles[4] = 30; // Equity: Large Cap
        angles[5] = 0; // Equity: Mid Cap
        angles[6] = 20; // Equity: Large and Mid Cap
        angles[7] = 20; // Equity: Multi Cap
        angles[8] = 0; // Equity: Small Cap
    }
    if (new_horizon == 4 && new_risk == 4)
    {
    	angles[0] = 0; // Hybrid: Arbitrage
        angles[1] = 0; // Hybrid: Conservative
        angles[2] = 20; // Hybrid: Aggressive
        angles[3] = 0; // Debt: Short Duration
        angles[4] = 30; // Equity: Large Cap
        angles[5] = 30; // Equity: Mid Cap
        angles[6] = 0; // Equity: Large and Mid Cap
        angles[7] = 20; // Equity: Multi Cap
        angles[8] = 0; // Equity: Small Cap
    }
    if (new_horizon == 4 && new_risk == 5)
    {
    	angles[0] = 0; // Hybrid: Arbitrage
        angles[1] = 0; // Hybrid: Conservative
        angles[2] = 20; // Hybrid: Aggressive
        angles[3] = 0; // Debt: Short Duration
        angles[4] = 30; // Equity: Large Cap
        angles[5] = 30; // Equity: Mid Cap
        angles[6] = 0; // Equity: Large and Mid Cap
        angles[7] = 20; // Equity: Multi Cap
        angles[8] = 0; // Equity: Small Cap
    }
    
    
  	//horizon 5
    if (new_horizon == 5 && new_risk == 1)
    {
    	angles[0] = 100; // Hybrid: Arbitrage
        angles[1] = 0; // Hybrid: Conservative
        angles[2] = 0; // Hybrid: Aggressive
        angles[3] = 0; // Debt: Short Duration
        angles[4] = 0; // Equity: Large Cap
        angles[5] = 0; // Equity: Mid Cap
        angles[6] = 0; // Equity: Large and Mid Cap
        angles[7] = 0; // Equity: Multi Cap
        angles[8] = 0; // Equity: Small Cap
    }
    if (new_horizon == 5 && new_risk == 2)
    {
    	angles[0] = 50; // Hybrid: Arbitrage
        angles[1] = 0; // Hybrid: Conservative
        angles[2] = 0; // Hybrid: Aggressive
        angles[3] = 50; // Debt: Short Duration
        angles[4] = 0; // Equity: Large Cap
        angles[5] = 0; // Equity: Mid Cap
        angles[6] = 0; // Equity: Large and Mid Cap
        angles[7] = 0; // Equity: Multi Cap
        angles[8] = 0; // Equity: Small Cap
    }
    if (new_horizon == 5 && new_risk == 3)
    {
    	angles[0] = 0; // Hybrid: Arbitrage
        angles[1] = 0; // Hybrid: Conservative
        angles[2] = 30; // Hybrid: Aggressive
        angles[3] = 0; // Debt: Short Duration
        angles[4] = 30; // Equity: Large Cap
        angles[5] = 0; // Equity: Mid Cap
        angles[6] = 20; // Equity: Large and Mid Cap
        angles[7] = 20; // Equity: Multi Cap
        angles[8] = 0; // Equity: Small Cap
    }
    if (new_horizon == 5 && new_risk == 4)
    {
    	angles[0] = 0; // Hybrid: Arbitrage
        angles[1] = 0; // Hybrid: Conservative
        angles[2] = 20; // Hybrid: Aggressive
        angles[3] = 0; // Debt: Short Duration
        angles[4] = 10; // Equity: Large Cap
        angles[5] = 30; // Equity: Mid Cap
        angles[6] = 0; // Equity: Large and Mid Cap
        angles[7] = 20; // Equity: Multi Cap
        angles[8] = 20; // Equity: Small Cap
    }
    if (new_horizon == 5 && new_risk == 5)
    {
    	angles[0] = 0; // Hybrid: Arbitrage
        angles[1] = 0; // Hybrid: Conservative
        angles[2] = 20; // Hybrid: Aggressive
        angles[3] = 0; // Debt: Short Duration
        angles[4] = 10; // Equity: Large Cap
        angles[5] = 30; // Equity: Mid Cap
        angles[6] = 0; // Equity: Large and Mid Cap
        angles[7] = 20; // Equity: Multi Cap
        angles[8] = 20; // Equity: Small Cap
    }

    hybrid_arbitrage = parseFloat(angles[0]);
    hybrid_conservative = parseFloat(angles[1]);
    hybrid_aggressive = parseFloat(angles[2]);
    short_term_debt = parseFloat(angles[3]);
    equity_largecap = parseFloat(angles[4]);
    equity_midcap = parseFloat(angles[5]);
    equity_large_midcap = parseFloat(angles[6]);
    equity_multicap = parseFloat(angles[7]);
    equity_smallcap = parseFloat(angles[8]);
	
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
		if(current_amount <= 4000)
		{
			check_count = 1;
		}else if(current_amount <= 10000)
		{
			check_count = 2;
		}else if(current_amount <= 15000)
		{
			check_count = 3;
		}else if(current_amount <= 25000)
		{
			check_count = 4;
		}else if(current_amount <= 35000)
		{
			check_count = 5;
		}else if(current_amount <= 50000)
		{
			check_count = 6;
		}else if(current_amount <= 75000)
		{
			check_count = 7;
		}else if(current_amount > 75000)
		{
			check_count = 8;
		}
		if(count > check_count)
		{
			var change_arr = [0, 0, 0, 0, 0, 0, 0, 0, 0];
			change_arr[0] = equity_smallcap;
			change_arr[1] = equity_midcap;
			change_arr[2] = equity_multicap;
			change_arr[3] = equity_large_midcap;
			change_arr[4] = equity_largecap;
			change_arr[5] = hybrid_aggressive;
			change_arr[6] = hybrid_conservative;
			change_arr[7] = short_term_debt;
			change_arr[8] = hybrid_arbitrage;
			
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
			
			equity_smallcap = parseFloat(change_arr[0]);
			equity_midcap = parseFloat(change_arr[1]);
			equity_multicap = parseFloat(change_arr[2]);
			equity_large_midcap = parseFloat(change_arr[3]);
			equity_largecap = parseFloat(change_arr[4]);
			hybrid_aggressive = parseFloat(change_arr[5]);
			hybrid_conservative = parseFloat(change_arr[6]);
			short_term_debt = parseFloat(change_arr[7]);
			hybrid_arbitrage = parseFloat(change_arr[8]);
		}
	}

	var change_arr = [0, 0, 0, 0, 0, 0, 0, 0, 0];
	change_arr[0] = hybrid_arbitrage;
	change_arr[1] = short_term_debt;
	change_arr[2] = hybrid_conservative;
	change_arr[3] = hybrid_aggressive;
	change_arr[4] = equity_largecap;
	change_arr[5] = equity_large_midcap;
	change_arr[6] = equity_multicap;
	change_arr[7] = equity_midcap;
	change_arr[8] = equity_smallcap;
	
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
	
	hybrid_arbitrage = parseFloat(change_arr[0]);
	short_term_debt = parseFloat(change_arr[1]);
	hybrid_conservative = parseFloat(change_arr[2]);
	hybrid_aggressive = parseFloat(change_arr[3]);
	equity_largecap = parseFloat(change_arr[4]);
	equity_large_midcap = parseFloat(change_arr[5]);
	equity_multicap = parseFloat(change_arr[6]);
	equity_midcap = parseFloat(change_arr[7]);
	equity_smallcap = parseFloat(change_arr[8]);
	
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
			var scheme_name = schemePerformances_array[i].scheme_amfi;
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
			html += "<td id='txt_category_"+i+"'>" + category + "</td>";
			html += "<td id='txt_category_"+i+"'>" + returns_abs_1year + "</td>";
			html += "<td id='txt_category_"+i+"'>" + returns_cmp_3year + "</td>";
			html += "<td id='txt_category_"+i+"'>" + returns_cmp_5year + "</td>";
			html += "<td id='txt_category_"+i+"'>" + returns_cmp_10year + "</td>";
			html += "<td id='txt_category_"+i+"'>" + returns_cmp_inception + "</td>";
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
		var sch_category = $("#txt_category_"+id).html();
		$("#span_scheme_"+id).html('<span id="span_scheme_sp_'+id+'">' +scheme + ' </span><br> <a style="font-size: 10px;" href="javascript:;" onclick="schemeChange('+id+', &quot;'+ sch_category +'&quot;)">Change Scheme</a>');
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
	
	hybrid_arbitrage = parseFloat(hybrid_arbitrage);
	short_term_debt = parseFloat(short_term_debt);
	hybrid_conservative = parseFloat(hybrid_conservative);
	hybrid_aggressive = parseFloat(hybrid_aggressive);
	equity_largecap = parseFloat(equity_largecap);
	equity_large_midcap = parseFloat(equity_large_midcap);
	equity_multicap = parseFloat(equity_multicap);
	equity_midcap = parseFloat(equity_midcap);
	equity_smallcap = parseFloat(equity_smallcap);
	
	var cat_rolling_array = new Array();
	if(hybrid_arbitrage > 0)
	{
		cat_rolling_array.push("Hybrid: Arbitrage");	
	}
	if(short_term_debt > 0)
	{
		cat_rolling_array.push("Debt: Short Duration");
	}
	if(hybrid_conservative > 0)
	{
		cat_rolling_array.push("Hybrid: Conservative");	
	}
	if(hybrid_aggressive > 0)
	{
		cat_rolling_array.push("Hybrid: Aggressive");	
	}
	if(equity_largecap > 0)
	{
		cat_rolling_array.push("Equity: Large Cap");	
	}
	if(equity_large_midcap > 0)
	{
		cat_rolling_array.push("Equity: Large and Mid Cap");	
	}
	if(equity_multicap > 0)
	{
		cat_rolling_array.push("Equity: Multi Cap");	
	}
	if(equity_midcap > 0)
	{
		cat_rolling_array.push("Equity: Mid Cap");	
	}
	if(equity_smallcap > 0)
	{
		cat_rolling_array.push("Equity: Small Cap");	
	}
	
	var loop_count = 0;
	var html = "";
	var total_percentage = 0;
	var total_amount = 0;
	var last_category_flag = false;
	
	for(k=0;k<cat_rolling_array.length;k++)
    {
		var category = cat_rolling_array[k];
		var count = 0;
		var max_count = 1;
		
		if(k == (cat_rolling_array.length - 1))
		{
			last_category_flag = true;
		}
		
		if(category == "Hybrid: Arbitrage")
		{
			if(hybrid_arbitrage <= 15)
			{
				max_count = 1;
			}else if(hybrid_arbitrage <= 40)
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
		if(category == "Hybrid: Conservative")
		{
			if(hybrid_conservative <= 15)
			{
				max_count = 1;
			}else if(hybrid_conservative <= 40)
			{
				max_count = 2;
			}else{
				max_count = 3;
			}
		}
		if(category == "Hybrid: Aggressive")
		{
			if(hybrid_aggressive <= 15)
			{
				max_count = 1;
			}else if(hybrid_aggressive <= 40)
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
		if(category == "Equity: Large and Mid Cap")
		{
			if(equity_large_midcap <= 15)
			{
				max_count = 1;
			}else if(equity_large_midcap <= 40)
			{
				max_count = 2;
			}else{
				max_count = 3;
			}
		}
		if(category == "Equity: Multi Cap")
		{
			if(equity_multicap <= 15)
			{
				max_count = 1;
			}else if(equity_multicap <= 40)
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
		if(category == "Equity: Small Cap")
		{
			if(equity_smallcap <= 15)
			{
				max_count = 1;
			}else if(equity_smallcap <= 40)
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
				var scheme_name = schemePerformances_array[i].scheme_amfi;
				var scheme_code = schemePerformances_array[i].scheme_amfi_code;
				var scheme_category = schemePerformances_array[i].scheme_category;
				loop_count++;
				
				if(i == (count - 1))
				{
					scheme_flag = true;
				}
		    	
		    	html += '<div class="scheme_details_div" style="border-bottom: 1px solid #ddd;padding: 10px 0px;">';
		    	html += '<input type="hidden" class="count_id" value="'+loop_count+'" />';
		    	html += '<h4 style="font-size: 14px;color: #333;" id="span_scheme_'+loop_count+'"><span id="span_scheme_sp_'+loop_count+'">' + scheme_name + '</span></h4>';
		    	html += '<input type="hidden" value="'+scheme_code+'" id="span_scheme_code_'+loop_count+'"/>';
		    	//if(i == 0)
		    	{
		    		html += '<div style="padding: 10px 0px;"><b> Category : </b> <span id="txt_category_'+loop_count+'">' + category + '</span><span style="float:right;text-align:right;"><a style="font-size: 10px;" href="javascript:;" onclick="schemeChange('+loop_count+', \''+category+'\', \''+scheme_code+'\')">Change Scheme</a></span></div>';
		    		
		    		if(category == "Hybrid: Arbitrage")
			        {
		    			var value = hybrid_arbitrage / count;
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
		    			
		    			var percent = numbersWithComma(((parseFloat(value1) * 100) / parseFloat(goal_based_amount)).toFixed(2)) + "%";
		    			html += '<span style="text-align: right;float: right;"><b> Amount : </b> <i class="fa fa-inr"></i> <span id="txt_allocation_amount_'+loop_count+'">'+ numbersWithComma(value1.toFixed(0)) + '</span></span>';
		    			html += '<span id="txt_allocation_percent_1"><b> Allocation : </b> '+ percent +' </span>';
			        	
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
		    			
		    			var percent = numbersWithComma(((parseFloat(value1) * 100) / parseFloat(goal_based_amount)).toFixed(2)) + "%";
		    			html += '<span style="text-align: right;float: right;"><b> Amount : </b> <i class="fa fa-inr"></i> <span id="txt_allocation_amount_'+loop_count+'">'+ numbersWithComma(value1.toFixed(0)) + '</span></span>';
		    			html += '<span id="txt_allocation_percent_1"><b> Allocation : </b> '+ percent +' </span>';
			        }else if(category == "Hybrid: Conservative")
			        {
			        	var value = hybrid_conservative / count;
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
		    			
		    			var percent = numbersWithComma(((parseFloat(value1) * 100) / parseFloat(goal_based_amount)).toFixed(2)) + "%";
		    			html += '<span style="text-align: right;float: right;"><b> Amount : </b> <i class="fa fa-inr"></i> <span id="txt_allocation_amount_'+loop_count+'">'+ numbersWithComma(value1.toFixed(0)) + '</span></span>';
		    			html += '<span id="txt_allocation_percent_1"><b> Allocation : </b> '+ percent +' </span>';
			        }else if(category == "Hybrid: Aggressive")
			        {
			        	var value = hybrid_aggressive / count;
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
		    			
		    			var percent = numbersWithComma(((parseFloat(value1) * 100) / parseFloat(goal_based_amount)).toFixed(2)) + "%";
		    			html += '<span style="text-align: right;float: right;"><b> Amount : </b> <i class="fa fa-inr"></i> <span id="txt_allocation_amount_'+loop_count+'">'+ numbersWithComma(value1.toFixed(0)) + '</span></span>';
		    			html += '<span id="txt_allocation_percent_1"><b> Allocation : </b> '+ percent +' </span>';
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
			        	
		    			var percent = numbersWithComma(((parseFloat(value1) * 100) / parseFloat(goal_based_amount)).toFixed(2)) + "%";
		    			html += '<span style="text-align: right;float: right;"><b> Amount : </b> <i class="fa fa-inr"></i> <span id="txt_allocation_amount_'+loop_count+'">'+ numbersWithComma(value1.toFixed(0)) + '</span></span>';
		    			html += '<span id="txt_allocation_percent_1"><b> Allocation : </b> '+ percent +' </span>';
			        }else if(category == "Equity: Large and Mid Cap")
			        {
			        	var value = equity_large_midcap / count;
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
		    			
		    			var percent = numbersWithComma(((parseFloat(value1) * 100) / parseFloat(goal_based_amount)).toFixed(2)) + "%";
		    			html += '<span style="text-align: right;float: right;"><b> Amount : </b> <i class="fa fa-inr"></i> <span id="txt_allocation_amount_'+loop_count+'">'+ numbersWithComma(value1.toFixed(0)) + '</span></span>';
		    			html += '<span id="txt_allocation_percent_1"><b> Allocation : </b> '+ percent +' </span>';
			        }else if(category == "Equity: Multi Cap")
			        {
			        	var value = equity_multicap / count;
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
			        	
		    			var percent = numbersWithComma(((parseFloat(value1) * 100) / parseFloat(goal_based_amount)).toFixed(2)) + "%";
		    			html += '<span style="text-align: right;float: right;"><b> Amount : </b> <i class="fa fa-inr"></i> <span id="txt_allocation_amount_'+loop_count+'">'+ numbersWithComma(value1.toFixed(0)) + '</span></span>';
		    			html += '<span id="txt_allocation_percent_1"><b> Allocation : </b> '+ percent +' </span>';
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
		    			
		    			var percent = numbersWithComma(((parseFloat(value1) * 100) / parseFloat(goal_based_amount)).toFixed(2)) + "%";
		    			html += '<span style="text-align: right;float: right;"><b> Amount : </b> <i class="fa fa-inr"></i> <span id="txt_allocation_amount_'+loop_count+'">'+ numbersWithComma(value1.toFixed(0)) + '</span></span>';
		    			html += '<span id="txt_allocation_percent_1"><b> Allocation : </b> '+ percent +' </span>';
			        }else if(category == "Equity: Small Cap")
			        {
			        	var value = equity_smallcap / count;
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
		    			
		    			var percent = numbersWithComma(((parseFloat(value1) * 100) / parseFloat(goal_based_amount)).toFixed(2)) + "%";
		    			html += '<span style="text-align: right;float: right;"><b> Amount : </b> <i class="fa fa-inr"></i> <span id="txt_allocation_amount_'+loop_count+'">'+ numbersWithComma(value1.toFixed(0)) + '</span></span>';
		    			html += '<span id="txt_allocation_percent_1"><b> Allocation : </b> '+ percent +' </span>';
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
	$("#spn_months").html(mon);
	$("#spn_gain").html(numbersWithComma(growth));
	$("#spn_future_cost").html(numbersWithComma(invested_amount + growth));
	
	
	showPieGraph(invested_amount, growth);
	donutChart();
	//showLineGraph("goal_line_chart","Systematic Investment Plan (SIP) Growth Chart","SIP Amount - Rs. "+numbersWithComma(goal_based_amount)+" for "+years+" years","Invested Amount","Future value",yearArr, principalArr, balanceArr);
	$("html, body").animate({ scrollTop: 175 }, "slow");
	
	initializeTypeAhead();
}

function showPieGraph(invested_amount, growth)
{
	$('#goal_pie_chart').highcharts({
		colors: ['#038bbb', '#f7992c', '#f58634', '#00a85b', '#858688', '#1cb7eb', '#FF9655', '#1686b0', '#6AF9C4'],
	    chart: {
	        type: 'pie',
	        style: {
	        	fontFamily: '"Open Sans", sans-serif',
	            color: "#000000",
	            font: '16px',
	        },
	    },
	    title: {
	        text: 'Break-up of SIP Total Future Value',
	        style: {
	            color: "#000000",
	            font: 'bold 20px'
	        }
	    },
	    credits: {
            enabled: false
        },
	    tooltip: {
	        pointFormat: '<b>{point.percentage:.0f} %</b>'
	    },
	    
	    plotOptions: {
	        pie: {
	        innerSize: 120,
			depth:40,
	        cursor: 'pointer',
	        showInLegend: true,
	        dataLabels: {
	                enabled: true,
	                formatter: function() {
					var val = Math.round(this.percentage*100,0)/100 ;
					return val.toFixed(0)+ ' %';
					},
	                style: {
	  				textShadow: false ,
	   				fontSize: '9px',
					},
					distance: -20,
					color:'white',
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
	hybrid_arbitrage = parseFloat(hybrid_arbitrage);
	short_term_debt = parseFloat(short_term_debt);
	hybrid_conservative = parseFloat(hybrid_conservative);
	hybrid_aggressive = parseFloat(hybrid_aggressive);
	equity_largecap = parseFloat(equity_largecap);
	equity_large_midcap = parseFloat(equity_large_midcap);
	equity_multicap = parseFloat(equity_multicap);
	equity_midcap = parseFloat(equity_midcap);
	equity_smallcap = parseFloat(equity_smallcap);
	
	var category_array = new Array();
	if(hybrid_arbitrage > 0)
	{
		var arr = new Array();
		arr.push('Hybrid: Arbitrage');
		arr.push(hybrid_arbitrage);
		category_array.push(arr);
	}
	if(short_term_debt > 0)
	{
		var arr = new Array();
		arr.push('Debt: Short Duration');
		arr.push(short_term_debt);
		category_array.push(arr);
	}
	if(hybrid_conservative > 0)
	{
		var arr = new Array();
		arr.push('Hybrid: Conservative');
		arr.push(hybrid_conservative);
		category_array.push(arr);
	}
	if(hybrid_aggressive > 0)
	{
		var arr = new Array();
		arr.push('Hybrid: Aggressive');
		arr.push(hybrid_aggressive);
		category_array.push(arr);
	}
	if(equity_largecap > 0)
	{
		var arr = new Array();
		arr.push('Equity: Large Cap');
		arr.push(equity_largecap);
		category_array.push(arr);
	}
	if(equity_large_midcap > 0)
	{
		var arr = new Array();
		arr.push('Equity: Large and Mid Cap');
		arr.push(equity_large_midcap);
		category_array.push(arr);
	}
	if(equity_multicap > 0)
	{
		var arr = new Array();
		arr.push('Equity: Multi Cap');
		arr.push(equity_multicap);
		category_array.push(arr);
	}
	if(equity_midcap > 0)
	{
		var arr = new Array();
		arr.push('Equity: Mid Cap');
		arr.push(equity_midcap);
		category_array.push(arr);
	}
	if(equity_smallcap > 0)
	{
		var arr = new Array();
		arr.push('Equity: Small Cap');
		arr.push(equity_smallcap);
		category_array.push(arr);
	}
	
	$('#dount_chart').highcharts({
		colors: ['#FF8900', '#DDDF00', '#24CBE5', '#64E572', '#FF9655', '#FFF263', '#6AF9C4'],
        chart: {
            type: 'pie',
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
        tooltip: {
            pointFormat: '{point.percentage:.0f}%'
        },
        legend: {
            enabled: true,
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
		colors: ['#038bbb', '#f7992c', '#f58634', '#00a85b', '#858688', '#1cb7eb', '#FF9655', '#1686b0', '#6AF9C4'],
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
	var existing_scheme_sip_array = new Array();
	var scheme_array = new Array();
	var category_array = new Array();
	var percentage_array = new Array();
	var amount_array = new Array();
	
	$(".scheme_details_div").each(function()
	{
		var stuff = $(this).html();
		var count = $(stuff).val();
		var scheme = $("#td_scheme_"+count).html();
		var scheme_code = $("#td_scheme_code_"+count).val();
		var folio_no = $("#td_folio_"+count).html();
		var scheme_sip = $("#span_scheme_sip_amount_"+count).html();
		
		if(scheme_sip == undefined || scheme_sip == "undefined" || scheme_sip == null || scheme_sip == "")
		{
			scheme_sip = "0";
		}
		scheme_sip = scheme_sip.replace(/,/g,'');
		
		existing_scheme_array.push(scheme);
		existing_scheme_code_array.push(scheme_code);
		existing_folio_array.push(folio_no);
		existing_scheme_sip_array.push(scheme_sip);		
	});
		
	$(".scheme_details_div").each(function()
	{
		  var stuff = $(this).html();
		  var count = $(stuff).val();
		  var scheme_name = $("#span_scheme_sp_"+count).html();
	      var scheme_code = $("#span_scheme_code_"+count).val();
	      var category = $("#txt_category_"+count).html();
	      var allocation_percentage = 0;
	      var allocation_amount = $("#txt_allocation_amount_"+count).html();
	      allocation_amount = allocation_amount.replace(/,/g,'');
	      
	      scheme_array.push(scheme_name);
	      category_array.push(category);
	      percentage_array.push(allocation_percentage);
	      amount_array.push(allocation_amount);
	});
	
	if(existing_folio_array.length > 0)
	{
		sip_amount = remaining_sip_amount.toFixed(2);
	}
	
	if(goal_type == 2 && scheme_array.length == 0)
	{
		swal({title:"" , text:"Please select the scheme and save your goal."});
		return false;
	}
	
	var existing_folio_str = existing_folio_array.toString();
	var existing_scheme_str = existing_scheme_array.toString();
	var existing_scheme_code_str = existing_scheme_code_array.toString();
	var existing_scheme_sip_str = existing_scheme_sip_array.toString();
	var scheme_array_str = scheme_array.toString();
	var category_array_str = category_array.toString();
	var percentage_array_str = percentage_array.toString();
	var amount_array_str = amount_array.toString();

	$.LoadingOverlay("show");
	
	$.ajaxSetup({async:true});
	$.post("/goal/saveGoal", {target_goal : "" + target_goal + "",goal_name : "" + goal_name + "",amount : "" + amount + "",
		horizon : "" + horizon + "",inflation : "" + inflation + "",risk : "" + risk + "",target_amount : "" + target_amount + "",sip_amount : "" + sip_amount + "",
		scheme_array : "" + scheme_array_str + "",category_array : "" + category_array_str + "",percentage_array : "" + percentage_array_str + "",
		amount_array : "" + amount_array_str + "",existing_folio : "" + existing_folio_str + "",existing_scheme : "" + existing_scheme_str + "",
		existing_scheme_code : "" + existing_scheme_code_str + "",existing_scheme_sip : "" + existing_scheme_sip_str + ""}, function(data)
    {
			$.LoadingOverlay("hide");
			
		var result = $.trim(data);
  		var obj = jQuery.parseJSON(result);
   		if(obj.status == 400)
   		{  
          	swal({title:"",text:"" +obj.msg});
   			return false;
   		}
   		
		swal({title:"",text:"Your goal based investement plan successfully saved."},
		function(){
			top.location = "https://www.meetTruuegro.com/bse/bse-goal-based-sip-investment?userid="+userid+"&id="+obj.msg;
		});
		return;
		
    },'text');
}
function showLogin(goal_type)
{
	var existing_folio_array = new Array();
	var existing_scheme_array = new Array();
	var existing_scheme_code_array = new Array();
	var existing_scheme_sip_array = new Array();
	var scheme_array = new Array();
	var category_array = new Array();
	var percentage_array = new Array();
	var amount_array = new Array();
	
	$(".scheme_details_div").each(function()
	{
	    var stuff = $(this).html();
		var count = $(stuff).val();
		var scheme = $("#td_scheme_"+count).html();
		var scheme_code = $("#td_scheme_code_"+count).val();
		var folio_no = $("#td_folio_"+count).html();
		var scheme_sip = $("#span_scheme_sip_amount_"+count).html();
		
		if(scheme_sip == undefined || scheme_sip == "undefined" || scheme_sip == null || scheme_sip == "")
		{
			scheme_sip = "0";
		}
		scheme_sip = scheme_sip.replace(/,/g,'');
		
		existing_scheme_array.push(scheme);
		existing_scheme_code_array.push(scheme_code);
		existing_folio_array.push(folio_no);
		existing_scheme_sip_array.push(scheme_sip);		
	});
		
	$(".scheme_details_div").each(function()
	{
		  var stuff = $(this).html();
		  var count = $(stuff).val();
		  var scheme_name = $("#span_scheme_"+count).html();
	      var category = $("#txt_category_"+count).html();
	      var allocation_percentage = 0;
	      var allocation_amount = $("#txt_allocation_amount_"+count).html();
	      allocation_amount = allocation_amount.replace(/,/g,'');
	      
	      scheme_array.push(scheme_name);
	      category_array.push(category);
	      percentage_array.push(allocation_percentage);
	      amount_array.push(allocation_amount);
	});
	
	if(existing_folio_array.length > 0)
	{
		sip_amount = remaining_sip_amount.toFixed(2);
	}
	
	if(goal_type == 2 && scheme_array.length == 0)
	{
		alert("Please select the scheme and save your goal.");
		return false;
	}
	
	var existing_folio_str = existing_folio_array.toString();
	var existing_scheme_str = existing_scheme_array.toString();
	var existing_scheme_code_str = existing_scheme_code_array.toString();
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
		existing_scheme_code : "" + existing_scheme_code_str + "",existing_scheme_sip : "" + existing_scheme_sip_str + ""}, function(data)
    {
			$.LoadingOverlay("hide");
			
		var result = $.trim(data);
  		var obj = jQuery.parseJSON(result);
   		if(obj.status == 400)
   		{  
          	swal({title:"",text:"" +obj.msg});
   			return false;
   		}
   		
   		top.location = "https://www.meetTruuegro.com?authcode="+$.trim(obj.msg);
		return;
		
    },'text');
}
function showGraph(risk_value)
{
    var gradient1 = {
            type: 'linearGradient',
            x0: 0,
            y0: 0.5,
            x1: 1,
            y1: 0.5,
            colorStops: [{ offset: 0, color: '#C5F80B' },
                         { offset: 1, color: '#6B8901'}]
        };

        var gradient2 = {
            type: 'linearGradient',
            x0: 0.5,
            y0: 0,
            x1: 0.5,
            y1: 1,
            colorStops: [{ offset: 0, color: '#FF3366' },
                         { offset: 1, color: '#B2183E'}]
        };

        var anchorGradient = {
            type: 'radialGradient',
            x0: 0.35,
            y0: 0.35,
            r0: 0.0,
            x1: 0.35,
            y1: 0.35,
            r1: 1,
            colorStops: [{ offset: 0, color: '#4F6169' },
                         { offset: 1, color: '#252E32'}]
        };

        $('#jqRadialGauge').jqRadialGauge({
            background: '#dcf1f6',
			
            border: {
                lineWidth: 6,
                strokeStyle: '#76786A',
                padding: 16
            },
            shadows: {
                enabled: true
            },
            anchor: {
                visible: true,
                fillStyle: anchorGradient,
                radius: 0.10
            },
            tooltips: {
                disabled: false,
                highlighting: true
            },
            animation: {
                duration: 1
            },
            scales: [
                     {
                         minimum: 0,
                         maximum: 100,
                         startAngle: 180,
                         endAngle: 360,
                         majorTickMarks: {
                             length: 12,
                             lineWidth: 2,
                             interval: 10,
                             offset: 0.84
                         },
                         minorTickMarks: {
                             visible: true,
                             length: 8,
                             lineWidth: 2,
                             interval: 2,
                             offset: 0.84
                         },
                         labels: {
                             orientation: 'horizontal',
                             interval: 10,
                             offset: 1.00
                         },
                         needles: [
                                    {
                                        value: risk_value,
                                        type: 'pointer',
                                        outerOffset: 0.8,
                                        mediumOffset: 0.7,
                                        width: 10,
                                        fillStyle: '#252E32'
                                    }
                                  ],
                         ranges: [
                                    {
                                        outerOffset: 0.82,
                                        innerStartOffset: 0.76,
                                        innerEndOffset: 0.68,
                                        startValue: 40,
                                        endValue: 80,
                                        fillStyle: gradient1
                                    },
                                    {
                                        outerOffset: 0.82,
                                        innerStartOffset: 0.68,
                                        innerEndOffset: 0.60,
                                        startValue: 80,
                                        endValue: 100,
                                        fillStyle: gradient2
                                    }
                                 ]
                     }
                    ]
        });

        $('#jqRadialGauge').bind('tooltipFormat', function (e, data) {

            var tooltip = '<b>Element: ' + data.elementType + '</b> ' + '<br />';

            switch (data.elementType) {

                case 'needle':
                    tooltip += 'Value: ' + data.value;
                    break;
                case 'range':
                    tooltip += 'Start Value: ' + data.startValue + '<br/>End Value: ' + data.endValue;
            }

            return tooltip;
        });
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
	$.post("/goal/getRiskProfile", {answer1 : answer1, answer2 : answer2, answer3 : answer3, answer4 : answer4, answer5 : answer5, answer6 : answer6}, function(data)
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

<!--================Breadcrumb Area =================-->
<section class="breadcrumb_area marginTop135">
<div class="breadcrumb_bottom">
	<div class="container">
	<ul class="nav">
		<li><a href="/home">Home</a></li>
		<li class="active"><a href="#">Wealth Creation Goal</a></li>
	</ul>
	</div>
</div>
</section>
<!--================End Breadcrumb Area =================-->
        
<!--================Product Details Area =================-->
<section class="product_details_area" style="padding-top:30px;">
<div class="container goal_creation">
<div class="row">

<div class="robo1 ques_1">  

<div class="row"> 
<div class="col-md-12 col-sm-12">
<div class="title-v1">
	<h1 class="text-center">Wealth Creation Goal</h1>
</div>
</div>
</div>

<div class="row" style="margin-top:30px;">  

<div class="col-md-8 col-sm-12 offset-lg-3" style="margin:0 auto; float:none; text-align:center;">
<div class="row pt4">
<div class="col-md-12 form-inline">
<div class="row" style="margin:0px;margin-bottom:5%;">
<div class="col-md-12" style="float:none;margin:0 auto;">
<p>You are <input id="txt_current_age" maxlength="2" class="form-control form-control-sm ml-2 w-15 w-custom-56 roboInput textInputRadius" style="width:8%" value="" type="text"> 
 years old now you require &nbsp;<i class="fa fa-inr"></i> 
<input id="txt_amount" maxlength="13" class="form-control form-control-sm ml-2 w-15 w-custom-56 roboInput textInputRadius number" style="width:20%" value="" type="text" onchange="addCommas()">
 at today's value after 
<input id="txt_years" maxlength="2" class="form-control form-control-sm ml-2 w-15 w-custom-56 roboInput textInputRadius" style="width:7%" value="" type="text">
 years for becoming wealthy.</p> 
</div>
</div>
</div>
</div>

<div class="row pt4">
<div class="col-md-12 form-inline">
<div class="row" style="margin:0px;margin-top:3%;margin-bottom:5%">
<div class="col-md-12" style="float:none;margin:0 auto;">
<p>You assume the inflation to be 
<input id="txt_inflation" maxlength="2" class="form-control form-control-sm ml-2 w-15 w-custom-56 roboInput textInputRadius" style="width:6%" value="" type="text">
 % and You can take 
<select id="sel_risk" class="form-control form-control-sm w-25 w-custom-50 ml-2 roboInput textInputRadius" onchange="riskProfileChange()" style="text-align:center;text-align-last:center;width:50% !important;">
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

<!-- <div class="row pt4">
<div class="col-md-12 form-inline">
<div class="row" style="margin:0px;margin-top:3%;margin-bottom:5%">
<div class="col-md-12" style="float:none;margin:0 auto;">
<label>You can take 
<select id="sel_risk" class="form-control form-control-sm w-25 w-custom-50 ml-2 roboInput textInputRadius" onchange="riskProfileChange()" style="text-align:center;text-align-last:center;width:50% !important;">
<option value="Conservative">Conservative</option>
<option value="Moderately Conservative">Moderately Conservative</option>
<option value="Moderate">Moderate</option>
<option value="Moderately Aggressive">Moderately Aggressive</option>
<option value="Aggressive">Aggressive</option>
<option value="">Check Your Risk Profile</option>
</select> risk with your investments.</label>
</div>
</div>
</div>
</div> -->

<div class="row pt4" style="margin:0px; margin-top: 2%;">	  
<div class="col-md-12 form-inline" style="float:none;margin:0 auto;">
<label>You would like to name this goal as  
<input  maxlength="25" class="form-control form-control-sm ml-2 w-15 w-custom-56 roboInput goal_name number" style="width:20%;" value="" type="text">
</label>
</div>
</div>

<div class="row pt4">
<div class="col-md-12 text-center py-5">	
<button class="btn btn-primary btn-lg btnCol" style="margin:0 auto; float: none;" onclick="checkResult()">Build My Wealth Creation Goal</button>
</div>
</div>

</div> 
</div>
</div>

<div class="robo2">

	<div class="container calc_div body-color" id="step1">	
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
				  <p class="textColor font-size-19 question"> Describe your knowledge of investment:</p>
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
				  &nbsp;Goods
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
		 <button class="btn btn-primary col-lg-custom btn-md btnCol col-lg-border-custom" onclick="goToStep1()">Back</button>
		 <button class="btn btn-info col-lg-custom  btn-md btnCol ml-2" onclick="show_ques_div(1)">Continue</button>
		 </div>
	  </div>
	 </div>
	</div>
	</div>
	
	<div class="container calc_div"  id="step2">
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
	  					&nbsp;Most concerned about your investment value
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
					 <button class="btn btn-primary col-lg-custom btn-md btnCol col-lg-border-custom" onclick="hide_div(2)">Back</button>
					 <button class="btn btn-info col-lg-custom  btn-md btnCol ml-2" onclick="show_ques_div(2)">Continue</button>
				 </div>
		  	</div>
	  	</div>
 	  </div>
	</div>
	
	<div class="container calc_div" id="step3">
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
		  				<p class="textColor font-size-19 question">If the market lost 25% in the last few months, and your investments also suffered the same - what would be your first impulse?</p>
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
  							&nbsp;Will wait and rake no action immediately
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
						 <button class="btn btn-primary col-lg-custom btn-md btnCol col-lg-border-custom" onclick="hide_div(3)">Back</button>
						 <button class="btn btn-info col-lg-custom  btn-md btnCol ml-2" onclick="show_ques_div(3)">Continue</button>
					 </div>
			  	</div>
	  		</div>
	 	</div>
	</div>
	
	<div class="container calc_div" id="step4">
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
						  <p class="textColor font-size-19 question">Have you ever invested in shares or mutual funds? If yes,for how many years?</p>
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
							  &nbsp;5+years
							  <span class="checkmark"></span>
							</label>
						</div>
					</div>
					 <div class="row py-4">
						  <div class="col-lg-12 text-center pb-4">
							 <button class="btn btn-primary col-lg-custom btn-md btnCol col-lg-border-custom" onclick="hide_div(4)">Back</button>
							 <button class="btn btn-info col-lg-custom  btn-md btnCol ml-2"onclick="show_ques_div(4)">Continue</button>
						 </div>
				  	 </div>
	  			</div>
	 		</div>
	 	</div>
	 	
	<div class="container calc_div" id="step5">
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
		  				<p class="textColor font-size-19 question">To obtain return of more then what you would receive as a bank fixed deposit,you must take risks.</p>
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
  							&nbsp;Strongly Disagree with the Statement
  							<span class="checkmark"></span>
						</label>
						<label class="form-check-label py-3 answer" style="border-top: 1px solid #ddd;">
						  <input type="radio" name="q5" value="2">
						  &nbsp;Disagree with the Satatement
						  <span class="checkmark"></span>
						</label>
						<label class="form-check-label py-3 answer" style="border-top: 1px solid #ddd;">
						  <input type="radio" name="q5" value="3">
						  &nbsp;Agree with the Statement
						  <span class="checkmark"></span>
						</label>
						<label class="form-check-label py-3 answer_last" style="border-top: 1px solid #ddd;border-bottom: 1px solid #ddd;">
						  <input type="radio" name="q5" value="4">
						  &nbsp;Strongly Agree with the Statement
						  <span class="checkmark"></span>
						</label>
					</div>
		   		</div>
				 <div class="row py-4">
					 <div class="col-lg-12 text-center pb-4">
						 <button class="btn btn-primary col-lg-custom btn-md btnCol col-lg-border-custom" onclick="hide_div(5)">Back</button>
						 <button class="btn btn-info col-lg-custom  btn-md btnCol ml-2" onclick="show_ques_div(5)">Continue</button>
					 </div>
				 </div>
	  		</div>
	 	</div>
	</div>
	
	<div class="container calc_div" id="step6">
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
				  	<p class="textColor font-size-19 question">How do react to the idea of investments?</p>
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
						  &nbsp;I ask advice from or relatives.
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
						 <button class="btn btn-primary col-lg-custom btn-md btnCol col-lg-border-custom" onclick="hide_div(6)">Back</button>
						 <button class="btn btn-info col-lg-custom  btn-md btnCol ml-2" onclick="show_ques_div(6)">Continue</button>
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
<h3>Goal Summary</h3>
</div>
</div>
<div style="display:inline-block;">
<div class="text-right">
<a href="javascript:void(0)" onclick="goToStep1()">
<img src="/img/back_img.png" alt="" style="width:40px;" />
</a>
</div>
</div>
</div>
</div>
<div class="row">
	<div class="col-lg-6 col-sm-4 text-center mb-3">
		<div class="box bg-tf p-3">
			<h6><i class="fa fa-inr" aria-hidden="true"></i> <span id="span_invest_today_cost"></span></h6>
			<p>Your Targeted Amount<br>(in today's value)</p>
		</div>
	</div>
	<div class="col-lg-6 col-sm-4 text-center mb-3">
		<div class="box bg-tf p-3">
			<h6><i class="fa fa-inr" aria-hidden="true"></i> <span id="span_invest_future_cost"></span></h6>
			<p>Your Targeted Amount<br>(adjusting for <span class="span_inflation"></span>% inflation)</p>
		</div>
	</div>
	<div class="col-lg-6 col-sm-4 text-center mb-3">
		<div class="box bg-tf p-3">
			<h6><span id="span_no_years"></span></h6>
			<p>Number of Years<br>You Need To Save</p>
			<p></p>
		</div>
	</div>
	<div class="col-lg-6 col-sm-4 text-center mb-3">
		<div class="box bg-tf p-3">
			<h6><i class="fa fa-inr" aria-hidden="true"></i> <span id="span_sip_amt"></span></h6>
			<p>Monthly SIP Investment<br>Required</p>
			<p></p>
		</div>
	</div>
	<div class="col-lg-6 col-sm-4 text-center mb-3">
	<c:choose>
	<c:when test="${accountMap != null}">
		<a href="javascript:void(0)" onclick="showFunds()">
		<div class="box bg-tf p-3 Truuegro3">
			<p class="Truuegro_bold">Are you an existing client?</p>
			<p style="font-size:12px;line-height:15px;margin-top:10px;">If yes, please click here and map your existing investments to this goal</p>
		</div>
		</a>
	</c:when>
	<c:otherwise>
		<a href="/client-login">
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
			<p style="font-size:12px;line-height:15px;margin-top:10px;">Take me to the plan without mapping any existing investments</p>
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
<c:choose>
<c:when test="${accountMap != null}">
	<p>If you wish to link any of the above schemes with this goal, then please check the relevant box/es as given alongside the scheme name.</p>
</c:when>
<c:otherwise>
	<p>If you have an existing portfolio, please click <a href="http://mfportfolio.wealthygain.com">LOGIN</a> to map investments with your Goal.</p>
</c:otherwise>
</c:choose>
</div>
</div>

<div class="row pt-3 existing_div">
<div class="col-lg-12 text-right">
<input type="hidden" value="${folio_list}" id="txt_folio_list" />
<input type="hidden" value="${scheme_code_list}" id="txt_scheme_code_list" />
<button class="btn btn-primary" onclick="goToStep2()">Back</button>
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
<td class="border-top-0">Your targeted Amount (Inflation adjusted <span class="span_inflation">5</span>% per annum)</td>
<td class="border-top-0"> <input type="text" class="form-control form-control-sm fundNamebg" value="" id="txt_goal_amount" disabled="disabled"></td>
</tr>
<tr>
<td>Number of years you need to save </td>
<td><input type="text" class="form-control form-control-sm fundNamebg" value="" id="txt_goal_years" disabled="disabled"></td>
</tr>
<tr class="goal_ques">
<td>Monthly SIP investment required</td>
<td><input type="text" class="form-control form-control-sm fundNamebg" value=" " id="txt_goal_sip_amount"></td>
</tr>
</tbody>
</table>
</div>
</div>

</div>

<div class="row pb-5 pt-3" id="save_goal_div">
<div class="col-lg-12 text-center">
<button class="btn btn-primary" onclick="goToStep2()">Back</button>
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


<div class="row pb-5 pt-3" id="recommended_div">
<div class="col-lg-12 text-right">
<button class="btn btn-primary" onclick="goToStep2()">Back</button>
<button class="btn btn-success ml-2" onclick="calculateDebtAndEquity()">Achieve your Goal on SIP</button>
</div>
</div>

</div>
	 
</div>
</div>

<div class="row">
<div id="new_robo" class="col-md-3">
<div class="robo5">  
<div class="row"> 
<div class="col-md-12 col-sm-12">
<div class="col-md-12 col-sm-12 marginTop30">
<label class="lbl_qu">Your goal in today's value (in <i class="fa fa-inr" aria-hidden="true"></i>)</label>
<input id="txt_amount1" maxlength="13" class="form-control form-control-sm roboInput2" value="" type="text" onchange="addCommas2()">
</div>
<div class="col-md-12 col-sm-12 marginTop30">
<label class="lbl_qu">You need this money after (in Yrs)</label>
<input id="txt_years1" maxlength="2" class="form-control form-control-sm roboInput2" value="" type="text">
</div>
<div class="col-md-12 col-sm-12 marginTop30">
<label class="lbl_qu">Your assumed inflation (in %)</label>
<input id="txt_inflation1" maxlength="2" class="form-control form-control-sm roboInput2" value="" type="text">
</div>
<div class="col-md-12 col-sm-12 marginTop30">
<label class="lbl_qu">Your selected risk profile</label><br>
<input type="radio" id="rdo_con" name="risk_porf" value="Conservative">
<label class="lbl_radio" for="rdo_con">Conservative</label><br>
<input type="radio" id="rdo_mcon" name="risk_porf" value="Moderately Conservative">
<label class="lbl_radio" for="rdo_mcon">Moderately Conservative</label><br>
<input type="radio" id="rdo_mod" name="risk_porf" value="Moderate">
<label class="lbl_radio" for="rdo_mod">Moderate</label><br>
<input type="radio" id="rdo_magg" name="risk_porf" value="Moderately Aggressive">
<label class="lbl_radio" for="rdo_magg">Moderately Aggressive</label><br>
<input type="radio" id="rdo_agg" name="risk_porf" value="Aggressive">
<label class="lbl_radio" for="rdo_agg">Aggressive</label><br>
</div>
<div class="col-md-12 col-sm-12 marginTop30 marginBottom30 text-center">
<button class="btn btn-primary btn-block" onclick="checkResult2()">Apply</button>
</div>
</div>
</div>
</div>
</div>
<div id="old_robo1" class="col-md-9">
<!-- robo5 start here -->
<div class="robo5">
<div class="row">
<div class="col-lg-12" style="padding-top:18px;">
<div class="row" style="margin: 0px;">
	<div id="old_robo4" class="col-md-2">
		<div class="box bg-tf" style="border: 2px solid #2acaff;text-align: center;padding:5px;">
	         <div class="head" style="padding-bottom: 10px;">
	             <span class="result_span">Target Amount</span>
	         </div>
	         <span class="value"><i class="fa fa-inr"></i>  <span id="spn_target_amount"></span> </span>
	     </div>
	</div>
	<div id="old_robo5" class="col-md-2">
		<div class="box bg-tf" style="border: 2px solid #2acaff;text-align: center;padding:5px;">
	         <div class="head" style="padding-bottom: 10px;">
	             <span class="result_span">SIP Amount</span>
	         </div>
	         <span class="value"><i class="fa fa-inr"></i>  <span id="spn_sip_amount"></span> </span>
	     </div>
	</div>
	<div id="old_robo6" class="col-md-2">
		<div class="box bg-tf" style="border: 2px solid #2acaff;text-align: center;padding:5px;">
	         <div class="head" style="padding-bottom: 10px;">
	             <span class="result_span">Total Months</span>
	         </div>
	         <span class="value"><span id="spn_months"></span> </span>
	     </div>
	</div>
	<div id="old_robo7" class="col-md-2">
		<div class="box bg-tf" style="border: 2px solid #2acaff;text-align: center;padding:5px;">
	         <div class="head" style="padding-bottom: 10px;">
	             <span class="result_span">Total Investment</span>
	         </div>
	         <span class="value"><i class="fa fa-inr"></i>  <span id="spn_total_cost"></span> </span>
	     </div>
	</div>
	<div id="old_robo8" class="col-md-2">
		<div class="box bg-tf" style="border: 2px solid #2acaff;text-align: center;padding:5px;">
	         <div class="head" style="padding-bottom: 10px;">
	             <span class="result_span">Total Growth</span>
	         </div>
	         <span class="value"><i class="fa fa-inr"></i>  <span id="spn_gain"></span> </span>
	     </div>
	</div>
	<div id="old_robo9" class="col-md-2">
		<div class="box bg-tf" style="border: 2px solid #2acaff;text-align: center;padding:5px;">
	         <div class="head" style="padding-bottom: 10px;">
	             <span class="result_span">Future Worth</span>
	         </div>
	         <span class="value"><i class="fa fa-inr"></i>  <span id="spn_future_cost"></span> </span>
	     </div>
	</div>
</div>
<div class="row" style="margin-top: 30px;">
<div id="old_robo2" class="col-md-8">
<div class="row" style="border-bottom: 1px solid #ddd;margin: 0px;">
<div class="col-sm-12 col-xs-12">
<div id="goal_pie_chart" class="clear" style="height: 300px; width: 100%;"></div>
</div>
</div>
<div class="row" style="margin-top: 20px;">
<div class="col-sm-12 col-xs-12">
<!-- <div id="goal_line_chart" class="clear" style="display:none;"></div> -->
<div id="dount_chart" class="clear" style="height:370px; width: 100%;"></div>
</div>
</div>
</div>
<div id="old_robo3" class="col-md-4" style="border-left: 1px solid #eee;">
<!-- <div class="row">
<div class="col-md-8 col-sm-8">
<h4 class="textColor">Recommended Portfolio (SIP Amount - Rs.<span class="sip_amt"></span>)</h4>
</div>
<div class="col-md-4 col-sm-4 text-right">
<span class="check_all_btn font-size-14">Select All Schemes</span>
</div>
</div>

<div class="text_center padding100" id="portfolio_spinner_div">
<i class="fa fa-spinner fa-pulse fa-5x" aria-hidden="true"></i>
</div> -->

<div class="portfolio_div">
	 
<div class="row" >
<div class="col-lg-12">
<div class="table-responsive">
<div id="tbl_portfolio_returns" style="width:100%;background-color:#fff;padding-right:15px;"></div>
</div>
</div>
</div>

<div class="row pt-3" style="padding-bottom:30px;">
<c:choose>
<c:when test="${accountMap != null}">
	<div class="col-lg-6" style="padding-right:0px;">
	<button class="btn btn-primary btn-block" onclick="goToStep3()">Back</button>
	</div>
	<div class="col-lg-6">
	<div style="margin-right:15px;">
	<button type="submit" class="btn btn-success btn-block" onclick="saveGoal(2)">Save Your Goal</button>
	</div>
	</div>
</c:when>
<c:otherwise>
	<div class="col-lg-6" style="padding-right:0px;">
	<button class="btn btn-primary btn-block" onclick="goToStep2()">Back</button>
	</div>
	<div class="col-lg-6">
	<div style="margin-right:15px;">
	<button type="submit" class="btn btn-success btn-block" onclick="showLogin(2)">Save Your Goal</button>
	</div>
	</div>
</c:otherwise>
</c:choose>
</div>


</div>
</div>
</div>




</div>
</div>
</div>
<!-- robo5 end here -->
</div>
</div>

</div>
</div>
</section>
<!--================End Product Details Area =================-->

<div id="scheme_name_change_model" class="modal fade" role="dialog">
  <div class="modal-dialog modal-dialog-centered">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
          	<div class="col-md-10">
          		<h4 class="modal-title">Change the Scheme Name</h4>
          	</div>
      </div>
      <div class="modal-body">
        <div class="popup_select_scheme"></div>
      </div>
      <div class="modal-footer">
		<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
		<button class="btn btn-success" type="submit" onclick="changeSchemeName()">Submit</button>
	</div>
    </div>
  </div>
</div>
