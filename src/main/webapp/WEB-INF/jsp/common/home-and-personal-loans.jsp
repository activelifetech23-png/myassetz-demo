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
                                    <li class="mb-3"><a class="serv-menu" href="/services/national-pension-scheme"><iconify-icon icon="uil:angle-double-right" class="mb-0" style="padding-right: 0.3rem; font-size: 20px; vertical-align: middle;"></iconify-icon>National Pension Scheme (NPS)</a></li>
                                    <li class="mb-3"><a class="serv-menu-act" href="/services/home-and-personal-loans"><iconify-icon icon="uil:angle-double-right" class="mb-0" style="padding-right: 0.3rem; font-size: 20px; vertical-align: middle;"></iconify-icon>Home And Personal Loan</a></li>
                                    <li class="mb-3"><a class="serv-menu" href="/services/income-tax-filing"><iconify-icon icon="uil:angle-double-right" class="mb-0" style="padding-right: 0.3rem; font-size: 20px; vertical-align: middle;"></iconify-icon>Income Tax Filing</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-9">
                        <div class="card">
                            <div class="card-body p-4 p-lg-5">
                                <h4 class="mb-2">Home and Personal Loans</h4>
                                <h6 class="pt-3">Home loan:</h6>
                                <p class="text-justify">Home loan is long term product to finance the purchase of property. You have to make a down payment (percentage of the purchase consideration) and the lender will provide rest of the funds. For under construction properties, the home loan can also be construction linked. You have to make loan re-payments in equal monthly instalments (EMI). In home loan, the property will be lien with the lender. Some of the leading financial institution which provide home loan are LIC Housing Finance Ltd., HDFC Ltd, Bajaj Housing Finance and leading nationalized and private banks.</p>
                                <h6 class="pt-3">Personal loan:</h6>
                                <p class="text-justify">This is an unsecured loan for certain short term tenure. Loan approval will depend on your credit history. You can check your credit score by visiting the website of some financial institutions or Fintech company websites. There are two types of personal repayments. The most popular repayment is in equal monthly instalments (EMI). Some lenders may allow bullet repayment, whereby you will have to pay the interest every month and the principal at the end of the tenure.</p>                               
                            	<p class="text-justify mt-4">At MC Financial Services, we help you in availing home loan and personal loan from leading financial institutions.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End section -->
    </main>
    <!-- End Main -->
