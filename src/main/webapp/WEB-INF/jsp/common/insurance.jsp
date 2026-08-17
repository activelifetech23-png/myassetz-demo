<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<style>
.nav-tabs > li.active a {
    color: #fff;
    background-color: #F9A003;
    border-color: #F9A003;
    padding: 10px 60px;
    border-radius: 10px;
    font-size: 18px;
}
.nav-tabs > li a {
    color: #fff;
    background-color: #27A840;
    border-color: #27A840;
    padding: 10px 60px;
    border-radius: 10px;
    font-size: 18px;
}
.nav-tabs > li.active a, .nav-tabs > li.active a:hover, .nav-tabs > li.active a:focus {
    color: #fff;
    background-color: #F9A003;
}
.list-styled

 {
    list-style: disc !important;
    margin-left: 20px !important;
    margin-bottom: 10px !important;
}
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

.line-bottom {
    position: relative !important;
    margin-bottom: 0px !important;
    padding-bottom: 0px !important;

}
.services-list ul li.active {
    background: #F57D00 !important;
}
.text-theme-colored2{
    color:#003399 !important;
  
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
@media only screen and (max-width: 991px){
.pt-150 {
    padding-top: 22px !important;
}
}
@media only screen and (max-width: 991px){
.part{
   text-align:center; 
   }
}
.sidebar-left .services-list ul li a {
    color: #000;
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
              <h2 class="title title_header text-dark"> Insurance</h2>
              <ol class="breadcrumb text-black mt-10">
                <li><a href="/" class="title_header">Home</a></li>
                <li class="active title_header"> Insurance</li>
              </ol>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Section: service-->
   <section class="pt-50 pb-50">
	<div class="container p-30">
		<div class="row">
        	<div class="col-md-12">
        
          		<ul class="nav nav-tabs  ">
					<li class="active pb-20 capital">
            			<a href="#1" data-toggle="tab">Life Insurance</a>
					</li>
				     <li class="pb-20" style="margin-left:15px;">
						<a href="#2 " data-toggle="tab">Health Insurance</a>
					</li>
					<!--<li class="pb-20" style="margin-left:15px;">
						<a href="#3" data-toggle="tab">General Insurance</a>
					</li>-->
				</ul>
				<div class="tab-content ">
		  			<div class="tab-pane active" id="1">
         			      <p class="just-content">Life is unpredictable. So, it is important to ensure that your family and loved ones are taken care of financially in case something happens to you. This is where life insurance comes in. It can provide some financial peace of mind if the worst were to happen.Life insurance offers a way to replace the loss of income that occurs when someone dies. Life insurance is insurance for you and your family's peace of mind. With a life insurance policy in place, you can</p>
				                   <ul>
									<li class="list-styled">Provide security to your family</li>
									<li class="list-styled">Protect your home mortgage, loans, credit card borrowings etc.</li>
									<li class="list-styled">Provide finance to your loved ones to achieve their goals in your absence</li>
									<li class="list-styled">Ensure that your family is able to maintain their lifestyle, no matter what happens</li>
									<li class="list-styled">Take care of your estate planning needs</li>
									<li>Look at other retirement saving/investment vehicles</li>
								</ul>
							    
							
					  		
									  
								  
					</div>
					
					<div class="tab-pane" id="2">
						 <h5 class="pt-3">When should we take medi-claim policy?</h5>
                                <p class="just-content">Health insurance is the insurance which protects us from any health emergencies &amp; incurred hospitalization expenses. In this busy and hectic life everybody should have a health insurance policy which can be very useful in time of emergencies. Health insurance, also known as medi-claim policy, allows you to claim cashless hospitalization or reimbursement up to the sum insured limit.</p>
                                <h5 class="pt-3">Why Mediclaim policy needed?</h5>
                               <ul>
								<li class="list-styled">Every human suffers from some illness or injury in lifetime.</li>
								<li class="list-styled">Emergencies or illness can come anytime without giving any warning.</li>
								<li class="list-styled">There are no good facilities in government hospitals whereas private hospitals are too expensive.</li>
								<li class="list-styled">Doctor's fees, diagnostic charges as well as the medicines value are too expensive. Health is wealth.</li>
								</ul>
						 
						
					</div>
					
					<div class="tab-pane " id="3">
						<h4>Motor insurance</h4>
						<p class="text-desgin">Motor insurance is a mandatory requirement if have a car, motorcycle or
                        scooter. You will have to pay a fine and have your vehicle registration certificate (RC) or
                        driving license (DL) confiscated by the police, if you are driving without a valid motor
                        insurance or a motor insurance policy that has expired.</p>
                    <p class="text-desgin">There are two types of motor insurance - third party insurance and
                        comprehensive insurance. Third party insurance is mandatory for all vehicle owners in India.
                        Third-party insurance will cover your liability towards damages incurred by the third party in
                        case an accident happens with your vehicle. It won't cover damages to your vehicle.
                        Comprehensive motor insurance provides your vehicle complete end-to-end protection against
                        damage caused by accidents or natural disasters like floods etc.</p>
                    <p class="text-desgin">Motor insurance premium depends on the price of the car (in case of a brand
                        new car) or the Insurance Declared Value (IDV) of a car that has completed more than 1 year.
                        Motor insurance is usually valid for a year; you must renew or get a new motor insurance policy
                        before expiry of your current motor insurance. Some motor insurance policies can cover you for
                        multiple years.</p>

                    <p class="text-desgin"><i class="fa fa-check-circle mr-10" aria-hidden="true"></i><b> Travel
                            insurance: </b>Travel insurance provides financial protection against possible losses that
                        you may suffer when you are travelling by air, especially in overseas travel. It covers you
                        against financial losses due to loss of baggage, trip cancellation, and flight delays. Some
                        travel insurances also cover medical expenses that you may have to incur while travelling.</p>

                    <p class="text-desgin"><i class="fa fa-check-circle mr-10" aria-hidden="true"></i><b> Home
                            insurance: </b>As the name suggests, home insurance provides financial protection against
                        damages caused to your home and its contents (furniture, home appliances etc) due to man-made
                        (e.g. fire) or natural disasters (e.g. flood, earthquake etc).</p>
                       
						
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
  
  </div>
  <!-- end main-content -->