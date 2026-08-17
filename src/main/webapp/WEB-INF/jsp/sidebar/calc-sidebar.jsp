<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div class="col-lg-12 pl-0 pl-lg-3">
	<ul class="pricing-list">
        <li class="item">
        	<c:choose>
        		<c:when test="${menu eq 'Become A Crorepati'}"><i class="fa fa-check-circle text-green mr-2"></i></c:when>
        		<c:otherwise> <i class="fa fa-times-circle main-color mr-2"></i> </c:otherwise>
        	</c:choose>
        	<a href="/tools-and-calculators/become-a-crorepati">Become A Crorepati</a>
        </li>
        <li class="item">
        	<c:choose>
        		<c:when test="${menu eq 'SIP Calculator'}"><i class="fa fa-check-circle text-green mr-2"></i></c:when>
        		<c:otherwise> <i class="fa fa-times-circle main-color mr-2"></i> </c:otherwise>
        	</c:choose>
        	<a href="/tools-and-calculators/systematic-investment-plan-calculator">Systematic Investment Plans</a>
        </li>
        <li class="item">
        	<c:choose>
        		<c:when test="${subpage eq 'target-amount-sip-calculator'}"><i class="fa fa-check-circle text-green mr-2"></i></c:when>
        		<c:otherwise> <i class="fa fa-times-circle main-color mr-2"></i> </c:otherwise>
        	</c:choose>
        	<a href="/tools-and-calculators/target-amount-sip-calculator">Target Amount SIP Calculator</a>
        </li>
        <li class="item">
        	<c:choose>
        		<c:when test="${menu eq 'home-loan-emi-calculator'}"><i class="fa fa-check-circle text-green mr-2"></i></c:when>
        		<c:otherwise> <i class="fa fa-times-circle main-color mr-2"></i> </c:otherwise>
        	</c:choose>
        	<a href="/tools-and-calculators/home-loan-emi-calculator">EMI Home Loan Calculator</a>
        </li>
        <li class="item">
        	<c:choose>
        		<c:when test="${menu eq 'personal-loan-emi-calculator'}"><i class="fa fa-check-circle text-green mr-2"></i></c:when>
        		<c:otherwise> <i class="fa fa-times-circle main-color mr-2"></i> </c:otherwise>
        	</c:choose>
        	<a href="/tools-and-calculators/personal-loan-emi-calculator">EMI Personal Loan Calculator</a>
        </li>
        <li class="item">
        	<c:choose>
        		<c:when test="${menu eq 'car-loan-emi-calculator'}"><i class="fa fa-check-circle text-green mr-2"></i></c:when>
        		<c:otherwise> <i class="fa fa-times-circle main-color mr-2"></i> </c:otherwise>
        	</c:choose>
        	<a href="/tools-and-calculators/car-loan-emi-calculator">EMI Car Loan Calculator</a>
        </li>
        <li class="item">
        	<c:choose>
        		<c:when test="${menu eq 'Retirement Planning'}"><i class="fa fa-check-circle text-green mr-2"></i></c:when>
        		<c:otherwise> <i class="fa fa-times-circle main-color mr-2"></i> </c:otherwise>
        	</c:choose>
        	<a href="/tools-and-calculators/retirement-planning-calculator">Retirement Planning Calculator</a>
        </li>
        <li class="item">
        	<c:choose>
        		<c:when test="${menu eq 'Goal Setting'}"><i class="fa fa-check-circle text-green mr-2"></i></c:when>
        		<c:otherwise> <i class="fa fa-times-circle main-color mr-2"></i> </c:otherwise>
        	</c:choose>
        	<a href="/tools-and-calculators/goal-setting-calculator">Goal Setting Calculator</a>
        </li>
        <li class="item">
        	<c:choose>
        		<c:when test="${menu eq 'Composite Financial Goal'}"><i class="fa fa-check-circle text-green mr-2"></i></c:when>
        		<c:otherwise> <i class="fa fa-times-circle main-color mr-2"></i> </c:otherwise>
        	</c:choose>
        	<a href="/tools-and-calculators/composite-financial-goal-planner-calculator">Composite Financial Goal</a>
        </li>
        <li class="item">
        	<c:choose>
        		<c:when test="${menu eq 'Children Education'}"><i class="fa fa-check-circle text-green mr-2"></i></c:when>
        		<c:otherwise> <i class="fa fa-times-circle main-color mr-2"></i> </c:otherwise>
        	</c:choose>
        	<a href="/tools-and-calculators/children-education-planner">Education Planner</a>
        </li>
        <li class="item">
        	<c:choose>
        		<c:when test="${menu eq 'future-value-inflation-calculator'}"><i class="fa fa-check-circle text-green mr-2"></i></c:when>
        		<c:otherwise> <i class="fa fa-times-circle main-color mr-2"></i> </c:otherwise>
        	</c:choose>
        	<a href="/tools-and-calculators/future-value-inflation-calculator">Future Value</a>
        </li>
        <li class="item">
        	<c:choose>
        		<c:when test="${subpage eq 'step-up-sip-calculator'}"><i class="fa fa-check-circle text-green mr-2"></i></c:when>
        		<c:otherwise> <i class="fa fa-times-circle main-color mr-2"></i> </c:otherwise>
        	</c:choose>
        	<a href="/tools-and-calculators/mutual-fund-sip-calculator-step-up">Mutual Fund SIP Calculator Step Up</a>
        </li>
	</ul>
</div>