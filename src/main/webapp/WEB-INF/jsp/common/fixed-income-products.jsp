<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<style>
@media screen and (max-width:991px){
	#mobMenuServ{
		display:none;
	}
}
 .header_color{
  background: #0085A1 !important;
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
.title_header{
    color: #000 !important;
}

.text-theme-colored2 {
    color: #F57D00 !important;
}
.line-bottom {
    position: relative !important;
    margin-bottom: 0px !important;
    padding-bottom: 0px !important;

}
.services-list ul li.active {
    background: #F57D00 !important;
}
 .title_header {
    color: rgba(255,255,255,1.00) !important;
	}
.services-list ul li.active {
    background: #F57D00 !important;
    color:#fff !important;
}
.text-theme-colored2{
  color:#F57D00 !important;
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
              <h2 class="title text-dark title_header">Fixed Income Products</h2>
              <ol class="breadcrumb text-black mt-10">
                <li ><a href="/" class="title_header">Home</a></li>
                <li class="active title_header ">Fixed Income Products</li>
              </ol>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Section: service-->
    <section>
      <div class="container">
        <div class="row">
          <div class="col-md-8 blog-pull-right">
            <div class="single-service">
                               <h3 class="mb-2">Fixed Income Products</h3>
                                <p class="text-justify">Fixed Income products are those investment options that pay a fixed amount as interest or dividend to its investors till the maturity date of the instruments. At the time of maturity, the investor is handed over the principal amount long with any accrued interest/dividends. Investors should be aware that the investment objective for choosing debt instruments is capital protection with guaranteed gains rather than capital appreciation as is the case with equity. </p>
                                <h5 class="pt-3">The following are some fixed income products available to investors in this asset class</h5>
                                <p class="text-justify"><span style="color:black; font-weight:600;">a.	Bank Fixed Deposits:</span> Popularly called FDs, these are the most popular investment option in India especially amongst the senior citizens. Banks offer fixed deposit terms of 6 months to even 10 years and a fixed rate of interest which could be on a cumulative or non- cumulative basis. FDs are the most secure investment options as in case if the bank defaults then the Government has insured a maximum deposit of 5 lakhs per bank. FDs can be withdrawn before their maturity date by paying a penalty.</p>
                                <p class="text-justify"><span style="color:black; font-weight:600;">b.	Post Office National Savings Monthly Income Plan ( POMIS): </span> This investment has a maturity period of 5 years and a maximum cap of 9 lakhs and 15 lakhs for single and joint ownership respectively. The investor can invest in the scheme offered by the finance ministry individually or with two more people. The rate of interest offered can vary between 5.5% to 7.4% based on the period of maturity. The interest is payable monthly and is a good option for investors who are looking for steady returns at low investment amounts.</p>
                                <p class="text-justify"><span style="color:black; font-weight:600;">c.	Public Provident Fund: </span> Since its inception, the PPF has come a long way and is a preferred mode of investment owing to its secure nature and tax saving feature. The Public Provident Fund has a maturity of 15 years and is fully guaranteed by the government with the present interest rates hovering around 7. 1%. The maximum maturity period of 15 years can be extended for a further 5 years. </p>
                                <p class="text-justify"><span style="color:black; font-weight:600;">d.	National Savings Certificates: </span> Government sponsored National Savings Certificate is a savings scheme offering fixed income returns. The minimum investment in NSC is Rs 100/- and there is no maximum limit to the amount you want to invest in the scheme. However, contributions up to Rs 1,50,000/- in the NSC are allowed as deductions from taxable income under Section 80 C of the Income tax Act. The interest rates on the NSC are fixed by the government taking into consideration factors like inflation. NSC are also accepted as collateral in case you want to apply for a loan.</p>
                                <p class="text-justify"><span style="color:black; font-weight:600;">e.	National Pension Scheme: </span> This is a retirement benefit scheme implemented by the Government of India. The scheme is designed to provide a regular income to retirees. Each investor receives a unique registration number called PRAN. The investors can choose to allocate their investment in equity linked securities or government securities as per individual preference. Investments up to a maximum limit of Rs 1,50,000/ U/S 80C and an additional maximum amount of Rs 50,000/- is eligible for tax deduction U/S 80CCD (1B) of income tax Act 1961.</p>
                                <p class="text-justify"><span style="color:black; font-weight:600;">f.	Debt Mutual Funds:</span> These are mutual funds that invest in debt securities such as corporate bonds, government bonds, money market instruments and commercial papers etc.  Debt mutual funds offer higher returns than conventional fixed income options like FDs. Debt funds can be a good option for investors who have a low risk appetite and are looking for a regular income which is not much prone to volatility.</p>
                                
<!--                                 <div class="col-lg-12 col-sm-12">
		                        	<div class="row mt-5">
		                        		<div class="col-lg-6 col-md-6 col-sm-12">
		                        			<img src="https://www.shilpa-associates.com/img/services/mutual-fund-1.jpg">
			                        	</div>
			                        	<div class="col-lg-6 col-md-6 col-sm-12">
		                        			<img src="https://www.shilpa-associates.com/img/services/mutual-fund-2.jpg">
			                        	</div>
		                        	</div>
		                        </div> -->
                           

            </div>
          </div>
   <div class="col-sm-12 col-md-4" id="mobMenuServ">
            <div class="sidebar sidebar-left mt-sm-30 ml-40">
              <div class="widget">
                <h4 class="widget-title line-bottom">Service <span class="text-theme-colored2">List</span></h4>
                <div class="services-list">
                  <ul class="list list-border">
                    <li><a href="/tax-planning"> Tax Consultancy</a></li>
                 	<li><a href="/mutual-fund">Mutual Fund</a></li>
                 	<li><a href="/accounting-services">Accounting Services</a></li>
                 	<li class="active"><a href="/fixed-income-products">Fixed Income Products</a></li>
                 	<li><a href="/fixed-deposit">Fixed Deposities</a></li>
                 	<li><a href="/bonds-and-ncd">Bonds & Ncd</a></li>
                 	<li><a href="/life-insurance">Life Insurance</a></li>
                 	<li><a href="/health-insurance">Health Insurance</a></li>
                 	<li><a href="/general-insurance">General Insurance</a></li>
                 	<li><a href="/loan-service"> Loan Products</a></li>
                    <!--  <li><a href="/gold & silver-investments">Gold & Silver Investments</a></li>-->
                  </ul>
                </div>
              </div>

            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
  <!-- end main-content -->