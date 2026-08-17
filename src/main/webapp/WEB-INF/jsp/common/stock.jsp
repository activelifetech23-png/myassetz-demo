u<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	            <h1 class="pagetitle__heading">Stock Broking</h1>
	            <nav>
	              <ol class="breadcrumb mb-0">
	                <li class="breadcrumb-item"><a href="/">Home</a></li>
	                <li class="breadcrumb-item active" aria-current="page"> Services</li>
	                <li class="breadcrumb-item active" aria-current="page"> Stock Broking</li>
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
                                    <li class="mb-3"><a class="serv-menu-act" href="/services/stock"><iconify-icon icon="uil:angle-double-right" class="mb-0" style="padding-right: 0.3rem; font-size: 20px; vertical-align: middle;"></iconify-icon>Stock Broking</a></li>
                                    <li class="mb-3"><a class="serv-menu" href="/services/small-savings"><iconify-icon icon="uil:angle-double-right" class="mb-0" style="padding-right: 0.3rem; font-size: 20px; vertical-align: middle;"></iconify-icon>Small Savings</a></li>
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
                                <p class="text-justify">Stocks or equity is an extremely important asset class in investments. In the past 3 years, the number of demat accounts have tripled and now there are 10 crore demat accounts in India. 4.8% of Indian household assets (as of March 2022) are in equities compared to 2.7% in 2020. Experts think that equity as an asset class is poised to take off in a big way in India in the coming years.</p>
                                <h4 class="pt-3">History</h4>
                                <p class="text-justify">India has a long history of equity investing. The Bombay Stock Exchange was set up in the 1800s. However, the biggest changes in equity market came after the economic liberalization in 1991. Setting up of National Stock Exchange (NSE), Securities and Exchange Board of India (SEBI) as the regulator of capital markets, Depositaries, introduction of screen based trading, introduction of derivatives (Futures and Options), reforms on FII / FPI investments etc, were important milestones in the evolution of stock market. In this article, we will discuss some important aspects of investing in stocks.</p>
                                <h4 class="pt-3">What are stocks?</h4>
                                <p class="text-justify">If a company wants to raise funds from the public, it lists on a stock exchange and issues it shares to the investors. Shares of listed companies are known as stocks. Post listing, the shares of the company are traded in the stock exchange. Investors can buy or sell shares from the stock exchange through their stock-brokers. If the stock appreciates in price, then the investor gets capital appreciation. The company may also pay regular dividends to the shareholders, which results in additional income from the shareholder / investor.</p>
                                <h4 class="pt-3">How can I invest in stocks?</h4>
                                <p class="text-justify">You need to have a demat account to invest in stocks. You can approach a stock-broker to open a demat account. You will have to provide KYC documents like copies of PAN card, address proof (e.g. Aadhaar card), bank proof (e.g. bank statement, passbook), income proof (e.g. bank statement, ITR) and any other document your stock-broker. All the shares owned by you or to be purchased by you will be held in dematerialized (electronic) form in your demat account. Along with the demat account, your stock-broker will also open trading account for you. You will buy / sell shares through your trading account.</p>
                                <h4 class="pt-3">How to buy / sell stocks?</h4>
                                <p class="text-justify">You should identify which scrip to buy after doing some research if it suitable for your risk appetite. Mention the scrip name, price, quantity, type of order and stock exchange in which the order will be executed to your dealer (stock-broker). You can do this either off-line (by visiting the broker's office or by calling your dealer / broker) or online through the trading platform (desktop or mobile app) provided by your broker. For online orders, you may have to fulfil the verification process of the through OTP sent to your registered mobile number. Finally, at the end of day, you should verify your trade by checking the electronic contract notes sent by your broker to your registered email address.</p>
                                <p class="text-justify">There are commonly three types of orders in stock trading - market order, limit order and stop loss order. In a market order, you will instruct the broker to buy / sell the specified scrip in the required quantity at current market price. In a limit order, you will instruct the broker to buy / sell the specified scrip in the required quantity at the price you want. For example, if you want to buy a stock at Rs 100, the limit order will be executed only if the share price is Rs 100 or lower. Similarly, if you want to sell a stock at Rs 100, the limit order will be executed only if the share price is Rs 100 or higher. In a stop loss order, you will ask the broker to sell your shares if the price falls below a certain level.</p>
                                <h4 class="pt-3">Costs in share trading</h4>
                                <h6 class="pt-3">Brokerage:</h6>
                                <p class="text-justify"> This is the fee payable to stock-broker for their services. It differs from broker to broker and type of transaction</p>
                                <h6 class="pt-3">Securities Transaction Tax (STT):</h6>
                                <p class="text-justify">This is to be paid on every buy / sell transaction. STT rate is 0.1% of the transaction value for delivery based buy / sell trades</p>
                                <h6 class="pt-3">Goods and Services Tax (GST):</h6>
                                <p class="text-justify">18% GST is charged on the brokerage</p>
                                <h6 class="pt-3">Transaction charges:</h6>
                                <p class="text-justify">This is levied by the stock exchange for buying / selling shares. The rate differs from exchange to exchange. In addition, SEBI levies charges a turnover fee of 0.0002% of the transaction amount.</p>
                                <h6 class="pt-3">Stamp Duty:</h6>
                                <p class="text-justify">This is charged by the State Government for transfer of ownership of shares from one investor to another.</p>
                                <h6 class="pt-3">Depositary Participant (DP) Charges:</h6>
                                <p class="text-justify">The DP levies charges upon all sale of share transactions in your Demat Account. DP charges mean flat transaction fees regardless of the quantity sold.</p>
                                <p class="text-justify mb-4">It may seem to investors that there are a lot charges in stock investing, but for long term (buy and hold) investors, all these charges combined constitute a small portion (usually less than 0.5%) of the buy or sell consideration.</p>
                                <h4 class="pt-3">What are stock indices?:</h4>
                                <p class="text-justify">A stock index is a basket of stocks that reflects the performance of overall stock market or particular market cap segments or particular industry sectors. Indices are used to benchmark the performance of a stock or a portfolio of stocks. Sensex and Nifty are the two most popular indices in India and are seen as the barometer of overall stock market performance. Apart from that market cap indices like Nifty 100 and industry sector indices like Bank Nifty represent the performance of market cap segments or industry sectors.</p>
                                <h4 class="pt-3">Benefits of investing in stocks:</h4>
                                <ul>
                                	<li>
                                		<p class="text-justify">Historical data shows that equity as an asset class outperforms other asset classes over long investment tenures. In the last 10 years (ending 31st October 2022), Nifty 50 gave 12% compounded annual growth rate (CAGR) returns. This was significantly higher than returns of traditional fixed income investments (e.g. Bank FDs, Post Office Small Savings Schemes) and Gold.</p>
                                	</li>
                                	<li>
                                		<p class="text-justify">Unlike other conventional asset classes, stocks can give multi-bagger returns i.e. multiply your capital several times. Stocks like Bajaj Finance, Bajaj Finserv, Berger Paints, Eicher Motors, Havells India, Shree Cement, Britannia, Pidilite Industries etc multiplied investor's capital by more than 10 times in the last 10 years.</p>
                                	</li>
                                	<li>
                                		<p class="text-justify">Blue-chip stocks make regular dividend payments, providing income in addition to capital appreciation.</p>
                                	</li>
                                	<li>
                                		<p class="text-justify">A company may at times bring a rights issue, which gives the existing shareholders of the company the right to purchase additional shares of the company at a specified price within the subscription. Companies normally issue rights shares at a fair discount to the current market price, which makes it an attractive investment opportunity for shareholders.</p>
                                	</li>
                                	<li>
                                		<p class="text-justify">Stocks are one of the most tax friendly asset classes in India. Short term capital gains (holding period of less than 12 months) is taxed at 15%. Long term capital gains (holding period of more than 12 months) are tax free up to Rs 100,000 in a financial year and taxed at 10% thereafter.</p>
                                	</li>
                                </ul>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End section -->
    </main>
    <!-- End Main -->
