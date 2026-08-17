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
              <h2 class="title title_header">Gauge your risk tolerance </h2>
              <ol class="breadcrumb mt-10">
                <li><a href="/" class="title_header">Home</a></li>
                <li><a href="/" class="title_header">About</a></li>
                <li class="active title_header">Gauge your risk tolerance </li>
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
			
			<p>	What are the best saving and investment products for you? The answer depends on when you will need the money, your goals, and whether you will be able to sleep at night if you purchase a risky investment (one where you could lose your principal).</p>
			<p>For instance, if you are saving for retirement, and you have 35 years before you retire, you may want to consider riskier investment products, knowing that if you stick to only the "savings" products or to less risky investment products, your money will grow too slowly. Or, given inflation and taxes, you may lose the purchasing power of your money. A frequent mistake people make is putting money they will not need for a very long time in investments that pay a low amount of interest.</p>
			<p>On the other hand, if you are saving for a short-term goal, five years or less, you don't want to choose risky investments, because when it's time to sell, you may have to take a loss.</p>
			
			
						
		</div>
		</div>
	</div>
</section>