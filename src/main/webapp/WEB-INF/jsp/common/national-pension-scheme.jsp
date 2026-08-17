<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<script src="https://code.iconify.design/iconify-icon/1.0.2/iconify-icon.min.js"></script>
<script src="https://kit.fontawesome.com/c36903e4bc.js" crossorigin="anonymous"></script>


<style>
.page-heading {
    padding-top: 6rem;
    padding-bottom: 2rem;
}
.service-menu{
	background-color:#edfbfa;
}
.serv-menu{
	color:#000;
}
.serv-menu-act{
	font-weight:600;
	color:#F48716 !important;
}
.text-justify{
	text-align:justify;
}
h4.service__title {
    height: 35px;
}
.service-item .service__icon img:nth-of-type(2) {
    position: absolute;
    right: -60px;
    font-size: 140px;
    opacity: 0.1;
    top: 100px;
}
</style>

    <!-- Main -->
    <main>
        <!-- Page Title -->
        <section class="page-title page-title-layout5">
	      <div class="bg-img"><img src="/images/backgrounds/6.jpg" alt="background"></div>
	      <div class="container">
	        <div class="row">
	          <div class="col-12">
	            <h1 class="pagetitle__heading">National Pension Scheme</h1>
	            <nav>
	              <ol class="breadcrumb mb-0">
	                <li class="breadcrumb-item"><a href="/">Home</a></li>
	                <li class="breadcrumb-item active" aria-current="page"> Services</li>
	                <li class="breadcrumb-item active" aria-current="page"> National Pension Scheme</li>
	              </ol>
	            </nav>
	          </div><!-- /.col-12 -->
	        </div><!-- /.row -->
	      </div><!-- /.container -->
	    </section>
        <!-- End Page Title -->
        <!-- Section -->
        <section class="section">
            <div class="container">
                <div class="row justify-content-center">
                	<div class="col-lg-3">
                        <div class="card">
                            <div class="card-body service-menu p-4">
                                <ul class="list-unstyled">
                                    <li class="mb-3"><a class="serv-menu" href="/services/mutual-fund"><iconify-icon icon="uil:angle-double-right" class="mb-0" style="padding-right: 0.3rem; font-size: 20px; vertical-align: middle;"></iconify-icon>Mutual Funds</a></li>
                                    <li class="mb-3"><a class="serv-menu" href="/services/stock"><iconify-icon icon="uil:angle-double-right" class="mb-0" style="padding-right: 0.3rem; font-size: 20px; vertical-align: middle;"></iconify-icon>Stock Broking</a></li>
                                    <li class="mb-3"><a class="serv-menu" href="/services/small-savings"><iconify-icon icon="uil:angle-double-right" class="mb-0" style="padding-right: 0.3rem; font-size: 20px; vertical-align: middle;"></iconify-icon>Small Savings</a></li>
                                    <li class="mb-3"><a class="serv-menu" href="/services/fixed-deposit"><iconify-icon icon="uil:angle-double-right" class="mb-0" style="padding-right: 0.3rem; font-size: 20px; vertical-align: middle;"></iconify-icon>Fixed Deposits</a></li>
                                    <li class="mb-3"><a class="serv-menu" href="/services/rbi-bonds"><iconify-icon icon="uil:angle-double-right" class="mb-0" style="padding-right: 0.3rem; font-size: 20px; vertical-align: middle;"></iconify-icon>RBI Bonds</a></li>
                                    <li class="mb-3"><a class="serv-menu" href="/services/life-insurance"><iconify-icon icon="uil:angle-double-right" class="mb-0" style="padding-right: 0.3rem; font-size: 20px; vertical-align: middle;"></iconify-icon>Life Insurance</a></li>
                                    <li class="mb-3"><a class="serv-menu" href="/services/health-insurance"><iconify-icon icon="uil:angle-double-right" class="mb-0" style="padding-right: 0.3rem; font-size: 20px; vertical-align: middle;"></iconify-icon>Health Insurance</a></li>
                                    <li class="mb-3"><a class="serv-menu-act" href="/services/national-pension-scheme"><iconify-icon icon="uil:angle-double-right" class="mb-0" style="padding-right: 0.3rem; font-size: 20px; vertical-align: middle;"></iconify-icon>National Pension Scheme (NPS)</a></li>
                                    <li class="mb-3"><a class="serv-menu" href="/services/home-and-personal-loans"><iconify-icon icon="uil:angle-double-right" class="mb-0" style="padding-right: 0.3rem; font-size: 20px; vertical-align: middle;"></iconify-icon>Home And Personal Loan</a></li>
                                    <li class="mb-3"><a class="serv-menu" href="/services/income-tax-filing"><iconify-icon icon="uil:angle-double-right" class="mb-0" style="padding-right: 0.3rem; font-size: 20px; vertical-align: middle;"></iconify-icon>Income Tax Filing</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-9">
                        <div class="card">
                            <div class="card-body p-4 p-lg-5">
                                <h4 class="mb-2">National Pension Scheme</h4>
                                <p class="text-justify">National Pension Scheme or NPS as it is popularly known, was initially launched by the Government in 2004 with the objective of changing the pension of retiring Government employees from defined benefit to defined contribution plan. In 2009, the scheme was opened for citizens of India. The broader objective of NPS is to convert India from a pension less society to a pensioned society like many developed economies.</p>
                                <h4 class="mb-2">Investment options in NPS</h4>
                                <p class="text-justify">In NPS the contributors can decide where to invest their contributions to the National Pension Scheme. Investor can decide between two choices:-</p>
                                <h6 class="pt-3">Active Choice:</h6>
                                <p class="text-justify">This is for informed investors who can decide where they want to invest their NPS contributions. There are four asset classes that you can choose from, depending on your risk appetite and investment needs. You can invest in multiple asset classes.</p>
                                <ul>
                                	<li class="mb-2">Asset Class E: Equity</li>
                                	<li class="mb-2">Asset Class D: Corporate debt</li>
                                	<li class="mb-2">Asset Class G: Government bonds</li>
                                	<li class="mb-2">Asset Class A: Alternative investments like REITs, AIFs, InvITs etc.</li>
                                </ul>
                                <h6 class="pt-3">Auto Choice:</h6>
                                <p class="text-justify">This is for investors who cannot decide on their own, where they to invest their NPS contributions. This option is like a life-cycle fund, where the asset allocation depends on the investor's age. There are three options in auto choice:-</p>
                                <ul>
                                	<li class="mb-2">Aggressive lifecycle fund: In this equity allocation is higher than the other two options</li>
                                	<li class="mb-2">Moderate lifecycle fund: In this equity allocation is higher than conservative but lower than the aggressive option</li>
                                	<li class="mb-2">Conservative lifecycle fund: In this equity allocation is lower than the other two options</li>
                                </ul>
                                <h4 class="mb-2">Types of NPS accounts</h4>
                                <h6 class="pt-3">Tier I Account:</h6>
                                <p class="text-justify">This account does not allow premature withdrawal before retirement (60 years of age). You can open a Tier I NPS account, with a deposit of Rs 500. You can claim tax deductions of up to Rs 50,000 from your taxable income under Section 80CCD by investing in Tier I account.</p>
                                <h6 class="pt-3">Tier II Account:</h6>
                                <p class="text-justify">This account allows withdrawal prior to retirement age. You can open a Tier II NPS account, with a deposit of Rs 1,000. Tier I Account is mandatory requirement to open a Tier II Account. Tier II NPS account is a voluntary savings facility; you cannot avail Section 80CCD tax benefits in Tier II account.</p>
                            	<h4 class="mb-2">Pension fund managers</h4>
                            	<p class="text-justify">Private sector employees can select among 11 pension fund managers. However, Government employees have to select from SBI Pension Fund, LIC Pension Fund and UTI Retirement Solutions only.</p>
                            	<ul>
                                	<li class="mb-2">SBI Pension Funds Pvt. Ltd.</li>
                                	<li class="mb-2">LIC Pension Fund Ltd.</li>
                                	<li class="mb-2">UTI Retirement Solutions Ltd.</li>
                                	<li class="mb-2">HDFC Pension Management Co. Ltd.</li>
                                	<li class="mb-2">ICICI Prudential Pension Fund Management Co. Ltd.</li>
                                	<li class="mb-2">Kotak Mahindra Pension Fund Ltd.</li>
                                	<li class="mb-2">Aditya Birla Sun Life Pension Management Ltd.</li>
                                	<li class="mb-2">Tata Pension Management Ltd.</li>
                                	<li class="mb-2">Max Life Pension Fund Management Ltd.</li>
                                	<li class="mb-2">Axis Pension Fund Management Ltd.</li>
                                </ul>
                                <div class="my-4">
                                	<h4 class="mb-2">Charges</h4>
                                	<img src="/images/services/national-pension-scheme/national-pension-scheme.png">
                                </div>
                                <h4 class="mb-2">NPS taxation on maturity</h4>
                            	<p class="text-justify">As per NPS rules, you can withdraw up to 60% in lump sum on maturity. This withdrawal is totally tax exempt, making NPS an extremely tax efficient investment option. The remaining 40% must be in re-invested in purchasing annuities (annuity is a fixed monthly sum received by the investor). Life Insurance Corporation of India (LIC) is the default annuity service provider, but you can also choose from 13 other annuity service providers empanelled with PFRDA. The annuities received by you, will be added to your income and taxed as per your income tax rate.</p>
                            	<p class="text-justify mt-4">If you want to open an NPS account, do contact us at MC Financial Services.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End section -->
    </main>
    <!-- End Main -->
