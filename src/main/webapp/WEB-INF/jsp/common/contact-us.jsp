<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<style>
  
  .breadcrumb > li + li::before {
    content: "\f22d" !important;
    font-family: fontawesome;
    font-size: 9px;
}

@media only screen and (max-width: 991px){
.pt-150 {
    padding-top: 22px !important;
}
}
.contact-card {
	border-top: 5px solid #003399;
    padding: 40px;
}

 .info-card{
 	margin-bottom: 40px;
    padding: 10px;
    margin-top: 40px;
    background: #dfece0;
    border-radius: 5px;
    text-align:center;
 }
 .btn-submit{
 	padding: 10px 20px;
    background:#4c8552;
    color: white;
 }
.form-control {
    background: #efefff;
    border-radius: 5px;
    box-shadow: none;
    height: 59px;
    border: 1px solid #eeeeee;
    /* border-color: #003399; */
}
.info-img{
	background: #fff;
    border-radius: 50%;
    padding: 20px;
    border: 1px solid green;
}
/* .map-card{
    padding: 30px;
    background: #fff;
    border-radius:20px;
} */
</style>
<script>
function contactus()
{
	var name = $("#name").val();
	var email = $("#email").val();
	var mobile = $("#mobile").val();
	var message = $("#message").val();
	var subject = $("#subject").val();
	
	if(name == "")
    { 	  
	    swal("OOPS!", "Please enter your name!", "error");
  	    return false;	   
    }	   
    if(email == "")
    {
    	swal("OOPS!", "Please enter your email!", "error");
  	    return false;	   
   }
    if(!isEmail(email)) {
    	swal("OOPS!", "Please Enter Valid Email", "error");
	 	return false;
    }
    if(mobile == "")
    { 	  
	    swal("OOPS!", "Please enter your mobile number!", "error");
  	    return false;	   
    }
    else if (mobile.length !== 10) {
        swal("Oops!", "Please enter a valid 10-digit mobile number!", "error");
        return false;
    }
    if(subject == "")
    {
    	swal("OOPS!", "Please enter your subject!", "error");
  	    return false;	   
    }
    if(message == "")
    {
    	swal("OOPS!", "Please enter your message!", "error");
  	    return false;	   
    }
    
	
    
    /*  $.LoadingOverlay("show"); */
    
    $.ajaxSetup({async:false});
    $.post("/saveContactUs", {name : "" + name + "",email : "" + email + "",mobile : "" + mobile + "", subject : "" + subject + "",message : "" + message + "",}, function(data) {
    		
    	/* $.LoadingOverlay("hide");	 */
		var result = $.trim(data);
		var obj = jQuery.parseJSON(result);	
		if(obj.status == "200"){
				
			swal( "Thank you for contacting us", "We have received your enquiry and will respond to you shortly", "success" );
			return;
		 }
		 else{ swal({title:"",text:obj.msg});
		 	return;	
		 }
    }, "text");
}

function isEmail(email) {
	  var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	  return regex.test(email);
}
</script>

<section class="header_color">
    <div class="container pt-150 pb-10">
        <div class="section-content">
            <div class="row text-center">
                <div class="col-md-12">
                    <h2 class="title title_header text-dark">Contact Us</h2>
                    <ol class="breadcrumb text-black mt-10">
                        <li><a href="/" class="title_header">Home</a></li>
                        <li class="active title_header">Contact Us</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
</section>
   
   
  <section class="bg-light">
  	<div class="container">
  		<div class="row">
  			<div class="col-lg-12">
  				<div class="card contact-card bg-white">
  					<div class="card-body">
  						<div class="row">
  							<div class="col-lg-6">
  								<div class="row">
				                    <div class="col-md-12">
				                        <h3 class="text-theme-colored2">Start a <span class="text-theme-colored1"> conversation</span></h3>
				                    </div>
				                </div>
  								<div class="row">
  									<div class="col-lg-6">
  										<div class="form-group">
				                            <label>Name <small>*</small></label>
				                            <input name="form_name" id="name" class="form-control" type="text" placeholder="Enter Name" >
				                        </div>
  									</div>
  									<div class="col-lg-6">
  										 <div class="form-group">
				                            <label>Email <small>*</small></label>
				                            <input name="form_email" id="email" class="form-control required email" type="email" placeholder="Enter Email">
				                        </div>
  									</div>
  								</div> 
  								<div class="row">
  									<div class="col-lg-6">
  										<div class="form-group">
				                            <label>Phone</label>
				                            <input name="form_phone" id="mobile" class="form-control" type="number" placeholder="Enter Phone">
				                        </div>
  									</div>
  									<div class="col-lg-6">
  										<div class="form-group">
				                            <label>Subject <small>*</small></label>
				                            <input name="form_subject" id="subject" class="form-control required" type="text" placeholder="Enter Subject">
				                        </div>
  									</div>
  								</div>  
  								<div class="row">
  									<div class="col-lg-12">
  										<div class="form-group">
						                    <label>Message</label>
						                    <textarea name="form_message" id="message" class="form-control required" rows="5" placeholder="Enter Message"></textarea>
						                </div>
  									</div>
  								</div> 
  								<div class="row mt-20">
  									<div class="col-lg-12">
  										 <button type="button" class="btn btn-submit" data-loading-text="Please wait..." onclick="contactus()">Send your message</button>
  									</div>
  								</div>  							
  							</div>
  							<div class="col-lg-6">
  								<img src="/images/about/contactusnew-removebg-preview.png" class="img-fluid mb-20" width="200px">
								<div class="row">
								  							
		  							<div class="col-lg-12 mb-10">
		  								
		  									
		  										
		  										<h5 class="text-theme-colored2 mt-10">Office Address</h5>
			  									<p class="text-dark">
												Myassetz </p>
												<p class="text-dark">E3,The Shelter Kk pudur road,Kovilmedu,
												Coimbatore-641025</p>
												<p class="text-dark">A-202, Purva Midtown Residencies,FCI  godown street
													Vijinapura,Bengaluru-560016</p>
		  								
		  							</div>
		  							
		  							<div class="col-lg-12 mb-10">
		  								
		  									
		  									<h5 class="text-theme-colored2 mt-10">Contact Number</h5>
		  									<p><a href="tel:+91 9840961174" class="text-dark">+91 9840961174</a></p>
		  									<!--<p><a href="tel:+91 9873666444" class="text-dark">+91 9873666444</a></p>-->  
		  									 			
		  								
		  							</div>
									<div class="col-lg-12">
										
										<h5 class="text-theme-colored2 mt-10">Email</h5>
										<p><a href="mailto:sankar@myassetz.in" class="text-dark">sankar@myassetz.in</a></p>
									</div>
		  							<div class="col-lg-12">
		  								
		  									
		  									<h5 class="text-theme-colored2 mt-10">Opening Hours</h5> 
		  									<p>Monday - Saturday : 10:00 AM to 9:00 PM</p>
		  								
		  							</div> 
		  						</div>
  							</div>
  						</div>
  						
  					</div>
  				</div>
  			</div>
  		</div>
  	</div>
  </section>
<!--<section class="bg-light">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
			<div class="map-card">
				<div class="card-body">
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3499.6407481879032!2d77.1170731!3d28.700391300000003!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390d01542de5cdc5%3A0xf0291141e62a7d32!2sMoneyFlow%20Investments!5e0!3m2!1sen!2sin!4v1763463541588!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
				</div>
			</div>				
			</div>
		</div>
	</div>
</section>
--><!-- <section class="pt-50">
    <div class="container back">
        <div class="row ">
			
            <div class="col-xs-12 col-sm-4 col-md-5 text-center">
				<a href="#"> <i class="pe-7s-map-2 text-theme-colored font-30"></i></a>
				<img src="/images/icons/map.png">
                <h5 class="mt-0">Our Office Location</h5>
				<p><b>Moneyflow Investments</b><br />SF-202, Shivanta, S P Ring Road, Bhadaj,Ahmedabad - 382722.</p>
            </div>
			
            <div class="col-xs-12 col-sm-6 col-md-4 text-center">
				<a href="mailto:truuegro@gmail.com"> <i class="pe-7s-mail text-theme-colored font-30"></i></a>
				<img src="/images/icons/mail.png">
            	<h5 class="mt-0">Email Address</h5>
                <p><a href="mailto:truuegro@gmail.com"> truuegro@gmail.com</a></p>
			</div>
			
			<div class="col-xs-12 col-sm-6 col-md-3 text-center">
				<a href="tel:9988845111"> <i class="pe-7s-call text-theme-colored font-30"></i></a>
				<img src="/images/icons/phone-call.png">
				<h5 class="mt-0">Phone Number</h5>
				<p><a href="tel:9988845111">+91 9988845111</a></p>
			</div>

        </div>
    </div>
</section>

    
<section >
    <div class="container">
        <div class="row">
			<div class="col-md-6">
				<img src="/images/about/contact-us.jpg">
			</div>
            <div class="col-md-6">
                <div class="row">
                    <div class="col-md-12">
                        <h3 class="text-theme-colored2">Start a <span class="text-theme-colored1"> conversation</span></h3>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-12">
                        <div class="form-group">
                            <label>Name <small>*</small></label>
                            <input name="form_name" id="name" class="form-control" type="text" placeholder="Enter Name" required="">
                        </div>
                    </div>
                    <div class="col-sm-12">
                        <div class="form-group">
                            <label>Email <small>*</small></label>
                            <input name="form_email" id="email" class="form-control required email" type="email" placeholder="Enter Email">
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Subject <small>*</small></label>
                            <input name="form_subject" id="subject" class="form-control required" type="text" placeholder="Enter Subject">
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Phone</label>
                            <input name="form_phone" id="mobile" class="form-control" type="text" placeholder="Enter Phone">
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label>Message</label>
                    <textarea name="form_message" id="message" class="form-control required" rows="5" placeholder="Enter Message"></textarea>
                </div>
                <div class="form-group">
                    <input name="form_botcheck" class="form-control" type="hidden" value="" />
                    <button type="button" class="btn btn-button" data-loading-text="Please wait..." onclick="contactus()">Send your message</button>
                </div>


            </div>
        </div>
    </div>
</section> -->





