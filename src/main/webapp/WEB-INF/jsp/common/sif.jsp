<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<style>
 .header_color{
  background: #003399 !important;
 }   
  .breadcrumb > li + li::before {
    content: "\f22d" !important;
    font-family: fontawesome;
    font-size: 9px;
}
.breadcrumb>li+li:before {
    padding: 0 5px;
    color: #000 !important;
    content: "/\00a0";
}
.title_header{
    color: #000 !important;
}
.text-theme-colored {
    color: # !important;
}
.line-bottom {
    position: relative !important;
    margin-bottom: 0px !important;
    padding-bottom: 0px !important;

}
.d-card{
	padding: 20px;
    border-radius: 20px;
    /* border: 1px solid blue; */
    box-shadow: 4px 4px 10px 2px rgba(0, 0, 0, 0.2);
}
section > .container, section > .container-fluid {
    padding-top: 60px;
    padding-bottom: 0px;
}
.card {

     min-height: 0px; 
    padding-bottom: 0%;
   
}
.text-theme-colored2{
  color:#F57D00 !important;
}
.services-list ul li.active {
    background: #F57D00 !important;
}

.services-list ul li.active {
    background: #F57D00 !important;
    color:#fff !important;
}
.text-theme-colored2{
  color:#003399 !important;
}
.services-list ul li{
   background:#e59a4b40 !important;
  }
.sidebar-left .services-list ul li a {
    color: #000;
}
@media only screen and (max-width: 991px){
.pt-150 {
    padding-top: 22px !important;
}
}	
</style>

 <!-- Start main-content -->
<div class="main-content">
    <!-- Section: inner-header -->
    <section class="header_color">
      <div class="container pt-150 pb-10">
        <!-- Section Content -->
        <div class="section-content">
          <div class="row text-center">
            <div class="col-md-12">
              <h2 class="title text-dark title_header ">Specialized Investment Fund</h2>
              <ol class="breadcrumb text-black mt-10">
                <li><a href="/" class="title_header ">Home</a></li>
                <li class="active title_header ">Specialized Investment Fund</li>
              </ol>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Section: service-->
    <section id="service-section">
      <div class="container">
        <div class="row">
          <div class="col-md-12 blog-pull-right">
            <div class="single-service">
              <div class="card-body p-4 p-lg-5 text-center">
                  <p style="text-align: justify;">Specialized Investment Funds (SIF) are curated investment vehicles designed for sophisticated investors seeking unique opportunities beyond traditional mutual funds or stocks. These funds can focus on specific sectors, asset classes, or strategies-ranging from real estate, private equity, and infrastructure to hedge funds and venture capital. Governed by SEBI's Alternative Investment Fund (AIF) regulations, SIFs cater to High Net Worth Individuals (HNIs) and institutional investors by providing access to diversified, alternative portfolios that align with particular risk profiles and return expectations. Unlike standard investment avenues, SIFs employ advanced strategies such as leverage, derivatives, and active asset allocation, aiming to deliver superior, risk-adjusted returns. By participating in one of our Specialized Investment Funds, you can gain professional management, robust due diligence, and potential tax efficiency, all while investing in high-growth or niche sectors that are often inaccessible through mainstream channels.</p>
			</div>                  
           </div>
          </div>
         </div>
      </div>
    </section>
<!--     <section class="pb-60">
    	<div class="container">
    		<div class="row text-center">
    			<div class="col-lg-12">
    				 <h2>What Do We Do?</h2>
    				 <p>A Platform Designed To Help You Achieve Your Financial Goals.</p>
    			</div>
    		</div>
    		<div class="row text-center mt-50">
    			<div class="col-lg-6">
    				<div class="card d-card">
	    				<div class="card-body">
	    					<img src="/images/about/rupee.png">
		    				<h4>Investment Review</h4>
		    				<p>We regularly review your investments, compare them with your defined objectives, and use our algorithm to track your progress and provide predictions for goal achievement.</p>
		    			</div>
	    			</div>
    			</div>
    			<div class="col-lg-6">
    				<div class="card d-card">
	    				<div class="card-body">
	    					<img src="/images/about/fund.png">
		    				<h4>Funds Selection</h4>
		    				<p>Using various analytical techniques and research tools, we carefully select mutual fund schemes from different categories and group them based on your needs and goals.</p>
		    			</div>
	    			</div>
    			</div>
    		</div>
    		<div class="row text-center mt-50">
    			<div class="col-lg-6">
    				<div class="card d-card">
	    				<div class="card-body">
	    					<img src="/images/about/piggy-bank.png">
		    				<h4>Save Tax</h4>
		    				<p class="mb-30">Invest in Equity Linked Savings Schemes (ELSS) to get full tax benefits of up to 1.5 lakhs under section 80C with our top-rated selections.</p>
	    				</div>
	    			</div>
    			</div>
    			<div class="col-lg-6">
    				<div class="card d-card">
	    				<div class="card-body">
	    					<img src="/images/about/safe.png">
		    				<h4>Safe and Secure</h4>
		    				<p>Your payment goes directly to the NSE (National Stock Exchange), ensuring the security and safety of your funds. Once Mutual Fund units are allotted, you can view them in your SIPfund.com login.</p>
		    			</div>
	    			</div>
    			</div>
    		</div>
    	</div>
    </section> -->
  </div>
  <!-- end main-content -->