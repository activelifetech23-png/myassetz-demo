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
/* .nav-tabs > li.active a{
    color: #fff;
    background-color: #003399;
    border-color:#003399;
    padding:10px 60px; 
    border-radius:10px;
    font-size:18px;
   
  } */
  .nav-tabs > li.active a {
    color: #161414;
    background-color: #e1e1ef;
    padding: 10px 60px;
    border-radius: 10px;
    font-size: 18px;
}
  .nav-tabs > li.active a:hover{
    color: #161414;
    background-color: #e1e1ef;
     font-size:18px;
  }
 .nav-tabs > li a:hover {
     color: #161414;
   background-color: #e1e1ef;
}
.nav-tabs > li.active a:focus{
    
    color: #161414;
    background-color: #e1e1ef;
   	font-size:18px;
  }
  
.nav-tabs > li a {
    color: #f7ecec;
    background-color: #003399;
    padding: 10px 60px;
    border-radius: 10px;
    font-size: 18px;
}

.nav-tabs > li a:focus{
	color: #fff;
	background-color: #003399;
  }
   
.sidebar-left .services-list ul li a {
    color: #000;
}
.tab-content {
        border: 0px solid #eeeeee;   
  }
  @media only screen and (max-width: 991px){
.capital{
    margin-left:10px;
    }
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
              <h2 class="title text-dark title_header">Bonds</h2>
              <ol class="breadcrumb text-black mt-10">
                <li ><a href="/" class="title_header">Home</a></li>
                <li class="active title_header ">Bonds</li>
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
        <div class="col-md-12">
        
        <!--  <ul class="nav nav-tabs  ">
					<li class="active pb-20 capital">
            			<a  href="#1" data-toggle="tab">Capital Gain</a>
					</li>
				     <li class="pb-20" style="margin-left:15px;">
						<a href="#2 " data-toggle="tab">Gold Bonds</a>
					</li>
					<li class="pb-20" style="margin-left:15px;">
						<a href="#3" data-toggle="tab">NCDs</a>
					</li>
				</ul>-->
				<div class="tab-content ">
		  			<div class="tab-pane active" id="1">
         				<div class="single-service">
						                 <h4 class="pt-3">What are bonds?</h4>
						                  <p class="text-justify">Bonds are fixed income instruments which pay fixed rate of interest at regular intervals and the principal amount on maturity. Bonds as an asset class are very popular in the developed economies. However, the bond market in India has historically been relatively small. In more recent times, with Bank FD interest rates declining, bonds are gaining a lot of popularity among retail and HNI investors.</p>
						                  <h4 class="pt-3">How do bonds work?</h4>
						                  <p class="text-justify">You can buy bonds both from the primary market (at the time when the bond is issued) or from the secondary market (stock exchanges). You need to have Demat accounts to invest in bonds in secondary market. If you buy in the primary issue, you will get the bond at face value. In the secondary market, the bonds will be priced either at premium or discount to the face value based on prevailing interest rates. The bond will make periodic interest payments to you based on the coupon rate. On maturity you will get the face value of the bond. You can also sell the bond before maturity in the secondary market at prevailing market price.</p>
						                  <h4 class="pt-3">Key terms to understand in bond investing</h4>
						                  <h5 class="pt-3">Secured / unsecured :</h5>
						                  <p class="text-justify"> Under this service, the choice as well as the timings of the investment decisions is solely lies with the Portfolio Manager.</p>
						                  <h5 class="pt-3">Face Value :</h5>
						                  <p class="text-justify">  The bonds are issued at face value. Face value is the amount that will be paid to you upon maturity of the bond. Coupon or interest paid by the bond is on face value. Bonds may trade at premium or discount to the face value. In other words, if you are buying the bond in secondary market (i.e. stock exchanges), then the price at which you buy will be higher or lower than the face value.</p>
						                  <h5 class="pt-3"> Coupon Rate :</h5>
						                  <p class="text-justify"> This is the rate of interest that will be paid to you on a periodic basis. For example, if face value of a bond is Rs 1,000 and the coupon rate is 8%, then you will get Rs 80 as interest every year</p>
						                   <h5 class="pt-3"> Frequency of coupon payments :</h5>
						                  <p class="text-justify"> This refers to the intervals at which coupon payments will be made e.g. half yearly, annual etc.</p>
						                  <h5 class="pt-3"> Redemption date :</h5>
						                  <p class="text-justify"> This refers to the date when the bond will mature. You will get the face value of the bond, along with accrued interest (if any) on the redemption date.</p>
						                  <h5 class="pt-3">Accrued Interest :</h5>
						                  <p class="text-justify"> Accrued interest is the interest accrued by the seller from the last coupon payment date till the date on which the bond is sold. Since the buyer will get the full years interest on the next coupon date, the accrued interest is included in the bonds quoted price. The bonds price including the accrued interest is known as the dirty price. The clean price of the bond = Dirty price - accrued interest.</p>
						                  <h5 class="pt-3">Yield to maturity :</h5>
						                  <p class="text-justify"> YTM of a fixed income instrument is the return on investment (assuming interest payments are re-invested at the same rate) if you hold the instrument till its maturity. When calculating yields, both interest payments (coupons) and principal payment (face value) on maturity must be taken into consideration. Higher the YTM, higher the returns. YTM.</p>
						                  <h5 class="pt-3">Duration :</h5>
						                  <p class="text-justify"> Duration refers to the interest rate risk of a bond. There are two types of durations - Macaulay Duration and Modified Duration. Macaulay and Modified Durations are closely related. Macaulay duration is the weighted average term to maturity of the cash flows from a fixed income security. In simplistic terms, Macaulay Duration is the weighted average number of years an investor must maintain a position in a fixed income instrument until the present value of the fixed income instruments cash flows equals the amount paid for the instrument. Duration and maturity are related - longer the maturity, longer is the duration. It is important for you to know that duration is directly related to the interest rate sensitivity of a bond. Higher the duration, higher is the bonds sensitivity to interest changes. Modified duration is simply the percentage change in price due to the percentage change in interest rate.</p>
						                  <h5 class="pt-3">Bond rating :</h5>
						                  <p class="text-justify"> Bonds are rated by credit rating agencies like CRISIL and ICRA. Higher the credit rating lower is the credit risk. You should know that bo nds with lower ratings will have higher YTMs but the risk is also higher. You should make informed investment decisions.</p>
						                  <h4 class="pt-3">Different types of bonds</h4>
						                  <p class="text-justify">Corporate Bonds - These are secured bonds issued by companies.</p>
						                  <p class="text-justify">Sovereign Gold Bonds (SGBs) - These are gold bonds (backed by gold) issued by RBI on behalf of the Government.</p>
						                  <p class="text-justify">Government Securities (G-Secs) - These are Government bonds issued by RBI on behalf of the Government of India. These bonds have sovereign guarantee.</p>
						                  <p class="text-justify">Non convertible debentures (NCDs) - These are unsecured bonds issued by companies.</p>
						                  <p class="text-justify">Capital Gains Bonds - You can save capital gains tax arising out sale of capital assets e.g. property etc by investing in capital gains bonds u/s 54EC.</p>
						                  <h4 class="pt-3">How to invest in bonds?</h4>
						                  <p class="text-justify">You can invest in bonds through your stockbroker, just like stocks. You need to have demat and trading accounts. Contact your stockbroker if you want to know more about investing in bonds.</p>             
						              </div>
						           </div>
						             <!--<div class="tab-pane" id="2">
         				<div class="single-service">
						                 <h4 class="pt-3">Gold Bonds</h4>
						                  <p class="text-justify">Gold bonds are financial instruments issued by governments or financial institutions linked to the price of gold. Investors who purchase gold bonds effectively own a specific quantity of gold, and the bonds' value fluctuates with changes in the gold price. These bonds offer an alternative way to invest in gold without physically owning and storing the precious metal.</p>
						                  <h4 class="pt-3">How can we help?</h4>
						                  <p class="text-justify">We can assist investors in understanding the mechanics and potential risks of investing in gold bonds. Based on our analysis and insights into gold market trends, investors can take informed decisions on using such instruments in their portfolios.</p>
						                               
						              </div>
						           </div>
						           <div class="tab-pane " id="3">
         				<div class="single-service">
						                 <h4 class="pt-3">NCDs (Non-Convertible Debentures)</h4>
						                  <p class="text-justify">Non Convertible Debentures are long term investment opportunities issued by companies to raise funds. The NCDs have no collateral and hence heavily dependent on the creditworthiness of the company. The credit scores of the company issuing the NCD should be considered before investing in such instruments. Even the NCDs are rated by the rating agencies. NCDs carry a fixed rate of interest and a fixed maturity period. The money is raised through a public issue. Subsequently, they are traded over the counter or on the exchange. Investors in NCDs should do a thorough check on the company that is issuing the debentures with a view to the reason that the funds are being raised. NCDs issued by high rated companies are generally safe and offer certain other benefits like tax exemptions at source and high liquidity as they are tradable on the stock exchange before they reach maturity.</p>
						                  <h4 class="pt-3">How can we help?</h4>
						                  <p class="text-justify">We can help at two levels, first we can assist investors in assessing the credit rating and financial health of the companies issuing NCDs. We will analyse the terms and conditions of the NCD offer, evaluate the risk associated with the interest rate and creditworthiness of the issuer, and guide to suitable NCDs that align with the investor's income requirements and risk tolerance. The second place where we can assist is to execute the transaction.</p>
						                  				              </div>
						           </div>-->
						       </div>
						   </div>
						 </div>
				    </div>
		   </section>
  </div>
  <!-- end main-content -->