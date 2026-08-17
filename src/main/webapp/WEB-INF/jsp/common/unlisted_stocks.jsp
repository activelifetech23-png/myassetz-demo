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

.text-theme-colored2 {
    color: #003399 !important;
}
.line-bottom {
    position: relative !important;
    margin-bottom: 0px !important;
    padding-bottom: 0px !important;

}
.services-list ul li.active {
    background: #F57D00 !important;
}

.services-list ul li.active {
    background: #F57D00 !important;
    color:#fff !important;
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
              <h2 class="title text-dark title_header">Unlisted Stocks</h2>
              <ol class="breadcrumb text-black mt-10">
                <li ><a href="/" class="title_header">Home</a></li>
                <li class="active title_header ">Unlisted Stocks</li>
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
          <div class="col-md-12 blog-pull-right">
            <div class="single-service">
              <h4 class="pb-5">Looking Beyond Listed Markets</h4>
              			<p class="text-justify">While listed shares dominate the investment landscape, a lesser-known avenue offers unique opportunities for investors-Unlisted Shares. Unlisted shares are those of privately held companies that are not available on any stock exchange.</p>
                                <h4 class="mb-2">How are unlisted shares different from listed shares?</h4>
                                <h6 class="pt-3">Market Accessibility:</h6>
                                <p class="text-justify">Unlisted shares are not traded on stock exchanges, making them less accessible to investors. Often unlisted shares are owned by founders, employees, venture capitalists, or private equity investors.</p>
                                <h6 class="pt-3">Liquidity:</h6>
                                <p class="text-justify">Unlisted shares have lower liquidity compared to listed shares. The absence of an organised market for buying and selling unlisted shares can make it challenging to exit investments quickly.</p>
                                <h4 class="pt-3">How can investors buy unlisted companies?</h4>
                                <p class="text-justify">There are two common ways of investing in unlisted companies.</p>
                                <h6 class="pt-3">Private Placement:</h6>
                                <p class="text-justify">Companies may offer shares to private individuals or institutions through private placements. Investors can participate in these offerings based on eligibility criteria and investment terms set by the issuing company.</p>
                                <h6 class="pt-3">Secondary Market:</h6>
                                <p class="text-justify">Specialised platforms, brokers, and marketplaces facilitate buying and selling unlisted shares. These platforms connect buyers and sellers and provide a regulated framework for transactions.</p>
                                <h4 class="pt-3">How to get information on unlisted shares?</h4>
                                <p class="text-justify">Obtaining information on unlisted shares can be more challenging compared to listed shares. However, investors can explore the following sources:</p>
                                <p class="text-justify">Company Disclosures:Companies issuing unlisted shares may provide information through private placement documents, investor presentations, and annual reports, although these may not be as extensive or publicly available as those of listed companies.</p>
                                <p class="text-justify">The most reliable place to get the data on an unlisted company would be the Ministry of Corporate Affairs website, as all companies have to submit their annual report and financial statement. One can quickly go there and check the information.</p>
                                <p class="text-justify">Research Firms:Some research firms specialise in analysing and providing insights on unlisted companies. Their reports can offer valuable information and analysis to investors.</p>
                                <h4 class="pt-3">Valuing unlisted shares</h4>
                                <p class="text-justify">Valuing unlisted shares involves a combination of qualitative and quantitative factors. Some methods commonly used for valuation include:</p>
                                <h6 class="pt-3">Earnings Multiplier:</h6>
                                <p class="text-justify">Assessing the company's earnings potential and applying a suitable multiplier based on industry benchmarks or comparable listed companies.</p>
                                <h6 class="pt-3">Net Asset Value (NAV):</h6>
                                <p class="text-justify">Determining the net value of the company's assets after deducting liabilities.</p>
                                <h6 class="pt-3">Discounted Cash Flow (DCF):</h6>
                                <p class="text-justify mt-5">Estimating the future cash flows generated by the company and discounting them to present value.</p>
                                <p class="text-justify mt-5">Valuation differences between unlisted and listed shares can be substantial. Unlisted shares tend to trade at a discount to their listed counterparts due to limited liquidity, restricted access, and more significant risks associated with unlisted companies.</p>
                                <h4 class="mb-2 pt-3">Investing in unlisted shares offers several benefits:</h4>
                                <p class="text-justify">Potential for Higher Returns: Unlisted shares can provide attractive returns, primarily if invested in promising startups or high-growth private companies.</p>
                                <p class="text-justify">Diversification: Investing in unlisted shares allows investors to diversify their portfolios beyond traditional listed stocks and access sectors or companies unavailable in the public markets.</p>
                                <p class="text-justify">Meanwhile, not everything is great, and there are also challenges associated with investing in unlisted shares, including:</p>
                                <p class="text-justify">Liquidity Risk :Unlisted shares can be illiquid, making it difficult to exit investments when desired.</p>
                                <p class="text-justify">Lack of Information: Unlike listed companies, information on unlisted companies may be limited, making thorough due diligence crucial and challenging.</p>
                                <h4 class="mb-2 pt-3">Who should invest in unlisted shares?</h4>
                                <p class="text-justify">Investing in unlisted shares is suitable for specific types of investors, including:</p>
                                <h6 class="pt-3">High Net Worth Individuals:</h6>
                                <p class="text-justify">Individuals with substantial financial resources and a higher risk appetite may consider unlisted shares as part of their investment strategy.</p>
                                <h6 class="pt-3">Sophisticated Investors:</h6>
                                <p class="text-justify">Experienced investors who can conduct thorough research and due diligence can capitalise on opportunities in unlisted shares.</p>
                                <h6 class="pt-3">Venture Capital and Private Equity Funds:</h6>
                                <p class="text-justify">These funds specialise in investing in unlisted companies and are well-positioned to assess their growth potential and manage associated risks.</p>
                                <h4 class="mb-2 pt-3">How much exposure to this fund?</h4>
                                <p class="text-justify">A rule of thumb would be if you can put aside money to invest and pass on the share certificates to your grandchildren, you can consider the unlisted shares for that amount.</p>
                                <p class="text-justify">Unlisted shares offer a distinct avenue for investors seeking opportunities beyond listed markets. While they differ from listed shares regarding market accessibility and liquidity, they provide the potential for higher returns and diversification. Investors can purchase unlisted shares through private placements or secondary markets, and information can be obtained through company disclosures and research firms. Valuing unlisted shares requires a combination of quantitative and qualitative factors, and they generally trade at a discount compared to listed shares. Investing in unlisted shares has challenges, including liquidity risk and limited information availability. However, for high-net-worth individuals, sophisticated investors, and specialised funds, unlisted shares can be an attractive addition to a well-diversified investment portfolio.</p>
                                <p class="text-justify">AIFs are for sophisticated investors, high-net-worth individuals, institutional investors, and qualified institutional buyers. SEBI sets eligibility criteria for investing in AIFs, which typically consider minimum net worth, financial expertise, and risk-taking ability. These criteria ensure that AIF investments are accessed by knowledgeable investors who can bear the associated risks.</p>
                                <h4 class="mb-2 pt-3">The rule of thumb to consider for AIF investors are</h4>
                                <p class="text-justify">The minimum investment required in the AIF is Rs 1 crore for an investor.</p>
                                <p class="text-justify">Employees, Directors, and fund managers can make a minimum investment of Rs 25 lakh.</p>
                                <p class="text-justify">Expect a lock-in period of around 3 yrs. Some AIFs may not have a lock-in, and some may have a lock-in of up to 5 years.</p>
                           

            </div>
          </div>
   
        </div>
      </div>
    </section>
  </div>
  <!-- end main-content -->