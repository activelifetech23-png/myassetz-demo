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
			<div class="row" id="blogcard">
							   <div class="col-md-4">
								<a href="/blog-details/How-to-Build-a-1-Crore-Portfolio-from-Zero">
			                  	<div class="card">
									<div class="card-body">
										<img class="img-fluid mb-20" src="/images/blog/amount.png">
										<h5>How to Build a 1 Crore Portfolio from Zero ...</h5>
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
			            
			          </div>
			
					  <div class="row pt-30" id="blogcard">
						<div class="col-md-2">
											  			              	
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
					  						<div class="col-md-2">
					  			              	
					  			        	</div>
					  			            
					  			          </div>
					  				  
		</div>
	</section>			