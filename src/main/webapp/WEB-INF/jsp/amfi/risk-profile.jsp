<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!--================Breadcrumb Area =================-->
        <section class="breadcrumb_area">
        	<div class="breadcrumb_top">
        		<div class="container">
					<h2>Risk profile</h2>
				</div>
        	</div>
        	<div class="breadcrumb_bottom">
        		<div class="container">
					<ul class="nav">
						<li><a href="index.html">Home</a></li>
						<li class="active"><a href="/risk-profile">Risk profile</a></li>
					</ul>
				</div>
        	</div>
        </section>
        <!--================End Breadcrumb Area =================-->
        
       <div class="container-fluid body-color" id="step1">	
	 <div class="row">	  
	 <div class="col-lg-12 px-0">
	    <img src="/img/Bridge13-19banner.jpg" class="img-fluid banerheight" width="100%" alt="">
     </div>
	  </div>
	  <div class="row">
	   <div class="col-lg-12 pt-4">	   
		  <div class="row">
			 <div class="col-lg-12 text-center">
			     <h4 class="text-dark">Step 1:</h4>
				  <p class="textColor font-size-19 question"> Describe your knowledge of investment:</p>
				  <div class="row">
				    <div class="col-lg-12">
						<div class="hrline-45"></div>
					</div>
				  </div>
			  </div>
			</div>		   
		    <div class="row pt-3">
			 <div class="col-lg-7 offset-lg-5 pl-5">
			 	<label class="form-check-label answer">
				  <input type="radio" name="q1" value="1">
				  <span class="checkmark"></span>None
				</label>
				<label class="form-check-label answer">
				  <input type="radio" name="q1" value="2">
				  <span class="checkmark"></span>Limited
				</label>
				<label class="form-check-label answer">
				  <input type="radio" name="q1" value="3">
				  <span class="checkmark"></span>Goods
				</label>
				<label class="form-check-label answer_last">
				  <input type="radio" name="q1" value="4">
				  <span class="checkmark"></span>Extensive
				</label>
			</div>
		   </div>
		   
		 <div class=" row py-4">
		 <div class="col-lg-12 text-center pb-4">
		 <button class="btn btn-primary btn-md btnCol">Back</button>
		 <button class="btn btn-primary btn-md btnCol ml-2" onclick="show_div(1)">Continue</button>
		 </div>
	  </div>
	 </div>
	</div>
	</div>
	
	<div class="container-fluid body-color" id="step2">
		<div class="row">
			<div class="col-lg-12 px-0">
				<img src="/img/Bridge13-19banner.jpg" class="img-fluid banerheight " width="100%"  alt="">
			</div>
	  </div>
  	<div class="row">
		<div class="col-lg-12 pt-4">
			<div class="row">
	 			<div class="col-lg-12 text-center">
	     			<h4 class="text-dark">Step 2:</h4>
		  			<p class="textColor font-size-19 question">When you invest your money, you are:</p>
		 			<!-- <div class="w-50 border-bottom text-center"></div> -->
		  			<div class="row">
	 					<div class="col-lg-12">
							<div class="hrline-45"></div>
						</div>
					</div>
		  		</div>
		   	</div>
		    <div class="row">
	 			<div class="col-lg-8 offset-lg-4 pt-3">
	 				<label class="form-check-label answer">
	  					<input type="radio" name="q2" value="1">
	  					<span class="checkmark"></span>Most concerned about your investment value
					</label>
					<label class="form-check-label answer">
  						<input type="radio" name="q2" value="2">
  						<span class="checkmark"></span>Equally concerned about your investment losing or gaining value
					</label>
					<label class="form-check-label answer_last">
					  <input type="radio" name="q2" value="3">
					  <span class="checkmark"></span>Most concerned about your investment gaining value
					</label>
				</div>
		   </div>
			 <div class="row py-4">
				 <div class="col-lg-12 text-center pb-4">
					 <button class="btn btn-primary btn-md btnCol" onclick="hide_div(2)">Back</button>
					 <button class="btn btn-primary btn-md btnCol ml-2" onclick="show_div(2)">Continue</button>
				 </div>
		  	</div>
	  	</div>
 	  </div>
	</div>
	
	<div class="container-fluid body-color" id="step3">
		<div class="row"> 
			<div class="col-lg-12 px-0">
	    		<img src="/img/Bridge13-19banner.jpg" class="img-fluid banerheight" width="100%"  alt="">
			</div>
	  	</div>
	  	<div class="row">
	   		<div class="col-lg-12 pt-4">
	    		<div class="row">
	 				<div class="col-lg-12 text-center">
	     				<h4 class="text-dark">Step 3:</h4>
		  				<p class="textColor font-size-19 question">If the market lost 25% in the last few months, and your investments also suffered the same - what would be your first impulse?</p>
						<div class="row">
						 	<div class="col-lg-12">
								<div class="hrline-75"></div>
							</div>
						</div>
		  			</div>
		   		</div>
		    	<div class="row">
	 				<div class="col-lg-7 offset-lg-5 pt-2">
	 					<label class="form-check-label answer">
  							<input type="radio" name="q3" value="1">
  							<span class="checkmark"></span>Sell all of my investments
						</label>
						<label class="form-check-label answer">
  							<input type="radio" name="q3" value="2">
  							<span class="checkmark"></span>Sell some of my investments
						</label>
						<label class="form-check-label answer">
  							<input type="radio" name="q3" value="3">
  							<span class="checkmark"></span>Will wait and rake no action immediately
						</label>
						<label class="form-check-label answer_last">
						  <input type="radio" name="q3" value="4">
						  <span class="checkmark"></span>will invest more
						</label>	
					</div>
		   		</div>
				 <div class="row py-4">
					 <div class="col-lg-12 text-center pb-4">
						 <button class="btn btn-primary btn-md btnCol" onclick="hide_div(3)">Back</button>
						 <button class="btn btn-primary btn-md btnCol ml-2" onclick="show_div(3)">Continue</button>
					 </div>
			  	</div>
	  		</div>
	 	</div>
	</div>
	
	<div class="container-fluid body-color" id="step4">
		<div class="row">
	 		<div class="col-lg-12 px-0">
	     		<img src="/img/Bridge13-19banner.jpg" class="img-fluid banerheight" width="100%"  alt="">
			</div>
	  	</div>
	   	<div class="row">
	   		<div class="col-lg-12 pt-4">
	    		<div class="row">
		 			<div class="col-lg-12 text-center">
					     <h4 class="text-dark">Step 4:</h4>
						  <p class="textColor font-size-19 question">Have you ever invested in shares or mutual funds? If yes,for how many years?</p>
							<div class="row">
							 	<div class="col-lg-12">
									<div class="hrline-55"></div>
								</div>
							</div>
			  			</div>
		   			</div>
		    		<div class="row">
	 					<div class="col-lg-7 offset-lg-5 pt-2 pl-5">
	 						<label class="form-check-label answer">
  								<input type="radio" name="q4" value="1">
  								<span class="checkmark"></span>Never
							</label>
							<label class="form-check-label answer">
							  <input type="radio" name="q4" value="2">
							  <span class="checkmark"></span>1-3 years
							</label>
							<label class="form-check-label answer">
							  <input type="radio" name="q4" value="3">
							  <span class="checkmark"></span>3-5 years
							</label>
							<label class="form-check-label answer_last">
							  <input type="radio" name="q4" value="4">
							  <span class="checkmark"></span>5+years
							</label>
						</div>
					</div>
					 <div class="row py-4">
						  <div class="col-lg-12 text-center pb-4">
							 <button class="btn btn-primary btn-md btnCol" onclick="hide_div(4)">Back</button>
							 <button class="btn btn-primary btn-md btnCol ml-2"onclick="show_div(4)">Continue</button>
						 </div>
				  	 </div>
	  			</div>
	 		</div>
	 	</div>
	 	
	<div class="container-fluid body-color" id="step5">
		<div class="row">
			<div class="col-lg-12 px-0">
	     		<img src="/img/Bridge13-19banner.jpg" class="img-fluid banerheight" width="100%"  alt="">
			</div>
	  	</div>
	  	<div class="row">
	   		<div class="col-lg-12 pt-4">
	    		<div class="row">
	 				<div class="col-lg-12 text-center">
	     				<h4 class="text-dark">Step 5:</h4>
		  				<p class="textColor font-size-19 question">To obtain return of more then what you would receive as a bank fixed deposit,you must take risks.</p>
							<div class="row">
		 						<div class="col-lg-12">
									<div class="hrline-55"></div>
								</div>
							</div>
		  				</div>
		   		  </div>
		    	  <div class="row">
	 				<div class="col-lg-7 offset-lg-5 pt-2">
	 					<label class="form-check-label answer">
  							<input type="radio" name="q5" value="1">
  							<span class="checkmark"></span>Strongly Disagree with the Statement
						</label>
						<label class="form-check-label answer">
						  <input type="radio" name="q5" value="2">
						  <span class="checkmark"></span>Disagree with the Satatement
						</label>
						<label class="form-check-label answer">
						  <input type="radio" name="q5" value="3">
						  <span class="checkmark"></span>Agree with the Statement
						</label>
						<label class="form-check-label answer_last">
						  <input type="radio" name="q5" value="4">
						  <span class="checkmark"></span>Strongly Agree with the Statement
						</label>
					</div>
		   		</div>
				 <div class="row py-4">
					 <div class="col-lg-12 text-center pb-4">
						 <button class="btn btn-primary btn-md btnCol" onclick="hide_div(5)">Back</button>
						 <button class="btn btn-primary btn-md btnCol ml-2" onclick="show_div(5)">Continue</button>
					 </div>
				 </div>
	  		</div>
	 	</div>
	</div>
	
	<div class="container-fluid body-color" id="step6">
		<div class="row">
	 		<div class="col-lg-12 px-0">
	     		<img src="/img/Bridge13-19banner.jpg" class="img-fluid banerheight" width="100%"  alt="">
			</div>
	  	</div>
	  	<div class="row">
	   		<div class="col-lg-12 pt-4">
	    		<div class="row">
	 				<div class="col-lg-12 text-center">
			     	<h4 class="text-dark">Step 6:</h4>
				  	<p class="textColor font-size-19 question">How do react to the idea of investments?</p>
		  				<div class="row">
	 						<div class="col-lg-12">
								<div class="hrline-45"></div>
							</div>
						</div>
		  			</div>
		   		</div>
		    	<div class="row">
	 				<div class="col-lg-8 offset-lg-4 pt-3">
	 					<label class="form-check-label answer">
						  <input type="radio" name="q6" value="1">
						  <span class="checkmark"></span>I get stressed and avoid making financial decisions.
						</label>
						<label class="form-check-label answer">
						  <input type="radio" name="q6" value="2">
						  <span class="checkmark"></span>I ask advice from or relatives.
						</label>
						<label class="form-check-label answer">
						  <input type="radio" name="q6" value="3">
						  <span class="checkmark"></span>I seek professional advice.
						</label>
						<label class="form-check-label answer_last">
						  <input type="radio" name="q6" value="4">
						  <span class="checkmark"></span>I am knowledgeable about investments and use my own expertise.
						</label>
					</div>
		  		 </div>
				 <div class="row py-4">
					 <div class="col-lg-12 text-center pb-4">
						 <button class="btn btn-primary btn-md btnCol" onclick="hide_div(6)">Back</button>
						 <button class="btn btn-primary btn-md btnCol ml-2" onclick="show_div(6)">Continue</button>
					 </div>
		  		 </div>
	  		</div>
	 	</div>
	</div>
	
	<div class="container-fluid body-color p-5" id="step7">
		<div class="row">
	 		<div class="col-lg-5 pt-4 text-center">
	  		<!-- <img src="/img/riskometer.png" class="img-fluid"  alt=""> -->
	 			<!-- <div class="row">
					 <div class="col-md-12">
					 	   <h3 class="textColor">YOUR RISK LEVEL IS:</h3>
					 </div>
	 			</div> -->
				  <div class="row">
					 <div class="col-md-12 pl-lg-5 pl-0">
					  <div id="jqRadialGauge" style="width: 100%; height: 210px;">
					 </div>
					 </div>
				  </div>
	  			 <div class="row">
	 				<div class="col-md-12 mt-3">
	    				<h4 class="textColor">YOUR RISK PROFILE IS <span id="risk_result"></span></h4>
	 				</div>
	 			</div>
	  		</div>
	   		<div class="col-lg-7 pt-5">
	   			
	   			<p class="font-size-19 text-center pt-5" id="risk_result_para"></p>
		    	<div class="row">
	 				<div class="col-lg-12 pl-5 py-2">
						<div class="hrline-100"></div>
					</div>
				</div>
				 <div class="p-4 text-center">
					<!--  <button class="btn btn-primary btn-md btnCol">Speak To<br>Puluts</button> -->
					 <button class="btn btn-primary btn-md btnCol ml-2" onclick="contactUs();">Speak To Our<br>Human Professionals</button>
				 </div>
	  		</div>
	 	</div>
	</div>
	
	
	<style>
#step2,#step3,#step4,#step5,#step6,#step7
{
	display:none;
}

.form-check-label {
    display: block;
    position: relative;
    padding-left: 25px;
    margin-bottom: 12px;
    cursor: pointer;
    font-size: 19px;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
}

.hrline-45 {
    border-bottom: 2px solid #54ada9;
    width: 45%;
    position: absolute;
    left: 27%;
    top: -11px;
}

.btn-primary {
    border-radius: 0;
    background-color: #d90d15;
}

.hrline-75 {
    border-bottom: 2px solid #54ada9;
    width: 75%;
    position: absolute;
    left: 12%;
    top: -11px;
}

.hrline-55 {
    border-bottom: 2px solid #54ada9;
    width: 55%;
    position: absolute;
    left: 22%;
    top: -11px;
}

.hrline-45 {
    border-bottom: 2px solid #54ada9;
    width: 45%;
    position: absolute;
    left: 27%;
    top: -11px;
}

</style>


<script>

var ques_flag = 1;
var risk = "";

$(document).ready(function()
{
	var options=
	{
		width:800,//width of slider
		height:260,//height of slider
		next_prev:false,//will show next and prev links
		speed:600,//slider speed
	};

	//$('#slider').jFormslider(options);
	
});

function riskQuestionBack()
{
	if(ques_flag != 1)
	{
		ques_flag = ques_flag - 1;
		$('#slider').gotoSlide('slider_'+ques_flag);
	}else
	{
		redirect();
	}
}
function riskQuestionNext(ques_flag)
{
	var answer = $("input[type='radio'][name='q"+ ques_flag +"']:checked").val();
    
    if (answer == undefined) 
    {
    	swal({title:"",text:"Please answer the question"});
		return false;
    }
    return true;
}
function completeStep2()
{
	var answer1 = $("input[type='radio'][name='q1']:checked").val();
    var answer2 = $("input[type='radio'][name='q2']:checked").val();
    var answer3 = $("input[type='radio'][name='q3']:checked").val();
    var answer4 = $("input[type='radio'][name='q4']:checked").val();
    var answer5 = $("input[type='radio'][name='q5']:checked").val();
    var answer6 = $("input[type='radio'][name='q6']:checked").val();
    /* var answer7 = $("input[type='radio'][name='q7']:checked").val();
	var answer8 = $("input[type='radio'][name='q8']:checked").val(); */
	
    
    if (answer1 == undefined || answer2 == undefined || answer3 == undefined || answer4 == undefined || answer5 == undefined || answer6 == undefined /* || answer7 == undefined || answer8 == undefined */) 
    {
    	swal({title:"",text:"Please answer all the questions"});
		return;
    }
   
	$.ajaxSetup({async:false});
	$.post("/goal/getRiskProfile", {answer1 : answer1, answer2 : answer2, answer3 : answer3, answer4 : answer4, answer5 : answer5, answer6 : answer6}, function(data)
    {
		var result = $.trim(data);
		var obj = jQuery.parseJSON(result);
        risk = obj.risk_profile;
        $("#risk_result").html(risk.toUpperCase());
        var risk_str = "";
        if(risk == "Aggressive")
        {
        	risk_str = "You're a go-getter who knows your limitations but are completely aware of them. Your gung-ho attitude keeps you on the lookout for the next big way to make money.";
        }
        if(risk == "Moderately Aggressive")
        {
        	risk_str = "You're a go-getter who knows your limitations but are completely aware of them. Your gung-ho attitude keeps you on the lookout for the next big way to make money.";
        }
        if(risk == "Moderate")
        {
        	risk_str = "You're a fence-sitter who knows your limitations and plays safe while taking investment decisions. Your balanced attitude keeps you on the conscious about the risks you want to take to make money.";
        }
        if(risk == "Moderately Conservative")
        {
        	risk_str = "You're risk-shy who knows your limitations and plays extremely safe while taking investment decisions. Your conservative attitude keeps you on the conscious about the risks you take.";
        }
        if(risk == "Conservative")
        {
        	risk_str = "You're risk-shy who knows your limitations and plays extremely safe while taking investment decisions. Your conservative attitude keeps you on the conscious about the risks you take.";
        }
        $("#risk_result_para").html(risk_str);
        
        if(risk == "Conservative")
        {
        	showGraph(10);
        }
        if(risk == "Moderately Conservative")
        {
        	showGraph(30);
        }
        if(risk == "Moderate")
        {
        	showGraph(50);
        }
        if(risk == "Moderately Aggressive")
        {
        	showGraph(70);
        }
        if(risk == "Aggressive")
        {
        	showGraph(90);
        }
        
    },'text');	
    
    /* swal({html:true,title:"",text:"As per our risk assessment, your risk tolerance is <br><b>"+risk+"</b>"},function(){
    	redirect();
    }); */
}
function redirect()
{
	document.location.href = "/mutual-funds-research/model-portfolio/?risk="+risk;
	
}

function contactUs(){
	document.location.href = "/contactus";
}

        function show_div(i) {
		 
            switch (i) {
                case 1:
                	if(riskQuestionNext(1))
                	{
                		document.getElementById("step1").style.display = 'none';
                        document.getElementById("step2").style.display = 'block';
    					 document.getElementById("step3").style.display = 'none';
    					  document.getElementById("step4").style.display = 'none';
    					   document.getElementById("step5").style.display = 'none';
    					    document.getElementById("step6").style.display = 'none';
    						 document.getElementById("step7").style.display = 'none';
                	}
                    break;
                case 2:
                	if(riskQuestionNext(2))
                	{
                		document.getElementById("step1").style.display = 'none';
                        document.getElementById("step2").style.display = 'none';
    					 document.getElementById("step3").style.display = 'block';
    					  document.getElementById("step4").style.display = 'none';
    					   document.getElementById("step5").style.display = 'none';
    					    document.getElementById("step6").style.display = 'none';
    						 document.getElementById("step7").style.display = 'none';
                	}
                    break;
                case 3:
                	if(riskQuestionNext(3))
                	{
                		document.getElementById("step1").style.display = 'none';
                        document.getElementById("step2").style.display = 'none';
    					 document.getElementById("step3").style.display = 'none';
    					  document.getElementById("step4").style.display = 'block';
    					   document.getElementById("step5").style.display = 'none';
    					    document.getElementById("step6").style.display = 'none';
    						 document.getElementById("step7").style.display = 'none';
                	}
                    break;
                case 4:
                	if(riskQuestionNext(4))
                	{
                		document.getElementById("step1").style.display = 'none';
                        document.getElementById("step2").style.display = 'none';
    					 document.getElementById("step3").style.display = 'none';
    					  document.getElementById("step4").style.display = 'none';
    					   document.getElementById("step5").style.display = 'block';
    					    document.getElementById("step6").style.display = 'none';
    						 document.getElementById("step7").style.display = 'none';
                	}
	 
                    break;
                case 5:
                	if(riskQuestionNext(5))
                	{
                		document.getElementById("step1").style.display = 'none';
                        document.getElementById("step2").style.display = 'none';
    					 document.getElementById("step3").style.display = 'none';
    					  document.getElementById("step4").style.display = 'none';
    					   document.getElementById("step5").style.display = 'none';
    					    document.getElementById("step6").style.display = 'block';
    						 document.getElementById("step7").style.display = 'none';
    						 
                	}
                    break;
                case 6:
                	if(riskQuestionNext(6))
                	{
                		document.getElementById("step1").style.display = 'none';
                        document.getElementById("step2").style.display = 'none';
    					 document.getElementById("step3").style.display = 'none';
    					  document.getElementById("step4").style.display = 'none';
    					   document.getElementById("step5").style.display = 'none';
    					    document.getElementById("step6").style.display = 'none';
    						 document.getElementById("step7").style.display = 'block';
    						 completeStep2();
                	}
                    break;
                
                default:
            }
            
           return true;

        }
		
	 function hide_div(i) {
	 
           switch (i) {
               case 1:

                   break;
               case 2:
                   document.getElementById("step1").style.display = 'block';
                   document.getElementById("step2").style.display = 'none';
				 document.getElementById("step3").style.display = 'none';
				  document.getElementById("step4").style.display = 'none';
				   document.getElementById("step5").style.display = 'none';
				    document.getElementById("step6").style.display = 'none';
					 document.getElementById("step7").style.display = 'none';
            
                   break;
               case 3:
                  document.getElementById("step1").style.display = 'none';
                   document.getElementById("step2").style.display = 'block';
				 document.getElementById("step3").style.display = 'none';
				  document.getElementById("step4").style.display = 'none';
				   document.getElementById("step5").style.display = 'none';
				    document.getElementById("step6").style.display = 'none';
					 document.getElementById("step7").style.display = 'none';
                   break;
               case 4:
                   document.getElementById("step1").style.display = 'none';
                   document.getElementById("step2").style.display = 'none';
				 document.getElementById("step3").style.display = 'block';
				  document.getElementById("step4").style.display = 'none';
				   document.getElementById("step5").style.display = 'none';
				    document.getElementById("step6").style.display = 'none';
					 document.getElementById("step7").style.display = 'none';
                   break;
               case 5:
                  document.getElementById("step1").style.display = 'none';
                   document.getElementById("step2").style.display = 'none';
				 document.getElementById("step3").style.display = 'none';
				  document.getElementById("step4").style.display = 'block';
				   document.getElementById("step5").style.display = 'none';
				    document.getElementById("step6").style.display = 'none';
					 document.getElementById("step7").style.display = 'none';
                   break;
               case 6:
                 document.getElementById("step1").style.display = 'none';
                   document.getElementById("step2").style.display = 'none';
				 document.getElementById("step3").style.display = 'none';
				  document.getElementById("step4").style.display = 'none';
				   document.getElementById("step5").style.display = 'block';
				    document.getElementById("step6").style.display = 'none';
					 document.getElementById("step7").style.display = 'none';
                   break;
               case 7:
                 document.getElementById("step1").style.display = 'none';
                   document.getElementById("step2").style.display = 'none';
				 document.getElementById("step3").style.display = 'none';
				  document.getElementById("step4").style.display = 'none';
				   document.getElementById("step5").style.display = 'none';
				    document.getElementById("step6").style.display = 'block';
					 document.getElementById("step7").style.display = 'none';
                   break;
               

               default:
           }

          return true;
       }
function showGraph(risk_value)
{
    var gradient1 = {
            type: 'linearGradient',
            x0: 0,
            y0: 0.5,
            x1: 1,
            y1: 0.5,
            colorStops: [{ offset: 0, color: '#C5F80B' },
                         { offset: 1, color: '#6B8901'}]
        };

        var gradient2 = {
            type: 'linearGradient',
            x0: 0.5,
            y0: 0,
            x1: 0.5,
            y1: 1,
            colorStops: [{ offset: 0, color: '#FF3366' },
                         { offset: 1, color: '#B2183E'}]
        };

        var anchorGradient = {
            type: 'radialGradient',
            x0: 0.35,
            y0: 0.35,
            r0: 0.0,
            x1: 0.35,
            y1: 0.35,
            r1: 1,
            colorStops: [{ offset: 0, color: '#4F6169' },
                         { offset: 1, color: '#252E32'}]
        };

        $('#jqRadialGauge').jqRadialGauge({
            background: '#dcf1f6',
			
            border: {
                lineWidth: 6,
                strokeStyle: '#76786A',
                padding: 16
            },
            shadows: {
                enabled: true
            },
            anchor: {
                visible: true,
                fillStyle: anchorGradient,
                radius: 0.10
            },
            tooltips: {
                disabled: false,
                highlighting: true
            },
            animation: {
                duration: 1
            },
            scales: [
                     {
                         minimum: 0,
                         maximum: 100,
                         startAngle: 180,
                         endAngle: 360,
                         majorTickMarks: {
                             length: 12,
                             lineWidth: 2,
                             interval: 10,
                             offset: 0.84
                         },
                         minorTickMarks: {
                             visible: true,
                             length: 8,
                             lineWidth: 2,
                             interval: 2,
                             offset: 0.84
                         },
                         labels: {
                             orientation: 'horizontal',
                             interval: 10,
                             offset: 1.00
                         },
                         needles: [
                                    {
                                        value: risk_value,
                                        type: 'pointer',
                                        outerOffset: 0.8,
                                        mediumOffset: 0.7,
                                        width: 10,
                                        fillStyle: '#252E32'
                                    }
                                  ],
                         ranges: [
                                    {
                                        outerOffset: 0.82,
                                        innerStartOffset: 0.76,
                                        innerEndOffset: 0.68,
                                        startValue: 40,
                                        endValue: 80,
                                        fillStyle: gradient1
                                    },
                                    {
                                        outerOffset: 0.82,
                                        innerStartOffset: 0.68,
                                        innerEndOffset: 0.60,
                                        startValue: 80,
                                        endValue: 100,
                                        fillStyle: gradient2
                                    }
                                 ]
                     }
                    ]
        });

        $('#jqRadialGauge').bind('tooltipFormat', function (e, data) {

            var tooltip = '<b>Element: ' + data.elementType + '</b> ' + '<br />';

            switch (data.elementType) {

                case 'needle':
                    tooltip += 'Value: ' + data.value;
                    break;
                case 'range':
                    tooltip += 'Start Value: ' + data.startValue + '<br/>End Value: ' + data.endValue;
            }

            return tooltip;
        });
}	 
</script>