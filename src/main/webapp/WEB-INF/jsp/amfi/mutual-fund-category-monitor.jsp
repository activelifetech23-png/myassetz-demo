<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script src="https://code.highcharts.com/highcharts.js"></script>

<style>
.member {
    box-shadow: 0px 5px 83px 0px rgb(9 29 62 / 15%);
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


.counton-panel-header {
    background-color: #529100!important;
    color: #fff!important;
    font-size: 1rem!important;
}

/****new change**********/
.card-header:first-child {
    border-radius: 0.4rem 0.4rem 0 0;
}
.mf-research-header {
    background: #20C7BA;
    color: #ffffff;
    font-size: 14px;
    padding: 10px;
}
.card {
    box-shadow: 0 0 0 0.05rem rgb(8 60 130 / 6%), 0 0 1.25rem rgb(30 34 40 / 4%);
    border: 0;
}
.form-group {
    position: relative;
    margin-bottom: 4px;
}

table.dataTable tbody tr, table.dataTable tbody td {
    padding: 10px 18px;
    color: #60697b;
}
.mf-research-table th, .mf-research-table td {
    font-size: 13px;
}
label {
    font-weight: normal;
}

.nice-select {
    width: 100%;
    height: 45px;
    line-height: 43px;
    border-radius: 10px;
    margin-bottom: 0;
}
.btn {
    height: 45px;
}
.btn__rounded {
    border-radius: 10px;
}
.mf-research-table thead {
    background: #97e1e9;
}

table.dataTable tbody tr {
    background-color: #fff;
}

.table-striped tbody tr:nth-of-type(odd) {
    background-color: rgba(164, 174, 198, 0.07);
}

.mf-research-table tfoot {
    background: #d9f6f9;
}

.mf-research-table a {
	color: #000;
}
.table {
    color: #60697b;
}

.paginate_button {
    padding: 0px !important;
    font-size: 13px;
}

.dataTables_info {
    font-size: 13px;
}
.dataTables_wrapper .dataTables_paginate {
    float: right;
    text-align: right;
    padding-top: 0.45em;
}
.member .member__info {
    padding: 30px 25px;
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
.theadBody {
    background-color: #c1e691!important;
    color: #000!important;
    font-size: 11px;
    font-weight: bold;
}
table.table-bordered.dataTable tbody th, table.table-bordered.dataTable tbody td {
    border-bottom-width: 0;
}
table.table-bordered.dataTable th, table.table-bordered.dataTable td {
    border-left-width: 0;
}
</style>

<script>

var category_array = new Array();
var returns_7days_array = new Array();
var returns_1month_array = new Array();
var returns_3month_array = new Array();
var returns_6month_array = new Array();
var returns_ytd_array = new Array();
var returns_1year_array = new Array();
var returns_3year_array = new Array();
var returns_5year_array = new Array();
var returns_10year_array = new Array();
var returns_inception_array = new Array();
var last_selection = 6;

$(document).ready(function(){
	
	$('#tbl_scheme_returns').dataTable({
		"pageLength": 10,
        "bPaginate": true,
        "bFilter": true,
        "bInfo": true,
        "bSort": true,
        fixedHeader: {
            headerOffset: 70
        },
        "columns": [
                    { "width": "25%" },
                    { "width": "8%", className: "text-center" },
                    { "width": "8%", className: "text-center" },
                    { "width": "8%", className: "text-center" },
                    { "width": "8%", className: "text-center" },
                    { "width": "8%", className: "text-center" },
                    { "width": "8%", className: "text-center" },
                    { "width": "8%", className: "text-center" },
                    { "width": "8%", className: "text-center" },
                    { "width": "8%", className: "text-center" },
                    { "width": "8%", className: "text-center" }
    ],
    "initComplete": function(settings, json) {
        <c:if test="${fn:contains(header['User-Agent'],'Mobile')}">
        var table = settings.oInstance.api();
        setTimeout(function(){
     	  table.rows(':not(.parent)').nodes().to$().find('td:first-child').trigger('click');
        }, 1000);
        </c:if>
    }
    }).fnSort([6,'desc']);
	
	$('#tbl_scheme_returns').on( 'draw.dt', function (e, settings) {
		<c:if test="${fn:contains(header['User-Agent'],'Mobile')}">
		var table = settings.oInstance.api();
		 setTimeout(function(){
		    table.rows(':not(.parent)').nodes().to$().find('td:first-child').trigger('click');
		 }, 1000);
		</c:if>
	});
	
	getGraphData();
	
	var table = $('#tbl_scheme_returns').dataTable();
    table.on('click', 'th', function() {
        var info = table.fnSettings().aaSorting;
        var idx = info[0][0];
        
        if(idx == 1 && last_selection != idx)
        {
        	last_selection = idx;
        	showGraph(returns_7days_array);
        }
        if(idx == 2 && last_selection != idx)
        {
        	last_selection = idx;
        	showGraph(returns_1month_array);
        }
        if(idx == 3 && last_selection != idx)
        {
        	last_selection = idx;
        	showGraph(returns_3month_array);
        }
        if(idx == 4 && last_selection != idx)
        {
        	last_selection = idx;
        	showGraph(returns_6month_array);
        }
        if(idx == 5 && last_selection != idx)
        {
        	last_selection = idx;
        	showGraph(returns_ytd_array);
        }
        if(idx == 6 && last_selection != idx)
        {
        	last_selection = idx;
        	showGraph(returns_1year_array);
        }
        if(idx == 7 && last_selection != idx)
        {
        	last_selection = idx;
        	showGraph(returns_3year_array);
        }
        if(idx == 8 && last_selection != idx)
        {
        	last_selection = idx;
        	showGraph(returns_5year_array);
        }
        if(idx == 9 && last_selection != idx)
        {
        	last_selection = idx;
        	showGraph(returns_10year_array);
        }
        if(idx == 10 && last_selection != idx)
        {
        	last_selection = idx;
        	showGraph(returns_inception_array);
        }
        
    });
	
});

function getGraphData()
{
	var category_performance_array = new Array();
	
	$.ajaxSetup({async:false});
	$.post("/mutual-funds-research/getCategoryPerformance", function(data)
    {
		var cate = $.trim(data);
		var cate_obj = jQuery.parseJSON(cate);
		category_performance_array = $.makeArray(cate_obj);
		
    },'text');
	
	if(category_performance_array.length == 0)
	{
		return false;
	}
	
	for(var k=0;k<category_performance_array.length;k++)
	{
		var category = category_performance_array[k].sector;
		var returns_abs_7days = category_performance_array[k].returns_abs_7days;
		var returns_abs_1month = category_performance_array[k].returns_abs_1month;
		var returns_abs_3month = category_performance_array[k].returns_abs_3month;
		var returns_abs_6month = category_performance_array[k].returns_abs_6month;
		var returns_abs_ytd = category_performance_array[k].returns_abs_ytd;
		var returns_abs_1year = category_performance_array[k].returns_abs_1year;
		var returns_cmp_3year = category_performance_array[k].returns_cmp_3year;
		var returns_cmp_5year = category_performance_array[k].returns_cmp_5year;
		var returns_cmp_10year = category_performance_array[k].returns_cmp_10year;
		var returns_cmp_inception = category_performance_array[k].returns_cmp_inception;
		
		category_array.push(category);
		returns_7days_array.push(returns_abs_7days);
		returns_1month_array.push(returns_abs_1month);
		returns_3month_array.push(returns_abs_3month);
		returns_6month_array.push(returns_abs_6month);
		returns_ytd_array.push(returns_abs_ytd);
		returns_1year_array.push(returns_abs_1year);
		returns_3year_array.push(returns_cmp_3year);
		returns_5year_array.push(returns_cmp_5year);
		returns_10year_array.push(returns_cmp_10year);
		returns_inception_array.push(returns_cmp_inception);
	}
	
	showGraph(returns_1year_array);
}
function showGraph(data_array)
{
	var container_width = $("#sip-gth-div").width() - 2;
	
	$('#sip-gth-container').highcharts({
        chart: {
            type: 'column',
            width : container_width,
            events: {
            load: function() {
              this.xAxis[0].setExtremes(0, 9);
            }
          }
        },
        title: {
            text: 'Category Performance'
        },
        xAxis: {
            categories: category_array
        },
        yAxis: {
        	allowDecimals: true,
            title: {
                text: 'Returns (%)'
            }
        },
        credits: {
            enabled: false
        },
        legend: {
        	 enabled: false
      	},
      	tooltip: {
      		enabled: false
        },
        plotOptions: {
            column: {
                stacking: 'normal',
                dataLabels: {
                    enabled: true,
                    formatter: function () {
                    	return this.y + '%';
                    },
                }
            }
        },
        series: [{
            name: 'Category',
            data: data_array
        }]
    });
    
    var stepWidth = 6;

  $('#next').click(function() {
    var chart = $('#sip-gth-container').highcharts();
    var currentMin = chart.xAxis[0].getExtremes().min;
    var currentMax = chart.xAxis[0].getExtremes().max;
    var start = currentMin + stepWidth;
    var end = currentMax + stepWidth;
    var data_length = chart.series[0].data.length;
    if(end > (data_length - 1))
   	{
    	end = (data_length - 1);
      start = data_length - stepWidth;
    }
    chart.xAxis[0].setExtremes(start, end);
  });

  $('#back').click(function() {
    var chart = $('#sip-gth-container').highcharts();
    var currentMin = chart.xAxis[0].getExtremes().min;
    var currentMax = chart.xAxis[0].getExtremes().max;
		var start = currentMin - stepWidth;
    var end = currentMax - stepWidth;
    
    if(start < 0)
   	{
    	start = 0;
      end = stepWidth - 1;
    }
		
    chart.xAxis[0].setExtremes(start, end);
  });
  
}

function openLogin(){
	downloadPath = "/mutual-funds-research/downloadcategoryMonitor";
	imageDownload = "yes";
	chartId = "#sip-gth-container";
	filename = "category-monitor";
	$("#adv-login").modal("show");
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
            <h1 class="pagetitle__heading">Mutual Fund Category Monitor</h1>
            <nav>
              <ol class="breadcrumb mb-0">
                <li class="breadcrumb-item"><a href="/">Home</a></li>
                <li class="breadcrumb-item"><a href="/mutual-funds-research/top-performing-mutual-funds">Mutual Funds Research</a></li>
                <li class="breadcrumb-item active" aria-current="page">Mutual Fund Category Monitor</li>
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
    <section class="team-layout1">
      <div class="container">
        <div class="row">
          <!-- Member #1 -->
          <div class="col-lg-12">
					<div class="col-lg-12">
				 		<div class="card mb-5">
						<h6 class="card-header mf-research-header">
				        	Mutual Fund Category Monitor
						 </h6>
				        
				        <div class="card-body mf-research-body mt-10">
					        <div class="row pl-4 pr-4">
						    <div class="col-md-12 col-sm-12 remove-bootstrap-col-lr-padding table-responsive">
						       <table class="adv-table table table-striped table-bordered mf-research-table table-responsive" style="width:100%" id="tbl_scheme_returns">
						        <thead class="theadBody">
						            <tr>
						                <th>Category Name</th>
						                <th>1-Week Ret (%)</th>
						                <th>1-Mth Ret (%)</th>
						                <th>3-Mths Ret (%)</th>
						                <th>6-Mths Ret (%)</th>
						                <th>YTD Ret (%)</th>
						                <th>1-Yr Ret (%)</th>	
						                <th>3-Yrs Ret (%)</th>	
						                <th>5-Yrs Ret (%)</th>	
						                <th>10-Yrs Ret (%)</th>	
						                <th>Since Launch Ret (%)</th>			
						            </tr>
						            </thead>
						            <tbody>
						            <c:forEach items="${category_performance_list}" var="schemePerformances">	              
						              <tr>
						                <td><c:out value="${schemePerformances.sector}"></c:out></td>
						                <td><c:out value="${schemePerformances.returns_abs_7days eq 0 ? '-': schemePerformances.returns_abs_7days}"></c:out></td>
						                <td><c:out value="${schemePerformances.returns_abs_1month eq 0 ? '-': schemePerformances.returns_abs_1month}"></c:out></td>
						                <td><c:out value="${schemePerformances.returns_abs_3month eq 0 ? '-': schemePerformances.returns_abs_3month}"></c:out></td>
						                <td><c:out value="${schemePerformances.returns_abs_6month eq 0 ? '-': schemePerformances.returns_abs_6month}"></c:out></td>
						                <td><c:out value="${schemePerformances.returns_abs_ytd eq 0 ? '-': schemePerformances.returns_abs_ytd}"></c:out></td>
						                <td><c:out value="${schemePerformances.returns_abs_1year eq 0 ? '-': schemePerformances.returns_abs_1year}"></c:out></td>
						                <td><c:out value="${schemePerformances.returns_cmp_3year eq 0 ? '-': schemePerformances.returns_cmp_3year}"></c:out></td>
						                <td><c:out value="${schemePerformances.returns_cmp_5year eq 0 ? '-': schemePerformances.returns_cmp_5year}"></c:out></td>
						                <td><c:out value="${schemePerformances.returns_cmp_10year eq 0 ? '-': schemePerformances.returns_cmp_10year}"></c:out></td>
						                <td><c:out value="${schemePerformances.returns_cmp_inception eq 0 ? '-': schemePerformances.returns_cmp_inception}"></c:out></td>
						            </tr>
						            </c:forEach>
						            </tbody>
						       </table>
			        		</div>
					        </div>
					        
					         <div id="sip-gth-div" class="col-md-12 mt-50">
					<div id="sip-gth-container" class="adv-panel-border" style="height:400px;min-width: 250px;"></div>
					<div class="text-right">
					  	<button id="back" class="btn btn-primary main_btn autocompare" style="border: none;">Previous</button>
						<button id="next" class="btn btn-primary main_btn autocompare" style="border: none;">Next</button>
					</div>
					</div>
					        
				        </div> 
	
				 		</div>
			 		</div>
			 		
			 		

          </div><!-- /.col-lg-4 -->
        </div> <!-- /.row -->
      </div><!-- /.container -->
    </section><!-- /.Team layout 1  -->