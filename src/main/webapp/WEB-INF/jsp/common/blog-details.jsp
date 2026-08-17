<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<style>
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
	.title_header{
    color: #fff !important;
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
    
    background-color:#003399 ;
    border-color: #003399;
}
.text-theme-colored2 {
    color: #003399 !important;
}
</style>



  <!-- Start main-content -->
  <div class="main-content">
    <!-- Section: inner-header -->    
    <section class="header_color" style="background: 50% 0px rgb(163 163 163 / 16%);">
      <div class="container pt-150 pb-20">
        <!-- Section Content -->
        <div class="section-content">
          <div class="row text-center">
            <div class="col-md-12">
              <h2 class="title title_header">${blogs.title}</h2>
              <ol class="breadcrumb mt-10">
                <li><a href="/" class="title_header">Home</a></li>
                <li class="breadcrumb-item"><a href="/blog" class="title_header">blog</a></li>
                <li class="active title_header">${blogs.title}</li>
              </ol>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Section: Blog -->
       <section>
     <div class="container position-relative bg-white z-index-1 pt-50 pb-50">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <article class=" card-body mt-n10 mb-5">
                    	<a href="#">
                  			<img  src="https://mfportfolio.in/resources/images/blogs/${blogs.title_folder}/${blogs.photo}" loading="lazy" style="width:100%; padding-bottom:20px;">
                		</a>
						<c:out value="${blogs.content}" escapeXml="false"></c:out>
                    </article>

                </div>
            </div>
        </div>
    </section>
  </div>
  <!-- end main-content -->