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

</style>




<script>
var arr  = [];
var arr1 = [];
var arr2 = [];
$(document).ready(function(){
	arr.push({question:'What is Financial Planning?', answer:'<p class="text-justify">Financial planning is no different from a structured problem solving framework. Every structured business problem solving exercises has specific steps (the same can be applied in financial planning as well). However, there are broadly 6 steps in the financial planning process. Most certified financial planners (CFPs) and financial advisers will be very familiar with these steps. However, investors should understand that, while financial planners or CFPs can play an important role in the financial planning process, the success of the financial plan ultimately depends on the investor. Therefore, it will be useful for investors to familiarize themselves with the process, so that they can work efficiently and effectively with their financial planners or advisers.</p><p class="text-justify"><b>Step - 1: Understanding and defining the life goals</b></p><p class="text-justify">The first step of financial planning process is to understand and define your specific goals. The more specific the goals are the better it is. Sometimes, you may not have enough clarity about all the financial goals in your life. An expert financial planner can help you define the goals across your savings and investment lifecycle and determine the specific numbers you need to reach for each of the specific goals. You should remember that a financial plan is not working towards a singular goal, like retirement planning, Childrens education or marriage or buying a home etc. </p><p class="text-justify">A financial plan includes multiple goals across your savings and investment lifecycle. However, you should establish definite time frames for achievement of each of these goals. Even though, ideally, we would like to achieve or even exceed all our financial goals, it is useful to prioritize the goals, especially if there are constraints with regards to how much you can invest and save. For example, you may prioritize your childs higher education over buying a house or some other financial goals. The financial planner will take your priority into consideration, when developing your financial plan. Once the financial goals and the priorities are determined, the financial planner or adviser will examine these goals in respect to your resources and other constraints, if any. The objective of this step is to help you define specific, realistic, actionable financial goals.</p><p class="text-justify"><b>Step - 2: Collecting and consolidating data through personal meeting</b></p><p class="text-justify">The second step in the financial planning process is to collect the data regarding the your income, expenses, existing fixed and financial assets, life and health insurance, lifestyle &amp; other important expenses, your family structure and other liabilities that will form the inputs in your financial plan. The Financial planner may employ different methods to collect the data from you. Some financial planners or advisers may send you a survey form or questionnaire that you will have to filled out and send back to the financial planner.</p><p class="text-justify">Many financial planners prefer face to face meetings with their clients to collect this data. Face to face meetings is often more effective than just sending a survey form or questionnaire. Through a face to face interaction, the financial planner or adviser can clarify certain details about you that the questionnaire may not be able to. A personal meeting also helps the investors clarify doubts, expectations or share additional details with their financial planners or advisers. We recommend that, you should have a face to face meeting, even if your financial planner does not ask for one. It is always helpful for you.</p><p class="text-justify">Whatever the method is for interaction and data gathering, it is always beneficial for you to share as much information as possible with your financial planner. Withholding financial or other important information from him is never useful. You should remember that the role of the financial planner or adviser is very much like a family physician. Just like, we should share all medical and health related information with our family physician, we should share all our financial information or any other information that may potentially have an impact on our financial situation with our financial planner</p><p class="text-justify"><b>Step - 3: Detailed analysis and suggestions</b></p><p class="text-justify">The third step of the financial planning process is the data analysis part. The financial planner will review your financial situation - assets &amp; liabilities, current cash flow statements, debt or loan situation, existing insurance policies (both life and non-life insurance), exiting savings &amp; investments and other legal documents (if required). Through a structured financial analysis process, the financial planner will determine your asset allocation strategy and insurance (life and health/ critical illness) needs to meet your financial objectives. The financial planner may also suggest additional life and health insurance, if he or she determines, based on your financial analysis, that you are not adequately insured. </p><p class="text-justify">What is your responsibility at this stage? While all the work in this step is done by the financial planner, as an investor, you should also involve yourself in this process by scheduling review of the plan and making sure that you understand the analysis. After all, it is your financial plan!</p><p class="text-justify"><b>Step - 4: Asset allocation strategies and investment recommendations</b></p><p class="text-justify">After the above 3 steps are covered, your financial planner will make the actual recommendation with respect to your comprehensive financial plan. This will include your asset allocation strategy based on your risk profile, alternate investment options like, mutual funds, equities, traditional debts, tax saving strategies, life and non-life insurance requirements etc. Your financial planner should schedule a meeting with you, to discuss these recommendations. This is a very important step in the whole process as you should make sure that you understand all the recommendations he or she has made and the reasons thereof. </p><p class="text-justify">At this stage, you should ask him/ her as many questions as you would like to, regarding each strategy or product investment recommendations, because they will be crucial in meeting your financial objectives. You should note that the final investment decisions rest with you, and therefore you should ensure that you are comfortable with the financial plan drawn and its execution strategy. Recommendations can change during this step and altered based on your inputs to the financial planner.</p><p class="text-justify"><b>Step - 5: Filing up the necessary investment forms and understanding terms &amp; conditions</b></p><p class="text-justify">The penultimate step of the financial planning process is the implementation of the investors financial plan. This involves the actual process of purchasing the investment and insurance or other products. At this stage various regulatory and procedural requirements need to be fulfilled, depending on the each product involved. As an investor, you may have to submit the documentation for Know Your Client (KYC), fill up the application forms for mutual funds, opening of Demat and share trading accounts for equity investing, and finalising proposal forms for life and non-life insurance plans. </p><p class="text-justify">Your financial adviser will play a big role in fulfilling these requirements, including collecting the documents for KYC and helping you in filling out the application or proposal forms. However, it is important, that you remain involved in the entire process. Even if you delegate the responsibility of filling the major portions application or proposal forms to him, make sure you verify the information in the forms post t is filled up, to ensure nothing is incorrectly stated. You should also carefully read the brochures/ scheme information documents of the products that you are investing in, so that you understand all the terms and conditions of the product(s). </p><p class="text-justify"><b>Step - 6: Track investments and review the financial plan regularly</b></p><p class="text-justify">The final step of the financial planning process is to monitor and tracking the progress made on your financial plan. You should review your financial plan in order to evaluate the effect of changes in your income levels, your financial situation, tax obligations, new tax rules, new products and changes in market conditions. Normally, your financial planner should schedule meetings with you at a regular frequency (once every 6 month or 12 months) to review your portfolio and discuss if any change needs to be made in your financial plan, asset allocation strategies and investments. </p><p class="text-justify">But even if your financial planner does not schedule regular review meetings, you should insist on meeting with him/ her at some regular frequency, e.g. Semi-annually or annually etc. At the end of the day, it is your financial plan and your financial future is at stake. Therefore, the onus is really on you, to make sure that your financial plan is on track. Also, you should remember that financial planning is not a static, but a dynamic exercise. Your financial situation, goals and aspirations may change over a period of time. Therefore, you should meet with your financial planner or adviser on a regular basis, to ensure that your portfolio is doing well and at the same time, ensure that any change to your financial situation, goals or aspirations is appropriately reflected in your financial plan, and executed upon.</p>'});
	arr.push({question:'What are the benefits of Financial Planning?', answer:'<p class="text-justify">There are many benefits of having a financial plan. Once you have defined the specific goals and save or invest for it, you actually start a journey which helps you reach your financial goals. A financial plan actually helps you lead a disciplined and stress free life so that you can enjoy the life to the fullest. We will now discuss the various benefits of having a financial Plan. </p>'});
	arr.push({question:'Aware about financial goals', answer:'<p class="text-justify">The first step of financial planning is to define specific goals. The more specific the goals are the better. As an investor, especially if you are young, you may not have enough clarity about all the financial goals in your life. This is where an expert financial planner helps you. Through a financial planning process, the biggest benefit is that you can define the goals across your savings and investment lifecycle and save towards it for achieving the different life goals. Investing or saving without knowing the goals is like embarking on a journey without knowing the destination.</p>'});
	arr.push({question:'Emphasis on budgeting', answer:'<p class="text-justify">The next benefit of financial planning is budgeting. This is probably the most important step of financial planning, but also the most ignored one. Even if you have the most detailed and well-structured financial plan, if you are not able to save enough, you will not be able to meet your financial goals. Saving habits are very personal, depending on your lifestyle, relative to your income levels.</p><p class="text-justify">While the financial planner may not actually prepare your budget, he or she can help you give you guidance on how to prepare one. Budgeting is not a hugely time consuming exercise. While preparing your budget, you should try, as much as possible, not to skip minor details, because through a careful budgeting you may be able to identify expenses, which you can easily reduce, without any noticeable impact on your lifestyle. </p><p class="text-justify">Remember, through budgeting even if you can make a small additional savings. It will have a big difference to your long term wealth as power of compounding helps over long term. Just to give you an example, even an additional Rs 500 monthly savings, invested in equity assets yielding 20% return, will generate a corpus in excess of Rs 1 Crore over 30 years. Therefore, financial plan teaches you the importance of budgeting and helps you save more.</p>'});
	arr.push({question:'Asset allocation based investing', answer:'  <p class="text-justify">How you invest your save (debt or equity or real estate), plays a very important role in ensuring the success of your goals. Different asset classes have different risk return characteristics. Too much risk can result in loss of money, while too little risk may prevent you from meeting your long term financial objectives. While drawing your financial plan the emphasis is on Asset allocation which is the process of balancing your risk and return objectives. </p><p class="text-justify">It is one of the most important aspects of financial planning. You can reap rich benefits if you just follow the provided guidance on asset allocation in your financial plan. Asset allocation is the only sure shot way for you to meet your short term, medium term and long term financial objectives.</p>'});
	arr.push({question:'Know your risk', answer:'<p class="text-justify">Having a financial plan helps you prepare for risks. Risks are unforeseen events that can cause financial distress. The worst case contingency is an untimely death, which can result in financial distress for the family, apart from the emotional trauma. Financial planning can help us prepare for such contingencies through adequate life insurance. Another contingency is serious illness that can have an impact on your savings and consequently your short term or long term financial objectives. A good financial plan will make adequate provisions for health insurance and critical illness. There can also be other contingencies like temporary loss of income or major unforeseen expenditures. Financial plans helps you prepare for such contingencies.</p>'});
	arr.push({question:'Tax Planning', answer:'<p class="text-justify">It is another important aspect of financial planning. When you have income, you come under the ambit of tax. Tax planning starts when a person starts working and continues almost through-out ones life, even after retirement. Different investment products are subject to different tax treatments. Financial planning can not only help you save taxes (under Section 80C, Section 80CCD, Section 80D etc.) every year.</p><p class="text-justify">The benefit of having a financial plan is that it helps you reduce the taxes which you have to pay on your investment income or profit, by saving in various tax planning avenues.</p>'});
	arr.push({question:'Advantages of starting early', answer:' <p class="text-justify">If you start your financial planning early in your working careers it will give you a head start in meeting your financial objectives even earlier. Saving and investment is not the most important priority for many young professionals. While lifestyle is an important consideration for many young people, you should be careful to not build a liability in your personal balance sheet. Economic lessons learnt from the west over the past 2 decades have taught us that we can easily get into debt trap without even realizing. Young people should think long term, because a small amount of money saved now can create wealth for you in the future. </p><p class="text-justify">The benefit of having a financial plan earlier in your work career will put your savings and investment on autopilot mode, with minimal impact on your lifestyle. You will realize the benefits of early financial planning, when you approach important life goals, like buying your house, funding your childrens higher education, your own retirement etc. Early start can also help you buy adequate life and health insurance at much lower premium as the premiums rise rapidly as your age increases.</p>'});

	var query = '';
	
	for(var i=1; i<=arr.length; i++)
	{
		k = i + 10;
		if(i == 1) {
			query += '<div class="panel">';
			query += '<div class="panel-title"> <a class="collapsed" data-parent="#accordion1" data-toggle="collapse" href="#accordion'+k+'" class="active" aria-expanded="true"> <span class="open-sub"></span> <strong>Q. '+arr[i-1].question+'</strong></a> </div>';	
			query += '<div id="accordion'+k+'" class="panel-collapse collapse in" role="tablist" aria-expanded="true">';
			query += '<div class="panel-content">';
			query += arr[i-1].answer;
			query += '</div>';
			query += '</div>';
			query += '</div>';
			query += '</div>';
		}
		else {
			query += '<div class="panel">';
			query += '<div class="panel-title"> <a class="collapsed" data-parent="#accordion1" data-toggle="collapse" href="#accordion'+k+'" class="active" aria-expanded="false"> <span class="open-sub"></span> <strong>Q. '+arr[i-1].question+'</strong></a> </div>';	
			query += '<div id="accordion'+k+'" class="panel-collapse collapse" role="tablist" aria-expanded="false">';
			query += '<div class="panel-content">';
			query += arr[i-1].answer;
			query += '</div>';
			query += '</div>';
			query += '</div>';
			query += '</div>';
		}
								
	}
	
	$("#accordion1").html(query);


	
	
	
});


</script>

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
              <h2 class="title title_header">Financial Planning FAQ's</h2>
              <ol class="breadcrumb mt-10">
                <li><a href="/" class="title_header">Home</a></li>
                <li><a href="/" class="title_header">FAQ's</a></li>
                <li class="active title_header">Financial Planning FAQ's</li>
              </ol>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section>
      <div class="container">
        <div class="row">
          <div class="col-md-10 col-md-offset-1">
            <div id="accordion1" class="panel-group accordion">
            


            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
  <!-- end main-content -->