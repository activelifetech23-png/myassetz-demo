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
    background: url(../images/button/plus.png) no-repeat scroll 50% 50% rgba(0,0,0,0);
    cursor: pointer;
}
.toggle-open {
    background: url(../images/button/minus.png) no-repeat scroll 50% 50% rgba(0,0,0,0);
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
.even {
	background-color: rgba(0,0,0,0) !important;
}
.member-2:before {
    -webkit-transform: scaleX(1) !important;
    transform: scaleX(1) !important;
}
/********************* Tools and calc end ******************/
</style>

       <script type="text/javascript">
var principal = 0;
var rate = 0;
var period = 0;
var loan_tenure_type = "";
var emi = 0;
var emi1 = 0;
var accountMap = "";

$(document).ready(function(){

	principal = '${loan_amount}';
	rate = '${interest_rate}';
	period = '${loan_tenure}';
	loan_tenure_type = '${loan_tenure_type}';	
	accountMap = '${accountMap}';	

	principal = parseInt(principal);
	rate = parseFloat(rate);
	period = parseFloat(period);
	loan_tenure_type = loan_tenure_type;	
	
	$('#loanamount').val(numbersWithComma(principal));
	$('#loaninterest').val(rate);
	$("input[name=term][value="+loan_tenure_type+"]").attr('checked', true);
	$('#loanterm').val(period);	
	if(loan_tenure_type == "month")
	{
		period = period / 12;
	}
	
	$("#pricipal_slider").slider({
        min: 100000,
        max: 100000000,
        tooltip: "hide",
        step: 1,
        value: principal
	}).on("slideStop", function(slideEvt) {
		$("#loanamount").val(numbersWithComma(slideEvt.value));
		calculateEMI();
	});
	
	$("#interest_slider").slider({
        min: 5,
        max: 20,
        tooltip: "hide",
        step: 0.1,
        value: rate
	}).on("slideStop", function(slideEvt) {
		var value = slideEvt.value;
		$("#loaninterest").val(value.toFixed(1));
		calculateEMI();
	});
	
	$("#month_slider").slider({
        min: 1,
        max: 30,
        tooltip: "hide",
        step: 0.5,
        value: period
	}).on("slideStop", function(slideEvt) {
		var term = slideEvt.value;
		var val = $('input:radio[name=term]:checked').val();
		if(val == "month")
		{
			term = term * 12;
		}
		$( "#loanterm" ).val(term);
		calculateEMI();
	});
	
	$('input.number').change(function() {
		$(this).val(function(index, value) {
			value = value.replace(/,/g,'');
		    return numbersWithComma(value);
		});
	});
	
	calculateEMI();
});

function loanAmountChange()
{
	var loanAmount = $('#loanamount').val();
	loanAmount = loanAmount.replace(/,/g,'');
	$("#pricipal_slider").slider("setValue",loanAmount);
	calculateEMI();
}
function loanInterestChange()
{
	var loanInterest = $('#loaninterest').val();
	$("#interest_slider").slider("setValue", loanInterest);
	calculateEMI();
}
function loanTermChange()
{
	var loanTerm = $('#loanterm').val();
	var val = $('input:radio[name=term]:checked').val();
	if(val == "month")
	{
		loanTerm = loanTerm / 12;
	}
	$("#month_slider").slider("setValue",loanTerm);
	calculateEMI();
}
function termChange()
{
	var period = $('#loanterm').val();
	var val = $('input:radio[name=term]:checked').val();
	if(val == "year")
	{
		period = period / 12;
	}else{
		period = period * 12;
	}
	$('#loanterm').val(period);
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
function calculateEMI()
{
	principal = $('#loanamount').val();
	rate = $('#loaninterest').val();
	period = $('#loanterm').val();
	loan_tenure_type = $('input:radio[name=term]:checked').val();
	
	principal = principal.replace(/,/g, "");
	
	principal = parseInt(principal);
	rate = parseFloat(rate,10);
	period = parseFloat(period,10);
	
	var monthly_emi = 0;
	var total_interest = 0;
	var total_amount = 0;
	
	$.ajaxSetup({async:false});
	$.post("/tools-and-calculators/getEMICalcResult", {loan_amount : "" + principal + "",interest_rate : "" + rate + "",loan_tenure_type : "" + loan_tenure_type + "",loan_tenure : "" + period + ""}, function(data)
    {    
		var result = $.trim(data);
		var obj = jQuery.parseJSON(result);
		
		if(obj.status == 400)
		{
			alert(obj.msg);
			return false;
		}
		monthly_emi = obj.emi;
		total_interest = obj.total_interest;
		total_amount = obj.total_amount;
		
    },'text');
		
	emi = monthly_emi;
	emi1 = monthly_emi;

	if(loan_tenure_type == "year")
	{
		period = period * 12;
	}
	
	$('#res_emi').html(numbersWithComma(emi));
	$('#res_total_interest').html(numbersWithComma(total_interest));
	$('#res_total_amount').html(numbersWithComma(total_amount));
	renderChart(principal, total_interest);
	
	var d = new Date();
	var current_year = d.getFullYear(); 
	var current_month = d.getMonth(); 
	barChartValuesPrepare(current_year,current_month);
} 

function saveResult() 
{	
	
	principal = $('#loanamount').val();
	rate = $('#loaninterest').val();
	period = $('#loanterm').val();
	loan_tenure_type = $('input:radio[name=term]:checked').val();

	principal = parseInt(principal);
	rate = parseFloat(rate,10);
	period = parseFloat(period,10);
	
	var title = "Home Loan Calculator - "+(principal/100000)+" Lakhs home loan for "+period+" yrs with "+rate+"% interest ";
	var url = "/tools-and-calculators/home-loan-emi-calculator?loan_amount="+principal+"&interest_rate="+rate+"&loan_tenure="+period+"&loan_tenure_type="+loan_tenure_type;	
	
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

function barChartValuesPrepare(current_year,current_month)
{
	var str = "";
	var years = (Math.round(period / 12))+1;
	var bal_month = 0;
	var rate_month = (rate / 100) / 12;
	var pr_month = 0;
	var inter_month = 0;
	var pr_year = 0;
	var inter_year = 0;
	var tot_year = 0;
	var bal_year = 0;
	var pr_year_end = 0;
	var inter_year_end = 0;
	var yearNameArr = ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'];
	var yearArr = new Array();
	var principalArr = new Array();
	var interestArr = new Array();
	var balanceArr = new Array();

	str += '<table id="emi_returns" class="table table-striped table-bordered table-hover" cellspacing="0" width="100%"><thead><tr><th>&nbsp;</th><th>Year</th><th>Principal (A)</th><th>Interest (B)</th><th>Total Payment (A + B)</th><th>Balance</th></tr></thead><tbody>';
	
	for(var k=1;k<=years;k++)
	{
		var str1 = '<table id="emi_returns_inside" class="table table-striped table-bordered table-hover" cellspacing="0" width="100%"><tbody>';
		if(k==1)
		{
			for(var m=current_month;m<12;m++)
			{
				inter_month = rate_month * (principal - pr_year);
				inter_month = Math.round(inter_month);
				pr_month = emi - inter_month;
				pr_month = Math.round(pr_month);
				pr_year = pr_year + pr_month;
				inter_year = inter_year + inter_month;
				bal_month = principal - pr_year;
				bal_month = Math.round(bal_month);
				if(bal_month<0)
				{
					bal_month = 0;
				}
				var pr_month_str = numbersWithComma(pr_month);
				var inter_month_str = numbersWithComma(inter_month);
				var emi1_str = numbersWithComma(emi1);
				var bal_month_str = numbersWithComma(bal_month);
				str1 += '<tr><td>&nbsp;</td><td>'+yearNameArr[m]+'</td><td>Rs. '+pr_month_str+'</td><td>Rs. '+inter_month_str+'</td><td>Rs. '+emi1_str+'</td><td>Rs. '+bal_month_str+'</td></tr>';
			}
		}else if(k==years)
		{
			for(var m=0;m<current_month;m++)
			{
				inter_month = rate_month * (principal - pr_year);
				inter_month = Math.round(inter_month);
				pr_month = emi - inter_month;
				pr_month = Math.round(pr_month);
				pr_year = pr_year + pr_month;
				inter_year = inter_year + inter_month;
				bal_month = principal - pr_year;
				bal_month = Math.round(bal_month);
				if(bal_month<0)
				{
					bal_month = 0;
				}
				var pr_month_str = numbersWithComma(pr_month);
				var inter_month_str = numbersWithComma(inter_month);
				var emi1_str = numbersWithComma(emi1);
				var bal_month_str = numbersWithComma(bal_month);
				str1 += '<tr><td>&nbsp;</td><td>'+yearNameArr[m]+'</td><td>Rs. '+pr_month_str+'</td><td>Rs.  '+inter_month_str+'</td><td>Rs. '+emi1_str+'</td><td>Rs.  '+bal_month_str+'</td></tr>';
			}
		}else
		{
			for(var m=0;m<12;m++)
			{
				inter_month = rate_month * (principal - pr_year);
				inter_month = Math.round(inter_month);
				pr_month = emi - inter_month;
				pr_month = Math.round(pr_month);
				pr_year = pr_year + pr_month;
				inter_year = inter_year + inter_month;
				bal_month = principal - pr_year;
				bal_month = Math.round(bal_month);
				if(bal_month<0)
				{
					bal_month = 0;
				}
				var pr_month_str = numbersWithComma(pr_month);
				var inter_month_str = numbersWithComma(inter_month);
				var emi1_str = numbersWithComma(emi1);
				var bal_month_str = numbersWithComma(bal_month);
				str1 += '<tr><td>&nbsp;</td><td>'+yearNameArr[m]+'</td><td>Rs. '+pr_month_str+'</td><td>Rs. '+inter_month_str+'</td><td>Rs. '+emi1_str+'</td><td>Rs.  '+bal_month_str+'</td></tr>';
			}
		}
		str1 += '</tbody></table>';
		bal_year = principal - pr_year;
		var pr_year1 = pr_year - pr_year_end;
		inter_year = inter_year - inter_year_end;
		tot_year = pr_year1 + inter_year;
		if(bal_year<0)
		{
			bal_year = 0;
		}
		yearArr.push(current_year);
		principalArr.push(pr_year1);
		interestArr.push(inter_year);
		balanceArr.push(bal_year);
		
		var oddOrEven = '';
		if(k%2 == 0) {
			oddOrEven = 'even';
		}
		else {
			oddOrEven = 'odd';
		}
		
		var pr_year1_str = numbersWithComma(pr_year1);
		var inter_year_str = numbersWithComma(inter_year);
		var tot_year_str = numbersWithComma(tot_year);
		var bal_year_str = numbersWithComma(bal_year);
		str += '<tr class="'+oddOrEven+'"><td class="toggle" onclick="toggleOpen(this)"><span class="hide">'+current_year+'</span></td><td>'+current_year+'</td><td>Rs.  '+pr_year1_str+'</td><td>Rs. '+inter_year_str+'</td><td>Rs. '+tot_year_str+'</td><td>Rs. '+bal_year_str+'</td></tr>';
		str += '<tr id="month_'+current_year+'"><td colspan="6" class="monthyearwrapper" style="display:none;"><div>'+str1+'</div></td></tr>';
		current_year = current_year + 1;
		pr_year_end = pr_year;
		inter_year_end = inter_year;
	}
	str += '</tbody></table>';
	
	renderBarChart(yearArr,principalArr,interestArr,balanceArr);
	$('#emipaymenttable').html(str);
}
function renderChart(amount,total_interest)
{
	amount = parseFloat(amount);
	total_interest = parseFloat(total_interest);
	
	$('#emipiechart').highcharts({
		 colors: ['#272c4e', '#009bdf', '#FF8900', '#DDDF00', '#24CBE5', '#64E572', 
       '#FF9655', '#FFF263', '#6AF9C4'],
      chart: {
          plotBackgroundColor: null,
          plotBorderWidth: null,
          plotShadow: false
      },
      title: {
          text: ''
      },
      tooltip: {
  	    pointFormat: '{point.percentage:.1f}%'
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
              ['Principal Amount', amount],
              {
                  name: 'Interest Amount',
                  y: total_interest,
                  sliced: true,
                  selected: true
              }
          ]
      }]
  });
}
function tabChange(val)
{
	if(val == 1)
	{
		//document.location = "/tools-and-calculators/home-loan-emi-calculator";
	}else if(val == 2)
	{
		document.location = "/tools-and-calculators/personal-loan-emi-calculator";
	}else if(val == 3)
	{
		document.location = "/tools-and-calculators/car-loan-emi-calculator";
	}else
	{
		document.location = "/tools-and-calculators/education-loan-emi-calculator";
	}
}
function renderBarChart(yearArr,principalArr,interestArr,balanceArr)
{
	$('#emibarchart').highcharts({
        chart: {
            zoomType: 'xy',
            spacingTop: 40
        },
        title: {
            text: '(EMI) Chart',
          	align: 'center',
              y: 0,
              style: {
  				fontSize: '18px',
  				fontWeight: 100
              }
        },
        legend: {
            borderWidth: 1,
            borderRadius: 5,
        },
        credits: {
            enabled: false
        },
        xAxis: [{
        	title: {
                text: 'Year',
            },
            categories: yearArr,
			tickColor: 'black',
	        tickLength: 5,
	        tickWidth: 1,
	        tickPosition: 'outside',
	        lineWidth:1,
	      	lineColor:'black'
        }],
        yAxis: [{ // Primary yAxis
            title: {
                text: 'Balance'
            },
			 labels: {
                //format: '$ {value}'
            },
			min: 0,
		   	tickColor: 'black',
	        tickLength: 5,
	        tickWidth: 1,
	        tickPosition: 'outside',
	        lineWidth:1,
	      	lineColor:'black'
        }, { // Secondary yAxis
            title: {
                text: 'EMI Payment / Year'
            },
            labels: {
                //format: '$ {value}'
            },
            opposite: true,
			min: 0,
			tickColor: 'black',
	        tickLength: 5,
	        tickWidth: 1,
	        tickPosition: 'outside',
	        lineWidth:1,
	      	lineColor:'black'
        }],
        tooltip: {
            shared: true
        },
        legend: {
            layout: 'horizontal',
            align: 'right',
            verticalAlign: 'top',
            floating: true,
            backgroundColor: '#FFFFFF',
			x:0
        },
		plotOptions: {
            column: {
                stacking: 'normal'
            }
        },
        series: [{
            name: 'Principal',
            color: '#2E4484',
            type: 'column',
            yAxis: 1,
            data: principalArr,
            tooltip: {
                valuePrefix: 'Rs. '
            },
			index:1,
        	legendIndex:0

        },
		{
            name: 'Interest',
            color: '#20C7BA',
            type: 'column',
            yAxis: 1,
            data: interestArr,
            tooltip: {
                valuePrefix: 'Rs. '
            },
			index:0,
        	legendIndex:1

        }, 
		{
            name: 'Balance',
            color: '#e41d23',
            type: 'spline',
            data: balanceArr,
            tooltip: {
                valuePrefix: 'Rs. '
            },
			index:2,
        	legendIndex:2
        }]
    });
}
function toggleOpen(parm)
{
	var res = $(parm).hasClass("toggle");
	var year = $(parm).find("span").html();
	console.log(res);
	if(res)
	{
		$(parm).removeClass("toggle");
		$(parm).addClass("toggle-open");
		$('#month_'+year+' td').show();
	}else{
		$(parm).removeClass("toggle-open");
		$(parm).addClass("toggle");
		$('#month_'+year+' td').hide();
	}
}

$(document).ready(function(){
	
    $('#datepicker').datepicker({
        changeMonth: true,
        changeYear: true,
        showButtonPanel: true,
        disableTouchKeyboard:true,
        dateFormat: 'MM yy',
        onClose: function(dateText, inst) { 
            var month = $("#ui-datepicker-div .ui-datepicker-month :selected").val();
            var year = $("#ui-datepicker-div .ui-datepicker-year :selected").val();
            $(this).datepicker('setDate', new Date(year, month, 1));
            initiateChart(year,month);
        },
        /* beforeShow: function() {
        	if ((selDate = $(this).val()).length > 0)
        	{
        		iYear = selDate.substring(selDate.length - 4, selDate.length);
        		iMonth = jQuery.inArray(selDate.substring(0, selDate.length - 5),
        		$(this).datepicker('option', 'monthNames'));
        		$(this).datepicker('option', 'defaultDate', new Date(iYear, iMonth, 1));
        		$(this).datepicker('setDate', new Date(iYear, iMonth, 1));
        	}
        } */
    });
    
   	var monthNames = [ "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" ];
	var currentYear = new Date().getFullYear();
	var currentMonth = new Date().getMonth();
	var stk = monthNames[currentMonth] + " " + currentYear;
	$( "#datepicker" ).val(stk);
	
});

function initiateChart(year,month)
{
	year = parseInt(year);
	month = parseInt(month);
	barChartValuesPrepare(year,month);
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
	var loanamount = $("#loanamount").val();
	var interest = $("#loaninterest").val();
	var period = $("#loanterm").val();
	var emi = $("#res_emi").html();
	var totalinterest = $("#res_total_interest").html();
	var totalamount = $("#res_total_amount").html();
	var val = $('input:radio[name=term]:checked').val();
	if(val == "month")
	{
		period = period / 12;
	}
	loanamount = numbersWithComma(loanamount);
	var calc_url = window.location.href;
	
	if(download_text == "download")
	{
		var url = '<c:url value="/downloadEmiCalcResult" />?loanamount='+loanamount+"&interest="+interest+"&period="+period+"&emi="+emi+"&totalinterest="+totalinterest+"&totalamount="+totalamount+"&url="+calc_url;
		window.location = url;
		
		$('#send_email_model').modal('hide');
        setTimeout(function(){
        	 $("#adv-alert-msg").html("Thanks for download.");
        	 $("#adv-alert").modal('show');
    	},1000);
	}else{
		
		$.ajaxSetup({async:true});
		$.post("/sendEmiCalcResult", {email : ""+email+"",loanamount : ""+loanamount+"",interest : ""+interest+"",period : ""+period+"",emi : ""+emi+"",totalinterest : ""+totalinterest+"",totalamount : ""+totalamount+"",url : ""+ calc_url +""}, function(data)
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
var async = async || [];
async.push(["ready",function (){
    $(".send_email_form").find("input").jqBootstrapValidation(
    {
		preventSubmit: true,
		submitSuccess: function($form, event) {
		    event.preventDefault();
		    
		    var radio_value = $("input[type='radio'][name='inves_calc']:checked").val();
			if(radio_value == undefined)
			{
				$("#adv-alert-msg").html("Please choose Are you an Investor or Advisor?");
			    $("#adv-alert").modal('show');
		   	 	return false;
			}
		    var email = $("#send_email_id").val();
		    if(email == "")
		    {
		   		 $("#adv-alert-msg").html("Please enter email address!");
	        	 $("#adv-alert").modal('show');
		   		 return false;
		    }
		    if(!validateEmail(email))
		    {
		    	$("#adv-alert-msg").html("Please enter valid email address!");
	        	$("#adv-alert").modal('show');
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
	   	        	$("#adv-alert-msg").html("Please enter valid email address!");
		        	$("#adv-alert").modal('show');
	   	       	 	return false;
	   	        }
	   	    }, "text");
		    
		    if(flag == true)
	    	{
		    	return false;
	    	}
		   	
		    var page = "EMI Calculator - "+download_text;
		    
		    $.ajaxSetup({async:false});
			$.post("/subscribeForEmail", {email : "" + email + "", user_type : "" + radio_value + "", page : "" + page + "" }, function(data)
		    {
		    }, "text");
		    
		    init_download(email);
		}
    });
}]);
</script>

    <!-- ========================
       page title 
    =========================== -->
    <section class="page-title page-title-layout5">
      <div class="bg-img"><img src="/images/backgrounds/6.jpg" alt="background"></div>
      <div class="container">
        <div class="row">
          <div class="col-12">
            <h1 class="pagetitle__heading">EMI Calculator</h1>
            <nav>
              <ol class="breadcrumb mb-0">
                <li class="breadcrumb-item"><a href="/">Home</a></li>
                <li class="breadcrumb-item"><a href="/tools-and-calculators/become-a-crorepati">Tools & Calculators</a></li>
                <li class="breadcrumb-item active" aria-current="page">EMI Calculator</li>
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
              <div class="row justify-content-center align-self-center">
					<div class="col-lg-3 col-sm-6">
					   	<div class="member member-1">
					   	<a href="/tools-and-calculators/home-loan-emi-calculator" >
			              <div class="member__info text-center member__info_detail">
			              	<img src="/images/button/home.png" width="100" height="100" class="pb-2" />
			                <h5 class="member__name member_detail">Home Loan</h5>
			              </div><!-- /.member-info -->
			            </a>
			            </div><!-- /.member -->
				   	</div>
				   	<div class="col-lg-3 col-sm-6 ">
					   	<div class="member member-2">
					   	<a href="/tools-and-calculators/personal-loan-emi-calculator">
			              <div class="member__info text-center member__info_detail">
			              	<img src="/images/button/personal.png" width="100" height="100" class="pb-2" />
			                <h5 class="member__name member_detail">Personal Loan</h5>
			              </div><!-- /.member-info -->
			            </a>
			            </div><!-- /.member -->
				   	</div>
				   	<div class="col-lg-3 col-sm-6 ">
					   	<div class="member member-3">
					   	<a href="/tools-and-calculators/car-loan-emi-calculator">
			              <div class="member__info text-center member__info_detail">
			              	<img src="/images/button/car.png" width="100" height="100" class="pb-2" />
			                <h5 class="member__name member_detail">Car Loan</h5>
			              </div><!-- /.member-info -->
			            </a>
			            </div><!-- /.member -->
				   	</div>
				   	<div class="col-lg-3 col-sm-6 ">
					   	<div class="member member-4">
					   	<a href="/tools-and-calculators/education-loan-emi-calculator">
			              <div class="member__info text-center member__info_detail">
			              	<img src="/images/button/education.png" width="100" height="100" class="pb-2" />
			                <h5 class="member__name member_detail"><a href="javascript:void(0);">Education Loan</a></h5>
			              </div><!-- /.member-info -->
			             </a>
			            </div><!-- /.member -->
				   	</div>
				</div>
               	<div class="row">
				   <div class="col-lg-8 col-sm-6">
				   	<div class="row">
			 			<div class="col-md-12 col-sm-12">
				    	<div id="emi">
						<div class="inside_emi" style="margin:0px;">
						<div class="lamount">
						<div class="row">
							<div class="col-lg-8 col-sm-6">
								<div style="float:left;" id="loanamount_label" class="ques">Personal Loan Amount (Rs)</div>
							</div>
							<div class="col-lg-4 col-sm-6">
								<input type="text" value="2500000" id="loanamount" class="number" maxlength="10" onchange="loanAmountChange()" />
							</div>
						</div>
						</div>
						<div style="clear:both;"></div>
						<div id="pricipal_slider" style="margin:0px;width:100%;">
						</div>
						<div class="steps" id="loanamountsteps">	
							<span style="left: 0%;" class="tick">|<br />
							<span class="marker">1 Lakh</span></span><span style="left: 24.24%;" class="tick">|<br />
							<span class="marker">2.5 Crore</span></span><span style="left: 49.49%;" class="tick">|<br />
							<span class="marker">5 Crore</span></span><span style="left: 74.74%;" class="tick">|<br />
							<span class="marker">7 Lakhs</span></span><span style="left: 100%;" class="tick">|<br />
							<span class="marker">10 Crore</span></span>
						</div>
						</div>
						<div class="small_line" style="margin:0px;"></div>
						<div class="inside_emi" style="margin:0px;">
						<div class="sep lint"> 
						<div class="row">
							<div class="col-lg-8 col-sm-6">
								<div style="float:left;" class="ques">Interest Rate (% per annum)</div>
							</div>
							<div class="col-lg-4 col-sm-6">
								<input type="text" value="12.5" id="loaninterest" maxlength="4" onchange="loanInterestChange()" />
							</div>
						</div>
						</div>
						<div style="clear:both;"></div>
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
						</div>
						<div class="small_line" style="margin:0px;"></div>
						<div class="inside_emi" style="margin:0px;">
						<div class="sep lint"> 
						<div class="row">
							<div class="col-lg-8 col-sm-6">
								<div style="float:left;" class="ques">Loan Tenure</div>
							</div>
							<div class="col-lg-4 col-sm-6">
								<input type="text" value="20" id="loanterm" maxlength="4" onchange="loanTermChange()" />
							</div>
							<div id="tenurechoice">
									<input type="radio" name="term" value="year" id="loanyears" onchange="termChange()" checked><label><strong>Years</strong></label>
									<input type="radio" name="term" value="month" id="loanmonths" onchange="termChange()" ><label><strong>Months</strong></label>
								</div>
						</div>
						</div>
						<div style="clear:both;"></div>
						<div id="month_slider" style="margin:0px;"></div>
						<div class="steps" id="loantermsteps">
							<span style="left: 0%;" class="tick">|<br />
							<span class="marker">1</span></span><span style="left: 13.79%;" class="tick">|<br />
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
				   </div>
				</div>
				<div class="row justify-content-center align-self-center">
					<div class="col-lg-4 col-sm-6">
					   	<div class="member mt-40">
			              <div class="member__info text-center member__info_detail">
			                <h5 class="member__name member_detail"><a href="javascript:void(0)">Monthly Payment (EMI)</a></h5>
			                <p class="member__job">&#8377; <span class="text-theme-primary" id="res_emi"></span></p>
			              </div><!-- /.member-info -->
			            </div><!-- /.member -->
				   	</div>
				   	<div class="col-lg-4 col-sm-6">
					   	<div class="member mt-40">
			              <div class="member__info text-center member__info_detail">
			                <h5 class="member__name member_detail"><a href="javascript:void(0);">Total Interest Payable</a></h5>
			                <p class="member__job">&#8377; <span class="text-theme-primary" id="res_total_interest">7,48,99,805<span class="text-theme-primary" id="res_target_wealth"></span></span></p>
			              </div><!-- /.member-info -->
			            </div><!-- /.member -->
				   	</div>
				   	<div class="col-lg-4 col-sm-6">
					   	<div class="member mt-40">
			              <div class="member__info text-center member__info_detail">
			                <h5 class="member__name member_detail"><a href="javascript:void(0);">Total Payment (Principal + Interest)</a></h5>
			                <p class="member__job">&#8377; <span class="text-theme-primary" id="res_total_amount"></span></p>
			              </div><!-- /.member-info -->
			            </div><!-- /.member -->
				   	</div>
				</div>

				<div class="row mt-20">
			   	<div class="col-md-12">  
					<div id="emibarchart"></div>
			   	</div>
			   	</div>
			   	
			   	<div class="row mt-20">
			   	<div class="col-md-12">  
			   		<div class="table-responsive" id="emipaymenttable">
					</div>
			   	</div>
			   	</div>
				
              </div><!-- /.member-info -->
            </div><!-- /.member -->
          </div><!-- /.col-lg-4 -->
        </div> <!-- /.row -->
      </div><!-- /.container -->
    </section><!-- /.Team layout 1  -->