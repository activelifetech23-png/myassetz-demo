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
              			<h2 class="title title_header text-dark">About Founder</h2>
              			<ol class="breadcrumb  text-black mt-10">
                			<li><a href="/" class="title_header">Home</a></li>
                			<li class="active title_header">About Founder</li>
              			</ol>
					</div>
				</div>
			</div>
		</div>
</section>


<section >
		<div class="container">
			<div class="row align-items-center justify-content-center">
				<div class="col-md-6">
					<img src="/images/about/avthor.avif" class="img-fluid"> 
				</div>
				<div class="col-md-5">
					<h2 class="">Our Esteemed Founder</h2>
					
					<p class="text-justify mt-20"><b><sapn style="color:#27A840;"> Sankar is a CFP - a Certified Financial Planner </sapn></b> - from Financial Planning Standard Boards of USA and is in practice for the last several years. Subsequently acquired CFA qualification as well to expand the knowledge base on various investment product valuations and he brings in his ability to evaluate various asset classes to the table. </p>
					<p class="text-justify mt-20">Sankar is an inspired trainer and was associated with National Stock Exchange and BSE for their skill development and sustaining programs and their offers in market-oriented certificate programs and continue to be in their panel of trainers.</p>
					<p class="text-justify mt-20">Sun News life channel used his services for educating customers on Mutual funds and risk management through life & health insurance products for a period of about 5 years. In the same way Nanayam vikatan - a wing on stock market, mutual funds, life and health insurance, NPS and financial planning of famous Vikatan group of Tamil nadu - used his services for providing energising, insightful articles and guidance to their subscribers.</p>
					<p class="text-justify mt-20">Before taking up financial services mainstream Sankar was in sales and skill management for P&G for about 23 years</p>
					<p class="text-justify mt-20">At a personal level he is a marathoner and participated in and carried himself well in some sponsored marathon running programs for cancers and the like.</p>
					
					
					
				</div>
				
			</div>
		</div>
	</section>
		<!-- Funfact section-->
		
		
		
		
 