    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<style>
	
	#blogcard .card{
			
			border:1px solid #ccc;
			border-radius:30px;
			padding:30px;
		}
		
		#blogcard .card img{
			
			border-radius:20px;
		}
		

.border-top-theme-colored2-3px {
    border-top: 3px solid #003399 !important;
}
	.page-heading {
	    padding-top: 8rem;
	    padding-bottom: 2rem;
	}
	.title_header{
    color: #fff !important;
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
.btn-theme-colored2 {
    color: #fff;
    background-color: #003399;
    border-color: #003399;
}

.header_color {
    background: #003399 !important;
}
@media only screen and (max-width: 991px){
	.pt-150 {
	    padding-top: 22px !important;
	}
}

.btn-theme-colored2:hover {
    
    background-color:#4c8552;
    border-color: #4c8552;
}
.text-theme-colored2 {
    color: #003399 !important;
}


.nav-tabs > li.active a {
		    color: #fff;
		    background-color: #F9A003;
		    border-color: #F9A003;
		    padding: 10px 60px;
		    border-radius: 10px;
		    font-size: 18px;
		}
		.nav-tabs > li a {
		    color: #ccccc;
		    background-color:#fff;
		    border-color: #cccccc;
		    padding: 10px 60px;
		    border-radius: 10px;
		    font-size: 18px;
		}
		.nav-tabs > li.active a, .nav-tabs > li.active a:hover, .nav-tabs > li.active a:focus {
		    color: #fff;
		    background-color: #F9A003;
		}
		
		.nav-tabs > li.active a, .nav-tabs > li.active a:hover{
			background-color: #F9A003;
			color:#fff;
			
		}
		
		.nav-tabs > li > a:hover, .nav-tabs > li > a:focus{
			color:#fff !important;
			background-color: #F9A003 !important;
		}
	


</style>
    <!-- Main -->
    <main>

        
         <!-- Page Title -->

	 <section class=" header_color" >
      <div class="container pt-150 pb-20">
        <!-- Section Content -->
        <div class="section-content">
          <div class="row text-center">
            <div class="col-md-12">
              <h2 class="title title_header">Blog</h2>
              <ol class="breadcrumb mt-10">
                <li><a href="/" class="title_header">Home</a></li>                
                <li class="active title_header">Blog</li>
              </ol>
            </div>
          </div>
        </div>
      </div>
    </section>

   	<section>
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<ul class="nav nav-tabs  ">
					<li class="active pb-20 capital">
            			<a href="#1" data-toggle="tab">Mutual Fund</a>
					</li>
				     <li class="pb-20" style="margin-left:15px;">
						<a href="#2 " data-toggle="tab">Insurance</a>
					</li>
					<li class="pb-20" style="margin-left:15px;">
						<a href="#3" data-toggle="tab">PMS</a>
					</li>
					<li class="pb-20" style="margin-left:15px;">
						<a href="#4" data-toggle="tab">Bonds</a>
					</li>
					<li class="pb-20" style="margin-left:15px;">
						<a href="#5" data-toggle="tab">Unlisted Shares</a>
					</li>
					<li class="pb-20" style="margin-left:15px;">
						<a href="#6" data-toggle="tab">NPS</a>
					</li>
				</ul>
				<div class="tab-content ">
					<div class="tab-pane active" id="1">
						<div class="row" id="blogcard">
								<div class="col-md-4">
											<a href="/unlisted-equity">
						                  	<div class="card">
												<div class="card-body">
													<img class="img-fluid mb-30" src="/images/about/Stock-Market-Today-News.avif">
													<h5 class="mb-20">Unlisted Equity Investment Sample Allocation...</h5>
												</div>
												
											</div>
											</a>
						            </div>
							   <div class="col-md-4">
								<a href="/blog-details/How-to-Build-a-1-Crore-Portfolio-from-Zero">
			                  	<div class="card">
									<div class="card-body">
										<img class="img-fluid mb-20" src="/images/blog/amount.png">
										<h5 >How to Build a 1 Crore Portfolio from Zero ...</h5>
									</div>
									
								</div>
								</a>
			            </div>
						<div class="col-md-4">
							<a href="/blog-details/Why-Large-Cap-Funds-Should-Be-Part-of-Your-Core-Portfolio">
			              	<div class="card">
								<div class="card-body">
									<img class="img-fluid mb-20" src="/images/blog/how-to-choose-a-financial-advisor.jpeg">
									<h5> Why Large Cap Funds Should Be Part of Your Core Portfolio ...</h5>
								</div>
								
							</div>
							</a>
			        	</div>
						
			            
			          </div>
					<div class="row pt-30" id="blogcard">
						<div class="col-md-4">
							<a href="/blog-details/SIP-vs-Lumpsum-Which-Investment-Strategy-Is-Right-for-You">
								<div class="card">
									<div class="card-body">
										<img class="img-fluid mb-20" src="/images/blog/large-cap.png">
										<h5>SIP vs Lumpsum : Which Investment Strategy Is Right...</h5>
									</div>
					
								</div>
							</a>
						</div>
						<div class="col-md-4">
							<a href="/blog-details/Planting-Dreams-Early">
								<div class="card">
									<div class="card-body">
										<img class="img-fluid mb-20" src="/images/blog/children-image.png">
										<h4>Planting Dreams Early ...</h4>
									</div>
					
								</div>
							</a>
						</div>
						<div class="col-md-4">
							<a href="/blog-details/Succession-Planning-for-Family-Businesses-in-India">
								<div class="card">
									<div class="card-body">
										<img class="img-fluid mb-20" src="/images/blog/planning-family.png">
										<h4>Succession Planning for Family Businesses in India ...</h4>
									</div>
					
								</div>
							</a>
						</div>
					
					
					</div>
						
					</div>
					<div class="tab-pane " id="2">
						<div class="row pt-30" id="blogcard">
							<div class="col-md-4">
									<a href="/blog-details/10-common-mistakes-people-make-when-buying-insurance">
					              	<div class="card">
										<div class="card-body">
											<img class="img-fluid mb-20" src="/images/blog/life-vs-general.png">
											<h5>10 Common Mistakes People Make When Buying...</h5>
										</div>
										
									</div>
									</a>
					        	</div>
						   <div class="col-md-4">
							<a href="/blog-details/term-insurance-vs-life-insurance-Whats-the-difference">
		                  	<div class="card">
								<div class="card-body">
									<img class="img-fluid mb-20" src="/images/blog/insurance-new-one.png">
									<h5>Term Insurance vs Life Insurance: What's the ...</h5>
								</div>
								
							</div>
							</a>
	  			            </div>
	  						
	  						
	  			            
	  			          </div>
							
					</div>
					<div class="tab-pane " id="3">
						<div class="row pt-30" id="blogcard">
							<div class="col-md-4">
									<a href="/blog-details/what-is-pms-a-complete-guide-for-indian-investors">
					              	<div class="card">
										<div class="card-body">
											<img class="img-fluid mb-20" src="/images/blog/investment-growth-concept.png">
											<h5>What Is PMS? A Complete Guide for Indian Investors...</h5>
										</div>
										
									</div>
									</a>
					        	</div>
						  
	  							
		  			            
		  			          </div>
												
										</div>
				</div>
				</div>
			</div>
			
					  				  
		</div>
	</section>			