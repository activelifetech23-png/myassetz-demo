<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

       				<aside class="menu_widget">
						<ul class="nav flex-column">
							<li><a href="/our-story">Our Story</a></li>
							<li><a href="/our-offices">Our offices</a></li>
							<li><a href="/team">Our people</a></li>
							<li class="<c:if test="${page eq 'mission-values' }"><c:out value="active" /></c:if>"><a href="/mission-values">Mission & Values</a></li>
							<li><a href="/become-a-Truuegro-partner">Partners</a></li>
							<li><a href="/we-can-help-you">Why Choose Us</a></li>							
							<li class="<c:if test="${page eq 'testimonials' }"><c:out value="active" /></c:if>"><a href="/testimonials">Testimonials</a></li>							
						</ul>
					</aside>
       				<div class="story_left_sidebar">
       					<aside class="left_widget insight_widget">
       						<div class="f_title">
								<h3>Insights</h3>
       							<span></span>
       						</div>
       						<div class="insight_inner">
   							<div class="insight_item">
   								<p><a style="font-size:15px;text-transform:none;" href="/blog/How-dynamic-asset-allocation-funds-are-ideal-for-those-who-worry-about-market-volatility">How dynamic asset allocation funds are ideal for those who worry about market volatility</a></p>
   								<a href="/blog/How-dynamic-asset-allocation-funds-are-ideal-for-those-who-worry-about-market-volatility">May 24, 2019</a>
   							</div>
   							<div class="insight_item">
   								<p><a style="font-size:15px;text-transform:none;" href="/blog/Debt-Mutual-Funds-versus-Fixed-Deposits">Debt Mutual Funds versus Fixed Deposits</a></p>
   								<a href="/blog/Debt-Mutual-Funds-versus-Fixed-Deposits">May 16, 2019</a>
   							</div>
   						</div>
       					</aside>
       					<aside class="left_widget says_widget">
       						<div class="f_title">
								<h3>CEO Says</h3>
       							<span></span>
       						</div>
       						<div class="says_inner">
       							<p>The important thing is not to have lots of money. It is knowing how to manage it.</p>
       							<div class="media">
       								<div class="d-flex">
       									<img class="rounded-circle" width="74" src="img/team/anirudh.jpg" alt="">
       								</div>
       								<div class="media-body">
       									<h5>Anirudh Dar</h5>
        								<h6>Founder - Truuegro</h6>
       								</div>
       							</div>
       						</div>
       					</aside>
       					<aside class="left_widget button_widget">
       						<a target="_blank" href="/pdf/Truuegro_Corporate_Brochure_Final.pdf"><img src="img/icon/doc-1.png" alt="">Our Brochure</a>
        					<a target="_blank" href="/pdf/Truuegro-Resurgent_Corporate_Version_Final_Website.pdf"><img src="img/icon/doc-2.png" alt="">Our Profile</a>
       					</aside>
       				</div>