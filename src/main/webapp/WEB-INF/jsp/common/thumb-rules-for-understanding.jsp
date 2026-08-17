<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<style>

.breadcrumb li a {
    color: #fff;
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
.panel-title {
    background: #e8e8fb;
    padding: 10px;
    color: #000;
    border: 1px solid #003399;
}
.panel-title>a:hover{
   color:#4c8552;
}
.panel-title>a:active{
   color:#4c8552;
}
.panel-title>a:focus{
   color:#4c8552;
}
.panel-group .panel+.panel {
    margin-top: 15px;
    margin-bottom: 15px;
}
.panel-collapse{
    background: #fff;
    padding: 15px;
    color: #000;
    border-bottom:3px solid #4c8552;
}
@media only screen and (max-width: 991px){
	.pt-150 {
	    padding-top: 22px !important;
	}
}
.title_header{
    color: #fff !important;
}
.btn-theme-colored2:hover {
    
    background-color:#F57D00 ;
    border-color: #F57D00;
}
.text-theme-colored2 {
    color: #003399 !important;
}
.header_color {
    background: #003399 !important;
}

#figure a{
	
	color:blue !important;
}

</style>






  <!-- Start main-content -->
  <div class="main-content">
    <!-- Section: inner-header -->
        <!-- Section: inner-header -->
    <section class="header_color">
      <div class="container pt-150 pb-20">
        <!-- Section Content -->
        <div class="section-content">
          <div class="row text-center">
            <div class="col-md-12">
              <h2 class="title title_header">Thumb rules for understanding power of compounding </h2>
              <ol class="breadcrumb mt-10">
                <li><a href="/" class="title_header">Home</a></li>
                <li><a href="/" class="title_header">About</a></li>
                <li class="active title_header">Thumb rules for understanding power of compounding </li>
              </ol>
            </div>
          </div>
        </div>
      </div>
    </section>

<section>
	<div class="container">
	<div class="row" id="figure">
		<div class="col-lg-12">
			<h3>Thumb rules for understanding power of compounding</h3>
			<p>Thumb rules that can help in understanding the power of compounding are given below:</p>
			<img class="img-fluid" src="/images/about/rule.png">
			<p>Compounding allows savings to grow substantially over a period of time as it involves earning interest not only on the initial amount of money (the principal) but also on the accumulated interest over a period of time. In other words, it is interest earned on the principal and the accrued interest.</p>
			<p>Albert Einstein once said: "Compound interest is the eighth wonder of the world. He who understands it, earns it ... he who doesn't, ... pays it".</p>
			<p>The Magic of Compounding</p>
			<p>Growth of Rs. 1,00,000 @ 10 % per annum compound interest Vs simple interest for 20 years can be seen in the below picture.</p>
			<img class="img-fluid" src="/images/about/invested-laks.png">
			<p>It can be observed, in compound interest, Rs. 1,00,000 has grown to Rs. 6,72,000 at the end of 20 years as compared to Rs. 3,00,000 using simple interest.</p>
					
			
						
		</div>
		</div>
	</div>
</section>