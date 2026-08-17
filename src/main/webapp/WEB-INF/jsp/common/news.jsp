<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<style>
@media only screen and (max-width: 991px){
	.pt-150 {
	    padding-top: 22px !important;
	}
}
.border-top-theme-colored2-3px {
    border-top: 3px solid #003399 !important;
}

.breadcrumb > li + li::before {
    content: "\f22d" !important;
    font-family: fontawesome;
    font-size: 9px;
}



.text-theme-colored2 {
    color: #003399 !important;
}

.bg-theme-colored {
    background-color: #003399 !important;
}
.pagination>.active>a, .pagination>.active>a:focus, .pagination>.active>a:hover, .pagination>.active>span, .pagination>.active>span:focus, .pagination>.active>span:hover {
    
    background-color: #003399 !important;
    border-color: #003399 !important;
}
</style>

    <!-- Main -->
    <main>

        
         <!-- Page Title -->    
    
    <section class="header_color"  >
      <div class="container pt-150 pb-20">
        <!-- Section Content -->
        <div class="section-content">
          <div class="row text-center">
            <div class="col-md-12" >
              <h2 class="title title_header">News</h2>
              <ol class="breadcrumb mt-10">
                <li><a href="/" class="title_header">Home</a></li>
                <li class="active title_header">News</li>
              </ol>
            </div>
          </div>
        </div>
      </div>
    </section>
      <c:choose>
	<c:when test="${shouldCallApi eq true}">  
        <!-- Section -->
        <section >
            <div class="container" style="">
                
                    
                        <div class="row">
                        	<c:forEach var="news" items="${newslist}" varStatus="theCount">
                            <div class="col-md-12 col-lg-4 mb-10">
			                <div class="item">
			                  <article class=" mb-30" style="border: 1px solid #003399; border-top:5px solid #4c8552; border-radius:30px;">
			                    <div class="entry-header">
			                     
			                    </div>
			                    <div class="entry-content p-20 ">
			                      <div class="entry-meta media mt-0 mb-10">
			                        <div class="media-body pl-0">
			                          <div class="event-content pull-left flip">
			                          <label class="small mb-2">${news.source_name} | ${news.create_date}</label>
			                            <h5 class="mb-3"><a class="text-dark stretched-link" href="/news/<c:out value=" ${fn:replace(fn:trim(news.category),' ','-')}"/>/<c:out value="${fn:replace(fn:trim(news.title),' ','-')}"/>"><c:out value=" ${fn:substring(news.title,0,50)}" />...</a></h5>			                            
			                          
			                          </div>
			                        </div>
			                      </div>
			                      <p class="mt-5">${fn:substring(news.small_content, 0, 250)}...</p>
			                      
			                    </div>
			                  </article>
			                </div>
			                </div>
                            </c:forEach>

                            <div class="col-lg-12 col-md-12 pt-3">
                            <c:if test="${newsPageCount > 1}">

				            <ul class="pagination justify-content-center">
							<c:choose>
								<c:when test="${pageid eq 1}">
									<li class="page-item"><a href="#"  aria-label="Previous" class="page-link"><i class="fa fa-angle-left" aria-hidden="true"></i></a></li>
								</c:when>
								<c:otherwise>
									<li class="page-item"><a class="page-link" href="<c:url value="?pageid=${pageid - 1}"/>"  aria-label="Previous"><i class="fa fa-angle-left" aria-hidden="true"></i></a></li>
								</c:otherwise>
							</c:choose>
							                               
				                      <c:forEach begin="${beginPaginatorId}" end="${endPaginatorId}" step="1" varStatus="loop">
				                       <c:choose>
										<c:when test="${loop.index == pageid}">
											<li class="page-item active"><a class="page-link" href="<c:url value="?pageid=${loop.index}"/>" class="current"><c:out value="${loop.index}"/> <span class="sr-only">(current)</span></a></li>
										</c:when>
									 	<c:otherwise>
											<li class="page-item"><a class="page-link" href="<c:url value="?pageid=${loop.index}"/>"><c:out value="${loop.index}"/> <span class="sr-only">(current)</span></a></li>
				     			</c:otherwise>
				  				  </c:choose>
				                      </c:forEach>
					                         
					         <c:choose>
							     <c:when test="${pageid eq blogsPageCount}">
							      	<li class="page-item" class="disabled"><a class="page-link" href="#"  aria-label="Next"><i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
							     </c:when>
							     <c:otherwise>
							      	<li class="page-item"><a class="page-link" href="<c:url value="?pageid=${pageid + 1}"/>"  aria-label="Next"><i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
							     </c:otherwise>
						    </c:choose>
				          </ul>

				
							</c:if>
                            </div>
                        </div>
                </div>  
        </section>
        </c:when>
		<c:otherwise>	
		<section>
			<div class="container">
		        <div class="row col-md-offset-3">
					<div class="col-lg-8 text-center wow fadeIn" data-wow-delay=".3s">
		                <div class="blog-item p-5 text-center position-relative bg-light">
		                    <h1>No News Found</h1>
		                </div>
		            </div>
		        </div>
		    </div>
		</section>
	</c:otherwise>
</c:choose>   
        <!-- End section -->
    </main>
    <!-- End Main -->
