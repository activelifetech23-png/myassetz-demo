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
              <h2 class="title title_header">Investment strategy based on your risk profile and asset allocation </h2>
              <ol class="breadcrumb mt-10">
                <li><a href="/" class="title_header">Home</a></li>
                <li><a href="/" class="title_header">services</a></li>
                <li class="active title_header">Investment strategy based on your risk profile and asset allocation </li>
              </ol>
            </div>
          </div>
        </div>
      </div>
    </section>
	<section class="hero-background " >
					
					<div class="container pb-0">
						<div class="row align-items-center justify-content-center">
							<div class="col-lg-6 text-center">
								<div class="tarns-piggy-back">
									<img class="img-fluid" src="/images/about/tranparent-piggy.png">
								</div>
							</div>
							<div class="col-lg-6">
								<h1>Investment Planning is core of reaching your Goals</h1>
								<p>	We help you plan your existing and new investments in such a way that you are able to reach your Financial Goals.</p>
								<!--<a href="/contactus"><button class="btn about mt-20">Contact Us</button></a>-->									
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
						<li class="active pb-20 capital">
	            			<a href="#1" data-toggle="tab">Your risk profile</a>
						</li>
					     <li class="pb-20" style="margin-left:15px;">
							<a href="#2 " data-toggle="tab">Asset allocation</a>
						</li>
						<!--<li class="pb-20" style="margin-left:15px;">
							<a href="#3" data-toggle="tab">General Insurance</a>
						</li>-->
					</ul>
					<div class="tab-content ">
			  			<div class="tab-pane active" id="1">
							<h4 class="mt-20">1. Evaluate Your Risk Profile</h4>
							<p>Your risk profile dictates how your portfolio behaves during market swings. It consists of three distinct, overlapping pillars:  </p>
							<ul>
								<li><b> Risk Capacity </b> : Your objective financial ability to take losses.</li>
								<li><b> Risk Tolerance </b> : Your emotional comfort level with market volatility.</li>
								<li><b> Risk Required </b> : The return needed to achieve specific goals.</li>
							</ul>	
							<h4 class="mt-20">2. Identify Your Risk Category</h4>
							<p>Investors generally fall into one of four primary risk categories. Review the descriptions below to see which baseline best matches your financial situation and psychology: </p>
							<h5 class="mt-20">Conservative</h5>
							<ul>
								<li><b> Primary Goal </b> : Capital preservation over growth.</li>
								<li><b> Time Horizon </b> : Short term (< than 3 years), medium term (3 to 7 years) and long term (7 years and 15 years) and very long term (15 years and above)</li>
								<li><b> Psychology </b> : High anxiety during market drops.</li>
								<li><b> Target Returns </b> : Low, stable, inflation-matching yields.</li>
							</ul>
							<h5 class="mt-20">Moderate</h5>
										<ul>
											<li><b> Primary Goal </b> : Balancing growth with income.</li>
											<li><b> Time Horizon </b> : Short term (< than 3 years), medium term (3 to 7 years) and long term (7 years and 15 years) and very long term (15 years and above)</li>
											<li><b> Psychology </b> : Willing to accept minor fluctuations.</li>
											<li><b> Target Returns </b> : Steady, market-average long-term growth.</li>
										</ul>
							<p><a href="https://cannygroup.com.au/blog/risk-profile-financial-advisory-services/">1</a> | <a href="https://www.getsmarteraboutmoney.ca/learning-path/understanding-risk/what-is-risk-tolerance-in-investing/">2</a> | <a href="https://www.angelone.in/knowledge-center/mutual-funds/riskometer-in-mutual-fund">3</a> | <a href="https://www.bajajamc.com/knowledge-centre/risk-tolerance">4</a> | <a href="https://www.paisabazaar.com/mutual-funds/investment-horizon/">5</a></p>
							
							<h5 class="mt-20">Growth</h5>
							<ul>
								<li><b> Primary Goal </b> : Significant capital appreciation over time.</li>
								<li><b> Time Horizon </b> : Short term (< than 3 years), medium term (3 to 7 years) and long term (7 years and 15 years) and very long term (15 years and above)</li>
								<li><b> Psychology </b> : Comfortable with frequent market swings.</li>
								<li><b> Target Returns </b> : Above-average returns via equity exposure. </li>
							</ul>
							<h5 class="mt-20">Aggressive</h5>
							<ul>
								<li><b> Primary Goal </b> : Maximum possible long-term wealth accumulation.</li>
								<li><b> Time Horizon </b> : Short term (< than 3 years), medium term (3 to 7 years) and long term (7 years and 15 years) and very long term (15 years and above)</li>
								<li><b> Psychology </b> : Unfazed by steep, sudden market crashes.</li>
								<li><b> Target Returns </b> : High alpha, accepting high loss risks. </li>
							</ul>
		    
								
						  		
										  
									  
						</div>
						
						<div class="tab-pane" id="2">
							<h4 class="pt-20">1.Review Standard Asset Allocation Frameworks</h4>
															<p>Asset allocation distributes your capital across non-correlated asset classes to optimize risk-adjusted returns. Below is a standard baseline table mapping risk profiles to target models: </p>
															
															    <div class="table-responsive">
															        <table class="table allocation-table">
															            <thead>
															                <tr>
															                    <th>Risk Profile</th>
															                    <th >
															                        Equities<br>
															                        <small>(Stocks)</small>
															                    </th>
															                    <th >
															                        Fixed Income<br>
															                        <small>(Bonds)</small>
															                    </th>
															                    <th >
															                        Cash<br>
															                        <small>Equivalents</small>
															                    </th>
															                    <th >
															                        Alternative<br>
															                        <small>Assets</small>
															                    </th>
															                </tr>
															            </thead>

															            <tbody>
															                <tr>
															                    <td><strong>Conservative</strong></td>
															                    <td>10%</td>
															                    <td>75%</td>
															                    <td>10%</td>
															                    <td>5%</td>
															                </tr>

															                <tr>
															                    <td><strong>Moderate</strong></td>
															                    <td>50%</td>
															                    <td>40%</td>
															                    <td>5%</td>
															                    <td>5%</td>
															                </tr>

															                <tr>
															                    <td><strong>Growth</strong></td>
															                    <td>70%</td>
															                    <td>20%</td>
															                    <td>5%</td>
															                    <td>5%</td>
															                </tr>

															                <!-- Optional -->
															                <tr>
															                    <td><strong>Aggressive</strong></td>
															                    <td>90%</td>
															                    <td>0%</td>
															                    <td>5%</td>
															                    <td>5%</td>
															                </tr>

															            </tbody>
															        </table>
															    </div>
															<h4 class="pt-20">2. Execute Your Strategy in 4 Steps</h4>
															<p>To turn your risk profile into a live portfolio, execute this mechanical sequence:</p>
															<p>1.	<b>Calculate Time Horizon</b>: Map out exactly when you need the cash.</p>
															<p>2.	<b> Select Index Funds </b>: Choose low-cost, broad-market index exchange-traded funds (ETFs).</p>
															<p>3.	<b> Automate Investments </b>: Set up recurring monthly contributions to eliminate emotional timing.</p>
															<p>4.	<b> Rebalance Bi-Anually </b>: Reset asset weights back to your original target percentages.</p>

							 
							
						</div>
						
											</div>
				</div>
			</div>
		</div>
	</section>
	
		
	
	