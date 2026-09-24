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
              <h2 class="title title_header">Multiple Goals planning </h2>
              <ol class="breadcrumb mt-10">
                <li><a href="/" class="title_header">Home</a></li>
                <li><a href="/" class="title_header">services</a></li>
                <li class="active title_header">Multiple Goals planning </li>
              </ol>
            </div>
          </div>
        </div>
      </div>
    </section>
	
	
	<!-- Section: service-->
	   <section class="pt-50 pb-50">
		<div class="container p-30">
			<div class="row">
	        	<div class="col-md-12">
	        
	          		<ul class="nav nav-tabs  ">
						<li class="active pb-20 capital" style="margin-left:15px;">
							     <a href="#1" data-toggle="tab"> financial goals</a>
						</li>
						<li class=" pb-20" style="margin-left:15px;">
	            			<a href="#2" data-toggle="tab">Setting financial goals</a>
						</li>
					     <li class="pb-20" style="margin-left:15px;">
							<a href="#3 " data-toggle="tab">Goal planning with variable AA </a>
						</li>
						<li class="pb-20" style="margin-left:15px;">
							<a href="#4" data-toggle="tab">Your investment goal tracker</a>
						</li>
					</ul>
					<div class="tab-content ">
						<div class="tab-pane active" id="1">
							<h4 class="mt-20">Multiple future goals planning </h4>
									<p>Financial goals are targets to achieve specific financial objectives within a specified timeframe. By establishing clear financial goals, one can take control of finances and work towards securing financial future.</p>
									<img class="img-fluid" src="/images/about/financial-future.png"> <br>
									<h5 class="pt-10">Dowload Xl here</h5>
									<!--<a href="/images/pdf/multiple-goals-planning-calculator.pdf"><img src="/images/about/pdf.webp" width="200px"></a>-->	
									<a href="/xl-folder/Other_Goals_Calculator.xlsx"><img src="/xl-folder/xl.webp" width="150px"></a>												
							</div>
												
			  			<div class="tab-pane" id="2">
							<p>A good financial goal should be <b> SMART i.e. Specific, Measurable, Achievable, Realistic and Time bound. </b></p>
															
							<div class="table-responsive pt-20 mb-20">
							                <table class="table table-bordered smart-table">
							                    <thead>
							                        <tr>
							                            <th width="12%"></th>
							                            <th width="32%" class="text-center">Description</th>
							                            <th width="28%" class="text-center">Incorrect Approach</th>
							                            <th width="28%" class="text-center">Right Approach</th>
							                        </tr>
							                    </thead>

							                    <tbody>

							                        <tr>
							                            <td class="title-cell">Specific</td>
							                            <td>
							                                You need to know exactly what you want to achieve
							                                and when you want it.
							                            </td>
							                            <td>
							                                I need to set aside money for my granddaughter’s
							                                birthday next year.
							                            </td>
							                            <td>
							                                I need to set aside Rs. 1,000/- every month for my
							                                granddaughter’s birthday celebration next year.
							                            </td>
							                        </tr>

							                        <tr>
							                            <td class="title-cell">Measurable</td>
							                            <td>
							                                A goal should be measurable so that you know when
							                                you will achieve it.
							                            </td>
							                            <td>
							                                I will pay off most of my credit card dues soon.
							                            </td>
							                            <td>
							                                In the next six months, I will pay off all my credit
							                                card bills in a disciplined manner.
							                            </td>
							                        </tr>

							                        <tr>
							                            <td class="title-cell">Achievable</td>
							                            <td>
							                                Your goal should be within a reasonable reach.
							                            </td>
							                            <td>
							                                I will save money.
							                            </td>
							                            <td>
							                                I will save Rs. 48,000/- every year by saving
							                                Rs. 4,000/- every month.
							                            </td>
							                        </tr>

							                        <tr>
							                            <td class="title-cell">Realistic</td>
							                            <td>
							                                Your goals need to be based on available resources
							                                which you can achieve reasonably.
							                            </td>
							                            <td>
							                                By saving regularly, I will become a millionaire.
							                            </td>
							                            <td>
							                                By saving regularly, I will be debt free next year.
							                                If I continue saving regularly after clearing my
							                                debt, by next December I will have enough funds to
							                                cover six months of living expenses.
							                            </td>
							                        </tr>

							                        <tr>
							                            <td class="title-cell">Time-Bound</td>
							                            <td>
							                                Goals with timelines allow you to track your progress
							                                and encourage you to keep going until you reach your goal.
							                            </td>
							                            <td>
							                                I will save money for my daughter's marriage.
							                            </td>
							                            <td>
							                                I will save Rs. 50,000/- every year for my daughter's
							                                marriage.
							                            </td>
							                        </tr>

							                    </tbody>
							                </table>

								    
								
						  		
										  
								</div>	  
						</div>
						
						<div class="tab-pane" id="3">
						<p>	Goal planning with variable asset allocation is a dynamic investment strategy. It adjusts your mix of stocks, bonds, and cash over time based on specific goals, market conditions, or your age. </p>
							<h4 class="pt-20">Understanding the Core Mechanism</h4>
							<p>Traditional investing often uses a fixed mix of assets. Variable allocation changes this mix dynamically to optimize returns and protect your savings. </p>
							<ul>
								<li><b> De-risking over time </b>: Shifting from aggressive to conservative assets as your deadline approaches.</li>
								<li><b> Market responsiveness </b>: Adjusting exposure when market valuations become extreme.</li>
								<li><b> Goal-centric targets </b>: Matching the timeline of each specific financial milestone to a unique risk profile. </li>
							</ul>
							<h3 class="pt-20">The Three Main Approaches</h3>
							

							    <h4 class="pt-20">1. Time-Horizon Glide Paths (Target-Date Approach)</h4>
							    <ul>
							        <li><strong>How it works:</strong> Allocation shifts automatically based on the years left until your goal.</li>
							        <li><strong>Early stage:</strong> High stock exposure to maximize growth.</li>
							        <li><strong>Middle stage:</strong> Balanced mix to sustain growth while reducing volatility.</li>
							        <li><strong>Late stage:</strong> Heavy cash and bond exposure to lock in gains.</li>
							    </ul>

							    <h4 class="pt-20">2. Valuation-Driven Allocation (Market-Responsive Approach)</h4>
							    <ul>
							        <li><strong>How it works:</strong> Allocation changes based on whether market sectors are under or overvalued.</li>
							        <li><strong>Market highs:</strong> Selling expensive stocks to buy safer bonds.</li>
							        <li><strong>Market lows:</strong> Buying undervalued stocks using accumulated cash.</li>
							        <li><strong>Risk factor:</strong> Requires disciplined monitoring and market analysis.</li>
							    </ul>

							    <h4 class="pt-20">3. Threshold-Triggered Rebalancing (Guardrail Approach)</h4>
							    <ul>
							        <li><strong>How it works:</strong> Shifts trigger only when your actual asset mix drifts past a set percentage.</li>
							        <li><strong>Drift trigger:</strong> For example, a +/- 5% deviation from your target allocation.</li>
							        <li><strong>Action step:</strong> Sell the overperforming asset and buy the underperforming one.</li>
							        <li><strong>Benefit:</strong> Forces you to buy low and sell high automatically.</li>
							    </ul>
								<h4 class="pt-20">Download xl here</h4>
																		
																		
								
								<a href="/xl-folder/Financial_Goal_Planner.xlsx"><img src="/xl-folder/xl.webp" width="150px"></a>
							
						</div>
						
						<div class="tab-pane " id="4">
							<p>
						        An investment goal tracker works in reverse compared to a standard portfolio
						        monitor. Instead of telling you what your current money will grow to, it
						        calculates exactly how much you need to save today to achieve a specific
						        financial goal in the future.
						    </p>                      
							<h4 class="pt-10">Download Xl here</h4>
							<a href="/xl-folder/Other_Goals_Calculator.xlsx"><img src="/xl-folder/xl.webp" width="150px"></a>
																	
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
		