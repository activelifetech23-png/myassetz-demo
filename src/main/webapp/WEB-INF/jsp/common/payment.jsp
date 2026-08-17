<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!--================Breadcrumb Area =================-->
        <section class="breadcrumb_area">
        	<div class="breadcrumb_bottom">
        		<div class="container">
					<ul class="nav">
						<li><a href="/">Home</a></li>
						<li class="active"><a href="#">Payment</a></li>
					</ul>
				</div>
        	</div>
        </section>
        <!--================End Breadcrumb Area =================-->
        
        <!--================Client Image Area =================-->
        <section class="client_img_area business_process mt-3 Truuegro-mfresearch">
        	<div class="container">
        		<div class="row mt-3 pt-4" style="font-size:12px;">
			 		<div class="col-lg-6 offset-lg-3 col-md-12 col-sm-12 col-xs-12">
				 		<div class="panel panel-default adv-panel margin-top14 margin-bottom0">
						<div class="panel-heading padding-0 padding-left10">
						<h6 class="panel-title margin0 ak-bold text-center">
				        	Payment
						 </h6>
				        </div>
				        
				        <div class="panel-body">
				        <div class="row pl-4 pr-4">
				        	<div class="col-md-6 col-sm-12 offset-md-3 mt-4">
				        		<div class="row">
				        			<label class="col-md-4 bold-smaller">Plan</label>
	            					 <input id="txt_plan" type="text" value="${plan}" disabled class="form-control col-md-8 no-radius">
				        		</div>
				        	</div>
				        	
				        	<div class="col-md-6 col-sm-12 offset-md-3 mt-3">
				        		<div class="row">
				        			<label class="col-md-4 bold-smaller">Amount</label>
	            					 <input id="txt_amount" type="text" value="${pgAmount}" disabled class="form-control col-md-8 no-radius">
				        		</div>
				        	</div>
				        	
				        	<div class="col-md-6 col-sm-12 offset-md-3 mt-3">
				        		<div class="row">
				        			<label class="col-md-4 bold-smaller">Name</label>
	            					 <input id="txt_name" type="text" value="${name}" <c:if test="${name ne null}">disabled </c:if> class="form-control col-md-8 no-radius">
				        		</div>
				        	</div>
				        	
				        	<div class="col-md-6 col-sm-12 offset-md-3 mt-3">
				        		<div class="row">
				        			<label class="col-md-4 bold-smaller">Email</label>
	            					 <input id="txt_email" type="text" value="${email}" <c:if test="${email ne null}">disabled </c:if> class="form-control col-md-8 no-radius">
				        		</div>
				        	</div>
				        	
				        	<div class="col-md-6 col-sm-12 offset-md-3 mt-3">
				        		<div class="row">
				        			<label class="col-md-4 bold-smaller">Mobile</label>
	            					 <input id="txt_mobile" type="text" value="${mobile}" <c:if test="${mobile ne null}">disabled </c:if> class="form-control col-md-8 no-radius">
				        		</div>
				        	</div>
				        	</div>
				        	
				        	<div class="row">
				        	<div class="col-md-4 col-sm-4 offset-md-4 mt-3 mb-4 text-center">
				        	<c:choose>
								<c:when test="${razorpay ne null}">
								<form action="/payment-success" method="POST" id="razorpayForm">
								<c:out value="${razorpay}" escapeXml="false"></c:out>
								<input type="hidden" value="${name}" id="name" name="name">
								<input type="hidden" value="${email}" id="email" name="email">
								<input type="hidden" value="${mobile}" id="mobile" name="mobile">
								<input type="hidden" value="${plan}" id="plan" name="plan">
								<input type="hidden" value="${amount}" id="amount" name="amount">
								</form>
								</c:when>
								<c:otherwise>
									<input type="button" value="Make Payment" class="razorpay-payment-button" />
								</c:otherwise>
							</c:choose>
				        	
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

<script>
$(document).ready(function(){
	
	$(".razorpay-payment-button").addClass("main_btn");
	
	if( $('#razorpayForm').length )         // use this if you are using id to check
	{
		$("#razorpayForm").submit();  
	}
	
	$(".razorpay-payment-button").click(function() {
		var name = $("#txt_name").val();
		var email = $("#txt_email").val();
		var mobile = $("#txt_mobile").val();
		var email_flag = false;
		
		$.LoadingOverlay("show");
		
		if($.trim(name) == "")
	    {
			$.LoadingOverlay("hide");
	    	swal({title:"",text:"Please enter your name"});
	    	return false;
	    }
		
		 var regex = /^[a-zA-Z]*$/;
		if (regex.test(name)) {

		} else {
			$.LoadingOverlay("hide");
	    	swal({title:"",text:"Please enter valid name"});
			return false;
		}
		
	    if($.trim(email) == "")
	    {
	    	$.LoadingOverlay("hide");
	    	swal({title:"",text:"Please enter the email address"});
	    	return false;
	    }
	     		 
	    if(!validateEmail($.trim(email)))
	    {
	    	$.LoadingOverlay("hide");
	    	swal({title:"",text:"Please enter the valid email address"});
	    	return false;
	    }
		
	    $.ajaxSetup({async:false});
	    $.post("/verifyEmail", {email : "" + email + ""}, function(data)
	    {
	    	$.LoadingOverlay("hide");
	    	
			var result = $.trim(data);
	        if(result == "false")
	        {
	        	email_flag = true;
	        	swal({title:"",text:"Please enter the valid email address!"});
	       	 	return false;
	        }
	        
	    }, "text"); 
	    
	    if(email_flag)
	    {
	    	$.LoadingOverlay("hide");
	    	swal({title:"",text:"Please enter the valid email address!"});
	   	 	return false;    	
	    }
	    
	    if($.trim(mobile) == "")
	    {
	    	$.LoadingOverlay("hide");
	    	swal({title:"",text:"Please enter the mobile number"});
	    	return false;
	    }
	    if($.trim(mobile).length != 10 || isNaN(mobile))
	    {
	    	$.LoadingOverlay("hide");
	    	swal({title:"",text:"Please enter the valid mobile number"});
	    	return false;
	    }
	    $.LoadingOverlay("hide");
	    
	    /* $('#paymentScript').attr("data-prefill.name", name);
		$('#paymentScript').attr("data-prefill.email", email);
		$('#paymentScript').attr("data-prefill.contact", mobile); */
		
		var plan = '${plan}';
		
		top.location = "/payment?plan="+$.trim(plan)+"&name="+name+"&email="+email+"&mobile="+mobile;
	});
	
});
</script>       
  
