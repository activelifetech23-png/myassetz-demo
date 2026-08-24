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

.health a{
	color:#003399 !important;
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
					<div class="row" id>
						<div class="col-md-12">

					  		<ul class="nav nav-tabs  ">
								<li class="active pb-20 capital">
					    			<a href="#1" data-toggle="tab">Financial planning</a>
								</li>
								<li class=" pb-20" style="margin-left:15px;">
					    			<a href="#2" data-toggle="tab">Financial health check</a>
								</li>
							     <li class="pb-20" style="margin-left:15px;">
									<a href="#3 " data-toggle="tab">Budgeting and cashflow</a>
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
					  			<div class="tab-pane health" id="2">
									<h3>checklist to test your money health</h3>
									<h4> Are you spending more than you make? </h4>
									<p>Gaining control over your income and expenses is a good first step toward financial wellness. Are you outspending your earnings? One way to get a read is by checking in on your savings to spending ratio. For some workers, income may not be keeping pace with inflation, with wage growth relatively <a href="https://www.bls.gov/news.release/realer.t01.htm"> flat </a> month over month.1 Shrinking balances may be a red flag signaling it's time to take a closer look at your expenses and spending habits and more actively plan savings and expenditures.</p>
									<p>Focusing on values-based purchases is one way to help you strike the right balance between:</p>
									<ul>
										<li>Enjoying life today and setting aside funds for the longer term</li>
										<li>Managing essential and discretionary spending</li>
									</ul>
									<p>Developing a realistic budget and sticking to it is a straightforward and effective approach to managing your money. Tools like the 50-30-20 budget rule can be useful to help you stay true to a plan.</p>
									<h4>Is your retirement plan on track?</h4>
									<p>Purposeful retirement planning is integral to long-term financial fitness. How do you know if you're saving enough? There's no magic number for <a href="https://www.empower.com/the-currency/money/how-much-do-i-need-to-retire"> how much you'll need to retire </a> - it likely will depend on a variety of personal factors, from when you want to stop working and how long you'll need savings to last, to your income expectations and desired lifestyle during retirement years.</p>
									<p>Setting some specific savings goals, including putting aside <a href="https://www.empower.com/the-currency/life/how-much-should-i-save-for-retirement"> 10 - 15% </a> of pretax income as well as establishing <a href="https://www.empower.com/the-currency/life/how-much-should-i-save-for-retirement"> age-based savings targets, </a> will enable you to benchmark progress. If you expect to have other revenue sources that supplement savings - such as pensions, social security, or a part-time paycheck - consider putting some strategies in place to help <a href="https://www.empower.com/the-currency/life/retirement-income-planning-strategies"> maximize retirement income.</a> Even if you're behind, remember it's never too late to ramp up retirement savings. Increasing contributions by as little as <a href="https://www.empower.com/the-currency/money/saving-1%25-more"> 1% </a> can add up. Use the <a href="https://www.empower.com/the-currency/money/saving-1%25-more"> Empower 401(k) calculator </a> to estimate how much more you could accumulate.</p>
									<h4>Are you saving enough for an emergency?</h4>
									<p>Knowing how you'd pay an emergency expense is a positive sign that your finances are on track. As a general rule of thumb, aim to have enough emergency savings to cover <a href="https://www.empower.com/the-currency/money/emergency-fund-how-much-should-i-save#:~:text=How%20much%20should%20you%20save,spending%20is%20a%20good%20goal.">3 - 6 months </a> of expenses. However, Empower research reveals one third of Americans <a hhref="https://www.empower.com/the-currency/money/safety-net-emergency-savings-research"> (32%) don't have an emergency savings fund.</a></p>
									<p>If you're concerned a financial curveball could sink you, there are several steps you can take to add some padding to your emergency cushion. Think about incorporating emergency savings into your monthly budget or setting up automatic contributions. Even if it's a small amount, adding regularly to an emergency fund can gradually help improve your overall financial health. Keep in mind, <a href="https://www.empower.com/the-currency/money/emergency-fund-how-much-should-i-save"> emergency savings should be liquid </a> - a high-yield savings option will enable you to grow your money and at the same time allow you easy access to it if you need it. </p>
									<h4>Do you have a plan to pay down your debt?</h4>
									<p>Getting out from under debt can be one of the biggest obstacles on the road to financial wellness. Your budget should also include a plan to make a dent in your debt load. Living without debt will free up additional funds you can put toward saving and investing in your future. </p>
									<p>While the task can be daunting, there are several steps you can take to <a href="https://www.empower.com/the-currency/money/how-pay-off-debt"> manage your debt.</a> Start by identifying all your debt amounts and corresponding interest rates. There are a few different approaches you can take to chip away at balances. The <a href="https://www.empower.com/the-currency/money/how-pay-off-debt"> snowball method </a> focuses on paying off smallest to largest balances, regardless of interest rate. The <a href="https://www.empower.com/the-currency/money/how-pay-off-debt"> avalanche method </a> prioritizes tackling debts where you're paying the highest interest first. Whatever approach you choose, ideally you should also commit to eliminating, or at least minimizing adding new charges on credit cards as you look to maximize payments.</p>
									<h4>How's your credit score?</h4>
									<p>Your credit score provides a snapshot of how well you do with borrowing and paying back money. Credit health isn't a direct measurement of overall financial health, but it can have implications for your complete financial picture. Lenders will use it to determine your loan eligibility, and a high score may give you more borrowing power, help you land more favorable interest rates, or get higher spending limits on credit cards. Keep in mind scores can vary widely depending on your age and credit history, with the <a href="https://www.empower.com/the-currency/life/money/average-credit-score"> average sitting at 715 in late 2025.</a></p>
									<p>A lower credit score isn't cause for panic, but taking some simple steps such as avoiding delinquencies and trying to reduce the amount of revolving credit you use can help <a href="https://www.empower.com/the-currency/life/average-credit-score"> improve your score.</a> Once you've established a baseline for your credit health, continue to regularly monitor changes.</p>
									<h4>Do you have enough insurance coverage?</h4>
									<p>Insurance matters to your overall financial health because it can help protect what you've worked to achieve. Sufficient homeowners insurance, health, short- and long-term disability, or <a href="https://www.empower.com/the-currency/money/long-term-care-insurance-cost"> long-term care coverage </a> are considerations within your overall financial picture, and some options may be available through employer-sponsored plans. Your insurance needs may change over time, too, so be sure to review periodically and make changes as necessary. If you're purchasing private coverage, do your homework to find the best <a href="https://www.empower.com/the-currency/money/family-insurance-average-costs-news"> premiums, deductibles, and bundle pricing.</a> </p>
									<p>Life insurance can also provide valuable peace of mind. There are some significant differences between whole policies, which last until death, and term policies, which last for a certain amount of time. Be sure to familiarize yourself with the <a href="https://www.empower.com/the-currency/money/difference-between-term-whole-life-universal-life-insurance"> basics of life insurance </a> so you can select the option and coverage that's best suited for your financial goals.</p>
									<h4>Have you revisited your financial plan?</h4>
									<p>Finally, a comprehensive financial check-up should always include a review of your overall financial plan. Think about your values and priorities - your personal circumstances or wishes may change over time and your plan should consistently align with where you are in your life. Take stock of your investments, review your <a href="https://www.empower.com/the-currency/money/average-portfolio-mix-by-investor-age"> asset allocation,</a> and consider putting a <a href="https://www.empower.com/the-currency/money/how-do-i-create-a-solid-estate-plan-get-a-sense-check-news"> will and estate plan in place.</a> Any changes or updates should be made as soon as possible to ensure your plan is up to date.</p>
									<h3>Get organized</h3>
									<p>Once you've completed your financial health check-up, consolidate all your latest account and policy information so you can access it when you need it. Make note of some key dates and milestones and set a date on your calendar for your next check-in - you may be more likely to follow through when you're holding yourself accountable. Remember, committing to regular check-ups may help you breathe easier knowing you're taking positive, proactive steps toward long-term financial health.</p>
									</div>
								
								<div class="tab-pane" id="3">
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
	