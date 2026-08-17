<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div class="col-lg-12">
	<ul class="pricing-list">
        <li class="item">
        	<c:choose>
        		<c:when test="${page eq 'top-performing-mutual-funds'}"><i class="fa fa-check-circle text-green mr-2"></i></c:when>
        		<c:otherwise> <i class="fa fa-times-circle main-color mr-2"></i> </c:otherwise>
        	</c:choose>
        	<a href="/mutual-funds-research/top-performing-mutual-funds">Top Performing Mutual Funds</a>
        </li>
        <li class="item">
        	<c:choose>
        		<c:when test="${page eq 'mutual-funds-research'}"><i class="fa fa-check-circle text-green mr-2"></i></c:when>
        		<c:otherwise> <i class="fa fa-times-circle main-color mr-2"></i> </c:otherwise>
        	</c:choose>
        	<a href="/mutual-funds-research/mutual-fund-category-monitor">Mutual Fund Category Monitor</a>
        </li>
		<li class="item">
        	<c:choose>
        		<c:when test="${page eq 'mutual-fund-point-to-point-returns-calculator'}"><i class="fa fa-check-circle text-green mr-2"></i></c:when>
        		<c:otherwise> <i class="fa fa-times-circle main-color mr-2"></i> </c:otherwise>
        	</c:choose>
        	<a href="/mutual-funds-research/mutual-fund-point-to-point-returns-calculator">Mutual Fund Point to Point Returns</a>
        </li>
        <li class="item">
        	<c:choose>
        		<c:when test="${page eq 'quartile-ranking'}"><i class="fa fa-check-circle text-green mr-2"></i></c:when>
        		<c:otherwise> <i class="fa fa-times-circle main-color mr-2"></i> </c:otherwise>
        	</c:choose>
        	<a href="/mutual-funds-research/quartile-ranking">Mutual Fund Quartile Ranking</a>
        </li>
        <li class="item">
        	<c:choose>
        		<c:when test="${page eq 'mutual-fund-annual-returns'}"><i class="fa fa-check-circle text-green mr-2"></i></c:when>
        		<c:otherwise> <i class="fa fa-times-circle main-color mr-2"></i> </c:otherwise>
        	</c:choose>
        	<a href="/mutual-funds-research/mutual-fund-annual-returns">Annual Return Of Funds</a>
        </li>
        <li class="item">
        	<c:choose>
        		<c:when test="${page eq 'top-performing-systematic-investment-plan'}"><i class="fa fa-check-circle text-green mr-2"></i></c:when>
        		<c:otherwise> <i class="fa fa-times-circle main-color mr-2"></i> </c:otherwise>
        	</c:choose>
        	<a href="/mutual-funds-research/top-performing-systematic-investment-plan">Top Performing SIP Funds</a>
        </li>
        <li class="item">
        	<c:choose>
        		<c:when test="${page eq 'top-performing-lumpsum-funds'}"><i class="fa fa-check-circle text-green mr-2"></i></c:when>
        		<c:otherwise> <i class="fa fa-times-circle main-color mr-2"></i> </c:otherwise>
        	</c:choose>
        	<a href="/mutual-funds-research/top-performing-lumpsum-funds">Top Performing Lumpsum Funds</a>
        </li>
         <li class="item">
        	<c:choose>
        		<c:when test="${page eq 'sip-with-annual-increase'}"><i class="fa fa-check-circle text-green mr-2"></i></c:when>
        		<c:otherwise> <i class="fa fa-times-circle main-color mr-2"></i> </c:otherwise>
        	</c:choose>
        	<a href="/mutual-funds-research/sip-with-annual-increase">SIP with Annual Increase</a>
        </li>
         <li class="item">
        	<c:choose>
        		<c:when test="${page eq 'mutual-fund-sip-investment-calculator'}"><i class="fa fa-check-circle text-green mr-2"></i></c:when>
        		<c:otherwise> <i class="fa fa-times-circle main-color mr-2"></i> </c:otherwise>
        	</c:choose>
        	<a href="/mutual-funds-research/mutual-fund-sip-investment-calculator">Mutual Fund SIP Return Calculator</a>
        </li>
         <li class="item">
        	<c:choose>
        		<c:when test="${page eq 'mutual-fund-stp-investment-calculator'}"><i class="fa fa-check-circle text-green mr-2"></i></c:when>
        		<c:otherwise> <i class="fa fa-times-circle main-color mr-2"></i> </c:otherwise>
        	</c:choose>
        	<a href="/mutual-funds-research/mutual-fund-stp-investment-calculator">Mutual Fund STP Return Calculator</a>
        </li>
        <li class="item">
        	<c:choose>
        		<c:when test="${page eq 'stp-calculator-profit-transfer'}"><i class="fa fa-check-circle text-green mr-2"></i></c:when>
        		<c:otherwise> <i class="fa fa-times-circle main-color mr-2"></i> </c:otherwise>
        	</c:choose>
        	<a href="/mutual-funds-research/stp-calculator-profit-transfer">STP Calculator Profit Transfer</a>
        </li>
        <li class="item">
        	<c:choose>
        		<c:when test="${page eq 'mutual-fund-swp-investment-calculator'}"><i class="fa fa-check-circle text-green mr-2"></i></c:when>
        		<c:otherwise> <i class="fa fa-times-circle main-color mr-2"></i> </c:otherwise>
        	</c:choose>
        	<a href="/mutual-funds-research/mutual-fund-swp-investment-calculator">Mutual Fund SWP Return Calculator</a>
        </li>
        <li class="item">
        	<c:choose>
        		<c:when test="${page eq 'rolling-returns'}"><i class="fa fa-check-circle text-green mr-2"></i></c:when>
        		<c:otherwise> <i class="fa fa-times-circle main-color mr-2"></i> </c:otherwise>
        	</c:choose>
        	<a href="/mutual-funds-research/rolling-returns">Rolling Return vs Category</a>
        </li>
        <li class="item">
        	<c:choose>
        		<c:when test="${page eq 'rolling-return-vs-benchmark'}"><i class="fa fa-check-circle text-green mr-2"></i></c:when>
        		<c:otherwise> <i class="fa fa-times-circle main-color mr-2"></i> </c:otherwise>
        	</c:choose>
        	<a href="/mutual-funds-research/rolling-return-vs-benchmark">Rolling Return vs Benchmark</a>
        </li>
        <li class="item">
        	<c:choose>
        		<c:when test="${page eq 'rolling-return-performance-comparison'}"><i class="fa fa-check-circle text-green mr-2"></i></c:when>
        		<c:otherwise> <i class="fa fa-times-circle main-color mr-2"></i> </c:otherwise>
        	</c:choose>
        	<a href="/mutual-funds-research/rolling-return-performance-comparison">Rolling Return vs Other Benchmark</a>
        </li>
        <li class="item">
        	<c:choose>
        		<c:when test="${page eq 'swp-with-annual-increase'}"><i class="fa fa-check-circle text-green mr-2"></i></c:when>
        		<c:otherwise> <i class="fa fa-times-circle main-color mr-2"></i> </c:otherwise>
        	</c:choose>
        	<a href="/mutual-funds-research/swp-with-annual-increase">SWP with Annual Increase</a>
        </li>
        <li class="item">
        	<c:choose>
        		<c:when test="${page eq 'mutual-fund-rolling-returns-comparison-with-gold-and-sensex'}"><i class="fa fa-check-circle text-green mr-2"></i></c:when>
        		<c:otherwise> <i class="fa fa-times-circle main-color mr-2"></i> </c:otherwise>
        	</c:choose>
        	<a href="/mutual-funds-research/mutual-fund-rolling-returns-comparison-with-gold-and-sensex">Rolling Return vs Sensex &amp; Gold</a>
        </li>
        <li class="item">
        	<c:choose>
        		<c:when test="${page eq 'mutual-fund-portfolio-overlap'}"><i class="fa fa-check-circle text-green mr-2"></i></c:when>
        		<c:otherwise> <i class="fa fa-times-circle main-color mr-2"></i> </c:otherwise>
        	</c:choose>
        	<a href="/mutual-funds-research/mutual-fund-portfolio-overlap">Mutual Fund Portfolio Overlap</a>
        </li>
        <li class="item">
        	<c:choose>
        		<c:when test="${page eq 'latest-Mutual-Funds-NAV-52-week-high-nav'}"><i class="fa fa-check-circle text-green mr-2"></i></c:when>
        		<c:otherwise> <i class="fa fa-times-circle main-color mr-2"></i> </c:otherwise>
        	</c:choose>
        	<a href="/mutual-funds-research/latest-Mutual-Funds-NAV-52-week-high-nav">Latest MF NAVs vs 52 Week NAVs</a>
        </li>
	</ul>
</div>