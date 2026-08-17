<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>



<style>
@media only screen and (max-width: 991px){
.pt-150 {
    padding-top: 22px !important;
}
}

.breadcrumb > li + li::before {
    content: "\f22d" !important;
    font-family: fontawesome;
    font-size: 9px;
}

.text-theme-colored2 {
    color: #003399 !important;
}

.funfact-img {
    padding: 32px;
    border-radius: 50%;
    background: linear-gradient(135deg, #003399, #4c8552);
    box-shadow: 0 6px 16px rgba(0, 0, 0, 0.2);
}


#missionvision .card{

	padding:30px;
	border-radius:30px;
	
	box-shadow: 0px 0px 20px 0px #bcb2ff;

}
#missionvision .card h6{

  color:#f4701c;
}

</style>
<script>
  window.addEventListener("DOMContentLoaded", () => {
    function animateCounter(id, end, duration = 1500) {
      let start = 0;
      let element = document.getElementById(id);
      let increment = end / (duration / 16);

      function update() {
        start += increment;
        if (start < end) {
          element.innerText = Math.floor(start);
          requestAnimationFrame(update);
        } else {
          element.innerText = end + "+";
        }
      }
      update();
    }

    animateCounter("counter1", 600);
    animateCounter("counter2", 70);
  });
</script>

<section class="header_color">
		<div class="container pt-150 pb-10">
        	<div class="section-content">
          		<div class="row text-center">
            		<div class="col-md-12">
              			<h2 class="title title_header text-dark">About Us</h2>
              			<ol class="breadcrumb  text-black mt-10">
                			<li><a href="/" class="title_header">Home</a></li>
                			<li class="active title_header">About Us</li>
              			</ol>
					</div>
				</div>
			</div>
		</div>
</section>


<section >
		<div class="container">
			<div class="row align-items-center justify-content-center">
				<div class="col-md-7">
					<img src="/images/about/finance-correct-combination.png" class="img-fluid"> 
				</div>
				<div class="col-md-5">
					<h6 class="text-theme-colored1">Welcome to</h6>
					<img src="/images/about/company-name.png" width="300px;">
					<p class="text-justify mt-20">Your trusted partner in navigating the complexities of financial planning. We specialize in providing expert advice and personalized solutions in mutual funds, insurance, and comprehensive financial strategies. </p>
					<p class="text-justify mt-20">Our foundation is built on years of experience and a deep understanding of the financial markets. We are committed to staying abreast of the latest industry trends and regulations to ensure our clients receive the most up-to-date and effective advice. </p>
					
					
					
				</div>
				
			</div>
		</div>
	</section>
		<!-- Funfact section-->
		
		<section>
			<div class="container pt-0">
				
					<div class="row" id="missionvision">
						<div class="col-lg-12">
						<div class="card">
							<div class="card-body">
								<div class="row align-items-center">
									<div class="col-lg-3">
										<img src="/images/about/ourvision.png">
									</div>
									<div class="col-lg- mt-20">
										<h3>Our Vision</h3>
										
										<p>To enable salaried people and small entrepreneurs to achieve financial freedom in their life by helping them to manage their family finance with a systematic and disciplined approach.</p>
										<hr>
										<h3>Our Mission</h3>
											
										<p>focus on providing customer centric planning tools to structure individual and  family finances and in assisting them to customize investment avenues based on their risk profile to reach financial freedom.</p>
										
									</div>
								</div>
							</div>
						</div>
						
					</div>
				</div>
			</div>
		</section>

		
		
		<section >
			<div class="container pt-0">
				
				<div class="row ">
					
					<div class="col-lg-7 animate__animated animate__fadeInDown">
						<div class="row">
							<div class="col-lg-6 ">
								<div class="card fun-card">
									<div class="card-body">
										
										<h1 class="text-theme-colored mt-20" id="counter1">0</h1>
										<hr>
										<h3 class="">Investors</h3>
										<p>	All of our clients are satisfied with our work and service</p>
									</div>
								</div>
							</div>
							<div class="col-lg-6 ">
								<div class="card fun-card">
									<div class="card-body">
										
										<h1 class="text-theme-colored mt-20" id="counter2">0</h1>
										<hr>
										<h3 class="">Families</h3>
										<p>	All of our clients are satisfied with our work and service</p>
									</div>
								</div>
								
							</div>
							
						</div>
					</div>
					<div class="col-lg-5 text-center">
						<img src="/images/about/finance-photo-ai.png" class="img-fluid">
					</div>
				</div>
			</div> 
		</section>