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
.breadcrumb>li+li:before {
    padding: 0 5px;
    color: #000 !important;
    content: "/\00a0";
}
.text-theme-colored {
    color: #333 !important;
}
.title_header{
    color: #000 !important;
}
.header_color {
    background: #003399 !important;
}
.breadcrumb li.active {
    color: #ffffff;
}
@media only screen and (max-width: 991px){
section > .container  {
    padding-top: 22px !important;
    padding-bottom: 30px !important;
}
}
.card {
    float: left;
    min-height: 0px;
    padding: 25px;
    position: relative;
    width: 100%;
}
</style>


<section class="header_color">
	<div class="main-content">
		<div class="container pt-150 pb-10">
			<div class="section-content">
				<div class="row text-center">
					<div class="col-md-12">
						<h2 class="title title_header text-dark">Our Team</h2>
						<ol class="breadcrumb  text-black mt-10">
							<li><a href="/" class="title_header">Home</a></li>
							<li class="active title_header">Our Team</li>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</div> 
</section>



<section>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="card" style="background:#ffde88;">
					<img src="/images/blog/author.jpg" style="border-radius:30px;">
				</div>
			</div>
		</div>
	</div>
</section>