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
.text-theme-colored {
    color: #333 !important;
}
.line-bottom {
    position: relative !important;
    margin-bottom: 0px !important;
    padding-bottom: 0px !important;

}
.services-list ul li.active {
    background: #F57D00 !important;
}
.text-theme-colored2{
    color:#F57D00 !important;
  
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
              <h2 class="title title_header text-dark">General Insurance</h2>
              <ol class="breadcrumb text-black mt-10">
                <li><a href="/" class="title_header">Home</a></li>
                <li class="active title_header">General Insurance</li>
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
              <h3 class="text-theme-colored line-bottom text-theme-colored">GENERAL INSURANCE</h3>
              <div class="card-body p-4 p-lg-5">
                  <h4 class="pt-3">Motor insurance</h4>
                  <p class="mb-3 text-justify">Motor insurance is a mandatory requirement if have a car, motorcycle or scooter. You will have to pay a fine and have your vehicle registration certificate (RC) or driving license (DL) confiscated by the police, if you are driving without a valid motor insurance or a motor insurance policy that has expired.</p>
                  <p class="mb-3 text-justify">There are two types of motor insurance - third party insurance and comprehensive insurance. Third party insurance is mandatory for all vehicle owners in India. Third-party insurance will cover your liability towards damages incurred by the third party in case an accident happens with your vehicle. It won't cover damages to your vehicle. Comprehensive motor insurance provides your vehicle complete end-to-end protection against damage caused by accidents or natural disasters like floods etc.</p>
                  <p class="mb-3 text-justify">Motor insurance premium depends on the price of the car (in case of a brand new car) or the Insurance Declared Value (IDV) of a car that has completed more than 1 year. Motor insurance is usually valid for a year; you must renew or get a new motor insurance policy before expiry of your current motor insurance. Some motor insurance policies can cover you for multiple years.</p>
                  <h4 class="pt-3">Travel insurance</h4>
                  <p class="mb-3 text-justify">Travel insurance provides financial protection against possible losses that you may suffer when you are travelling by air, especially in overseas travel. It covers you against financial losses due to loss of baggage, trip cancellation, and flight delays. Some travel insurances also cover medical expenses that you may have to incur while travelling.</p>
                  <h4 class="pt-3">Home insurance</h4>
                  <p class="mb-3 text-justify">As the name suggests, home insurance provides financial protection against damages caused to your home and its contents (furniture, home appliances etc) due to man-made (e.g. fire) or natural disasters (e.g. flood, earthquake etc). </p>
              </div>                  

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
                 	<li><a href="/fixed-income-products">Fixed Income Products</a></li>
                 	<li><a href="/fixed-deposit">Fixed Deposities</a></li>
                 	<li><a href="/bonds-and-ncd">Bonds & Ncd</a></li>
                 	<li><a href="/life-insurance">Life Insurance</a></li>
                 	<li><a href="/health-insurance">Health Insurance</a></li>
                 	<li class="active"><a href="/general-insurance">General Insurance</a></li>
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