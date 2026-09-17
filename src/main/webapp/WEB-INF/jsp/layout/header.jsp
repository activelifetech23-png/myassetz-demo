<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<style>
	
.menuzord-brand{
	
	margin:18px 0px 0 0 !important;
}

.text-center {
    text-align: center;
}
.menuzord-menu > li {
    padding: 38px 2px;
}
.menuzord-menu > li > a {
    font-family: 'Montserrat', sans-serif;
    padding: 8px 8px;
    display: inline-block;
    text-decoration: none;
    font-size: 14px;
    font-weight: 600;
    color: #3b3030;
    outline: 0;
    line-height: 1.42857143;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
    -webkit-tap-highlight-color: transparent;
}

@media only screen and (max-width: 896px) {
	.menuzord-menu > li {
	    padding: 0px 2px !important;
	}  
}

@media screen and (max-width: 1150px) and (min-width: 992px) {
  .menuzord-menu > li > a {
    padding: 8px 5px;
    display: inline;
    font-family: 'Montserrat', sans-serif;
}
} 
@media (max-width: 900px) {
    .menuzord-responsive .menuzord-brand {
        margin: 0px;
        font-size: 20px;
        line-height: 1.55;
		padding-top:10px;
    }
}
@media (min-width: 1000px) {
.header_color {
    margin-top: 40px;
    background: #d8fdd8 !important;
}
}
@media screen and (max-width: 1000px) and (min-width: 1600px) {
.header_color {
    margin-top: 40px;
    background: #d8fdd8 !important;
}
}
.menuzord.blue .menuzord-menu > li.active > a, .menuzord.blue .menuzord-menu > li:hover > a, .menuzord.blue .menuzord-menu ul.dropdown li:hover > a {
    background: #27A840 ;
    color: #fff;
	border-radius: 5px;
}
.menuzord.blue .menuzord-menu > li.active > a:hover{
     background: #4c8552 ;
    color: #fff;
}
.topbarback {
    background: #F9A003;
    padding-top: 5px;
}
</style>


  <!-- Header -->
  <header id="header" class="header header-floating header-floating-text-dark">
    <div class="header-nav navbar-scrolltofixed navbar-sticky-animated">
    <div class="container-fluid topbarback">
       <div class="container">
       		<div class="row">
       			<div class="col-lg-6 col-md-6">
       				<p class="mb-0 text-white"><i class="bi bi-clock secondary-highlight-text"></i> Opening Hours: Monday - Saturday : 10:00 AM to 9:00 PM </p>
       			</div>
       			
       			<div class="col-lg-6 col-md-6 text-right">
       				<p class="text-white  text-sm-left"><i class="fa fa-phone text-white mr-5"></i>Office Number : <a class="text-white" href="tel:+91 9840961174">+91 9840961174</a> </p>
       			</div>
       		</div>
       </div>
   </div>
      <div class="header-nav-wrapper">
        <div class="container">
          <nav id="menuzord-right" class="menuzord blue bg-white pl-15 pr-15 ">
            <a class="menuzord-brand text-center flip mb-15" href="/"><img src="/images/logo/logo.jpeg" alt="">
            <figcaption class="text-center figcaption" style="font-size: 10px;">Certified Financial Planner</figcaption></a>
			 <ul class="menuzord-menu mt-10">
              <li><a href="/">Home</a></li>
			  <!--<li><a href="/aboutus">About Us</a></li>-->
             <li><a href="#">About</a>
              	<ul class="dropdown mt-10">
			  		<li><a href="/aboutus">About Us</a></li>
			  		<li><a href="/about-founder">About Founder</a></li>
					<!--<li><a href="/figure-out-your-finances">Figure Out Your Finances</a></li>-->
			  	</ul>	
			  	</li>
				<li><a href="#">Services</a>
                <ul class="dropdown mt-10">
                    <li><a href="/financial-service">Financial planning</a></li>
					<li><a href="/risk-management-through-insurance">Risk management</a></li>
					<li><a href="/investment-strategy-based-on-your-risk-profile-and-asset-allocation">Investment strategy</a></li>
					<li><a href="/multiple-future-goals-planning">Multiple Goals planning</a></li>
					<li><a href="/retirement-planning">Retirement planning</a></li>
					<li><a href="/tax-planning">Tax planning</a></li>
                  
                 	
                 	<li><a href="/net-worth">	Your Networth</a></li>
                 	
                 	<li><a href="/know-your-liabilities">Know your liabilities</a></li>
                 	<li><a href="/portfolio-performance-tracker">Your current portfolio performance</a></li>
                 	
                 	<li><a href="/budgeting-and-cash-flow">Budgeting tool</a></li>
					 
                </ul>
              </li>
				<!-- <li><a href="/mutual-fund">Mutual Fund</a></li> -->
         	  <li><a href="#">Products</a>
                <ul class="dropdown mt-10">
                    <li><a href="/mutual-fund">Mutual Fund</a></li>
					<li><a href="/insurance">Insurance</a></li>
					<li><a href="/pms">PMS</a></li>
					<li><a href="/bonds-and-ncd">Bonds</a></li>
					<li><a href="/aif">AIF</a></li>
					<li><a href="/unlisted-shares">Unlisted shares</a></li>
					<li><a href="/national-pension-scheme">National Pension Scheme</a></li>
                 	
                 	<!--<li><a href="/sif">Specialized Investment Fund (SIF)</a></li>-->
                 	
                 	<!--<li><a href="/health-insurance">Health Insurance</a></li>
                 	<li><a href="/demat-services">Demat Services</a></li>-->
                 	
                 	<!--<li><a href="/fixed-deposit">Fixed Deposit</a></li>-->
                 	
                 	
                <!--  	<li><a href="/loan-service">Loans</a></li> -->
                </ul>
              </li>
  			  <li><a href="#">Calculators</a>
                <ul class="dropdown mt-10">
                 	<li><a href="/tools-and-calculators/become-a-crorepati">Become A Crorepati</a></li>
                    <li><a href="/tools-and-calculators/systematic-investment-plan-calculator">SIP Return Calculator</a></li>
                    <li><a href="/tools-and-calculators/cost-of-delay-calculator">Cost Of Delay Calculator</a></li>
					<li><a href="/tools-and-calculators/networth-calculator">Networth Calculator</a></li>
					<li><a href="/tools-and-calculators/home-loan-emi-calculator">Home Loan EMI Calculator</a></li>
					<li><a href="/tools-and-calculators/composite-financial-goal-planner-calculator">Composite Financial Goal Planner Calculator</a></li>
                    <!--<li><a href="/tools-and-calculators/mutual-fund-sip-calculator-step-up">Mutual Fund Sip Calculator Step Up</a></li>
                    <li><a href="/tools-and-calculators/lumpsum-target-calculator">Lumpsum Target Calculator</a></li>
                    <li><a href="/tools-and-calculators/children-education-planner">Children Education Planner</a></li> 
                    <li><a href="/tools-and-calculators/target-amount-sip-calculator">Target Amount SIP Calculator</a></li>
                      <li><a href="/tools-and-calculators/swp-calculator">SWP Calculator</a></li> -->
                </ul>
              </li>
               <li><a href="/contactus">Contact Us</a></li>
			   <li><a href="/blog">Blogs</a></li>
			   <li><a href="#">Resources</a>
               <ul class="dropdown mt-10">
   		  		
   				<li><a href="https://investor.sebi.gov.in/financial_health_check.html">Financial health check link</a></li>
				<li><a href="/budgeting-and-cash-flow">Budgeting and cash flow</a></li>
				<li><a href="/blog">Blogs</a></li>
   		  	</ul>	
   		  	</li>
              <li class="active pull-right pl-lg-5"><a href="https://www.assetplus.in/#!/login"  class="font-14 line-height-2"><i class="fa fa-user-o mr-5 font-14"></i> Login</a></li>
              <li class="active pull-right pl-lg-5"><a href="https://www.assetplus.in/#!/signup"  class="font-14 line-height-2"><i class="fa fa-user-o mr-5 font-14"></i> Sign Up</a></li>
               
            </ul>
          </nav>
        </div>
      </div>
      
    </div>
  </header>
