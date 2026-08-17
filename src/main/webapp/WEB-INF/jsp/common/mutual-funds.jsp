<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!--================Breadcrumb Area =================-->
        <section class="breadcrumb_area">
        	<div class="breadcrumb_top">
        		<div class="container">
					<h2>Knowledge Centre</h2>
				</div>
        	</div>
        	<div class="breadcrumb_bottom">
        		<div class="container">
					<ul class="nav">
						<li><a href="/">Home</a></li>
						<li class="active"><a href="faq.html">Knowledge Centre</a></li>
					</ul>
				</div>
        	</div>
        </section>
        <!--================End Breadcrumb Area =================-->
        
        <!--================Faq Area =================-->
        <section class="faq_area p_100">
        	<div class="container">
        		<div class="main_title">
        			<h2>Frequently Asked Questions</h2>
        			<p>Discover you question from underneath or present your inquiry fromt tahe submit box.</p>
        		</div>
				<div class="input-group">
					<input type="text" class="form-control" placeholder="Search Your Answer" aria-label="Recipient's username" aria-describedby="button-addon2">
					<div class="input-group-append">
						<button class="btn btn-outline-secondary" type="button" id="button-addon2"><i class="lnr lnr-magnifier"></i></button>
					</div>
				</div>
       			<div class="row question_inner">
       				<div class="col-lg-6">
       					<div class="accordion left_side" id="accordionExample">
       						<c:forEach items="${list}" var="data" varStatus="status">
       						<c:if test="${status.count % 2 != 0}">
       						<div class="card">
       							<div class="card-header" id="heading-${status.index}">
									<button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapse-${status.index}" aria-expanded="false" aria-controls="collapse-${status.index}">
										<i>+</i>
										<i>-</i>
										${data.title}
									</button>
       							</div>
       							<div id="collapse-${status.index}" class="collapse" aria-labelledby="heading-${status.index}" data-parent="#accordionExample">
       								<div class="card-body">
       									<c:out value="${data.content}" escapeXml="false"></c:out>
       								</div>
       							</div>
       						</div>
       						</c:if>
       						</c:forEach>
       					</div>
       				</div>
       				
       				<div class="col-lg-6">
       					<div class="accordion left_side" id="accordionExample">
       						<c:forEach items="${list}" var="data" varStatus="status">
       						<c:if test="${status.count % 2 == 0}">
       						<div class="card">
       							<div class="card-header" id="heading-${status.index}">
									<button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapse-${status.index}" aria-expanded="false" aria-controls="collapse-${status.index}">
										<i>+</i>
										<i>-</i>
										${data.title}
									</button>
       							</div>
       							<div id="collapse-${status.index}" class="collapse" aria-labelledby="heading-${status.index}" data-parent="#accordionExample">
       								<div class="card-body">
       									<c:out value="${data.content}" escapeXml="false"></c:out>
       								</div>
       							</div>
       						</div>
       						</c:if>
       						</c:forEach>
       					</div>
       				</div>
<!--        				<div class="col-lg-6">
       					<div class="accordion" id="accordionExample2">
       						<div class="card">
       							<div class="card-header" id="headingfive">
									<button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapsefive" aria-expanded="true" aria-controls="collapsefive">
										<i>+</i>
										<i>-</i>
										Highway will close the loop on focusin?
									</button>
       							</div>
       							<div id="collapsefive" class="collapse" aria-labelledby="headingfive" data-parent="#accordionExample2">
       								<div class="card-body">
       									Lorem ipsum dolor sit amet, vix an natum labitur eleifd, mel am laoreet menandri. Ei justo complectitur duo. Ei mundi solet utos soletu possit quo. Sea cu justo laudem. An utinam consulatu eos, facilis ndi solet utos.
       								</div>
       							</div>
       						</div>
       						<div class="card">
       							<div class="card-header" id="headingsix">
									<button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapsesix" aria-expanded="false" aria-controls="collapsesix">
										<i>+</i>
										<i>-</i>
										Capitalize on low hanging fruit to identify a ballpark value added activity to beta test?
									</button>
       							</div>
       							<div id="collapsesix" class="collapse" aria-labelledby="headingsix" data-parent="#accordionExample2">
       								<div class="card-body">
       									Lorem ipsum dolor sit amet, vix an natum labitur eleifd, mel am laoreet menandri. Ei justo complectitur duo. Ei mundi solet utos soletu possit quo. Sea cu justo laudem. An utinam consulatu eos, facilis ndi solet utos.
       								</div>
       							</div>
       						</div>
       						<div class="card">
       							<div class="card-header" id="headingseven">
									<button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseseven" aria-expanded="false" aria-controls="collapseseven">
										<i>+</i>
										<i>-</i>
										Nanotechnology immersion along the information?
									</button>
       							</div>
       							<div id="collapseseven" class="collapse" aria-labelledby="headingseven" data-parent="#accordionExample2">
       								<div class="card-body">
       									Lorem ipsum dolor sit amet, vix an natum labitur eleifd, mel am laoreet menandri. Ei justo complectitur duo. Ei mundi solet utos soletu possit quo. Sea cu justo laudem. An utinam consulatu eos, facilis ndi solet utos.
       								</div>
       							</div>
       						</div>
       						<div class="card">
       							<div class="card-header" id="headingnine">
									<button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapsenine" aria-expanded="false" aria-controls="collapsenine">
										<i>+</i>
										<i>-</i>
										User generated content in real-time will have multiple?
									</button>
       							</div>
       							<div id="collapsenine" class="collapse" aria-labelledby="headingnine" data-parent="#accordionExample2">
       								<div class="card-body">
       									Lorem ipsum dolor sit amet, vix an natum labitur eleifd, mel am laoreet menandri. Ei justo complectitur duo. Ei mundi solet utos soletu possit quo. Sea cu justo laudem. An utinam consulatu eos, facilis ndi solet utos.
       								</div>
       							</div>
       						</div>
       					</div>
       				</div> -->
       			</div>
        	</div>
        </section>
        <!--================End Faq Area =================-->
        
        <!--================Answer Question Area =================-->
        <section class="answer_question_area p_100">
        	<div class="container">
        		<div class="row">
        			<div class="col-lg-9">
        				<div class="answer_form">
        					<div class="single_title white">
        						<h2>Didn’t find your answer? Submit your question</h2>
        					</div>
        					<form class="row call_back_form" action="#" method="post" id="contactForm" novalidate="novalidate">
								<div class="form-group col-lg-12">
									<input type="email" class="form-control" id="email" name="email" placeholder="Email Address*">
								</div>
								<div class="form-group col-md-12">
									<input type="text" class="form-control" id="subject" name="subject" placeholder="Subject*">
								</div>
								<div class="form-group col-md-12">
									<textarea class="form-control" name="message" id="message" rows="1" placeholder="Your Question*"></textarea>
								</div>
								<div class="form-group col-md-4">
									<button type="submit" value="submit" class="btn submit_btn form-control">Submit Now</button>
								</div>
							</form>
        				</div>
        			</div>
        		</div>
        	</div>
        </section>
        <!--================End Answer Question Area =================-->
        