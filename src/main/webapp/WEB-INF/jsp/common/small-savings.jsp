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
	            <h1 class="pagetitle__heading">Small Savings</h1>
	            <nav>
	              <ol class="breadcrumb mb-0">
	                <li class="breadcrumb-item"><a href="/">Home</a></li>
	                <li class="breadcrumb-item active" aria-current="page"> Services</li>
	                <li class="breadcrumb-item active" aria-current="page"> Small Savings</li>
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
                                    <li class="mb-3"><a class="serv-menu-act" href="/services/small-savings"><iconify-icon icon="uil:angle-double-right" class="mb-0" style="padding-right: 0.3rem; font-size: 20px; vertical-align: middle;"></iconify-icon>Small Savings</a></li>
                                    <li class="mb-3"><a class="serv-menu" href="/services/fixed-deposit"><iconify-icon icon="uil:angle-double-right" class="mb-0" style="padding-right: 0.3rem; font-size: 20px; vertical-align: middle;"></iconify-icon>Fixed Deposits</a></li>
                                    <li class="mb-3"><a class="serv-menu" href="/services/rbi-bonds"><iconify-icon icon="uil:angle-double-right" class="mb-0" style="padding-right: 0.3rem; font-size: 20px; vertical-align: middle;"></iconify-icon>RBI Bonds</a></li>
                                    <li class="mb-3"><a class="serv-menu" href="/services/life-insurance"><iconify-icon icon="uil:angle-double-right" class="mb-0" style="padding-right: 0.3rem; font-size: 20px; vertical-align: middle;"></iconify-icon>Life Insurance</a></li>
                                    <li class="mb-3"><a class="serv-menu" href="/services/health-insurance"><iconify-icon icon="uil:angle-double-right" class="mb-0" style="padding-right: 0.3rem; font-size: 20px; vertical-align: middle;"></iconify-icon>Health Insurance</a></li>
                                    <li class="mb-3"><a class="serv-menu" href="/services/national-pension-scheme"><iconify-icon icon="uil:angle-double-right" class="mb-0" style="padding-right: 0.3rem; font-size: 20px; vertical-align: middle;"></iconify-icon>National Pension Scheme (NPS)</a></li>
                                    <li class="mb-3"><a class="serv-menu" href="/services/home-and-personal-loans"><iconify-icon icon="uil:angle-double-right" class="mb-0" style="padding-right: 0.3rem; font-size: 20px; vertical-align: middle;"></iconify-icon>Home And Personal Loan</a></li>
                                    <li class="mb-3"><a class="serv-menu" href="/services/income-tax-filing"><iconify-icon icon="uil:angle-double-right" class="mb-0" style="padding-right: 0.3rem; font-size: 20px; vertical-align: middle;"></iconify-icon>Income Tax Filing</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-9">
                        <div class="card">
                            <div class="card-body p-4 p-lg-5">
                                <h4 class="mb-4">Small Savings</h4>
                                <p class="text-justify">The Government of India has several small Savings schemes, like the Public Provident Fund (PPF), Senior Citizen Savings Scheme (SCSS), National Savings Certificate (NSC), Sukanya Samriddhi Yojana (SSY), Kisan Vikas Patra (KVP) and various deposit schemes available across the Post Offices in India. Small savings schemes are designed to provide safe and attractive investment options to the public and at the same time to mobilise resources for development.</p>
                                <p class="text-justify">Small Saving schemes are popular as they not only provide returns that are generally higher than bank fixed deposits but also come with a sovereign guarantee and income tax benefits. Since 2016, the Finance Ministry has been reviewing the interest rates on small savings schemes on a quarterly basis. All deposits received under various small savings schemes are pooled in the National Small Savings Fund which is used by the Central Government to finance its fiscal deficit.</p>
                                <p class="text-justify">The post office time deposits are akin to bank fixed deposits. A minimum investment of Rs 1,000 is required to open a time deposit account. Investments under the 5-year time deposit up to Rs 1.5 lakh in a financial year qualifies for benefit under section 80C of Income Tax Act 1961.</p>
                                <p class="text-justify">The Public Provident Fund is a verry popular saving option for tax saving and also for meeting long term goals like retirement, child higher education or wealth creation. It pays 7.1% a year and qualifies for tax benefit under Section 80C of the Income Tax Act 1961. Upon maturity of the account after 15 years, it can be extended indefinitely in blocks of 5 years. The accumulated amount and interest earned are exempt from tax at the time of withdrawal after 15 years. You can also get a loan after 5 years from your deposits in PPF.</p>
                                <p class="text-justify">The Sukanya Samriddhi Account was launched in 2015 under the Beti Bachao Beti Padhao campaign exclusively for a girl child. The account can be opened in the name of a girl child below the age of 10 years. The scheme guarantees a return of 7.6% per annum and is eligible for tax benefit under Section 80C of the Income Tax Act 1961. The tenure of the deposit is 21 years from the date of opening of the account and a maximum of Rs 1.5 lakh can be invested in a year.</p>                               
                                <p class="text-justify">While these time-tested and safe mode of investments don't offer quick returns, but they are much safer when compared to market-linked investment schemes. At MC Financial Services we help you invest in Small Savings Schemes from the comfort of your home.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End section -->
    </main>
    <!-- End Main -->
