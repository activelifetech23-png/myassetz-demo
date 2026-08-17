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
.viewProfileBtn2{
	color:blue;
}

</style>

    <!-- Main -->
    <main>

        
         <!-- Page Title -->
   
	 <section class=" header_color" style="background: 50% 0px rgb(163 163 163 / 16%);">
      <div class="container pt-150 pb-20">
        <!-- Section Content -->
        <div class="section-content">
          <div class="row text-center">
            <div class="col-md-12">
              <h2 class="title title_header">${news.title}</h2>
              <ol class="breadcrumb mt-10">
                <li><a href="/" class="title_header">Home</a></li>
                <li class="breadcrumb-item"><a href="/news" class="title_header">News</a></li>
                <li class="active title_header">${news.title}</li>
              </ol>
            </div>
          </div>
        </div>
      </div>
    </section>
        
        <!-- section -->
        <section>
            <div class="container position-relative bg-white z-index-1">
                <div class="row">
                    <div class="col-lg-12">
                        <article class="card card-body pt-20 pb-20" style="border:1px solid #4c8552; border-radius:30px;">
  							<c:out value="${fn:replace(news.full_content,'<p>', '<p align=justify>')}" escapeXml="false" />
                        </article>

                    </div>
                </div>
            </div>
        </section>
        <!-- end section -->

    </main>
    <!-- End Main -->
