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
              <h2 class="title text-dark title_header">Accounting Services</h2>
              <ol class="breadcrumb text-black mt-10">
                <li ><a href="/" class="title_header">Home</a></li>
                <li class="active title_header ">Accounting Services</li>
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
                               <h3 class="mb-2">Account Services</h3>
                                <p class="text-justify">We offer expert accounting services for your benefit so that you find everything below one roof. Our services include comprehensive maintenance of Financial account records in prescribed statutory formats and standards. We prepare periodic reports for the purpose of group reporting, tax and audit reports, charts of accounts, financial year closing statements.</p>
                                <h4 class="pt-3">Our Account services offer to the clients</h4>
                                <p class="text-justify"><span style="color:black; font-weight:600;">a.	Strategising:</span> Determining if the current operational strategy requires any revamp and making suggestions based on the findings.</p>
                                <p class="text-justify"><span style="color:black; font-weight:600;">b.	Planning: </span> Formulating a plan that will strategically be able to achieve the business objectives, all within the purview of realistic timelines.</p>
                                <p class="text-justify"><span style="color:black; font-weight:600;">c.	Expert guidance: </span> Our expert guidance assists you to formulate robust actionables by eliminating inefficiencies and impractical methodologies if any. </p>
                                <p class="text-justify"><span style="color:black; font-weight:600;">d.	Accounting System Management: </span> This includes setting up the entire financial and accounting system along with suggesting modifications in the existing system if needed.</p>
                                <p class="text-justify"><span style="color:black; font-weight:600;">e.  Compliance: </span> We ensure that your accounting system is conforming to the laid down statutory obligations and updated as per need.</p>
                                
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
                 	<li class="active"><a href="/accounting-services">Accounting Services</a></li>
                 	<li><a href="/fixed-income-products">Fixed Income Products</a></li>
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