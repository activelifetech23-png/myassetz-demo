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
              <h2 class="title title_header">Needs, Wants & Desires </h2>
              <ol class="breadcrumb mt-10">
                <li><a href="/" class="title_header">Home</a></li>
                <li><a href="/" class="title_header">About</a></li>
                <li class="active title_header">Needs, Wants & Desires </li>
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
			
			<h3>Needs, wants desires</h3>
			<p>In order to prioritize your spending and increase your savings, it is essential to understand the difference between needs, wants, and desires.</p>
			<h6>Needs:</h6>
			<p>Needs are necessary for survival. These are basic in nature. Examples of needs include food, water, housing, clothing, healthcare, etc.</p>
			<h6>Wants:</h6>
			<p>Wants are not essential for survival, but enhance one's lifestyle and comfort, such as, entertainment, dining out, vacations etc.</p>
			<img class="img-fluid" src="/images/about/desire.png">
			<p>Desires are strong aspirations like buying a dream luxury car, latest electronic gadgets like high-end mobile phones, etc. To satisfy desires, one may be tempted to borrow money (see the article <a href="https://investor.sebi.gov.in/moneymatters-borrowmoney.html"> Before You Borrow Money </a>).</p>
			<p>If we spend too much money on our desires or wants without prioritizing, budgeting and therefore saving may become difficult. Therefore, one should prioritize the allocation of money first towards needs and then towards wants and lastly toward desires without losing focus on saving.</p>
			
					
			
						
		</div>
		</div>
	</div>
</section>