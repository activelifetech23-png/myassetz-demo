<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script src="https://code.highcharts.com/highcharts.js"></script>
<style>
	.page-heading {
	    padding-top: 8rem;
	    padding-bottom: 2rem;
	}
	.marginTop10{
		margin-top: 10px;
		padding-right: 10px;
	}
</style>
<style type="text/css">
#emibarchart {
    float: left;
    height: 400px;
    text-align: center;
    width: 100%;
    border:1px solid #DBDAD7;
    padding:10px;
    margin-top:20px;
}
.row-eq-height {
	  display: -webkit-box;
	  display: -webkit-flex;
	  display: -ms-flexbox;
	  display: flex;
	}
.btn-default {
    background-color: #ffffff;
    border-color: #cccccc;
    color: #333333;
}

.table-responsive{
   font-size: 14px; 
   margin-top: 10px;
} 
.form-group {
    margin-bottom:0px;
}
.margintop20
{
	margin-top:20px;
}
.card{
	padding:20px;
	border-radius:0px;
}
			   .btn-primary {
    background-color: #d90d15;
}
.table td, .table th {

    white-space: nowrap;
    padding:5px !important;
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
/* #result {
    width: 100%;
    max-width: 100%;
    margin-bottom: 20px;
} */
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
</style>

<script type="text/javascript">
function changeText()
{
	var investmentType = $("#ddlInvestmentType option:selected").val();
	if(parseInt(investmentType) == 1)
	{
		$("#txtYear").val("");
		$("#txtInvestAmount").val("");
		$("#ppf_year_row").show();
		$("#result").html("");
		$("#submit_btn_row").show();
		$("#step3").html("");
		$("#txtYear").attr("disabled", false);
		$("#emibarchart").hide();
	}else
	{
		$("#txtYear").val("");
		$("#txtInvestAmount").val("");
		$("#ppf_year_row").hide();
		$("#result").html("");
		$("#submit_btn_row").show();
		$("#step3").html("");
		$("#txtYear").attr("disabled", false);
		$("#emibarchart").hide();
	}
}
function calculateFinalAmount()
{
	var investmentType = $("#ddlInvestmentType option:selected").val();
	if(parseInt(investmentType) == 1)
	{
		var years = $("#txtYear").val();
		if(years == "" || isNaN(years))
		{
			alert("PPF open year cannot be blank or enter valid number format");
			return;
		}
		if(years.length!=4)
		{
			alert("Please enter correct year");
			return false;
		}
		years = parseInt(years);
		if(years < 1980 || years > 2014)
		{
			alert("Please enter year between 1980 to 2014");
			return false;
		}else if(investAmount > 70000 && years < 2011)
		{
			alert("You should not enter more than 70000 limit before 2011");
			return false;
		}
		var investAmount = $("#txtInvestAmount").val();
		if(investAmount == "" || isNaN(investAmount))
		{
			alert("Investment amount cannot be blank or enter valid number format");
			return;
		}
		investAmount = parseInt(investAmount);
		if(investAmount > 150000 || investAmount < 500)
		{
			alert("Investment amount should be greater than 500 and not exceed 1,50,000");
			return;
		}
		calculateInvestment(investAmount, 0);
	}else
	{
		var years = $("#txtYear").val();
		if(years == "" || isNaN(years))
		{
			alert("PPF open year cannot be blank or valid number format");
			return;
		}
		if(years.length!=4)
		{
			alert("Please enter correct year format");
			return false;
		}
		years = parseInt(years);
		if(years < 1980 || years.value > 2014)
		{
			alert("Please enter year between 1980 to 2014");
			return false;
		}else if(investAmount > 70000 && years < 2011)
		{
			alert("You should not enter more than 70000 limit before 2011");
			return false;
		}
		$("#submit_btn_row").hide();
		$("#txtYear").attr("disabled","disabled");
		var str="";	
		str+='<table class="table table-striped table-bordered table-hover" cellspacing="0" width="100%" style="margin-top:0px !important;"><thead><tr><th colspan="3"><div class="text_center">Please enter the amount in each year.</div></th></tr></thead><tbody><tr>';
		var k=0;
		var Yr=new Array();
		Yr[0]=Number(years);
		var current_year = new Date().getFullYear();
		
		for(var y=0;y<16;y++)
		{
			if(Number(Yr[y]+1) > Number(current_year))
			{
				break;
			}
			Yr[y+1]=Number(Yr[y]+1);
		}
		
		for(var i=1;i<6;i++)
		{
			if((Number(Yr[k]) > Number(current_year)) || Yr[k] == undefined)
			{
				continue;
			}
			str+="<tr>";
			for(var j=0;j<3;j++)
			{
				if((Number(Yr[k]) > Number(current_year)) || Yr[k] == undefined)
				{
					str+='<td></td>';
				}else
				{
					var id='txtY'+k;
					str+='<td><div class="form-group"><span class="float-left width50 marginTop10  py-13" id=spnY'+k+'>'+Yr[k]+'</span><input id="'+id+'" maxlength="6" type="text" class="float-left form-control no-radius marginRight5" style="width:180px;" placeholder="Enter the amount"></div></td>';
				}
				k=k+1;
			}
			str+="</tr>";
		}
		str+='<tr><td colspan="3"><div class="text_center"><a onclick="calculateInvestment(500,1)" class="btn btn-primary" href="javascript:void(0)">Submit</a></div></td></tr>';
		str+="</tbody></table>";
		$("#step3").html(str);
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

function numberForamt(num,decimalNum,bolLeadingZero,bolParens,bolCommas)
{
	if(isNaN(parseInt(num)))
	return num;
	var tmpNum=num;
	var iSign=num<0?-1:1;
	tmpNum*=Math.pow(10,decimalNum);
	tmpNum=Math.round(Math.abs(tmpNum))
	tmpNum/=Math.pow(10,decimalNum);
	tmpNum*=iSign;
	var tmpNumStr=new String(tmpNum);
	if(!bolLeadingZero&&num<1&&num>-1&&num!=0)
	if(num>0)
	tmpNumStr=tmpNumStr.substring(1,tmpNumStr.length);
	else
	tmpNumStr="-"+tmpNumStr.substring(2,tmpNumStr.length);
	if(bolCommas&&(num>=1000||num<=-1000))
	{
		var iStart=tmpNumStr.indexOf(".");if(iStart<0)
		iStart=tmpNumStr.length;iStart-=3;
		while(iStart>=1)
		{
			tmpNumStr=tmpNumStr.substring(0,iStart)+","+tmpNumStr.substring(iStart,tmpNumStr.length)
			iStart-=3;
		}
	}
	if(bolParens&&num<0)
	tmpNumStr="("+tmpNumStr.substring(1,tmpNumStr.length)+")";return tmpNumStr;
}
function calculateInvestment(investAmount,value)
{
	var amount_array = new Array();
	if(value == 1)
	{
		var IAmt = new Array();
		var Year = new Array();
		for(var a=0;a<15;a++)
		{
			if($('#txtY'+a).length == 0)
			{
				break;
			}
			var amt = $('#txtY'+a).val();
			var amt_year = $('#spnY'+a).html();
			if(amt == "" || isNaN(amt))
			{
				alert("Investment Amount for the year "+amt_year+" cannot be left blank or enter valid number format");
				return;
			}
			amt = parseInt(amt);
			amt_year = parseInt(amt_year);
			if(amt > 150000 || amt < 500)
			{
				alert("The investment amount for the year "+amt_year+" should be greater than 500 and not exceed 1,50,000");
				return;
			}
			if(amt > 70000 && amt_year < 2011)
			{
				alert("The investment amount for the year "+amt_year+" should be less than 70,000");
				return;
			}
			IAmt[a] = amt;
			Year[a] = amt_year;
			amount_array.push(amt);
		}
	}else
	{
		amount_array.push(investAmount);
	}
	var str = "";
	str+='<table class="table table-striped table-bordered table-hover" cellspacing="0" width="100%" style="margin-top:0px !important;"><thead><tr><th colspan="9"><div class="text_center">Result</div></th></tr><tr><th>Year</th><th>Interest Rate<br>(%)</th><th>Opening Balance<br>(Rs.)</th><th>Annual Investment<br>(Rs.)</th><th>Total Investment<br>(Rs.)</th><th>Interest<br>(Rs.)</th><th>Closing Balance<br>(Rs.)</th><th>Premature Withdrawal<br>Limit (Rs.)</th><th>Loan Possible<br>(Rs.)</th></tr></thead><tbody>';
	
	var years = $("#txtYear").val();
	var current_year = new Date().getFullYear();
	var year_array = new Array();
	var invested_amount_array = new Array();
	var interest_array = new Array();
	var cbal_array = new Array();	
	
	$.ajaxSetup({async:false});
	$.post("/tools-and-calculators/getPPFCalcResult", {ppf_type : "" + value + "",ppf_start_year : "" + years + "",amount_array : "" + amount_array + ""}, function(data)
    {
		var result = $.trim(data);
		var obj = jQuery.parseJSON(result);
		
		if(obj.status == 400)
		{
			alert(obj.msg);
			return false;
		}
		
		var list = obj.list;
		var array = $.makeArray(list);
		
		for(var k=0;k<array.length;k++)
		{
			var year = array[k].year;
			var interest_rate = array[k].interest_rate;
			var opening_balance = array[k].opening_balance;
			var investment_amount = array[k].investment_amount;
			var total_investment_amount = array[k].total_investment_amount;
			var interest = array[k].interest;
			var closeing_balance = array[k].closeing_balance;
			var withdrawal = array[k].withdrawal;
			var loan_value = array[k].loan_value;
			
			if(Number(year) > Number(current_year))
			{
				continue;
			}
			
			year_array.push(year);
			invested_amount_array.push(Number(total_investment_amount.toFixed(0)));
			interest_array.push(Number(interest.toFixed(0)));
			cbal_array.push(Number(closeing_balance.toFixed(0)));	
			
			str+="<tr>";
			if(loan_value == 0)
			{
				loan_value = "--";
			}
			if(withdrawal == 0)
			{
				withdrawal = "--";
			}
			str+="<td>"+year+"</td>";
			str+="<td>"+interest_rate.toFixed(2)+"</td>";
			str+="<td>"+numbersWithComma(parseFloat(opening_balance).toFixed(0))+"</td>";
			str+="<td>"+numbersWithComma(parseFloat(investment_amount).toFixed(0))+"</td>";
			str+="<td>"+numbersWithComma(parseFloat(total_investment_amount).toFixed(0))+"</td>";
			str+="<td>"+numbersWithComma(parseFloat(interest).toFixed(0))+"</td>";
			str+="<td>"+numbersWithComma(parseFloat(closeing_balance).toFixed(0))+"</td>";
			
			if(withdrawal != "--")
			str+="<td>"+numbersWithComma(parseFloat(withdrawal).toFixed(0))+"</td>";
			else
				str+="<td>--</td>";	
			
			if(loan_value != "--")
				str+="<td>"+numbersWithComma(parseFloat(loan_value).toFixed(0))+"</td>";
			else
				str+="<td>--</td>";	
			str+="</tr>";
		}
		
		
    },'text');
	
	str+="</tbody></table>";
	$("#result").html(str);
	
	renderBarChart(year_array,invested_amount_array,interest_array,cbal_array);
	
}
function renderBarChart(yearArr,principalArr,interestArr,balanceArr)
{	
	$("#emibarchart").show();
	$('#emibarchart').highcharts({
        chart: {
            zoomType: 'xy'
        },
        title: {
            text: '',
            align: 'left'
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
                 text: 'Year'
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
                text: 'Closing Balance'
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
                text: 'Total Investment'
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
            name: 'Total Investment',
            color: '#f47f36',
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
            name: 'Growth',
            color: '#262a5a',
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
            name: 'Closing Balance',
            color: '#f58634',
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
</script>
<main>

    <!-- Section: inner-header -->
    <section class="inner-header divider parallax layer-overlay overlay-dark-5" data-bg-img="/images/bg/slide1.jpg">
      <div class="container pt-120 pb-20">
        <!-- Section Content -->
        <div class="section-content">
          <div class="row">
            <div class="col-md-12">
              <h2 class="title text-white">Public Provident Fund (PPF) Calculator</h2>
              <ol class="breadcrumb text-left text-black mt-10">
                <li><a href="#">Home</a></li>
                <li><a href="#">Tools & Calculators</a></li>
                <li class="active text-gray-silver">Become A Crorepati Calculator</li>
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
					<div  id="colMain" class="col-md-12 col-sm-12">

<div class="table-responsive" id="input_table">
   	<table class="table table-striped table-bordered table-hover" cellspacing="0" width="100%" style="margin-top:0px !important;">
   	<tbody>
	<tr class="networth">
		<td style="vertical-align: middle;font-size: 15px;">
		    Choose an option for PPF Investments
		</td>
		<td>
			<div class="form-group">
            <select id="ddlInvestmentType" onchange="changeText()" class="float-left form-control no-radius width220 marginRight5">              
            <option value="1" selected="selected">Fixed Investment</option>
		    <option value="2">Variable Investment</option>
            </select>
          	</div> 
		</td>
	</tr>
	<tr class="networth">
		<td style="vertical-align: middle;font-size: 15px;">In which year did you open your PPF account?</td>
		<td>
			<div class="form-group"> 
            	<input id="txtYear" maxlength="4" type="text" class="float-left form-control no-radius width220 marginRight5 " placeholder="Enter the year eg 2014">
          	</div>
		</td>
	</tr>
	<tr id="ppf_year_row" class="networth">
	    <td style="vertical-align: middle;font-size: 15px;">Enter Annual investment amount (Rs)</td>
	    <td>
	    	<div class="form-group"> 
            	<input id="txtInvestAmount" maxlength="6" type="text" class="float-left form-control no-radius width220 marginRight5" placeholder="Enter the investment amount">
          	</div>
	    </td>
	</tr>
	<tr id="submit_btn_row">
	    <td colspan="2">
	    <div class="text_center">
	    <a onclick="calculateFinalAmount()" class="btn btn-primary" href="javascript:void(0)">Submit</a>
	    </div>
	    </td>
		</tr>
	</tbody>
	</table>
	</div>
	<div class="table-responsive" id="step3"></div>
	<div class="table-responsive" id="result"></div>
	<div id="emibarchart" style="display:none;"></div>
	

</div>
                </div>

                    
                </div>
            </div>
        </section>
        <!-- End Section -->
  </main>