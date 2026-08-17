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
	            <h1 class="pagetitle__heading">RBI Bonds</h1>
	            <nav>
	              <ol class="breadcrumb mb-0">
	                <li class="breadcrumb-item"><a href="/">Home</a></li>
	                <li class="breadcrumb-item active" aria-current="page"> Services</li>
	                <li class="breadcrumb-item active" aria-current="page"> RBI Bonds</li>
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
                                    <li class="mb-3"><a class="serv-menu-act" href="/services/rbi-bonds"><iconify-icon icon="uil:angle-double-right" class="mb-0" style="padding-right: 0.3rem; font-size: 20px; vertical-align: middle;"></iconify-icon>RBI Bonds</a></li>
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
                                <h4 class="mb-2">What are bonds?</h4>
                                <p class="text-justify">Bonds are fixed income instruments which pay fixed rate of interest at regular intervals and the principal amount on maturity. Bonds as an asset class are very popular in the developed economies. However, the bond market in India has historically been relatively small. In more recent times, with Bank FD interest rates declining, bonds are gaining a lot of popularity among retail and HNI investors.</p>
                                <h4 class="pt-3">How do bonds work?</h4>
                                <p class="text-justify">You can buy bonds both from the primary market (at the time when the bond is issued) or from the secondary market (stock exchanges). You need to have Demat accounts to invest in bonds in secondary market.  If you buy in the primary issue, you will get the bond at face value. In the secondary market, the bonds will be priced either at premium or discount to the face value based on prevailing interest rates. The bond will make periodic interest payments to you based on the coupon rate. On maturity you will get the face value of the bond. You can also sell the bond before maturity in the secondary market at prevailing market price.</p>
                                
                                <h4 class="pt-3">Key terms to understand in bond investing</h4>
                                <h6 class="pt-3">Secured / unsecured:</h6>
                                <p class="text-justify">A secured bond is one which is backed by collateral. Collateral refers to assets of the bond issuer which can be used as security against the loan. If the issuer defaults for any reason, the collateral can be sold to pay the investors. A secured bond has much lower credit risk compared to an unsecured bond.</p>
                                <h6 class="pt-3">Face Value:</h6>
                                <p class="text-justify">The bonds are issued at face value. Face value is the amount that will be paid to you upon maturity of the bond. Coupon or interest paid by the bond is on face value. Bonds may trade at premium or discount to the face value. In other words, if you are buying the bond in secondary market (i.e. stock exchanges), then the price at which you buy will be higher or lower than the face value.</p>
                                <h6 class="pt-3">Coupon Rate:</h6>
                                <p class="text-justify">This is the rate of interest that will be paid to you on a periodic basis. For example, if face value of a bond is Rs 1,000 and the coupon rate is 8%, then you will get Rs 80 as interest every year.</p>
                                <h6 class="pt-3">Frequency of coupon payments:</h6>
                                <p class="text-justify">This refers to the intervals at which coupon payments will be made e.g. half yearly, annual etc.</p>
                                <h6 class="pt-3">Redemption date:</h6>
                                <p class="text-justify">This refers to the date when the bond will mature. You will get the face value of the bond, along with accrued interest (if any) on the redemption date.</p>
                                <h6 class="pt-3">Accrued Interest:</h6>
                                <p class="text-justify">Accrued interest is the interest accrued by the seller from the last coupon payment date till the date on which the bond is sold. Since the buyer will get the full year's interest on the next coupon date, the accrued interest is included in the bond's quoted price. The bond's price including the accrued interest is known as the dirty price. The clean price of the bond = Dirty price - accrued interest.</p>
                                <h6 class="pt-3">Yield to maturity:</h6>
                                <p class="text-justify">YTM of a fixed income instrument is the return on investment (assuming interest payments are re-invested at the same rate) if you hold the instrument till its maturity. When calculating yields, both interest payments (coupons) and principal payment (face value) on maturity must be taken into consideration. Higher the YTM, higher the returns. YTM.</p>
                                <h6 class="pt-3">Duration:</h6>
                                <p class="text-justify">Duration refers to the interest rate risk of a bond. There are two types of durations - Macaulay Duration and Modified Duration. Macaulay and Modified Durations are closely related. Macaulay duration is the weighted average term to maturity of the cash flows from a fixed income security. In simplistic terms, Macaulay Duration is the weighted average number of years an investor must maintain a position in a fixed income instrument until the present value of the fixed income instrument's cash flows equals the amount paid for the instrument. Duration and maturity are related - longer the maturity, longer is the duration. It is important for you to know that <b>duration is directly related to the interest rate sensitivity of a bond</b>. Higher the duration, higher is the bond's sensitivity to interest changes. Modified duration is simply the percentage change in price due to the percentage change in interest rate.</p>
                                <h6 class="pt-3">Bond rating:</h6>
                                <p class="text-justify">Bonds are rated by credit rating agencies like CRISIL and ICRA. Higher the credit rating lower is the credit risk. You should know that bo nds with lower ratings will have higher YTMs but the risk is also higher. You should make informed investment decisions.</p>
                                <h4 class="mb-2 pt-3">Different types of bonds</h4>
                                <h6 class="pt-3">Corporate Bonds:</h6>
                                <p class="text-justify">These are secured bonds issued by companies.</p>
                                <h6 class="pt-3">Sovereign Gold Bonds (SGBs):</h6>
                                <p class="text-justify">These are gold bonds (backed by gold) issued by RBI on behalf of the Government.</p>
                                <h6 class="pt-3">Government Securities (G-Secs):</h6>
                                <p class="text-justify">These are Government bonds issued by RBI on behalf of the Government of India. These bonds have sovereign guarantee.</p>
                                <h6 class="pt-3">Non convertible debentures (NCDs):</h6>
                                <p class="text-justify">These are unsecured bonds issued by companies.</p>
                                <h6 class="pt-3">RBI Bonds:</h6>
                                <p class="text-justify">The Government of India launched the Floating Rate Savings Bonds, 2020 (Taxable) scheme on July 01, 2020 to enable Resident Indians/HUF to invest in a taxable bond, without any monetary ceiling. The investment tenure of these Bonds are 7 years. The interest is paid semi annually on 1st January and 1st July. The current coupon rate is 7.15% and the coupon/interest of the Bond is reset half yearly based on National Savings Certificate (NSC) rate (Base rate + 35bps).</p>
                                <h6 class="pt-3">Capital Gain Bonds:</h6>
                                <p class="text-justify mb-5">You can save capital gains tax arising out sale of capital assets e.g. property etc by investing in capital gains bonds u/s 54EC. Long-term capital gain is the gain that is derived out of a sale of an asset (Land or Building) that has been held for more than 2 years. You can invest the gain in certain specified bonds to claim tax exemption within 6 months of the date of sale of the asset. 54EC bonds, or capital gains bonds, are one of the best way to save long-term capital gain tax arising out of sale a capital asset.The maximum limit for investing in 54EC bonds is Rs. 50,00,000. The eligible bonds under Section 54EC are REC (Rural Electrification Corporation Ltd), PFC (Power Finance Corporation Ltd) , NHAI (National Highways Authority of India) and IRFC (Indian Railways Finance Corporation Limited). The tenure of these Bonds are usually 5 years.</p>
                                <h4 class="mb-2">How to invest in bonds?</h4>
                                <p class="text-justify">You can contact us to buy any type of Bonds.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End section -->
    </main>
    <!-- End Main -->
