<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<style>
	
	.nav-tabs > li.active a {
	    color: #fff;
	    background-color: #F9A003;
	    border-color: #F9A003;
	    padding: 10px 60px;
	    border-radius: 10px;
	    font-size: 18px;
	}
	.nav-tabs > li a {
	    color: #ccccc;
	    background-color:#fff;
	    border-color: #cccccc;
	    padding: 10px 60px;
	    border-radius: 10px;
	    font-size: 18px;
	}
	.nav-tabs > li.active a, .nav-tabs > li.active a:hover, .nav-tabs > li.active a:focus {
	    color: #fff;
	    background-color: #F9A003;
	}
	
	.nav-tabs > li.active a, .nav-tabs > li.active a:hover{
		background-color: #F9A003;
		color:#fff;
		
	}
	
	.nav-tabs > li > a:hover, .nav-tabs > li > a:focus{
		color:#fff !important;
		background-color: #F9A003 !important;
	}


.breadcrumb li a {
    color: #fff;
}
 .breadcrumb > li + li::before {
    content: "\f22d" !important;
    font-family: fontawesome;
    font-size: 9px;
}
.breadcrumb>li+li:before {
    padding: 0 5px;
    color: #fff !important;
    content: "/\00a0";
}
.panel-title {
    background: #e8e8fb;
    padding: 10px;
    color: #000;
    border: 1px solid #003399;
}
.panel-title>a:hover{
   color:#4c8552;
}
.panel-title>a:active{
   color:#4c8552;
}
.panel-title>a:focus{
   color:#4c8552;
}
.panel-group .panel+.panel {
    margin-top: 15px;
    margin-bottom: 15px;
}
.panel-collapse{
    background: #fff;
    padding: 15px;
    color: #000;
    border-bottom:3px solid #4c8552;
}
@media only screen and (max-width: 991px){
	.pt-150 {
	    padding-top: 22px !important;
	}
}
.title_header{
    color: #fff !important;
}
.btn-theme-colored2:hover {
    
    background-color:#F57D00 ;
    border-color: #F57D00;
}
.text-theme-colored2 {
    color: #003399 !important;
}
.header_color {
    background: #003399 !important;
}

</style>






  <!-- Start main-content -->
  <div class="main-content">
    <!-- Section: inner-header -->
        <!-- Section: inner-header -->
    <section class="header_color">
      <div class="container pt-150 pb-20">
        <!-- Section Content -->
        <div class="section-content">
          <div class="row text-center">
            <div class="col-md-12">
              <h2 class="title title_header">Financial planning </h2>
              <ol class="breadcrumb mt-10">
                <li><a href="/" class="title_header">Home</a></li>
                <li><a href="/" class="title_header">services</a></li>
                <li class="active title_header">Financial planning </li>
              </ol>
            </div>
          </div>
        </div>
      </div>
    </section>
	
	
	<section>
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="row">
						<div class="col-md-12">

					  		<ul class="nav nav-tabs  ">
								<li class="active pb-20 capital">
					    			<a href="#1" data-toggle="tab">Financial health check</a>
								</li>
							     <li class="pb-20" style="margin-left:15px;">
									<a href="#2 " data-toggle="tab">Budgeting and cashflow</a>
								</li>
								
							</ul>
							<div class="tab-content ">
					  			<div class="tab-pane active" id="1">
									<p>Financial planning is a comprehensive strategy to manage your money, achieve personal goals and financial freedom thus securing your future. It translates your life aspirations into actionable financial milestones. </p>
									<h4 >Key Components</h4>
									<ul>
										<li><b> Budgeting and cash flow </b>: Tracking your income and monthly expenses.</li>
										<li><b> Risk management </b>: Protecting life, health and assets with appropriate insurance policies.</li>
										<li><b> Setting financial goals for various future needs </b>: Needs like higher education, marriage, emergencies, travel and others</li>
										<li><b> Retirement planning </b>: Saving and investing to build a lifelong nest egg.</li>
										<li><b> Investment strategy </b>: Growing wealth based on your risk tolerance.</li>
										<li><b> Tax optimization </b>: Minimizing liabilities through legal tax strategies.</li>
										<li><b> Estate planning </b>: Organizing asset distribution for your heirs. </li>
									</ul>
									</div>
								
								<div class="tab-pane" id="2">
									<h4 class="pt-20">Budgeting and cash flow</h4>
										<p>A budget is a financial plan that tracks your income and expenses over a specific period. It helps you manage your money, avoid debt, and save for future goals.  </p>
										
									<h4 class="pt-20">Core Components</h4>
										<ul>
										<li><b> Income </b>: Total money you earn or receive.</li>
										<li><b> Fixed Expenses </b>: Regular costs that rarely change (e.g., rent).</li>
										<li><b> Variable Expenses </b>: Daily spending that fluctuates (e.g., groceries).</li>
										<li><b> Savings </b>: Money set aside for future needs. </li>
										
									</ul>
									<h4 class="pt-20">Main Purposes</h4>
										<ul>
										<li><b> Control Spending </b>: Prevents overspending on unnecessary items.</li>
										<li><b> Track Progress </b>: Shows exactly where your money goes.</li>
										<li><b> Reach Goals </b>: Helps you fund vacations, emergencies, or retirement. </li>
										<li><b> Reduce Stress </b>: Provides financial security and peace of mind. </li>
										
										
									</ul>
									<h4 class="pt-20">Popular Budgeting Methods</h4>
									<ul>
										<li><b> 50/25/25 Rule </b>: 50% needs, 25% wants, 25% savings.</li>
										<li><b> Zero-Based Budgeting </b>: Every single rupee is assigned a specific purpose.</li>
										<li><b> Envelope System </b>: Cash is divided into labelled envelopes for categories.  </li>
										
										
										
									</ul>			

									 
									
								</div>
								
								</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	
	<!--<section>
				<div class="container pt-0">
					<div class="row">
						<div class="col-md-12 text-center">
							<h4>Download pdf here</h4>
							
							
							<a href="/images/pdf/retirement-planning-calculator.pdf"><img src="/images/about/pdf.webp" width="200px"></a>
						</div>
					</div>
				</div>
			</section>
	-->
	