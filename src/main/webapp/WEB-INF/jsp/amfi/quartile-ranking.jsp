<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    

<style>
	.page-heading {
	    padding-top: 6rem;
	    padding-bottom: 2rem;
	}
</style>
<style>
.form-control { 
    font-size: 13px;
}
.table > thead > tr > th, .table > tbody > tr > td {   
    font-size: 12px;
    border: 1px solid #d8d8d8;
}
.clear{
	clear:both;
}
tr.odd td.sorting_1, tr.even td.sorting_1 {
    background-color: #EBF5FB;
}
#tbl_scheme_returns tfoot tr td{
	background-color: #d9f6f9;
	font-weight: bold;
	font-size: 12px;
	color:#000;
}
.card{
	padding:20px;
	border-radius:0px;
}
.marginBottom20{
	margin-bottom:20px;
}
.btn-primary{
	padding:7px 15px;
	background-color: #d90d15;
}
label{
	font-size: 12px !important;
	font-weight: 600;
}
#tbl_scheme_returns thead tr th{
	border:1px solid #eee;
	background-color:#29549d;
	color:#fff;
}
.table{
	border-collapse: collapse;
}
.marginbottom10{
margin-bottom:10px;
}
table.dataTable tfoot th, table.dataTable tfoot td {
    border: 1px solid #d8d8d8;
}

.card-header {
    background-color: #f8b92a;
    color: #fff;
}
.dataTables_wrapper .dataTables_filter input {
    border: 1px solid #aaa;
    border-radius: 3px;
    padding: 5px;
    background-color: transparent;
    margin-left: 3px;
}
.dataTables_wrapper .dataTables_length select {
    border: 1px solid #aaa;
    border-radius: 3px;
    padding: 5px;
    background-color: transparent;
    padding: 4px;
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
.form-group {
    margin-bottom: 0px;
}
.paginate_button {
    position: relative;
    display: block;
    color: #03c;
    background-color: #ffffff;
    border: 1px solid #e2e8f0 !important;
    transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}
.paginate_button {
    padding: 0.375rem 0.75rem !important;
}

</style>

<script>

$(document).ready(function(){
		
	  var table = $('#tbl_scheme_returns').DataTable({
		"columnDefs": [
		{ "width": "50%", "targets": 0 },
		{"targets": [1,14], "orderable": false}],
		"order": [[ 0, "asc" ]],
		"initComplete": function(settings, json) {
            <c:if test="${fn:contains(header['User-Agent'],'Mobile')}">
            var table = settings.oInstance.api();
            setTimeout(function(){
         	  table.rows(':not(.parent)').nodes().to$().find('td:first-child').trigger('click');
            }, 1000);
            </c:if>
        }
	}); 
	
	
	$('#tbl_scheme_returns').on( 'draw.dt', function (e, settings) {
		<c:if test="${fn:contains(header['User-Agent'],'Mobile')}">
		var table = settings.oInstance.api();
		 setTimeout(function(){
		    table.rows(':not(.parent)').nodes().to$().find('td:first-child').trigger('click');
		 }, 1000);
		</c:if>
	});
	
    $('#tbl_scheme_returns tbody').on('click', 'td.details-control', function () {
    	
        var tr = $(this).closest('tr');
        var tr_id = tr.attr('id');
        var arr = tr_id.split("_");
        var index = arr[1];
        var row = table.row(tr);
        if ( row.child.isShown() ) {
        	$(this).find(".fa-chevron-down").removeClass("fa-chevron-down").addClass("fa-chevron-right");
            row.child.hide();
        }
        else 
        {
        	$(this).find(".fa-chevron-right").removeClass("fa-chevron-right").addClass("fa-chevron-down");
            row.child( format(index) ).show();
            
            showDividendDetails(index);
        }
    });
    //<i class="fa-solid fa-chevron-down"></i>
});

function format (index) 
{
	var str = '';
	str += '<div class="">';
	//str += '<div class="panel-heading">';
	//str += '<h4 class="panel-title">Scheme Dividend Details</h4>';
	//str += '</div>';
	str += '<div class="panel-body">';
	str += '<div class="table-responsive" id="scheme_dividend_'+index+'">';
	str += '<div class="text-center"><i class="fa fa-cog fa-spin fa-2x" style="margin-top: 100px;margin-bottom:100px;"></i></div>';
	str += '</div>';
	str += '</div>';
	str += '</div>';
	str += '</div>';
   	return str;
}
function showDividendDetails(index) 
{
	var scheme = $('#txt_scheme_'+index).val();
	
    $.ajaxSetup({async:false});
	$.post("/mutual-funds-research/getQuartileRankingAnnualReturns", {scheme : "" + scheme + ""}, function(data)
    {	   
        var result = $.trim(data);
		var obj = jQuery.parseJSON(result);
		var scheme_array = $.makeArray(obj);
		
		var str = '<table class="table table-striped table-colored table-bordered counton-table" cellspacing="0" width="100%"><thead>';
		str += '<tr><th>Total Return(%)</th><th>2013</th><th>2014</th><th>2015</th><th>2016</th><th>2017</th><th>2018</th><th>2019</th><th>2020</th><th>2021</th><th>2022</th><th>2023 YTD</th></tr></thead><tbody>';
		
		for(var k=0;k<scheme_array.length;k++)
		{
			var scheme_amfi_short_name = scheme_array[k].scheme_amfi_short_name;
			var returns_2012 = scheme_array[k].returns_2012;
			var returns_2013 = scheme_array[k].returns_2013;
			var returns_2014 = scheme_array[k].returns_2014;
			var returns_2015 = scheme_array[k].returns_2015;
			var returns_2016 = scheme_array[k].returns_2016;
			var returns_2017 = scheme_array[k].returns_2017;
			var returns_2018 = scheme_array[k].returns_2018;
			var returns_2019 = scheme_array[k].returns_2019;
			var returns_2020 = scheme_array[k].returns_2020;
			var returns_2021 = scheme_array[k].returns_2021;
			var returns_ytd = scheme_array[k].returns_ytd;
			var returns_2022 = scheme_array[k].returns_2022;
			
			if(returns_2012 == 0)
			{
				returns_2012 = "-";
			}
			if(returns_2013 == 0)
			{
				returns_2013 = "-";
			}
			if(returns_2014 == 0)
			{
				returns_2014 = "-";
			}
			if(returns_2015 == 0)
			{
				returns_2015 = "-";
			}
			if(returns_2016 == 0)
			{
				returns_2016 = "-";
			}
			if(returns_2017 == 0)
			{
				returns_2017 = "-";
			}
			if(returns_2018 == 0)
			{
				returns_2018 = "-";
			}
			if(returns_2019 == 0)
			{
				returns_2019 = "-";
			}
			if(returns_2020 == 0)
			{
				returns_2020 = "-";
			}
			if(returns_2021 == 0)
			{
				returns_2021 = "-";
			}
			if(returns_ytd == 0)
			{
				returns_ytd = "-";
			}
			if(returns_2022 == 0)
			{
				returns_2022 = "-";
			}
			
			var category_returns_2012 = scheme_array[k].category_returns_2012;
			var category_returns_2013 = scheme_array[k].category_returns_2013;
			var category_returns_2014 = scheme_array[k].category_returns_2014;
			var category_returns_2015 = scheme_array[k].category_returns_2015;
			var category_returns_2016 = scheme_array[k].category_returns_2016;
			var category_returns_2017 = scheme_array[k].category_returns_2017;
			var category_returns_2018 = scheme_array[k].category_returns_2018;
			var category_returns_2019 = scheme_array[k].category_returns_2019;
			var category_returns_2020 = scheme_array[k].category_returns_2020;
			var category_returns_2021 = scheme_array[k].category_returns_2021;
			var category_returns_ytd = scheme_array[k].category_returns_ytd;
			var category_returns_2022 = scheme_array[k].category_returns_2022;
			
			if(category_returns_2012 == 0)
			{
				category_returns_2012 = "-";
			}
			if(category_returns_2013 == 0)
			{
				category_returns_2013 = "-";
			}
			if(category_returns_2014 == 0)
			{
				category_returns_2014 = "-";
			}
			if(category_returns_2015 == 0)
			{
				category_returns_2015 = "-";
			}
			if(category_returns_2016 == 0)
			{
				category_returns_2016 = "-";
			}
			if(category_returns_2017 == 0)
			{
				category_returns_2017 = "-";
			}
			if(category_returns_2018 == 0)
			{
				category_returns_2018 = "-";
			}
			if(category_returns_2019 == 0)
			{
				category_returns_2019 = "-";
			}
			if(category_returns_2020 == 0)
			{
				category_returns_2020 = "-";
			}
			if(category_returns_2021 == 0)
			{
				category_returns_2021 = "-";
			}
			if(category_returns_ytd == 0)
			{
				category_returns_ytd = "-";
			}
			if(category_returns_2022 == 0)
			{
				category_returns_2022 = "-";
			}
			
			var returns_rank_2012 = scheme_array[k].returns_rank_2012;
			var returns_rank_2013 = scheme_array[k].returns_rank_2013;
			var returns_rank_2014 = scheme_array[k].returns_rank_2014;
			var returns_rank_2015 = scheme_array[k].returns_rank_2015;
			var returns_rank_2016 = scheme_array[k].returns_rank_2016;
			var returns_rank_2017 = scheme_array[k].returns_rank_2017;
			var returns_rank_2018 = scheme_array[k].returns_rank_2018;
			var returns_rank_2019 = scheme_array[k].returns_rank_2019;
			var returns_rank_2020 = scheme_array[k].returns_rank_2020;
			var returns_rank_2021 = scheme_array[k].returns_rank_2021;
			var returns_rank_ytd = scheme_array[k].returns_rank_ytd;
			var returns_rank_2022 = scheme_array[k].returns_rank_2022;
			
			var returns_rank_tot_2012 = scheme_array[k].returns_rank_tot_2012;
			var returns_rank_tot_2013 = scheme_array[k].returns_rank_tot_2013;
			var returns_rank_tot_2014 = scheme_array[k].returns_rank_tot_2014;
			var returns_rank_tot_2015 = scheme_array[k].returns_rank_tot_2015;
			var returns_rank_tot_2016 = scheme_array[k].returns_rank_tot_2016;
			var returns_rank_tot_2017 = scheme_array[k].returns_rank_tot_2017;
			var returns_rank_tot_2018 = scheme_array[k].returns_rank_tot_2018;
			var returns_rank_tot_2019 = scheme_array[k].returns_rank_tot_2019;
			var returns_rank_tot_2020 = scheme_array[k].returns_rank_tot_2020;
			var returns_rank_tot_2021 = scheme_array[k].returns_rank_tot_2021;
			var returns_rank_tot_ytd = scheme_array[k].returns_rank_tot_ytd;
			var returns_rank_tot_2022 = scheme_array[k].returns_rank_tot_2022;
			
			var returns_quartile_rank_2012 = scheme_array[k].returns_quartile_rank_2012;
			var returns_quartile_rank_2013 = scheme_array[k].returns_quartile_rank_2013;
			var returns_quartile_rank_2014 = scheme_array[k].returns_quartile_rank_2014;
			var returns_quartile_rank_2015 = scheme_array[k].returns_quartile_rank_2015;
			var returns_quartile_rank_2016 = scheme_array[k].returns_quartile_rank_2016;
			var returns_quartile_rank_2017 = scheme_array[k].returns_quartile_rank_2017;
			var returns_quartile_rank_2018 = scheme_array[k].returns_quartile_rank_2018;
			var returns_quartile_rank_2019 = scheme_array[k].returns_quartile_rank_2019;
			var returns_quartile_rank_2020 = scheme_array[k].returns_quartile_rank_2020;
			var returns_quartile_rank_2021 = scheme_array[k].returns_quartile_rank_2021;
			var returns_quartile_rank_ytd = scheme_array[k].returns_quartile_rank_ytd;
			var returns_quartile_rank_2022 = scheme_array[k].returns_quartile_rank_2022;
			
			if(returns_rank_2012 == undefined)
			{
				returns_rank_2012 = "-";
			}
			else
			{
				returns_rank_2012 = returns_rank_2012+"/"+returns_rank_tot_2012;
			}
			
			if(returns_rank_2013 == undefined)
			{
				returns_rank_2013 = "-";
			}
			else
			{
				returns_rank_2013 = returns_rank_2013+"/"+returns_rank_tot_2013;
			}
			
			if(returns_rank_2014 == undefined)
			{
				returns_rank_2014 = "-";
			}
			else
			{
				returns_rank_2014 = returns_rank_2014+"/"+returns_rank_tot_2014;
			}
			
			if(returns_rank_2015 == undefined)
			{
				returns_rank_2015 = "-";
			}
			else
			{
				returns_rank_2015 = returns_rank_2015+"/"+returns_rank_tot_2015;
			}
			
			if(returns_rank_2016 == undefined)
			{
				returns_rank_2016 = "-";
			}
			else
			{
				returns_rank_2016 = returns_rank_2016+"/"+returns_rank_tot_2016;
			}
			
			if(returns_rank_2017 == undefined)
			{
				returns_rank_2017 = "-";
			}
			else
			{
				returns_rank_2017 = returns_rank_2017+"/"+returns_rank_tot_2017;
			}
			
			if(returns_rank_2018 == undefined)
			{
				returns_rank_2018 = "-";
			}
			else
			{
				returns_rank_2018 = returns_rank_2018+"/"+returns_rank_tot_2018;
			}
			
			if(returns_rank_2019 == undefined)
			{
				returns_rank_2019 = "-";
			}
			else
			{
				returns_rank_2019 = returns_rank_2019+"/"+returns_rank_tot_2019;
			}
			
			if(returns_rank_2020 == undefined)
			{
				returns_rank_2020 = "-";
			}
			else
			{
				returns_rank_2020 = returns_rank_2020+"/"+returns_rank_tot_2020;
			}
			
			if(returns_rank_2021 == undefined)
			{
				returns_rank_2021 = "-";
			}
			else
			{
				returns_rank_2021 = returns_rank_2021+"/"+returns_rank_tot_2021;
			}
			
			if(returns_rank_2022 == undefined)
			{
				returns_rank_2022 = "-";
			}
			else
			{
				returns_rank_2022 = returns_rank_2022+"/"+returns_rank_tot_2022;
			}
			
			if(returns_rank_ytd == undefined)
			{
				returns_rank_ytd = "-";
			}
			else
			{
				returns_rank_ytd = returns_rank_ytd+"/"+returns_rank_tot_ytd;
			}
			
			var img_2012 = '';
			if(returns_quartile_rank_2012 == undefined)
			{
				img_2012 = "-";
			}
			else
			{
				if(returns_quartile_rank_2012 == "Top Quartile")
				{
					img_2012 = '<img src="/img/top-q-1.png"/>';
				}
				else if(returns_quartile_rank_2012 == "Upper Middle Quartile")
				{
					img_2012 = '<img src="/img/mid-q-2.png"/>';
				}
				else if(returns_quartile_rank_2012 == "Lower Middle Quartile")
				{
					img_2012 = '<img src="/img/low-q-2.png"/>';
				}
				else
				{
					img_2012 = '<img src="/img/bottom-q-1.png"/>';
				}
				
			}
			
			var img_2013 = '';
			if(returns_quartile_rank_2013 == undefined)
			{
				img_2013 = "-";
			}
			else
			{
				if(returns_quartile_rank_2013 == "Top Quartile")
				{
					img_2013 = '<img src="/img/top-q-1.png"/>';
				}
				else if(returns_quartile_rank_2013 == "Upper Middle Quartile")
				{
					img_2013 = '<img src="/img/mid-q-2.png"/>';
				}
				else if(returns_quartile_rank_2013 == "Lower Middle Quartile")
				{
					img_2013 = '<img src="/img/low-q-2.png"/>';
				}
				else
				{
					img_2013 = '<img src="/img/bottom-q-1.png"/>';
				}
				
			}
			
			var img_2014 = '';
			if(returns_quartile_rank_2014 == undefined)
			{
				img_2014 = "-";
			}
			else
			{
				if(returns_quartile_rank_2014 == "Top Quartile")
				{
					img_2014 = '<img src="/img/top-q-1.png"/>';
				}
				else if(returns_quartile_rank_2014 == "Upper Middle Quartile")
				{
					img_2014 = '<img src="/img/mid-q-2.png"/>';
				}
				else if(returns_quartile_rank_2014 == "Lower Middle Quartile")
				{
					img_2014 = '<img src="/img/low-q-2.png"/>';
				}
				else
				{
					img_2014 = '<img src="/img/bottom-q-1.png"/>';
				}
				
			}
			
			var img_2015 = '';
			if(returns_quartile_rank_2015 == undefined)
			{
				img_2015 = "-";
			}
			else
			{
				if(returns_quartile_rank_2015 == "Top Quartile")
				{
					img_2015 = '<img src="/img/top-q-1.png"/>';
				}
				else if(returns_quartile_rank_2015 == "Upper Middle Quartile")
				{
					img_2015 = '<img src="/img/mid-q-2.png"/>';
				}
				else if(returns_quartile_rank_2015 == "Lower Middle Quartile")
				{
					img_2015 = '<img src="/img/low-q-2.png"/>';
				}
				else
				{
					img_2015 = '<img src="/img/bottom-q-1.png"/>';
				}
				
			}
			
			var img_2016 = '';
			if(returns_quartile_rank_2016 == undefined)
			{
				img_2016 = "-";
			}
			else
			{
				if(returns_quartile_rank_2016 == "Top Quartile")
				{
					img_2016 = '<img src="/img/top-q-1.png"/>';
				}
				else if(returns_quartile_rank_2016 == "Upper Middle Quartile")
				{
					img_2016 = '<img src="/img/mid-q-2.png"/>';
				}
				else if(returns_quartile_rank_2016 == "Lower Middle Quartile")
				{
					img_2016 = '<img src="/img/low-q-2.png"/>';
				}
				else
				{
					img_2016 = '<img src="/img/bottom-q-1.png"/>';
				}
				
			}
			
			var img_2017 = '';
			if(returns_quartile_rank_2017 == undefined)
			{
				img_2017 = "-";
			}
			else
			{
				if(returns_quartile_rank_2017 == "Top Quartile")
				{
					img_2017 = '<img src="/img/top-q-1.png"/>';
				}
				else if(returns_quartile_rank_2017 == "Upper Middle Quartile")
				{
					img_2017 = '<img src="/img/mid-q-2.png"/>';
				}
				else if(returns_quartile_rank_2017 == "Lower Middle Quartile")
				{
					img_2017 = '<img src="/img/low-q-2.png"/>';
				}
				else
				{
					img_2017 = '<img src="/img/bottom-q-1.png"/>';
				}
				
			}
			
			var img_2018 = '';
			if(returns_quartile_rank_2018 == undefined)
			{
				img_2018 = "-";
			}
			else
			{
				if(returns_quartile_rank_2018 == "Top Quartile")
				{
					img_2018 = '<img src="/img/top-q-1.png"/>';
				}
				else if(returns_quartile_rank_2018 == "Upper Middle Quartile")
				{
					img_2018 = '<img src="/img/mid-q-2.png"/>';
				}
				else if(returns_quartile_rank_2018 == "Lower Middle Quartile")
				{
					img_2018 = '<img src="/img/low-q-2.png"/>';
				}
				else
				{
					img_2018 = '<img src="/img/bottom-q-1.png"/>';
				}
				
			}
			
			var img_2019 = '';
			if(returns_quartile_rank_2019 == undefined)
			{
				img_2019 = "-";
			}
			else
			{
				if(returns_quartile_rank_2019 == "Top Quartile")
				{
					img_2019 = '<img src="/img/top-q-1.png"/>';
				}
				else if(returns_quartile_rank_2019 == "Upper Middle Quartile")
				{
					img_2019 = '<img src="/img/mid-q-2.png"/>';
				}
				else if(returns_quartile_rank_2019 == "Lower Middle Quartile")
				{
					img_2019 = '<img src="/img/low-q-2.png"/>';
				}
				else
				{
					img_2019 = '<img src="/img/bottom-q-1.png"/>';
				}
				
			}
			
			var img_2020 = '';
			if(returns_quartile_rank_2020 == undefined)
			{
				img_2020 = "-";
			}
			else
			{
				if(returns_quartile_rank_2020 == "Top Quartile")
				{
					img_2020 = '<img src="/img/top-q-1.png"/>';
				}
				else if(returns_quartile_rank_2020 == "Upper Middle Quartile")
				{
					img_2020 = '<img src="/img/mid-q-2.png"/>';
				}
				else if(returns_quartile_rank_2020 == "Lower Middle Quartile")
				{
					img_2020 = '<img src="/img/low-q-2.png"/>';
				}
				else
				{
					img_2020 = '<img src="/img/bottom-q-1.png"/>';
				}
				
			}
			
			var img_2021 = '';
			if(returns_quartile_rank_2021 == undefined)
			{
				img_2021 = "-";
			}
			else
			{
				if(returns_quartile_rank_2021 == "Top Quartile")
				{
					img_2021 = '<img src="/img/top-q-1.png"/>';
				}
				else if(returns_quartile_rank_2021 == "Upper Middle Quartile")
				{
					img_2021 = '<img src="/img/mid-q-2.png"/>';
				}
				else if(returns_quartile_rank_2021 == "Lower Middle Quartile")
				{
					img_2021 = '<img src="/img/low-q-2.png"/>';
				}
				else
				{
					img_2021 = '<img src="/img/bottom-q-1.png"/>';
				}
				
			}
			
			var img_2022 = '';
			if(returns_quartile_rank_2022 == undefined)
			{
				img_2022 = "-";
			}
			else
			{
				if(returns_quartile_rank_2022 == "Top Quartile")
				{
					img_2022 = '<img src="/img/top-q-1.png"/>';
				}
				else if(returns_quartile_rank_2022 == "Upper Middle Quartile")
				{
					img_2022 = '<img src="/img/mid-q-2.png"/>';
				}
				else if(returns_quartile_rank_2022 == "Lower Middle Quartile")
				{
					img_2022 = '<img src="/img/low-q-2.png"/>';
				}
				else
				{
					img_2022 = '<img src="/img/bottom-q-1.png"/>';
				}
				
			}
			
			var img_ytd = '';
			if(returns_quartile_rank_ytd == undefined)
			{
				img_ytd = "-";
			}
			else
			{
				if(returns_quartile_rank_ytd == "Top Quartile")
				{
					img_ytd = '<img src="/img/top-q-1.png"/>';
				}
				else if(returns_quartile_rank_ytd == "Upper Middle Quartile")
				{
					img_ytd = '<img src="/img/mid-q-2.png"/>';
				}
				else if(returns_quartile_rank_ytd == "Lower Middle Quartile")
				{
					img_ytd = '<img src="/img/low-q-2.png"/>';
				}
				else
				{
					img_ytd = '<img src="/img/bottom-q-1.png"/>';
				}
				
			}
			
			var benchmark = scheme_array[k].benchmark;
			var benchmark_returns_2012 = scheme_array[k].benchmark_returns_2012;
			var benchmark_returns_2013 = scheme_array[k].benchmark_returns_2013;
			var benchmark_returns_2014 = scheme_array[k].benchmark_returns_2014;
			var benchmark_returns_2015 = scheme_array[k].benchmark_returns_2015;
			var benchmark_returns_2016 = scheme_array[k].benchmark_returns_2016;
			var benchmark_returns_2017 = scheme_array[k].benchmark_returns_2017;
			var benchmark_returns_2018 = scheme_array[k].benchmark_returns_2018;
			var benchmark_returns_2019 = scheme_array[k].benchmark_returns_2019;
			var benchmark_returns_2020 = scheme_array[k].benchmark_returns_2020;
			var benchmark_returns_2021 = scheme_array[k].benchmark_returns_2021;
			var benchmark_returns_ytd = scheme_array[k].benchmark_returns_ytd;
			var benchmark_returns_2022 = scheme_array[k].benchmark_returns_2022;
			
			if(benchmark_returns_2012 == 0)
			{
				benchmark_returns_2012 = "-";
			}
			if(benchmark_returns_2013 == 0)
			{
				benchmark_returns_2013 = "-";
			}
			if(benchmark_returns_2014 == 0)
			{
				benchmark_returns_2014 = "-";
			}
			if(benchmark_returns_2015 == 0)
			{
				benchmark_returns_2015 = "-";
			}
			if(benchmark_returns_2016 == 0)
			{
				benchmark_returns_2016 = "-";
			}
			if(benchmark_returns_2017 == 0)
			{
				benchmark_returns_2017 = "-";
			}
			if(benchmark_returns_2018 == 0)
			{
				benchmark_returns_2018 = "-";
			}
			if(benchmark_returns_2019 == 0)
			{
				benchmark_returns_2019 = "-";
			}
			if(benchmark_returns_2020 == 0)
			{
				benchmark_returns_2020 = "-";
			}
			if(benchmark_returns_2021 == 0)
			{
				benchmark_returns_2021 = "-";
			}
			if(benchmark_returns_ytd == 0)
			{
				benchmark_returns_ytd = "-";
			}
			if(benchmark_returns_2022 == 0)
			{
				benchmark_returns_2022 = "-";
			}
			
			str += '<tr><td>'+scheme_amfi_short_name+'</td><td>'+returns_2013+'</td><td>'+returns_2014+'</td><td>'+returns_2015+'</td><td>'+returns_2016+'</td><td>'+returns_2017+'</td><td>'+returns_2018+'</td><td>'+returns_2019+'</td><td>'+returns_2020+'</td><td>'+returns_2021+'</td><td>'+returns_2022+'</td><td>'+returns_ytd+'</td></tr>';
			str += '<tr><td>Category</td><td>'+category_returns_2013+'</td><td>'+category_returns_2014+'</td><td>'+category_returns_2015+'</td><td>'+category_returns_2016+'</td><td>'+category_returns_2017+'</td><td>'+category_returns_2018+'</td><td>'+category_returns_2019+'</td><td>'+category_returns_2020+'</td><td>'+category_returns_2021+'</td><td>'+category_returns_2022+'</td><td>'+category_returns_ytd+'</td></tr>';
			str += '<tr><td>'+benchmark+'</td><td>'+benchmark_returns_2013+'</td><td>'+benchmark_returns_2014+'</td><td>'+benchmark_returns_2015+'</td><td>'+benchmark_returns_2016+'</td><td>'+benchmark_returns_2017+'</td><td>'+benchmark_returns_2018+'</td><td>'+benchmark_returns_2019+'</td><td>'+benchmark_returns_2020+'</td><td>'+benchmark_returns_2021+'</td><td>'+benchmark_returns_2022+'</td><td>'+benchmark_returns_ytd+'</td></tr>';
			str += '<tr><td>Quartile Rank</td><td>'+img_2013+'</td><td>'+img_2014+'</td><td>'+img_2015+'</td><td>'+img_2016+'</td><td>'+img_2017+'</td><td>'+img_2018+'</td><td>'+img_2019+'</td><td>'+img_2020+'</td><td>'+img_2021+'</td><td>'+img_2022+'</td><td>'+img_ytd+'</td></tr>';
			str += '<tr><td>Return Rank</td><td>'+returns_rank_2013+'</td><td>'+returns_rank_2014+'</td><td>'+returns_rank_2015+'</td><td>'+returns_rank_2016+'</td><td>'+returns_rank_2017+'</td><td>'+returns_rank_2018+'</td><td>'+returns_rank_2019+'</td><td>'+returns_rank_2020+'</td><td>'+returns_rank_2021+'</td><td>'+returns_rank_2022+'</td><td>'+returns_rank_ytd+'</td></tr>';
		}
		str += '</tbody></table>';
		$('#scheme_dividend_'+index).html(str);
		
    },'text');
}
function formatDate(d)
{
	var day = d.getDate();
    var month = d.getMonth() + 1;
    var year = d.getFullYear();
    
    if (day < 10) {
        day = "0" + day;
    }
    if (month < 10) {
        month = "0" + month;
    }
    var date = day + "-" + month + "-" + year;
    
    return date;
}
function getData()
{
 	var category = $.trim($("#sel_category").val());	
	//var scheme_plan_type = $.trim($("#sel_option").val());
	var scheme_plan_type = "Regular";
 	
	top.location =  "/mutual-funds-research/quartile-ranking?category="+category+"&scheme_plan_type="+scheme_plan_type;
}
function saveResult() 
{	
	var category = $.trim($("#sel_category").val());
	var frequency = $.trim($("#sel_frequency").val());
    
	var accountMap = '${accountMap}';
	var title = "Mutual Fund Categorywise Dividends -> Category = " + category + ", Frequency = " + frequency;
	var url = window.location;
	
	if(accountMap == undefined || accountMap == null || accountMap == "" || accountMap == "null")
	{
		advisorkhoj_result_title = title;
		advisorkhoj_result_url = window.location.href;
		
		$("#adv-contact-advisor-signin-signup").modal("show");
	}
	else
	{
		saveUserResult("MF Tools",title, url);
	}
}

function downloadExcel(){
	
	var category = $.trim($("#sel_category").val());
	var frequency = $.trim($("#sel_frequency").val());
	var scheme_plan_type = $.trim($("#sel_option").val());
 	
	//top.location =  "/mutual-funds-research/categorywiseDividends?category="+category+"&frequency="+frequency;
	
	var path = "/mutual-funds-research/categorywiseDividends?category="+category+"&frequency="+frequency+"&scheme_plan_type="+scheme_plan_type;
	var xhr = new XMLHttpRequest();
	xhr.open('GET', path, true);
	xhr.responseType = 'text';
	xhr.onload = function () {
	    if (xhr.readyState === xhr.DONE) {
	        if (xhr.status === 200) {
	        	
	        	var contentType = xhr.getResponseHeader("Content-Type");
	        	if(contentType == "application/json;charset=ISO-8859-1"){
	        		var data = JSON.parse(xhr.response);
	        		alert(data.msg);
	    	    }
	    	    else{
	    	    	top.location =  "/mutual-funds-research/categorywiseDividends?category="+category+"&frequency="+frequency+"&scheme_plan_type="+scheme_plan_type+"&download=yes";
	    	    }
	        }
	    }
	};
	xhr.send(null);
}
</script>

<!-- Main -->
<main>

<!-- ======================== page title =========================== -->
<section class="page-title page-title-layout5">
	<div class="bg-img"><img src="/images/backgrounds/6.jpg" alt="background"></div>
      <div class="container">
        <div class="row">
          <div class="col-12">
            <h1 class="pagetitle__heading">Mutual Fund Quartile Ranking</h1>
            <nav>
              <ol class="breadcrumb mb-0">
                <li class="breadcrumb-item"><a href="/">Home</a></li>
                <li class="breadcrumb-item"><a href="/tools-and-calculators/become-a-crorepati">Mutual Funds Research</a></li>
                <li class="breadcrumb-item active" aria-current="page">Mutual Fund Quartile Ranking</li>
              </ol>
            </nav>
          </div><!-- /.col-12 -->
        </div><!-- /.row -->
      </div><!-- /.container -->
    </section><!-- /.page-title -->
        
        <!-- End Page Title -->
		<section class="section pt-4 pb-8" style="background-color:#fff;">
		
<div class="container card shadow mb-4">
   <h6 class="card-header mf-research-header">
      <c:choose>
	  	<c:when test="${category_name eq ''}">
	  		Mutual Fund Quartile Ranking
	  	</c:when>
	  	<c:otherwise>
	  		Mutual Fund Quartile Ranking - ${category_name}
	  	</c:otherwise>
	  	</c:choose>
   </h6>
   <div class="card-body mf-research-body">
      <div class="row marginbottom10">
         <div class="col-md-12 col-sm-3">
										<div class="row pl-4 pr-4">
							   <div class="col-md-4 col-sm-4">
							      <div class="form-group">
							         <label class="bold-smaller">Select Category</label>
							         <select id="sel_category" class="form-control">
							            <c:forEach var="cat" items="${schemeCategories}" varStatus="status">
							               <c:choose>
							                  <c:when test="${cat eq category}">
							                     <option selected="selected" value="${cat}">${cat}</option>
							                  </c:when>
							                  <c:otherwise>
							                     <option value="${cat}">${cat}</option>
							                  </c:otherwise>
							               </c:choose>
							            </c:forEach>
							         </select>
							      </div>
							   </div>
							   <div class="col-md-2 col-sm-3 justify-content-end align-self-end">
							      <div class="form-group">
							         <label class="bold block hidden-xs hidden-sm">&nbsp;</label>
							         <a href="javascript:void(0)" class="btn btn-primary" onclick="getData()">Submit</a>
							      </div>
							   </div>
							</div>
         </div>

      </div>
   </div>
</div>
		
	<div class="container card shadow">
		<div class="row marginBottom20">
			<div class="col-md-12 table-responsive">
				<table class="adv-table table table-striped table-bordered table-responsive mf-research-table" style="width:100%" id="tbl_scheme_returns">
		        	<thead>
	            		<tr>
	                		<th style="width:35% !important;">Scheme Name</th>
			                <th style="width:25% !important;">Launch Date</th>
			                <th>AUM (Crore)</th>
			                <th>2013</th>
			                <th>2014</th>
			                <th>2015</th>
			                <th>2016</th>
			                <th>2017</th>
			                <th>2018</th>
			                <th>2019</th>
			                <th>2020</th>
			                <th>2021</th>
			                <th>2022</th>
			                <th>2023 YTD</th>
			                <th class="never">Details</th>
						</tr>
		            </thead>
		            <tbody>
			            <c:forEach items="${flist}" var="schemePerformances" varStatus="status">	              
				            <tr id="tr_${status.index}">         
				                <td style="width:35% !important;"><a href='/mutual-funds-research/fund-card?scheme=<c:out value="${schemePerformances.scheme_amfi}"></c:out>' class="mutual-funds-anchor"><c:out value="${schemePerformances.scheme_amfi_short_name}"></c:out></a>			                
				                </td>			                
				                <td class="nowrap" style="width:25% !important;"><fmt:formatDate pattern="dd-MM-yyyy" value="${schemePerformances.inception_date}" /></td>
				                <td><fmt:formatNumber value="${schemePerformances.scheme_assets}" minFractionDigits="2" maxFractionDigits="2" /></td>
				                <td>
				                <c:if test="${schemePerformances.returns_quartile_rank_2013 eq 'Top Quartile'}">
				                	<span style="color:green;">Top</span>
				                </c:if>
				                <c:if test="${schemePerformances.returns_quartile_rank_2013 eq 'Upper Middle Quartile'}">
				                	<span style="color:peru;">Upper Mid</span>
				                </c:if>
				                <c:if test="${schemePerformances.returns_quartile_rank_2013 eq 'Lower Middle Quartile'}">
				                	<span style="color:maroon;">Lower Mid</span>
				                </c:if>
				                <c:if test="${schemePerformances.returns_quartile_rank_2013 eq 'Bottom Quartile'}">
				                	<span style="color:red;">Bottom</span>
				                </c:if>
				                </td>
				                
				                <td>
				                <c:if test="${schemePerformances.returns_quartile_rank_2014 eq 'Top Quartile'}">
				                	<span style="color:green;">Top</span>
				                </c:if>
				                <c:if test="${schemePerformances.returns_quartile_rank_2014 eq 'Upper Middle Quartile'}">
				                	<span style="color:peru;">Upper Mid</span>
				                </c:if>
				                <c:if test="${schemePerformances.returns_quartile_rank_2014 eq 'Lower Middle Quartile'}">
				                	<span style="color:maroon;">Lower Mid</span>
				                </c:if>
				                <c:if test="${schemePerformances.returns_quartile_rank_2014 eq 'Bottom Quartile'}">
				                	<span style="color:red;">Bottom</span>
				                </c:if>
				                </td>
				                
				                <td>
				                <c:if test="${schemePerformances.returns_quartile_rank_2015 eq 'Top Quartile'}">
				                	<span style="color:green;">Top</span>
				                </c:if>
				                <c:if test="${schemePerformances.returns_quartile_rank_2015 eq 'Upper Middle Quartile'}">
				                	<span style="color:peru;">Upper Mid</span>
				                </c:if>
				                <c:if test="${schemePerformances.returns_quartile_rank_2015 eq 'Lower Middle Quartile'}">
				                	<span style="color:maroon;">Lower Mid</span>			                </c:if>
				                <c:if test="${schemePerformances.returns_quartile_rank_2015 eq 'Bottom Quartile'}">
				                	<span style="color:red;">Bottom</span>
				                </c:if>
				                </td>
				                
				                <td>
				                <c:if test="${schemePerformances.returns_quartile_rank_2016 eq 'Top Quartile'}">
				                	<span style="color:green;">Top</span>
				                </c:if>
				                <c:if test="${schemePerformances.returns_quartile_rank_2016 eq 'Upper Middle Quartile'}">
				                	<span style="color:peru;">Upper Mid</span>
				                </c:if>
				                <c:if test="${schemePerformances.returns_quartile_rank_2016 eq 'Lower Middle Quartile'}">
				                	<span style="color:maroon;">Lower Mid</span>			
				                </c:if>
				                <c:if test="${schemePerformances.returns_quartile_rank_2016 eq 'Bottom Quartile'}">
				                	<span style="color:red;">Bottom</span>
				                </c:if>
				                </td>
				                
				                <td>
				                <c:if test="${schemePerformances.returns_quartile_rank_2017 eq 'Top Quartile'}">
				                	<span style="color:green;">Top</span>
				                </c:if>
				                <c:if test="${schemePerformances.returns_quartile_rank_2017 eq 'Upper Middle Quartile'}">
				                	<span style="color:peru;">Upper Mid</span>
				                </c:if>
				                <c:if test="${schemePerformances.returns_quartile_rank_2017 eq 'Lower Middle Quartile'}">
				                	<span style="color:maroon;">Lower Mid</span>			
				                </c:if>
				                <c:if test="${schemePerformances.returns_quartile_rank_2017 eq 'Bottom Quartile'}">
				                	<span style="color:red;">Bottom</span>
				                </c:if>
				                </td>
				                
				                <td>
				                <c:if test="${schemePerformances.returns_quartile_rank_2018 eq 'Top Quartile'}">
				                	<span style="color:green;">Top</span>
				                </c:if>
				                <c:if test="${schemePerformances.returns_quartile_rank_2018 eq 'Upper Middle Quartile'}">
				                	<span style="color:peru;">Upper Mid</span>
				                </c:if>
				                <c:if test="${schemePerformances.returns_quartile_rank_2018 eq 'Lower Middle Quartile'}">
				                	<span style="color:maroon;">Lower Mid</span>		
				                </c:if>
				                <c:if test="${schemePerformances.returns_quartile_rank_2018 eq 'Bottom Quartile'}">
				                	<span style="color:red;">Bottom</span>
				                </c:if>
				                </td>
				                
				                <td>
				                <c:if test="${schemePerformances.returns_quartile_rank_2019 eq 'Top Quartile'}">
				                	<span style="color:green;">Top</span>
				                </c:if>
				                <c:if test="${schemePerformances.returns_quartile_rank_2019 eq 'Upper Middle Quartile'}">
				                	<span style="color:peru;">Upper Mid</span>
				                </c:if>
				                <c:if test="${schemePerformances.returns_quartile_rank_2019 eq 'Lower Middle Quartile'}">
				                	<span style="color:maroon;">Lower Mid</span>		
				                </c:if>
				                <c:if test="${schemePerformances.returns_quartile_rank_2019 eq 'Bottom Quartile'}">
				                	<span style="color:red;">Bottom</span>
				                </c:if>
				                </td>
				                
				                <td>
				                <c:if test="${schemePerformances.returns_quartile_rank_2020 eq 'Top Quartile'}">
				                	<span style="color:green;">Top</span>
				                </c:if>
				                <c:if test="${schemePerformances.returns_quartile_rank_2020 eq 'Upper Middle Quartile'}">
				                	<span style="color:peru;">Upper Mid</span>
				                </c:if>
				                <c:if test="${schemePerformances.returns_quartile_rank_2020 eq 'Lower Middle Quartile'}">
				                	<span style="color:maroon;">Lower Mid</span>		
				                </c:if>
				                <c:if test="${schemePerformances.returns_quartile_rank_2020 eq 'Bottom Quartile'}">
				                	<span style="color:red;">Bottom</span>
				                </c:if>
				                </td>
				                
				                <td>
				                <c:if test="${schemePerformances.returns_quartile_rank_2021 eq 'Top Quartile'}">
				                	<span style="color:green;">Top</span>
				                </c:if>
				                <c:if test="${schemePerformances.returns_quartile_rank_2021 eq 'Upper Middle Quartile'}">
				                	<span style="color:peru;">Upper Mid</span>
				                </c:if>
				                <c:if test="${schemePerformances.returns_quartile_rank_2021 eq 'Lower Middle Quartile'}">
				                	<span style="color:maroon;">Lower Mid</span>		
				                </c:if>
				                <c:if test="${schemePerformances.returns_quartile_rank_2021 eq 'Bottom Quartile'}">
				                	<span style="color:red;">Bottom</span>
				                </c:if>
				                </td>
				                
				                <td>
				                <c:if test="${schemePerformances.returns_quartile_rank_2022 eq 'Top Quartile'}">
				                	<span style="color:green;">Top</span>
				                </c:if>
				                <c:if test="${schemePerformances.returns_quartile_rank_2022 eq 'Upper Middle Quartile'}">
				                	<span style="color:peru;">Upper Mid</span>
				                </c:if>
				                <c:if test="${schemePerformances.returns_quartile_rank_2022 eq 'Lower Middle Quartile'}">
				                	<span style="color:maroon;">Lower Mid</span>		
				                </c:if>
				                <c:if test="${schemePerformances.returns_quartile_rank_2022 eq 'Bottom Quartile'}">
				                	<span style="color:red;">Bottom</span>
				                </c:if>
				                </td>
				                
				                <td>
				                <c:if test="${schemePerformances.returns_quartile_rank_ytd eq 'Top Quartile'}">
				                	<span style="color:green;">Top</span>
				                </c:if>
				                <c:if test="${schemePerformances.returns_quartile_rank_ytd eq 'Upper Middle Quartile'}">
				                	<span style="color:peru;">Upper Mid</span>
				                </c:if>
				                <c:if test="${schemePerformances.returns_quartile_rank_ytd eq 'Lower Middle Quartile'}">
				                	<span style="color:maroon;">Lower Mid</span>		
				                </c:if>
				                <c:if test="${schemePerformances.returns_quartile_rank_ytd eq 'Bottom Quartile'}">
				                	<span style="color:red;">Bottom</span>
				                </c:if>
				                </td>
				                
				                
				                <td class="details-control">
				                <input type="hidden" value="${schemePerformances.scheme_amfi}" id="txt_scheme_${status.index}" />
				                <span class="fa fa-chevron-right cursoricons"></span>
							 	</td>		
				            </tr>
			            </c:forEach>
		            </tbody>
				</table>
			</div>
		</div>
		

				
	</div>
</section>
    </main>
    <!-- End Main -->