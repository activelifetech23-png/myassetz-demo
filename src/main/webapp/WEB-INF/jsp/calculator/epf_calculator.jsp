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
.text_center{
 text-align:center;
}
.mf_content{
	margin-top: 70px;
    margin-bottom: 50px;
}
.table-responsive{
    font-size: 14px;
    margin-top:10px;
}
.form-group {
    margin-bottom:0px;
}
			   .btn-primary {
    background-color: #d90d15;
}
.margintop20
{
margin-top:20px;
}
.card{
	padding:20px;
	border-radius:0px;
}
.table td, .table th {
    white-space: normal;
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
.btn-default {
    background-color: #ffffff;
    border-color: #cccccc;
    color: #333333;
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
#emibarchart {
    float: left;
    height: 400px;
    text-align: center;
    width: 100%;
    border:1px solid #DBDAD7;
    padding:10px;
    margin-top:20px;
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
function fv(rate, nper, pmt, pv) 
{
    nper = parseFloat(nper);
    pmt = parseFloat(pmt);
    pv = parseFloat(pv);

    if (rate == 0)
    {
        fv_value = -(pv + (pmt * nper));
    }else 
	{
        x = Math.pow(1 + rate, nper);
        fv_value = -(-pmt + x * pmt + rate * x * pv) / rate;
    }
    return fv_value;
}
function calcEPF() 
{
    var age = $('#txtAge').val();
    var RetAge = $('#txtRage').val();
    var EPF = $('#txtEPF').val();
    var EmpC = $('#txtEmpC').val();
    var EmprC = $('#txtEmprC').val();
    var GrthRate = $('#txtGrthRate').val();
    var Rate = $('#txtRate').val();
    var CPF = $('#txtCPF').val();
    
    if(age == "" || isNaN(age))
	{
		alert("Current age cannot be blank or enter valid number format");
		return;
	}
    if(RetAge == "" || isNaN(RetAge))
	{
		alert("Retirement age cannot be blank or enter valid number format");
		return;
	}
    if(EPF == "" || isNaN(EPF))
	{
    	EPF = 0;
	}
    if(EmpC == "" || isNaN(EmpC))
	{
    	alert("Employee contribution per month cannot be blank or enter valid number format");
		return;
	}
    if(EmprC == "" || isNaN(EmprC))
	{
    	alert("Employer contribution per month cannot be blank or enter valid number format");
		return;
	}
   	if(GrthRate == "" || isNaN(GrthRate))
	{
   		GrthRate = 0;
	}
    if(Rate == "" || isNaN(Rate))
	{
    	alert("Rate of interest cannot be blank or enter valid number format");
		return;
	}
    if(CPF == "" || isNaN(CPF))
	{
    	CPF = 0;
	}
	age = Math.round(parseInt(age));
    RetAge = Math.round(parseInt(RetAge));
    EPF = parseFloat(EPF).toFixed(4);
    EmpC = parseFloat(EmpC).toFixed(4);
    EmprC = parseFloat(EmprC).toFixed(4);
    GrthRate = parseFloat(GrthRate).toFixed(4);
    Rate = parseFloat(Rate).toFixed(4);
    CPF = parseFloat(CPF).toFixed(4);

	var current_age = "";
	var opening_epf_balance = "";
	var employee_contribution = "";
	var employer_contribution = "";
	var closing_epf_balance = "";
	var pension_fund_value = "";
	var ageArr = new Array();
    var balanceArr = new Array();   
	var tabl = '<table class="table table-striped table-bordered table-hover" cellspacing="0" width="100%" style="margin-top:0px !important;"><thead><tr><th colspan="9"><div class="text_center">Result</div></th></tr><tr><th>Age</th><th>Opening EPF Balance</th><th>Employee Contribution (p.m.)</th><th>Employer Contribution (p.m.)</th><th>Closing EPF Balance</th><th>Diverted to Pension Fund (Rs. 541 p.m.)</th></tr></thead><tbody>';

    $.ajaxSetup({async:false});
   	$.post("/tools-and-calculators/getEPFCalcResult", {current_age : "" + age + "",retirement_age : "" + RetAge + "",epf_balance : "" + EPF + "",employee_contibution : "" + EmpC + "",employer_contibution : "" + EmprC + "",epf_growth_rate : "" + GrthRate + "",interest_rate : "" + Rate + "",pension_fund_balance : "" + CPF + ""}, function(data)
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
			current_age = array[k].age;
			opening_epf_balance = array[k].opening_epf_balance;
			employee_contribution = array[k].employee_contribution;
			employer_contribution = array[k].employer_contribution;
			closing_epf_balance = array[k].closing_epf_balance;
			pension_fund_value = array[k].pension_fund_value;
			
			tabl = tabl + "<tr><td>" + current_age + "</td><td>" + numbersWithComma(parseFloat(opening_epf_balance).toFixed(0)) + "</td>";
			tabl = tabl + "<td>" + numbersWithComma(parseFloat(employee_contribution).toFixed(0)) + "</td>";
			tabl = tabl + "<td>" + numbersWithComma(parseFloat(employer_contribution).toFixed(0)) + "</td>";
	        tabl = tabl + "<td>" + numbersWithComma(parseFloat(closing_epf_balance).toFixed(0)) + "</td>";
	        tabl = tabl + "<td>" + numbersWithComma(parseFloat(pension_fund_value).toFixed(0)) +"</td></tr>";
	        
	        ageArr.push(current_age);
	        balanceArr.push(Number(closing_epf_balance.toFixed(0)));
		}
   		
       },'text');
   	
   	tabl = tabl + "</tbody></table>";
    $('#result').html(tabl);   	
    renderBarChart(ageArr,balanceArr);
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

function renderBarChart(ageArr,balanceArr)
{	
	$("#emibarchart").show();
	$('#emibarchart').highcharts({
        chart: {
            zoomType: 'xy'
        },
        title: {
            text: 'EPF Growth Chart',
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
                 text: 'Age'
             },
            categories: ageArr,
			tickColor: 'black',
	        tickLength: 5,
	        tickWidth: 1,
	        tickPosition: 'outside',
	        lineWidth:1,
	      	lineColor:'black'
        }],
        yAxis: [{ // Primary yAxis
            title: {
                text: 'Closing EPF Balance'
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
                text: 'Closing EPF Balance'
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
        tooltip: {
        	formatter:function(){
        		var amount_comma = this.y;
        		var amount_comma_separated = amount_comma.toLocaleString();        		
                return 'Age:'+ this.key +'<br>Closing EPF Balance: Rs. '+amount_comma_separated;
                }
        },
        series: [{
            name: 'Closing EPF Balance',
            color: '#f47f36',
            type: 'column',
            yAxis: 1,
            data: balanceArr,            
			index:1,
        	legendIndex:0

        },		
		]
    });	 
}
</script>


  <div class="main-content">
    
    <!-- Section: inner-header -->
    <section class="inner-header divider parallax layer-overlay overlay-dark-5" data-bg-img="/images/bg/slide1.jpg">
      <div class="container pt-120 pb-20">
        <!-- Section Content -->
        <div class="section-content">
          <div class="row">
            <div class="col-md-12">
              <h2 class="title text-white">Employees Provident Fund (EPF) Calculator</h2>
              <ol class="breadcrumb text-left text-black mt-10">
                <li><a href="#">Home</a></li>
                <li><a href="#">Tools & Calculators</a></li>
                <li class="active text-gray-silver">Employees Provident Fund (EPF) Calculator</li>
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
   	<table class="table table-striped table-bordered table-hover" cellspacing="0">
   	<tbody>
	<tr class="child-calc-width">
		<td style="vertical-align: middle;">
		    Your Current Age (in years)
		</td>
		<td>
			<div class="form-group"> 
            	<input id="txtAge" maxlength="2" type="text" class="float-left form-control no-radius width220 marginRight5 input-sm" placeholder="Enter the current age">
          	</div>
		</td>
	</tr>
	<tr id="ppf_year_row" class="child-calc-width">
		<td style="vertical-align: middle;">
		    Your Retirement Age (in years)
		</td>
		<td>
			<div class="form-group"> 
            	<input id="txtRage" maxlength="2" type="text" class="float-left form-control no-radius width220 marginRight5 input-sm" placeholder="Enter the retirementage">
          	</div>
		</td>
	</tr>
	<tr class="child-calc-width">
	    <td style="vertical-align: middle;">
	        <span id="spnInvestText">Your Current EPF Balance (Rs.)</span>
	    </td>
	    <td>
	    	<div class="form-group"> 
            	<input id="txtEPF" maxlength="7" type="text" class="float-left form-control no-radius width220 marginRight5 input-sm" placeholder="Enter the amount">
          	</div>
	    </td>
	</tr>
	<tr class="child-calc-width">
	    <td style="vertical-align: middle;">
	        <span id="spnInvestText">Your Employee Contribution per month (Rs.)</span>
	    </td>
	    <td>
	    	<div class="form-group"> 
            	<input id="txtEmpC" maxlength="6" type="text" class="float-left form-control no-radius width220 marginRight5 input-sm" placeholder="Enter the amount">
          	</div>
	    </td>
	</tr>
	<tr class="child-calc-width">
	    <td style="vertical-align: middle;">
	        <span id="spnInvestText">Your Employer Contribution per month (Rs.)</span>
	    </td>
	    <td>
	    	<div class="form-group"> 
            	<input id="txtEmprC" maxlength="6" type="text" class="float-left form-control no-radius width220 marginRight5 input-sm" placeholder="Enter the amount">
          	</div>
	    </td>
	</tr>
	<tr class="child-calc-width">
	    <td style="vertical-align: middle;">
	        <span id="spnInvestText">Your Growth Rate in EPF Contribution (% per annum)</span>
	    </td>
	    <td>
	    	<div class="form-group"> 
            	<input id="txtGrthRate" maxlength="4" type="text" class="float-left form-control no-radius width220 marginRight5 input-sm" placeholder="Enter the growth rate">
          	</div>
	    </td>
	</tr>
	<tr class="child-calc-width">
	    <td style="vertical-align: middle;">
	        <span id="spnInvestText">Your Rate of Interest (% per annum)</span>
	    </td>
	    <td>
	    	<div class="form-group"> 
            	<input id="txtRate" maxlength="4" type="text" class="float-left form-control no-radius width220 marginRight5 input-sm" placeholder="Enter the rate of interest">
          	</div>
	    </td>
	</tr>
	<tr class="child-calc-width">
	    <td style="vertical-align: middle;">
	        <span id="spnInvestText">Your Current Pension Fund Balance (Rs.)</span>
	    </td>
	    <td>
	    	<div class="form-group"> 
            	<input id="txtCPF" maxlength="7" type="text" class="float-left form-control no-radius width220 marginRight5 input-sm" placeholder="Enter the amount">
          	</div>
	    </td>
	</tr>
	<tr id="submit_btn_row">
	    <td colspan="2"><div class="text_center"><a onclick="calcEPF()" class="btn btn-primary" href="javascript:void(0)">Submit</a></div></td>
	</tr>
	</tbody>
	</table>
	</div>
	<div class="table-responsive" id="result"></div>
	<div id="emibarchart" style="display:none;"></div> 

</div>
                </div>

                    
                </div>
            </div>
        </section>
        <!-- End Section -->
  </div>