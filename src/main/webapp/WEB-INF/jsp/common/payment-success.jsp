<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!--================Breadcrumb Area =================-->
        <section class="breadcrumb_area">
        	<div class="breadcrumb_bottom">
        		<div class="container">
					<ul class="nav">
						<li><a href="/">Home</a></li>
						<li class="active"><a href="#">Payment Success</a></li>
					</ul>
				</div>
        	</div>
        </section>
        <!--================End Breadcrumb Area =================-->
        
        <!--================Client Image Area =================-->
        <section class="client_img_area business_process mt-3 Truuegro-mfresearch">
        	<div class="container">
        		<div class="row mt-3 pt-4" style="font-size:12px;">
			 		<div class="col-lg-8 offset-lg-2 col-md-12 col-sm-12 col-xs-12">
				 		<div class="panel panel-default adv-panel margin-top14 margin-bottom0">
						<div class="panel-heading padding-0 padding-left10">
						<h6 class="panel-title margin0 ak-bold text-center">
				        	Payment Response
						 </h6>
				        </div>
				        
				        <div class="panel-body">
				        <div class="row pl-4 pr-4">
				        	<div style="color: #28a745; font-size: 24px;text-align: center;font-weight: 600;border-bottom: 1px dotted #333;padding-bottom: 20px;" class="col-md-12 col-sm-12  mt-4">
				        		<i class="fa fa-check-circle" aria-hidden="true"></i>
				        		Success
				        	</div>
				        	<%-- <div class="col-md-6 col-sm-12 mt-4">
				        		<div class="row">
				        			<label class="col-md-4 bold-smaller">Plan</label>
	            					<label class="col-md-8 font-weight-bold"> ${bps.plan} </label>
				        		</div>
				        	</div>
				        	
				        	<div class="col-md-6 col-sm-12 mt-4">
				        		<div class="row">
				        			<label class="col-md-4 bold-smaller">Amount</label>
	            					<label class="col-md-8 font-weight-bold"> ${bps.amount} </label>
				        		</div>
				        	</div>
				        	
				        	<div class="col-md-6 col-sm-12 mt-4">
				        		<div class="row">
				        			<label class="col-md-4 bold-smaller">Name</label>
	            					<label class="col-md-8 font-weight-bold"> ${bps.name} </label>
				        		</div>
				        	</div>
				        	
				        	<div class="col-md-6 col-sm-12 mt-4">
				        		<div class="row">
				        			<label class="col-md-4 bold-smaller">Email</label>
	            					<label class="col-md-8 font-weight-bold"> ${bps.mobile} </label>
				        		</div>
				        	</div> --%>
				        	
				        	<div class="col-md-6 col-sm-12 pb-2 mt-4" style="border-bottom: 1px dotted #333;">
				        		<div class="row">
				        			<label class="col-md-4 bold-smaller">Order Id</label>
	            					<label class="col-md-8 font-weight-bold"> ${bps.razorpay_order_id} </label>
				        		</div>
				        	</div>
				        	
				        	<div class="col-md-6 col-sm-12 pb-2 mt-4" style="border-bottom: 1px dotted #333;">
				        		<div class="row">
				        			<label class="col-md-4 bold-smaller">Payment Id</label>
	            					<label class="col-md-8 font-weight-bold"> ${bps.razorpay_payment_id} </label>
				        		</div>
				        	</div>
				        	
				        	<div class="col-md-12 col-sm-12 mt-4">
				        		<div class="row">
				        			<label class="col-md-12 text-center bold-smaller">
				        				One of our team members will contact you shortly to take it forward. 
				        			</label>
				        		</div>
				        	</div>
				        	
				        	</div>
				        </div> 
	
				 		</div>
			 		</div>
				</div>
			</div>        	
        
        </section>
        <!--================End Client Image Area =================-->
        
<style>
.panel-default input {
	padding-left: none;
}
.main_btn {
	padding: 0px 25px !important;
}
</style>        
       
  
